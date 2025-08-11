import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import '../models/book.dart';
import '../models/user_book.dart';
import '../models/reading_status.dart';
import '../../core/services/hive_service.dart';
import '../../core/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

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

  List<UserBook> get wantToRead => books.where((book) => book.status == ReadingStatus.toRead).toList();
  List<UserBook> get reading => books.where((book) => book.status == ReadingStatus.reading).toList();
  List<UserBook> get completed => books.where((book) => book.status == ReadingStatus.completed).toList();
  int get totalBooks => books.length;

  UserBook? getUserBook(String bookId) {
    try {
      return books.firstWhere((book) => book.id == bookId);
    } catch (e) {
      return null;
    }
  }

  ReadingStatus getBookStatus(String bookId) {
    final userBook = getUserBook(bookId);
    return userBook?.status ?? ReadingStatus.toRead;
  }
}

class BookshelfNotifier extends StateNotifier<BookshelfState> {
  static const String _boxName = 'bookshelf';
  late Box<UserBook> _box;

  BookshelfNotifier() : super(const BookshelfState()) {
    _initHive();
  }

  Future<void> _initHive() async {
    try {
      _box = await Hive.openBox<UserBook>(_boxName);
      await _loadBooks();
    } catch (e) {
      debugPrint('Error initializing Hive: $e');
      state = state.copyWith(error: 'Failed to initialize storage: $e', isLoading: false);
    }
  }

  Future<void> _loadBooks() async {
    try {
      final books = _box.values.toList().cast<UserBook>();
      state = state.copyWith(books: books, isLoading: false);
    } catch (e) {
      debugPrint('Error loading books: $e');
      state = state.copyWith(error: 'Failed to load books: $e', isLoading: false);
    }
  }

  Future<void> _saveToLocal(UserBook userBook) async {
    try {
      await _box.put(userBook.id, userBook);
    } catch (e) {
      debugPrint('Error saving to local: $e');
    }
  }

  Future<void> _syncToCloud(UserBook userBook) async {
    try {
      // For now, just log - implement cloud sync later
      debugPrint('Would sync to cloud: ${userBook.title}');
    } catch (e) {
      debugPrint('Error syncing to cloud: $e');
    }
  }

  Future<void> _removeFromCloud(String bookId) async {
    try {
      // For now, just log - implement cloud sync later
      debugPrint('Would remove from cloud: $bookId');
    } catch (e) {
      debugPrint('Error removing from cloud: $e');
    }
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

  Future<void> addBook(Book book, {ReadingStatus status = ReadingStatus.toRead}) async {
    try {
      final userBook = UserBook.fromBook(book);
      final updatedUserBook = userBook.copyWith(status: status);
      
      state = state.copyWith(
        books: [...state.books, updatedUserBook],
      );
      
      await _saveToLocal(updatedUserBook);
      await _syncToCloud(updatedUserBook);
    } catch (e) {
      debugPrint('Error adding book: $e');
    }
  }

  Future<void> updateBookStatus(String bookId, ReadingStatus status) async {
    try {
      final index = state.books.indexWhere((book) => book.id == bookId);
      if (index != -1) {
        final updatedBook = state.books[index].copyWith(status: status);
        final updatedBooks = List<UserBook>.from(state.books);
        updatedBooks[index] = updatedBook;
        
        state = state.copyWith(books: updatedBooks);
        
        await _saveToLocal(updatedBook);
        await _syncToCloud(updatedBook);
      }
    } catch (e) {
      debugPrint('Error updating book status: $e');
    }
  }

  Future<void> updateReadingProgress(String bookId, int currentPage) async {
    try {
      final index = state.books.indexWhere((book) => book.id == bookId);
      if (index != -1) {
        final updatedBook = state.books[index].copyWith(currentPage: currentPage);
        final updatedBooks = List<UserBook>.from(state.books);
        updatedBooks[index] = updatedBook;
        
        state = state.copyWith(books: updatedBooks);
        
        await _saveToLocal(updatedBook);
        await _syncToCloud(updatedBook);
      }
    } catch (e) {
      debugPrint('Error updating reading progress: $e');
    }
  }

  Future<void> rateBook(String bookId, int rating) async {
    try {
      final index = state.books.indexWhere((book) => book.id == bookId);
      if (index != -1) {
        final updatedBook = state.books[index].copyWith(rating: rating);
        final updatedBooks = List<UserBook>.from(state.books);
        updatedBooks[index] = updatedBook;
        
        state = state.copyWith(books: updatedBooks);
        
        await _saveToLocal(updatedBook);
        await _syncToCloud(updatedBook);
      }
    } catch (e) {
      debugPrint('Error rating book: $e');
    }
  }

  Future<void> reviewBook(String bookId, String review) async {
    try {
      final index = state.books.indexWhere((book) => book.id == bookId);
      if (index != -1) {
        final updatedBook = state.books[index].copyWith(notes: review);
        final updatedBooks = List<UserBook>.from(state.books);
        updatedBooks[index] = updatedBook;
        
        state = state.copyWith(books: updatedBooks);
        
        await _saveToLocal(updatedBook);
        await _syncToCloud(updatedBook);
      }
    } catch (e) {
      debugPrint('Error reviewing book: $e');
    }
  }

  Future<void> removeBook(String bookId) async {
    try {
      final updatedBooks = state.books.where((book) => book.id != bookId).toList();
      state = state.copyWith(books: updatedBooks);
      
      await _box.delete(bookId);
      await _removeFromCloud(bookId);
    } catch (e) {
      debugPrint('Error removing book: $e');
    }
  }

  UserBook? getUserBook(String bookId) {
    try {
      return state.books.firstWhere((book) => book.id == bookId);
    } catch (e) {
      return null;
    }
  }

  ReadingStatus getBookStatus(String bookId) {
    final userBook = getUserBook(bookId);
    return userBook?.status ?? ReadingStatus.toRead;
  }

  // Cloud synchronization methods
  Future<void> syncWithCloud() async {
    try {
      final userId = _getCurrentUserId();
      if (userId != null) {
        // This part needs to be implemented using FirestoreService
        // For now, it's a placeholder
        debugPrint('Syncing with cloud for user: $userId');
      }
    } catch (e) {
      debugPrint('Error syncing with cloud: $e');
    }
  }

  // Load data from cloud
  Future<void> loadFromCloud() async {
    try {
      final userId = _getCurrentUserId();
      if (userId != null) {
        // This part needs to be implemented using FirestoreService
        // For now, it's a placeholder
        debugPrint('Loading from cloud for user: $userId');
      }
    } catch (e) {
      debugPrint('Error loading from cloud: $e');
    }
  }

  ReadingStatus _parseBookStatus(String status) {
    switch (status) {
      case 'wantToRead':
        return ReadingStatus.toRead;
      case 'reading':
        return ReadingStatus.reading;
      case 'completed':
        return ReadingStatus.completed;
      case 'abandoned':
        return ReadingStatus.abandoned;
      default:
        return ReadingStatus.toRead;
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  String? _getCurrentUserId() {
    // This should be obtained from your auth provider
    // For now, we'll return null if no user is authenticated
    return null; // TODO: Get from auth provider
  }
} 