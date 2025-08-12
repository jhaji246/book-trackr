import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/book_review.dart';
import '../models/user.dart';
import 'auth_provider.dart';

/// Provider for managing book reviews
final reviewsProvider = StateNotifierProvider<ReviewsNotifier, ReviewsState>((ref) {
  final authState = ref.watch(authProvider);
  return ReviewsNotifier(authState.user?.uid);
});

/// State for book reviews
class ReviewsState {
  final Map<String, List<BookReview>> reviewsByBook;
  final Map<String, BookReview> reviewsById;
  final bool isLoading;
  final String? error;
  final String? selectedBookId;
  final ReviewFilter currentFilter;

  const ReviewsState({
    this.reviewsByBook = const {},
    this.reviewsById = const {},
    this.isLoading = false,
    this.error,
    this.selectedBookId,
    this.currentFilter = const ReviewFilter(),
  });

  ReviewsState copyWith({
    Map<String, List<BookReview>>? reviewsByBook,
    Map<String, BookReview>? reviewsById,
    bool? isLoading,
    String? error,
    String? selectedBookId,
    ReviewFilter? currentFilter,
  }) {
    return ReviewsState(
      reviewsByBook: reviewsByBook ?? this.reviewsByBook,
      reviewsById: reviewsById ?? this.reviewsById,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      selectedBookId: selectedBookId ?? this.selectedBookId,
      currentFilter: currentFilter ?? this.currentFilter,
    );
  }

  /// Get reviews for a specific book
  List<BookReview> getReviewsForBook(String bookId) {
    return reviewsByBook[bookId] ?? [];
  }

  /// Get a specific review by ID
  BookReview? getReviewById(String reviewId) {
    return reviewsById[reviewId];
  }

  /// Get filtered reviews for a book
  List<BookReview> getFilteredReviewsForBook(String bookId) {
    final reviews = getReviewsForBook(bookId);
    return currentFilter.apply(reviews);
  }

  /// Get average rating for a book
  double getAverageRatingForBook(String bookId) {
    final reviews = getReviewsForBook(bookId);
    if (reviews.isEmpty) return 0.0;
    
    final totalRating = reviews.fold<int>(0, (sum, review) => sum + review.rating);
    return totalRating / reviews.length;
  }

  /// Get rating distribution for a book
  Map<int, int> getRatingDistributionForBook(String bookId) {
    final reviews = getReviewsForBook(bookId);
    final distribution = <int, int>{};
    
    for (int i = 1; i <= 5; i++) {
      distribution[i] = reviews.where((r) => r.rating == i).length;
    }
    
    return distribution;
  }

  /// Get total review count for a book
  int getReviewCountForBook(String bookId) {
    return getReviewsForBook(bookId).length;
  }

  /// Get verified review count for a book
  int getVerifiedReviewCountForBook(String bookId) {
    return getReviewsForBook(bookId).where((r) => r.isVerified).length;
  }

  /// Get user's review for a book
  BookReview? getUserReviewForBook(String bookId, String? userId) {
    if (userId == null) return null;
    
    final reviews = getReviewsForBook(bookId);
    try {
      return reviews.firstWhere((r) => r.userId == userId);
    } catch (e) {
      return null;
    }
  }
}

/// Filter for reviews
class ReviewFilter {
  final int? minRating;
  final int? maxRating;
  final bool? hasSpoilers;
  final bool? isVerified;
  final List<String> tags;
  final ReviewSortOrder sortOrder;
  final String? searchQuery;

  const ReviewFilter({
    this.minRating,
    this.maxRating,
    this.hasSpoilers,
    this.isVerified,
    this.tags = const [],
    this.sortOrder = ReviewSortOrder.mostRecent,
    this.searchQuery,
  });

