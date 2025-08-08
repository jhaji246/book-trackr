import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/services/recommendation_service.dart';
import '../models/book.dart';
import 'books_provider.dart';
import 'bookshelf_provider.dart';

final recommendationProvider = StateNotifierProvider<RecommendationNotifier, RecommendationState>((ref) {
  return RecommendationNotifier(ref);
});

class RecommendationState {
  final List<Book> personalizedRecommendations;
  final List<Book> trendingBooks;
  final List<Book> similarBooks;
  final bool isLoading;
  final String? error;
  final UserProfile? userProfile;

  const RecommendationState({
    this.personalizedRecommendations = const [],
    this.trendingBooks = const [],
    this.similarBooks = const [],
    this.isLoading = false,
    this.error,
    this.userProfile,
  });

  RecommendationState copyWith({
    List<Book>? personalizedRecommendations,
    List<Book>? trendingBooks,
    List<Book>? similarBooks,
    bool? isLoading,
    String? error,
    UserProfile? userProfile,
  }) {
    return RecommendationState(
      personalizedRecommendations: personalizedRecommendations ?? this.personalizedRecommendations,
      trendingBooks: trendingBooks ?? this.trendingBooks,
      similarBooks: similarBooks ?? this.similarBooks,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      userProfile: userProfile ?? this.userProfile,
    );
  }
}

class RecommendationNotifier extends StateNotifier<RecommendationState> {
  final Ref _ref;

  RecommendationNotifier(this._ref) : super(const RecommendationState()) {
    _loadRecommendations();
  }

  Future<void> _loadRecommendations() async {
    try {
      state = state.copyWith(isLoading: true, error: null);

      final booksState = _ref.read(booksProvider);
      final bookshelfState = _ref.read(bookshelfProvider);

      if (booksState.featuredBooks.isEmpty) {
        state = state.copyWith(isLoading: false);
        return;
      }

      // Get user's completed books
      final completedBooks = bookshelfState.completed.map((userBook) => userBook.book).toList();

      // Generate personalized recommendations
      final recommendations = RecommendationService.getRecommendations(
        booksState.featuredBooks,
        bookshelfState.books,
        completedBooks,
      );

      // Get trending books
      final trendingBooks = RecommendationService.getTrendingBooks(booksState.featuredBooks);

      // Analyze user profile
      final userProfile = RecommendationService.analyzeUserProfile(
        bookshelfState.books,
        completedBooks,
      );

      state = state.copyWith(
        personalizedRecommendations: recommendations,
        trendingBooks: trendingBooks,
        userProfile: userProfile,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load recommendations: $e',
      );
    }
  }

  Future<void> refreshRecommendations() async {
    await _loadRecommendations();
  }

  Future<void> getSimilarBooks(Book book) async {
    try {
      final booksState = _ref.read(booksProvider);
      final similarBooks = RecommendationService.getSimilarBooks(
        book,
        booksState.featuredBooks,
        5,
      );

      state = state.copyWith(similarBooks: similarBooks);
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to load similar books: $e',
      );
    }
  }

  List<String> getRecommendationReasons(Book book) {
    if (state.userProfile == null) {
      return ['Popular book'];
    }

    return RecommendationService.getRecommendationReasons(
      book,
      state.userProfile!,
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
} 