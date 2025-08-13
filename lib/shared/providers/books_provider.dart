import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/book.dart';
import '../../core/services/books_api_service.dart';

final booksProvider = StateNotifierProvider<BooksNotifier, BooksState>((ref) {
  return BooksNotifier();
});

class BooksState {
  final List<Book> books;
  final List<Book> featuredBooks;
  final bool isLoading;
  final String? error;
  final String? searchQuery;

  const BooksState({
    this.books = const [],
    this.featuredBooks = const [],
    this.isLoading = false,
    this.error,
    this.searchQuery,
  });

  BooksState copyWith({
    List<Book>? books,
    List<Book>? featuredBooks,
    bool? isLoading,
    String? error,
    String? searchQuery,
  }) {
    return BooksState(
      books: books ?? this.books,
      featuredBooks: featuredBooks ?? this.featuredBooks,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

class BooksNotifier extends StateNotifier<BooksState> {
  BooksNotifier() : super(const BooksState()) {
    loadFeaturedBooks();
  }

  Future<void> loadFeaturedBooks() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      // Load featured books from API
      List<Book> featuredBooks = [];
      try {
        final apiResponse = await BooksApiService.searchBooks(query: 'bestseller fiction');
        featuredBooks = _convertApiResponseToBooks(apiResponse);
      } catch (e) {
        // If API fails, set error
        state = state.copyWith(
          featuredBooks: [],
          isLoading: false,
          error: 'Failed to load featured books: $e',
        );
        return;
      }
      
      state = state.copyWith(
        featuredBooks: featuredBooks,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load featured books: $e',
      );
    }
  }

  Future<void> searchBooks(String query) async {
    if (_isQueryEmpty(query)) {
      _clearSearchResults();
      return;
    }

    try {
      _setLoadingState(true);
      _clearError();
      _updateSearchQuery(query);
      
      final apiResponse = await BooksApiService.searchBooks(query: query);
      final books = _convertApiResponseToBooks(apiResponse);
      _updateSearchResults(books);
    } catch (e) {
      _handleSearchError(e);
    } finally {
      _setLoadingState(false);
    }
  }

  bool _isQueryEmpty(String query) {
    return query.trim().isEmpty;
  }

  void _clearSearchResults() {
    state = state.copyWith(books: [], searchQuery: null);
  }

  void _setLoadingState(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void _clearError() {
    state = state.copyWith(error: null);
  }

  void _updateSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  Future<List<Book>> _performBookSearch(String query) async {
    final apiResponse = await BooksApiService.searchBooks(query: query);
    return _convertApiResponseToBooks(apiResponse);
  }

  void _updateSearchResults(List<Book> books) {
    state = state.copyWith(books: books);
  }

  void _handleSearchError(dynamic error) {
    state = state.copyWith(error: 'Failed to search books: $error');
  }

  Future<Book?> getBookById(String bookId) async {
    try {
      final apiResponse = await BooksApiService.getBookDetails(bookId);
      final books = _convertApiResponseToBooks({'items': [apiResponse]});
      return books.isNotEmpty ? books.first : null;
    } catch (e) {
      state = state.copyWith(error: 'Failed to get book details: $e');
      return null;
    }
  }

  void clearSearch() {
    state = state.copyWith(books: [], searchQuery: null);
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  /// Converts API response to list of Book objects
  List<Book> _convertApiResponseToBooks(Map<String, dynamic> apiResponse) {
    try {
      final items = apiResponse['items'] as List?;
      if (items == null || items.isEmpty) return [];

      return items.map((item) {
        final volumeInfo = item['volumeInfo'] as Map<String, dynamic>;
        final imageLinks = volumeInfo['imageLinks'] as Map<String, dynamic>?;
        
        return Book(
          id: item['id'] ?? '',
          title: volumeInfo['title'] ?? 'Unknown Title',
          author: (volumeInfo['authors'] as List?)?.join(', ') ?? 'Unknown Author',
          description: volumeInfo['description'] ?? '',
          isbn: _extractIsbn(volumeInfo['industryIdentifiers']),
          pageCount: volumeInfo['pageCount'] ?? 0,
          publishedDate: _parsePublishedDate(volumeInfo['publishedDate']).toIso8601String().split('T')[0],
          publisher: volumeInfo['publisher'] ?? '',
          coverUrl: imageLinks?['thumbnail']?.replaceFirst('http://', 'https://') ?? '',
          genres: (volumeInfo['categories'] as List?)?.cast<String>() ?? [],
          averageRating: (volumeInfo['averageRating'] as num?)?.toDouble() ?? 0.0,
          ratingCount: volumeInfo['ratingsCount'] ?? 0,
          language: volumeInfo['language'] ?? 'en',
        );
      }).toList();
    } catch (e) {
      return [];
    }
  }

  /// Extracts ISBN from industry identifiers
  String _extractIsbn(List? industryIdentifiers) {
    if (industryIdentifiers == null) return '';
    
    for (final identifier in industryIdentifiers) {
      if (identifier['type'] == 'ISBN_13') {
        return identifier['identifier'] ?? '';
      }
    }
    
    for (final identifier in industryIdentifiers) {
      if (identifier['type'] == 'ISBN_10') {
        return identifier['identifier'] ?? '';
      }
    }
    
    return '';
  }

  /// Parses published date
  DateTime _parsePublishedDate(String? dateString) {
    if (dateString == null) return DateTime.now();
    
    try {
      return DateTime.parse(dateString);
    } catch (e) {
      return DateTime.now();
    }
  }

  /// Calculates estimated reading time
  int _calculateReadingTime(int pageCount) {
    // Average reading speed: 1 page per 2 minutes
    return (pageCount * 2 / 60).round();
  }

  /// Determines book difficulty based on page count
  String _determineDifficulty(int pageCount) {
    if (pageCount < 200) return 'Easy';
    if (pageCount < 400) return 'Medium';
    return 'Hard';
  }


}