import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../core/services/firestore_service.dart';
import '../models/book.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final bookshelfProvider = StateNotifierProvider<BookshelfNotifier, BookshelfState>((ref) {
  return BookshelfNotifier();
});

class BookshelfState {
  final List<UserBook> books;
  final bool isLoading;
  final String? error;
  final bool isSyncing;

  const BookshelfState({
    this.books = const [],
    this.isLoading = false,
    this.error,
    this.isSyncing = false,
  });

  BookshelfState copyWith({
    List<UserBook>? books,
    bool? isLoading,
    String? error,
    bool? isSyncing,
  }) {
    return BookshelfState(
      books: books ?? this.books,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      isSyncing: isSyncing ?? this.isSyncing,
    );
  }

  List<UserBook> get wantToRead => books.where((book) => book.status == const BookStatus.wantToRead()).toList();
  List<UserBook> get reading => books.where((book) => book.status == const BookStatus.reading()).toList();
  List<UserBook> get completed => books.where((book) => book.status == const BookStatus.completed()).toList();
  int get totalBooks => books.length;

  UserBook? getUserBook(String bookId) {
    try {
      return books.firstWhere((book) => book.book.id == bookId);
    } catch (e) {
      return null;
    }
  }

  BookStatus getBookStatus(String bookId) {
    final userBook = getUserBook(bookId);
    return userBook?.status ?? const BookStatus.wantToRead();
  }
}

class BookshelfNotifier extends StateNotifier<BookshelfState> {
  static const String _boxName = 'bookshelf';
  late Box<UserBook> _box;

  BookshelfNotifier() : super(const BookshelfState()) {
    _initHive();
  }

  Future<void> _initHive() async {
    _box = await Hive.openBox<UserBook>(_boxName);
    _loadBooks();
  }

  void _loadBooks() {
    final books = _box.values.toList();
    state = state.copyWith(books: books);
  }