  ReviewFilter copyWith({
    int? minRating,
    int? maxRating,
    bool? hasSpoilers,
    bool? isVerified,
    List<String>? tags,
    ReviewSortOrder? sortOrder,
    String? searchQuery,
  }) {
    return ReviewFilter(
      minRating: minRating ?? this.minRating,
      maxRating: maxRating ?? this.maxRating,
      hasSpoilers: hasSpoilers ?? this.hasSpoilers,
      isVerified: isVerified ?? this.isVerified,
      tags: tags ?? this.tags,
      sortOrder: sortOrder ?? this.sortOrder,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }

  /// Apply filter to a list of reviews
  List<BookReview> apply(List<BookReview> reviews) {
    var filtered = List<BookReview>.from(reviews);

    // Apply rating filter
    if (minRating != null) {
      filtered = filtered.where((r) => r.rating >= minRating!).toList();
    }
    if (maxRating != null) {
      filtered = filtered.where((r) => r.rating <= maxRating!).toList();
    }

    // Apply spoiler filter
    if (hasSpoilers != null) {
      filtered = filtered.where((r) => r.hasSpoilers == hasSpoilers).toList();
    }

    // Apply verification filter
    if (isVerified != null) {
      filtered = filtered.where((r) => r.isVerified == isVerified).toList();
    }

    // Apply tags filter
    if (tags.isNotEmpty) {
      filtered = filtered.where((r) => 
        tags.any((tag) => r.tags.contains(tag))
      ).toList();
    }

    // Apply search filter
    if (searchQuery != null && searchQuery!.isNotEmpty) {
      final query = searchQuery!.toLowerCase();
      filtered = filtered.where((r) =>
        r.content.toLowerCase().contains(query) ||
        (r.title?.toLowerCase().contains(query) ?? false) ||
        r.userName.toLowerCase().contains(query)
      ).toList();
    }

    // Apply sorting
    switch (sortOrder) {
      case ReviewSortOrder.mostRecent:
        filtered.sort((a, b) => b.dateWritten.compareTo(a.dateWritten));
        break;
      case ReviewSortOrder.oldestFirst:
        filtered.sort((a, b) => a.dateWritten.compareTo(b.dateWritten));
        break;
      case ReviewSortOrder.highestRated:
        filtered.sort((a, b) => b.rating.compareTo(a.rating));
        break;
      case ReviewSortOrder.lowestRated:
        filtered.sort((a, b) => a.rating.compareTo(b.rating));
        break;
      case ReviewSortOrder.mostHelpful:
        filtered.sort((a, b) => b.helpfulVotes.compareTo(a.helpfulVotes));
        break;
      case ReviewSortOrder.verifiedFirst:
        filtered.sort((a, b) => b.isVerified.toString().compareTo(a.isVerified.toString()));
        break;
    }

    return filtered;
  }

  /// Check if filter is active
  bool get isActive {
    return minRating != null ||
           maxRating != null ||
           hasSpoilers != null ||
           isVerified != null ||
           tags.isNotEmpty ||
           sortOrder != ReviewSortOrder.mostRecent ||
           (searchQuery != null && searchQuery!.isNotEmpty);
  }

  /// Reset filter to defaults
  ReviewFilter reset() {
    return const ReviewFilter();
  }
}

/// Sort order for reviews
enum ReviewSortOrder {
  mostRecent('Most Recent'),
  oldestFirst('Oldest First'),
  highestRated('Highest Rated'),
  lowestRated('Lowest Rated'),
  mostHelpful('Most Helpful'),
  verifiedFirst('Verified First');

  const ReviewSortOrder(this.displayName);
  final String displayName;
}

/// Notifier for managing book reviews
class ReviewsNotifier extends StateNotifier<ReviewsState> {
  final String? _userId;

  ReviewsNotifier(this._userId) : super(const ReviewsState());

  /// Add a new review
  void addReview(BookReview review) {
    final bookReviews = List<BookReview>.from(
      state.reviewsByBook[review.bookId] ?? []
    );
    bookReviews.add(review);
    
    final newReviewsByBook = Map<String, List<BookReview>>.from(state.reviewsByBook);
    newReviewsByBook[review.bookId] = bookReviews;
    
    final newReviewsById = Map<String, BookReview>.from(state.reviewsById);
    newReviewsById[review.id] = review;
    
    state = state.copyWith(
      reviewsByBook: newReviewsByBook,
      reviewsById: newReviewsById,
      error: null,
    );
  }

