import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';
import '../../domain/entities/book_entity.dart';
import '../../domain/repositories/book_repository.dart';
import '../../domain/usecases/get_featured_books_usecase.dart';
import '../../domain/usecases/search_books_usecase.dart';
import '../../domain/usecases/get_book_by_id_usecase.dart';
import '../../di/books_injection.dart';

/// State class for books using clean architecture
class BooksCleanState {
  final List<BookEntity> featuredBooks;
  final List<BookEntity> searchResults;
  final List<BookEntity> trendingBooks;
  final List<BookEntity> recommendedBooks;
  final bool isLoading;
  final String? errorMessage;
  final bool hasError;

  const BooksCleanState({
    this.featuredBooks = const [],
    this.searchResults = const [],
    this.trendingBooks = const [],
    this.recommendedBooks = const [],
    this.isLoading = false,
    this.errorMessage,
    this.hasError = false,
  });

  BooksCleanState copyWith({
    List<BookEntity>? featuredBooks,
    List<BookEntity>? searchResults,
    List<BookEntity>? trendingBooks,
    List<BookEntity>? recommendedBooks,
    bool? isLoading,
    String? errorMessage,
    bool? hasError,
  }) {
    return BooksCleanState(
      featuredBooks: featuredBooks ?? this.featuredBooks,
      searchResults: searchResults ?? this.searchResults,
      trendingBooks: trendingBooks ?? this.trendingBooks,
      recommendedBooks: recommendedBooks ?? this.recommendedBooks,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      hasError: hasError ?? this.hasError,
    );
  }
}

/// Notifier for books using clean architecture
class BooksCleanNotifier extends StateNotifier<BooksCleanState> {
  final GetFeaturedBooksUseCase _getFeaturedBooksUseCase;
  final SearchBooksUseCase _searchBooksUseCase;
  final GetBookByIdUseCase _getBookByIdUseCase;

  BooksCleanNotifier({
    required GetFeaturedBooksUseCase getFeaturedBooksUseCase,
    required SearchBooksUseCase searchBooksUseCase,
    required GetBookByIdUseCase getBookByIdUseCase,
  })  : _getFeaturedBooksUseCase = getFeaturedBooksUseCase,
        _searchBooksUseCase = searchBooksUseCase,
        _getBookByIdUseCase = getBookByIdUseCase,
        super(const BooksCleanState());

  /// Load featured books using the use case
  Future<void> loadFeaturedBooks() async {
    state = state.copyWith(isLoading: true, hasError: false, errorMessage: null);

    final result = await _getFeaturedBooksUseCase();

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          hasError: true,
          errorMessage: failure.toString(),
        );
      },
      (books) {
        state = state.copyWith(
          featuredBooks: books,
          isLoading: false,
          hasError: false,
        );
      },
    );
  }

  /// Search books using the use case
  Future<void> searchBooks(String query) async {
    if (query.trim().isEmpty) {
      state = state.copyWith(searchResults: []);
      return;
    }

    state = state.copyWith(isLoading: true, hasError: false, errorMessage: null);

    final result = await _searchBooksUseCase(query: query);

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          hasError: true,
          errorMessage: failure.toString(),
        );
      },
      (books) {
        state = state.copyWith(
          searchResults: books,
          isLoading: false,
          hasError: false,
        );
      },
    );
  }

  /// Get book by ID using the use case
  Future<BookEntity?> getBookById(String bookId) async {
    final result = await _getBookByIdUseCase(bookId);

    return result.fold(
      (failure) {
        state = state.copyWith(
          hasError: true,
          errorMessage: failure.toString(),
        );
        return null;
      },
      (book) => book,
    );
  }

  /// Load trending books (placeholder for now)
  Future<void> loadTrendingBooks() async {
    // TODO: Implement trending books use case
    state = state.copyWith(isLoading: true);
    
    // Simulate loading
    await Future.delayed(const Duration(milliseconds: 500));
    
    state = state.copyWith(
      isLoading: false,
      trendingBooks: [], // Will be populated when use case is implemented
    );
  }

  /// Load recommended books (placeholder for now)
  Future<void> loadRecommendedBooks(String userId) async {
    // TODO: Implement recommended books use case
    state = state.copyWith(isLoading: true);
    
    // Simulate loading
    await Future.delayed(const Duration(milliseconds: 500));
    
    state = state.copyWith(
      isLoading: false,
      recommendedBooks: [], // Will be populated when use case is implemented
    );
  }

  /// Clear search results
  void clearSearchResults() {
    state = state.copyWith(searchResults: []);
  }

  /// Clear error state
  void clearError() {
    state = state.copyWith(hasError: false, errorMessage: null);
  }

  /// Refresh all data
  Future<void> refresh() async {
    await Future.wait([
      loadFeaturedBooks(),
      loadTrendingBooks(),
    ]);
  }
}

/// Provider for BooksCleanNotifier
final booksCleanProvider = StateNotifierProvider<BooksCleanNotifier, BooksCleanState>((ref) {
  final getFeaturedBooksUseCase = ref.read(getFeaturedBooksUseCaseProvider);
  final searchBooksUseCase = ref.read(searchBooksUseCaseProvider);
  final getBookByIdUseCase = ref.read(getBookByIdUseCaseProvider);

  return BooksCleanNotifier(
    getFeaturedBooksUseCase: getFeaturedBooksUseCase,
    searchBooksUseCase: searchBooksUseCase,
    getBookByIdUseCase: getBookByIdUseCase,
  );
});

/// Provider for featured books
final featuredBooksProvider = Provider<List<BookEntity>>((ref) {
  final booksState = ref.watch(booksCleanProvider);
  return booksState.featuredBooks;
});

/// Provider for search results
final searchResultsProvider = Provider<List<BookEntity>>((ref) {
  final booksState = ref.watch(booksCleanProvider);
  return booksState.searchResults;
});

/// Provider for trending books
final trendingBooksProvider = Provider<List<BookEntity>>((ref) {
  final booksState = ref.watch(booksCleanProvider);
  return booksState.trendingBooks;
});

/// Provider for recommended books
final recommendedBooksProvider = Provider<List<BookEntity>>((ref) {
  final booksState = ref.watch(booksCleanProvider);
  return booksState.recommendedBooks;
});

/// Provider for loading state
final booksLoadingProvider = Provider<bool>((ref) {
  final booksState = ref.watch(booksCleanProvider);
  return booksState.isLoading;
});

/// Provider for error state
final booksErrorProvider = Provider<String?>((ref) {
  final booksState = ref.watch(booksCleanProvider);
  return booksState.errorMessage;
});

/// Provider for has error state
final booksHasErrorProvider = Provider<bool>((ref) {
  final booksState = ref.watch(booksCleanProvider);
  return booksState.hasError;
});
