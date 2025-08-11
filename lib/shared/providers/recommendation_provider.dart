import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/services/recommendation_service.dart';
import '../models/book.dart';
import '../models/user_book.dart';
import 'bookshelf_provider.dart';

final recommendationProvider = StateNotifierProvider<RecommendationNotifier, RecommendationState>((ref) {
  return RecommendationNotifier(ref);
});

class RecommendationState {
  final List<Book> personalizedRecommendations;
  final List<Book> trendingBooks;
  final bool isLoading;
  final String? error;

  const RecommendationState({
    this.personalizedRecommendations = const [],
    this.trendingBooks = const [],
    this.isLoading = false,
    this.error,
  });

  RecommendationState copyWith({
    List<Book>? personalizedRecommendations,
    List<Book>? trendingBooks,
    bool? isLoading,
    String? error,
  }) {
    return RecommendationState(
      personalizedRecommendations: personalizedRecommendations ?? this.personalizedRecommendations,
      trendingBooks: trendingBooks ?? this.trendingBooks,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

class RecommendationNotifier extends StateNotifier<RecommendationState> {
  final Ref _ref;

  RecommendationNotifier(this._ref) : super(const RecommendationState()) {
    generatePersonalizedRecommendations();
  }

  Future<void> generatePersonalizedRecommendations() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      final recommendations = await RecommendationService.getRecommendations();
      
      state = state.copyWith(
        personalizedRecommendations: recommendations,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to generate recommendations: $e',
        isLoading: false,
      );
    }
  }

  Future<void> refreshRecommendations() async {
    state = state.copyWith(isLoading: true);
    await generatePersonalizedRecommendations();
  }

  List<String> getRecommendationReasons(Book book) {
    // For now, return a simple reason
    // In a real app, you'd implement more sophisticated logic
    return ['Based on your reading history'];
  }
} 