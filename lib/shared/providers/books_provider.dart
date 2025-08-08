import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/services/books_api_service.dart';
import '../models/book.dart';
import '../models/google_book.dart';

final booksProvider = StateNotifierProvider<BooksNotifier, BooksState>((ref) {
  return BooksNotifier();
});

class BooksState {
  final bool isLoading;
  final List<Book> books;
  final List<Book> featuredBooks;
  final String? error;
  final String? searchQuery;
  final bool hasMoreBooks;
  final int currentPage;

  const BooksState({
    this.isLoading = false,
    this.books = const [],
    this.featuredBooks = const [],
    this.error,
    this.searchQuery,
    this.hasMoreBooks = true,
    this.currentPage = 0,
  });

  BooksState copyWith({
    bool? isLoading,
    List<Book>? books,
    List<Book>? featuredBooks,
    String? error,
    String? searchQuery,
    bool? hasMoreBooks,
    int? currentPage,
  }) {
    return BooksState(
      isLoading: isLoading ?? this.isLoading,
      books: books ?? this.books,
      featuredBooks: featuredBooks ?? this.featuredBooks,
      error: error ?? this.error,
      searchQuery: searchQuery ?? this.searchQuery,
      hasMoreBooks: hasMoreBooks ?? this.hasMoreBooks,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}

class BooksNotifier extends StateNotifier<BooksState> {
  BooksNotifier() : super(const BooksState()) {
    _loadFeaturedBooks();
  }

  Future<void> _loadFeaturedBooks() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      final response = await BooksApiService.getPopularBooks();
      final googleResponse = GoogleBooksResponse.fromJson(response);
      
      final featuredBooks = googleResponse.items
          .take(5)
          .map((googleBook) => _convertGoogleBookToBook(googleBook))
          .toList();

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
      state = state.copyWith(
        books: [],
        searchQuery: null,
        hasMoreBooks: true,
        currentPage: 0,
      );
      return;
    }

    try {
      state = state.copyWith(
        isLoading: true,
        error: null,
        searchQuery: query,
        currentPage: 0,
      );

      final response = await BooksApiService.searchBooks(query: query);
      final googleResponse = GoogleBooksResponse.fromJson(response);
      
      final books = googleResponse.items
          .map((googleBook) => _convertGoogleBookToBook(googleBook))
          .toList();

      state = state.copyWith(
        books: books,
        isLoading: false,
        hasMoreBooks: books.length >= 20,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to search books: $e',
      );
    }
  }

  Future<void> loadMoreBooks() async {
    if (state.isLoading || !state.hasMoreBooks || state.searchQuery == null) {
      return;
    }

    try {
      state = state.copyWith(isLoading: true);
      
      final nextPage = state.currentPage + 1;
      final response = await BooksApiService.searchBooks(
        query: state.searchQuery!,
        startIndex: nextPage * 20,
      );
      
      final googleResponse = GoogleBooksResponse.fromJson(response);
      final newBooks = googleResponse.items
          .map((googleBook) => _convertGoogleBookToBook(googleBook))
          .toList();

      final allBooks = [...state.books, ...newBooks];
      
      state = state.copyWith(
        books: allBooks,
        isLoading: false,
        currentPage: nextPage,
        hasMoreBooks: newBooks.length >= 20,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load more books: $e',
      );
    }
  }

  Future<void> getBooksByCategory(String category) async {
    try {
      state = state.copyWith(
        isLoading: true,
        error: null,
        searchQuery: category,
        currentPage: 0,
      );

      final response = await BooksApiService.getBooksByCategory(category);
      final googleResponse = GoogleBooksResponse.fromJson(response);
      
      final books = googleResponse.items
          .map((googleBook) => _convertGoogleBookToBook(googleBook))
          .toList();

      state = state.copyWith(
        books: books,
        isLoading: false,
        hasMoreBooks: books.length >= 20,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load books by category: $e',
      );
    }
  }

  Future<Book?> getBookById(String bookId) async {
    try {
      final response = await BooksApiService.getBookDetails(bookId);
      final googleBook = GoogleBook.fromJson(response);
      return _convertGoogleBookToBook(googleBook);
    } catch (e) {
      return null;
    }
  }

  Book _convertGoogleBookToBook(GoogleBook googleBook) {
    final volumeInfo = googleBook.volumeInfo;
    final imageLinks = volumeInfo.imageLinks;
    
    // Extract ISBN
    String? isbn;
    if (volumeInfo.industryIdentifiers != null) {
      final isbn13 = volumeInfo.industryIdentifiers!
          .where((id) => id.type == 'ISBN_13')
          .firstOrNull;
      final isbn10 = volumeInfo.industryIdentifiers!
          .where((id) => id.type == 'ISBN_10')
          .firstOrNull;
      isbn = isbn13?.identifier ?? isbn10?.identifier;
    }

    // Parse published date
    DateTime? publishedDate;
    if (volumeInfo.publishedDate != null) {
      try {
        publishedDate = DateTime.parse(volumeInfo.publishedDate!);
      } catch (e) {
        // Try parsing just the year
        try {
          publishedDate = DateTime(int.parse(volumeInfo.publishedDate!));
        } catch (e) {
          // Keep as null if parsing fails
        }
      }
    }

    return Book(
      id: googleBook.id,
      title: volumeInfo.title,
      author: volumeInfo.authors?.join(', ') ?? 'Unknown Author',
      description: volumeInfo.description,
      coverUrl: imageLinks?.thumbnail?.replaceFirst('http://', 'https://'),
      averageRating: null, // Google Books API doesn't provide average rating in search results
      ratingCount: 0,
      pageCount: volumeInfo.pageCount,
      isbn: isbn,
      publishedDate: publishedDate,
      genres: volumeInfo.categories,
      publisher: volumeInfo.publisher,
      language: volumeInfo.language,
    );
  }

  void clearSearch() {
    state = state.copyWith(
      books: [],
      searchQuery: null,
      hasMoreBooks: true,
      currentPage: 0,
      error: null,
    );
  }
} 