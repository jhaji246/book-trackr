import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../models/book.dart';
import '../models/google_book.dart';
import 'package:flutter/foundation.dart';
import '../../core/config/environment.dart';

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
  final BooksApiService _apiService = BooksApiService();

  BooksNotifier() : super(const BooksState()) {
    loadFeaturedBooks();
  }

  Future<void> loadFeaturedBooks() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      // Load featured books (popular books)
      final featuredBooks = await _apiService.searchBooks('bestsellers fiction');
      
      state = state.copyWith(
        featuredBooks: featuredBooks,
        isLoading: false,
      );
    } catch (e) {
      // In development, provide fallback data
      if (Environment.isDebugMode) {
        debugPrint('Error loading featured books: $e');
        debugPrint('Using fallback data for development');
        
        final fallbackBooks = [
          Book(
            id: 'fallback_1',
            title: 'The Great Gatsby',
            author: 'F. Scott Fitzgerald',
            description: 'A story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan.',
            coverUrl: 'https://books.google.com/books/content?id=1',
            averageRating: 4.2,
            ratingCount: 1000,
            pageCount: 180,
            isbn: '978-0743273565',
            publishedDate: '1925-04-10',
            genres: ['Fiction', 'Classic'],
            publisher: 'Scribner',
            language: 'en',
          ),
          Book(
            id: 'fallback_2',
            title: 'To Kill a Mockingbird',
            author: 'Harper Lee',
            description: 'The story of young Scout Finch and her father Atticus in a racially divided Alabama town.',
            coverUrl: 'https://books.google.com/books/content?id=2',
            averageRating: 4.3,
            ratingCount: 1200,
            pageCount: 281,
            isbn: '978-0446310789',
            publishedDate: '1960-07-11',
            genres: ['Fiction', 'Classic'],
            publisher: 'Grand Central Publishing',
            language: 'en',
          ),
        ];
        
        state = state.copyWith(
          featuredBooks: fallbackBooks,
          isLoading: false,
        );
        return;
      }
      
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
      
      final books = await _apiService.searchBooks(query);
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
    return await _apiService.searchBooks(query);
  }

  void _updateSearchResults(List<Book> books) {
    state = state.copyWith(books: books);
  }

  void _handleSearchError(dynamic error) {
    state = state.copyWith(error: 'Failed to search books: $error');
  }

  Future<Book?> getBookById(String bookId) async {
    try {
      final book = await _apiService.getBookById(bookId);
      return book;
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
}

class BooksApiService {
  final Dio _dio = Dio();
  static const String _baseUrl = 'https://www.googleapis.com/books/v1';
  
  // Get API key from environment configuration
  String get _apiKey {
    return Environment.googleBooksApiKey;
  }

  Future<List<Book>> searchBooks(String query) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/volumes',
        queryParameters: {
          'q': query,
          'key': _apiKey,
          'maxResults': 40,
        },
      );

      if (response.statusCode == 200) {
        final googleResponse = GoogleBooksResponse.fromJson(response.data);
        return googleResponse.items.map((item) => _convertToBook(item)).toList();
      } else {
        throw Exception('Failed to search books: HTTP ${response.statusCode}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        throw Exception('Invalid API request. Please check your API key configuration.');
      } else if (e.response?.statusCode == 403) {
        throw Exception('API key is invalid or quota exceeded.');
      } else if (e.response?.statusCode == 429) {
        throw Exception('API rate limit exceeded. Please try again later.');
      } else {
        throw Exception('Network error: ${e.message}');
      }
    } catch (e) {
      throw Exception('Failed to search books: $e');
    }
  }

  Future<Book?> getBookById(String bookId) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/volumes/$bookId',
        queryParameters: {
          'key': _apiKey,
        },
      );

      if (response.statusCode == 200) {
        final volumeInfo = VolumeInfo.fromJson(response.data['volumeInfo']);
        return _convertToBook(GoogleBook(id: bookId, volumeInfo: volumeInfo));
      } else {
        throw Exception('Failed to get book details: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to get book details: $e');
    }
  }

  Book _convertToBook(GoogleBook googleBook) {
    final volumeInfo = googleBook.volumeInfo;
    final imageLinks = volumeInfo.imageLinks;
    final industryIdentifiers = volumeInfo.industryIdentifiers;
    
    // Extract ISBN
    String isbn = '';
    if (industryIdentifiers != null) {
      for (final identifier in industryIdentifiers) {
        if (identifier.type == 'ISBN_13') {
          isbn = identifier.identifier;
          break;
        } else if (identifier.type == 'ISBN_10' && isbn.isEmpty) {
          isbn = identifier.identifier;
        }
      }
    }

    // Extract published date
    String publishedDate = '';
    if (volumeInfo.publishedDate != null) {
      try {
        final date = DateTime.parse(volumeInfo.publishedDate!);
        publishedDate = '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
      } catch (e) {
        publishedDate = volumeInfo.publishedDate!;
      }
    }

    return Book(
      id: googleBook.id,
      title: volumeInfo.title,
      author: volumeInfo.authors?.join(', ') ?? 'Unknown Author',
      description: volumeInfo.description ?? '',
      coverUrl: imageLinks?.thumbnail?.replaceFirst('http://', 'https://') ?? '',
      averageRating: volumeInfo.averageRating ?? 0.0,
      ratingCount: volumeInfo.ratingsCount ?? 0,
      pageCount: volumeInfo.pageCount ?? 0,
      isbn: isbn,
      publishedDate: publishedDate,
      genres: volumeInfo.categories ?? [],
      publisher: volumeInfo.publisher ?? '',
      language: volumeInfo.language ?? '',
    );
  }
} 