  /// Update an existing review
  void updateReview(String reviewId, BookReview updatedReview) {
    final bookReviews = List<BookReview>.from(
      state.reviewsByBook[updatedReview.bookId] ?? []
    );
    
    final reviewIndex = bookReviews.indexWhere((r) => r.id == reviewId);
    if (reviewIndex != -1) {
      bookReviews[reviewIndex] = updatedReview;
      
      final newReviewsByBook = Map<String, List<BookReview>>.from(state.reviewsByBook);
      newReviewsByBook[updatedReview.bookId] = bookReviews;
      
      final newReviewsById = Map<String, BookReview>.from(state.reviewsById);
      newReviewsById[reviewId] = updatedReview;
      
      state = state.copyWith(
        reviewsByBook: newReviewsByBook,
        reviewsById: newReviewsById,
        error: null,
      );
    }
  }

  /// Delete a review
  void deleteReview(String reviewId) {
    final review = state.reviewsById[reviewId];
    if (review != null) {
      final bookReviews = List<BookReview>.from(
        state.reviewsByBook[review.bookId] ?? []
      );
      bookReviews.removeWhere((r) => r.id == reviewId);
      
      final newReviewsByBook = Map<String, List<BookReview>>.from(state.reviewsByBook);
      newReviewsByBook[review.bookId] = bookReviews;
      
      final newReviewsById = Map<String, BookReview>.from(state.reviewsById);
      newReviewsById.remove(reviewId);
      
      state = state.copyWith(
        reviewsByBook: newReviewsByBook,
        reviewsById: newReviewsById,
        error: null,
      );
    }
  }

  /// Vote on a review
  void voteOnReview(String reviewId, VoteType voteType) {
    if (_userId == null) return;
    
    final review = state.reviewsById[reviewId];
    if (review != null) {
      BookReview updatedReview;
      
      switch (voteType) {
        case VoteType.helpful:
          updatedReview = review.markHelpful(_userId!);
          break;
        case VoteType.unhelpful:
          updatedReview = review.markUnhelpful(_userId!);
          break;
      }
      
      updateReview(reviewId, updatedReview);
    }
  }

  /// Remove vote from a review
  void removeVote(String reviewId) {
    if (_userId == null) return;
    
    final review = state.reviewsById[reviewId];
    if (review != null) {
      final updatedReview = review.removeVote(_userId!);
      updateReview(reviewId, updatedReview);
    }
  }

  /// Set selected book for reviews
  void selectBook(String bookId) {
    state = state.copyWith(selectedBookId: bookId);
  }

  /// Update review filter
  void updateFilter(ReviewFilter filter) {
    state = state.copyWith(currentFilter: filter);
  }

  /// Clear review filter
  void clearFilter() {
    state = state.copyWith(currentFilter: const ReviewFilter());
  }

  /// Set error message
  void setError(String error) {
    state = state.copyWith(error: error);
  }

  /// Clear error message
  void clearError() {
    state = state.copyWith(error: null);
  }

  /// Get user's review for a book
  BookReview? getUserReviewForBook(String bookId) {
    if (_userId == null) return null;
    
    final reviews = state.getReviewsForBook(bookId);
    try {
      return reviews.firstWhere((r) => r.userId == _userId);
    } catch (e) {
      return null;
    }
  }

  /// Check if user has reviewed a book
  bool hasUserReviewedBook(String bookId) {
    return getUserReviewForBook(bookId) != null;
  }

  /// Get all reviews by user
  List<BookReview> getReviewsByUser(String userId) {
    final allReviews = state.reviewsById.values.toList();
    return allReviews.where((r) => r.userId == userId).toList();
  }

  /// Get user's average rating
  double getUserAverageRating(String userId) {
    final userReviews = getReviewsByUser(userId);
    if (userReviews.isEmpty) return 0.0;
    
    final totalRating = userReviews.fold<int>(0, (sum, review) => sum + review.rating);
    return totalRating / userReviews.length;
  }
}
