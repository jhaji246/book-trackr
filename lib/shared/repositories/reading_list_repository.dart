import '../models/user_book.dart';
import '../models/reading_status.dart';

class ReadingListRepository {
  // In a real app, this would use a database like Hive, SQLite, or Firebase
  // For now, we'll use in-memory storage
  final List<UserBook> _books = [];

  Future<List<UserBook>> getAllBooks() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));
    return List.from(_books);
  }

  Future<void> addBook(UserBook book) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 200));
    
    // Check if book already exists
    final existingIndex = _books.indexWhere((b) => b.id == book.id);
    if (existingIndex != -1) {
      throw Exception('Book already exists in reading list');
    }
    
    _books.add(book);
  }

  Future<void> removeBook(String bookId) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 150));
    
    final index = _books.indexWhere((book) => book.id == bookId);
    if (index == -1) {
      throw Exception('Book not found in reading list');
    }
    
    _books.removeAt(index);
  }

  Future<void> updateBookStatus(String bookId, ReadingStatus status) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));
    
    final index = _books.indexWhere((book) => book.id == bookId);
    if (index == -1) {
      throw Exception('Book not found in reading list');
    }
    
    final book = _books[index];
    final updatedBook = book.copyWith(
      status: status,
      dateStarted: status == ReadingStatus.reading ? DateTime.now() : book.dateStarted,
      dateCompleted: status == ReadingStatus.completed ? DateTime.now() : book.dateCompleted,
    );
    
    _books[index] = updatedBook;
  }

  Future<void> updateBookProgress(String bookId, int currentPage) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));
    
    final index = _books.indexWhere((book) => book.id == bookId);
    if (index == -1) {
      throw Exception('Book not found in reading list');
    }
    
    final book = _books[index];
    final updatedBook = book.copyWith(currentPage: currentPage);
    
    _books[index] = updatedBook;
  }

  Future<void> updateBookRating(String bookId, int rating) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));
    
    final index = _books.indexWhere((book) => book.id == bookId);
    if (index == -1) {
      throw Exception('Book not found in reading list');
    }
    
    final book = _books[index];
    final updatedBook = book.copyWith(rating: rating);
    
    _books[index] = updatedBook;
  }

  Future<void> updateBookNotes(String bookId, String notes) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));
    
    final index = _books.indexWhere((book) => book.id == bookId);
    if (index == -1) {
      throw Exception('Book not found in reading list');
    }
    
    final book = _books[index];
    final updatedBook = book.copyWith(notes: notes);
    
    _books[index] = updatedBook;
  }

  Future<UserBook?> getBookById(String bookId) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 50));
    
    try {
      return _books.firstWhere((book) => book.id == bookId);
    } catch (e) {
      return null;
    }
  }

  Future<List<UserBook>> getBooksByStatus(ReadingStatus status) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));
    
    return _books.where((book) => book.status == status).toList();
  }

  Future<void> clearAllBooks() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));
    
    _books.clear();
  }

  // Helper method for testing
  void addTestBook(UserBook book) {
    _books.add(book);
  }
} 