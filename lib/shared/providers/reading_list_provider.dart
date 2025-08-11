import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_book.dart' as user_book;
import '../models/reading_status.dart';
import '../repositories/reading_list_repository.dart';

final readingListProvider = StateNotifierProvider<ReadingListNotifier, ReadingListState>((ref) {
  return ReadingListNotifier();
});

class ReadingListState {
  final List<user_book.UserBook> books;
  final bool isLoading;
  final String? error;
  final String? successMessage;

  const ReadingListState({
    this.books = const [],
    this.isLoading = false,
    this.error,
    this.successMessage,
  });

  ReadingListState copyWith({
    List<user_book.UserBook>? books,
    bool? isLoading,
    String? error,
    String? successMessage,
  }) {
    return ReadingListState(
      books: books ?? this.books,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      successMessage: successMessage ?? this.successMessage,
    );
  }
}

class ReadingListNotifier extends StateNotifier<ReadingListState> {
  final ReadingListRepository _repository = ReadingListRepository();

  ReadingListNotifier() : super(const ReadingListState()) {
    loadReadingList();
  }

  Future<void> loadReadingList() async {
    try {
      _setLoadingState(true);
      _clearError();
      
      final books = await _repository.getAllBooks();
      _updateBooks(books);
    } catch (e) {
      _handleError('Failed to load reading list: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> addBookToReadingList(user_book.UserBook book) async {
    try {
      _setLoadingState(true);
      _clearError();
      
      await _performAddBook(book);
      _showSuccessMessage('Book added to reading list');
    } catch (e) {
      _handleError('Failed to add book to reading list: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performAddBook(user_book.UserBook book) async {
    final userBook = user_book.UserBook(
      id: book.id,
      title: book.title,
      author: book.author,
      description: book.description,
      coverUrl: book.coverUrl,
      averageRating: book.averageRating,
      ratingCount: book.ratingCount,
      pageCount: book.pageCount,
      isbn: book.isbn,
      publishedDate: book.publishedDate,
      genres: book.genres,
      publisher: book.publisher,
      language: book.language,
      status: ReadingStatus.toRead,
      dateAdded: DateTime.now(),
      dateStarted: null,
      dateCompleted: null,
      currentPage: 0,
      notes: '',
      rating: 0,
    );

    await _repository.addBook(userBook);
    await loadReadingList();
  }

  Future<void> removeBookFromReadingList(String bookId) async {
    try {
      _setLoadingState(true);
      _clearError();
      
      await _performRemoveBook(bookId);
      _showSuccessMessage('Book removed from reading list');
    } catch (e) {
      _handleError('Failed to remove book from reading list: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performRemoveBook(String bookId) async {
    await _repository.removeBook(bookId);
    await loadReadingList();
  }

  Future<void> updateBookStatus(String bookId, ReadingStatus status) async {
    try {
      _setLoadingState(true);
      _clearError();
      
      await _performUpdateStatus(bookId, status);
      _showSuccessMessage('Book status updated');
    } catch (e) {
      _handleError('Failed to update book status: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performUpdateStatus(String bookId, ReadingStatus status) async {
    await _repository.updateBookStatus(bookId, status);
    await loadReadingList();
  }

  Future<void> updateBookProgress(String bookId, int currentPage) async {
    try {
      _setLoadingState(true);
      _clearError();
      
      await _performUpdateProgress(bookId, currentPage);
      _showSuccessMessage('Progress updated');
    } catch (e) {
      _handleError('Failed to update progress: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performUpdateProgress(String bookId, int currentPage) async {
    await _repository.updateBookProgress(bookId, currentPage);
    await loadReadingList();
  }

  Future<void> updateBookRating(String bookId, int rating) async {
    try {
      _setLoadingState(true);
      _clearError();
      
      await _performUpdateRating(bookId, rating);
      _showSuccessMessage('Rating updated');
    } catch (e) {
      _handleError('Failed to update rating: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performUpdateRating(String bookId, int rating) async {
    await _repository.updateBookRating(bookId, rating);
    await loadReadingList();
  }

  Future<void> updateBookNotes(String bookId, String notes) async {
    try {
      _setLoadingState(true);
      _clearError();
      
      await _performUpdateNotes(bookId, notes);
      _showSuccessMessage('Notes updated');
    } catch (e) {
      _handleError('Failed to update notes: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performUpdateNotes(String bookId, String notes) async {
    await _repository.updateBookNotes(bookId, notes);
    await loadReadingList();
  }

  void _setLoadingState(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void _clearError() {
    state = state.copyWith(error: null);
  }

  void _updateBooks(List<user_book.UserBook> books) {
    state = state.copyWith(books: books);
  }

  void _handleError(String errorMessage) {
    state = state.copyWith(error: errorMessage);
  }

  void _showSuccessMessage(String message) {
    state = state.copyWith(successMessage: message);
    // Clear success message after a delay
    Future.delayed(const Duration(seconds: 3), () {
      state = state.copyWith(successMessage: null);
    });
  }

  void clearError() {
    _clearError();
  }

  void clearSuccessMessage() {
    state = state.copyWith(successMessage: null);
  }

  List<user_book.UserBook> getBooksByStatus(ReadingStatus status) {
    return state.books.where((book) => book.status == status).toList();
  }

  user_book.UserBook? getBookById(String bookId) {
    try {
      return state.books.firstWhere((book) => book.id == bookId);
    } catch (e) {
      return null;
    }
  }
} 