import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../models/book.dart';
import '../models/google_book.dart';
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
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load featured books: $e',
      );
    }
  }

  Future<void> searchBooks(String query) async {
    if (query.trim().isEmpty) {
      state = state.copyWith(books: [], searchQuery: null);
      return;
    }

    try {
      state = state.copyWith(isLoading: true, error: null, searchQuery: query);
      
      final books = await _apiService.searchBooks(query);
      
      state = state.copyWith(
        books: books,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to search books: $e',
      );
    }
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

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearSearch() {
    state = state.copyWith(books: [], searchQuery: null);
  }
}

class BooksApiService {
  final Dio _dio = Dio();
  static const String _baseUrl = 'https://www.googleapis.com/books/v1';
  static const String _apiKey = 'AIzaSyDnr1rFHn0G4fXZQpWfR75fx5GTpeFM4FE';

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
        return googleResponse.items?.map((item) => _convertToBook(item)).toList() ?? [];
      } else {
        throw Exception('Failed to search books: ${response.statusCode}');
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