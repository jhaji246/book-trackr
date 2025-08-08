import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/book.dart';
import '../../core/services/hive_service.dart';

final bookshelfProvider = StateNotifierProvider<BookshelfNotifier, BookshelfState>((ref) {
  return BookshelfNotifier();
});

class BookshelfState {
  final bool isLoading;
  final List<UserBook> wantToRead;
  final List<UserBook> reading;
  final List<UserBook> completed;
  final List<UserBook> dnf;
  final String? error;

  const BookshelfState({
    this.isLoading = false,
    this.wantToRead = const [],
    this.reading = const [],
    this.completed = const [],
    this.dnf = const [],
    this.error,
  });

  BookshelfState copyWith({
    bool? isLoading,
    List<UserBook>? wantToRead,
    List<UserBook>? reading,
    List<UserBook>? completed,
    List<UserBook>? dnf,
    String? error,
  }) {
    return BookshelfState(
      isLoading: isLoading ?? this.isLoading,
      wantToRead: wantToRead ?? this.wantToRead,
      reading: reading ?? this.reading,
      completed: completed ?? this.completed,
      dnf: dnf ?? this.dnf,
      error: error ?? this.error,
    );
  }

  List<UserBook> getBooksByStatus(BookStatus status) {
    switch (status) {
      case BookStatus.wantToRead:
        return wantToRead;
      case BookStatus.reading:
        return reading;
      case BookStatus.completed:
        return completed;
      case BookStatus.dnf:
        return dnf;
    }
  }

  int get totalBooks => wantToRead.length + reading.length + completed.length + dnf.length;
}

class BookshelfNotifier extends StateNotifier<BookshelfState> {
  BookshelfNotifier() : super(const BookshelfState()) {
    _loadBooks();
  }

  Future<void> _loadBooks() async {
    try {
      state = state.copyWith(isLoading: true);
      
      // Load books from Hive
      final allUserBooks = HiveService.userBooksBox.values.toList();
      
      final wantToRead = allUserBooks.where((book) => book.status == BookStatus.wantToRead).toList();
      final reading = allUserBooks.where((book) => book.status == BookStatus.reading).toList();
      final completed = allUserBooks.where((book) => book.status == BookStatus.completed).toList();
      final dnf = allUserBooks.where((book) => book.status == BookStatus.dnf).toList();

      state = state.copyWith(
        wantToRead: wantToRead,
        reading: reading,
        completed: completed,
        dnf: dnf,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load books: $e',
      );
    }
  }

  Future<void> addBookToShelf(String bookId, BookStatus status) async {
    try {
      state = state.copyWith(isLoading: true);
      
      // Check if book already exists in any shelf
      final existingBook = state.wantToRead
          .followedBy(state.reading)
          .followedBy(state.completed)
          .followedBy(state.dnf)
          .where((book) => book.bookId == bookId)
          .firstOrNull;

      if (existingBook != null) {
        // Update existing book status
        await _updateBookStatus(existingBook.id, status);
      } else {
        // Add new book to shelf
        final userBook = UserBook(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          bookId: bookId,
          userId: 'mock-user-id', // TODO: Get from auth provider
          status: status,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );

        await HiveService.userBooksBox.put(userBook.id, userBook);
      }

      await _loadBooks();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to add book: $e',
      );
    }
  }

  Future<void> _updateBookStatus(String userBookId, BookStatus newStatus) async {
    try {
      final userBook = HiveService.userBooksBox.get(userBookId);
      if (userBook != null) {
        final updatedBook = userBook.copyWith(
          status: newStatus,
          updatedAt: DateTime.now(),
        );
        await HiveService.userBooksBox.put(userBookId, updatedBook);
      }
    } catch (e) {
      throw Exception('Failed to update book status: $e');
    }
  }

  Future<void> updateBookProgress(String userBookId, int currentPage) async {
    try {
      state = state.copyWith(isLoading: true);
      
      final userBook = HiveService.userBooksBox.get(userBookId);
      if (userBook != null) {
        final updatedBook = userBook.copyWith(
          currentPage: currentPage,
          updatedAt: DateTime.now(),
        );
        await HiveService.userBooksBox.put(userBookId, updatedBook);
      }

      await _loadBooks();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to update progress: $e',
      );
    }
  }

  Future<void> rateBook(String userBookId, double rating) async {
    try {
      state = state.copyWith(isLoading: true);
      
      final userBook = HiveService.userBooksBox.get(userBookId);
      if (userBook != null) {
        final updatedBook = userBook.copyWith(
          rating: rating,
          updatedAt: DateTime.now(),
        );
        await HiveService.userBooksBox.put(userBookId, updatedBook);
      }

      await _loadBooks();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to rate book: $e',
      );
    }
  }

  Future<void> addBookReview(String userBookId, String review) async {
    try {
      state = state.copyWith(isLoading: true);
      
      final userBook = HiveService.userBooksBox.get(userBookId);
      if (userBook != null) {
        final updatedBook = userBook.copyWith(
          review: review,
          updatedAt: DateTime.now(),
        );
        await HiveService.userBooksBox.put(userBookId, updatedBook);
      }

      await _loadBooks();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to add review: $e',
      );
    }
  }

  Future<void> removeBookFromShelf(String userBookId) async {
    try {
      state = state.copyWith(isLoading: true);
      
      await HiveService.userBooksBox.delete(userBookId);
      await _loadBooks();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to remove book: $e',
      );
    }
  }

  UserBook? getUserBook(String bookId) {
    return state.wantToRead
        .followedBy(state.reading)
        .followedBy(state.completed)
        .followedBy(state.dnf)
        .where((book) => book.bookId == bookId)
        .firstOrNull;
  }

  BookStatus? getBookStatus(String bookId) {
    final userBook = getUserBook(bookId);
    return userBook?.status;
  }
} 