  Future<void> loadBooks() async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      _loadBooks();
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Failed to load books: $e');
    }
  }

  Future<void> addBook(Book book, {BookStatus status = const BookStatus.wantToRead()}) async {
    try {
      final userBook = UserBook(
        book: book,
        status: status,
        rating: 0,
        review: '',
        currentPage: 0,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      await _box.add(userBook);
      _loadBooks();

      // Sync with Firestore if user is authenticated
      await _syncToCloud(userBook);
    } catch (e) {
      state = state.copyWith(error: 'Failed to add book: $e');
    }
  }

  Future<void> updateBookStatus(String bookId, BookStatus status) async {
    try {
      final index = state.books.indexWhere((book) => book.book.id == bookId);
      if (index != -1) {
        final updatedBook = state.books[index].copyWith(
          status: status,
          updatedAt: DateTime.now(),
        );

        await _box.putAt(index, updatedBook);
        _loadBooks();

        // Sync with Firestore
        await _syncToCloud(updatedBook);
      }
    } catch (e) {
      state = state.copyWith(error: 'Failed to update book status: $e');
    }
  }

  Future<void> updateReadingProgress(String bookId, int currentPage) async {
    try {
      final index = state.books.indexWhere((book) => book.book.id == bookId);
      if (index != -1) {
        final updatedBook = state.books[index].copyWith(
          currentPage: currentPage,
          updatedAt: DateTime.now(),
        );

        await _box.putAt(index, updatedBook);
        _loadBooks();

        // Sync with Firestore
        await _syncToCloud(updatedBook);
      }
    } catch (e) {
      state = state.copyWith(error: 'Failed to update reading progress: $e');
    }
  }

  Future<void> rateBook(String bookId, int rating) async {
    try {
      final index = state.books.indexWhere((book) => book.book.id == bookId);
      if (index != -1) {
        final updatedBook = state.books[index].copyWith(
          rating: rating,
          updatedAt: DateTime.now(),
        );

        await _box.putAt(index, updatedBook);
        _loadBooks();

        // Sync with Firestore
        await _syncToCloud(updatedBook);
      }
    } catch (e) {
      state = state.copyWith(error: 'Failed to rate book: $e');
    }
  }

  Future<void> reviewBook(String bookId, String review) async {
    try {
      final index = state.books.indexWhere((book) => book.book.id == bookId);
      if (index != -1) {
        final updatedBook = state.books[index].copyWith(
          review: review,
          updatedAt: DateTime.now(),
        );

        await _box.putAt(index, updatedBook);
        _loadBooks();

        // Sync with Firestore
        await _syncToCloud(updatedBook);
      }
    } catch (e) {
      state = state.copyWith(error: 'Failed to review book: $e');
    }
  }

  Future<void> removeBook(String bookId) async {
    try {
      final index = state.books.indexWhere((book) => book.book.id == bookId);
      if (index != -1) {
        await _box.deleteAt(index);
        _loadBooks();

        // Remove from Firestore
        await _removeFromCloud(bookId);
      }
    } catch (e) {
      state = state.copyWith(error: 'Failed to remove book: $e');
    }
  }

  UserBook? getUserBook(String bookId) {
    try {
      return state.books.firstWhere((book) => book.book.id == bookId);
    } catch (e) {
      return null;
    }
  }

  BookStatus getBookStatus(String bookId) {
    final userBook = getUserBook(bookId);
    return userBook?.status ?? const BookStatus.wantToRead();
  }

  // Cloud synchronization methods
  Future<void> _syncToCloud(UserBook userBook) async {
    try {
      final userId = _getCurrentUserId();
      if (userId != null) {
        await FirestoreService.addBookToShelf(
          userId: userId,
          userBook: userBook,
        );
      }
    } catch (e) {
      // Log error but don't fail the local operation
      print('Failed to sync to cloud: $e');
    }
  }

  Future<void> _removeFromCloud(String bookId) async {
    try {
      final userId = _getCurrentUserId();
      if (userId != null) {
        await FirestoreService.removeBookFromShelf(
          userId: userId,
          bookId: bookId,
        );
      }
    } catch (e) {
      // Log error but don't fail the local operation
      print('Failed to remove from cloud: $e');
    }
  }

  String? _getCurrentUserId() {
    // This should be obtained from your auth provider
    // For now, we'll return null if no user is authenticated
    return null; // TODO: Get from auth provider
  }

  // Sync local data with cloud
  Future<void> syncWithCloud() async {
    try {
      state = state.copyWith(isSyncing: true);
      
      final userId = _getCurrentUserId();
      if (userId != null) {
        await FirestoreService.syncLocalDataWithCloud(
          userId: userId,
          localBooks: state.books,
        );
      }
      
      state = state.copyWith(isSyncing: false);
    } catch (e) {
      state = state.copyWith(isSyncing: false, error: 'Failed to sync with cloud: $e');
    }
  }

  // Load books from cloud
  Future<void> loadFromCloud() async {
    try {
      state = state.copyWith(isLoading: true);
      
      final userId = _getCurrentUserId();
      if (userId != null) {
        final cloudBooks = await FirestoreService.getUserBookshelf(userId);
        
        // Convert cloud data to UserBook objects
        final userBooks = cloudBooks.map((data) {
          // Convert cloud data to UserBook
          // This is a simplified conversion - you'll need to implement proper conversion
          return UserBook(
            book: Book(
              id: data['bookId'],
              title: data['bookData']['title'],
              author: data['bookData']['author'],
              coverUrl: data['bookData']['coverUrl'],
              isbn: data['bookData']['isbn'],
              pageCount: data['bookData']['pageCount'],
              publishedDate: data['bookData']['publishedDate'],
              description: data['bookData']['description'],
              genres: List<String>.from(data['bookData']['genres']),
              averageRating: data['bookData']['averageRating']?.toDouble() ?? 0.0,
              publisher: '',
              language: '',
              ratingCount: 0,
            ),
            status: _parseBookStatus(data['status']),
            rating: data['rating'] ?? 0,
            review: data['review'] ?? '',
            currentPage: data['currentPage'] ?? 0,
            createdAt: (data['addedAt'] as Timestamp).toDate(),
            updatedAt: (data['updatedAt'] as Timestamp).toDate(),
          );
        }).toList();

        // Update local storage
        await _box.clear();
        for (final book in userBooks) {
          await _box.add(book);
        }
        
        _loadBooks();
      }
      
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Failed to load from cloud: $e');
    }
  }

  BookStatus _parseBookStatus(String status) {
    switch (status) {
      case 'wantToRead':
        return const BookStatus.wantToRead();
      case 'reading':
        return const BookStatus.reading();
      case 'completed':
        return const BookStatus.completed();
      case 'dnf':
        return const BookStatus.dnf();
      default:
        return const BookStatus.wantToRead();
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
} 