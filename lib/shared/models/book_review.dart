import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_review.freezed.dart';
part 'book_review.g.dart';

/// Represents a user's review of a book
@freezed
class BookReview with _$BookReview {
  const factory BookReview({
    /// Unique identifier for the review
    required String id,
    
    /// ID of the book being reviewed
    required String bookId,
    
    /// ID of the user who wrote the review
    required String userId,
    
    /// User's display name
    required String userName,
    
    /// User's profile picture URL
    String? userProfilePicture,
    
    /// Rating from 1 to 5 stars
    required int rating,
    
    /// Review title/headline
    String? title,
    
    /// Main review content
    required String content,
    
    /// Whether the review contains spoilers
    required bool hasSpoilers,
    
    /// Date when the review was written
    required DateTime dateWritten,
    
    /// Date when the review was last edited
    required DateTime dateEdited,
    
    /// Number of helpful votes
    required int helpfulVotes,
    
    /// Number of unhelpful votes
    required int unhelpfulVotes,
    
    /// IDs of users who marked this review as helpful
    required List<String> helpfulUserIds,
    
    /// IDs of users who marked this review as unhelpful
    required List<String> unhelpfulUserIds,
    
    /// Whether the review is verified (user actually read the book)
    required bool isVerified,
    
    /// Reading progress when review was written
    required int readingProgress,
    
    /// Tags for the review (e.g., "spoiler-free", "detailed", "quick")
    required List<String> tags,
  }) = _BookReview;

  /// Creates a BookReview instance from JSON data
  factory BookReview.fromJson(Map<String, dynamic> json) => _$BookReviewFromJson(json);
  
  /// Creates a new review
  factory BookReview.create({
    required String bookId,
    required String userId,
    required String userName,
    String? userProfilePicture,
    required int rating,
    String? title,
    required String content,
    required bool hasSpoilers,
    required int readingProgress,
    List<String>? tags,
  }) {
    final now = DateTime.now();
    return BookReview(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      bookId: bookId,
      userId: userId,
      userName: userName,
      userProfilePicture: userProfilePicture,
      rating: rating.clamp(1, 5),
      title: title,
      content: content,
      hasSpoilers: hasSpoilers,
      dateWritten: now,
      dateEdited: now,
      helpfulVotes: 0,
      unhelpfulVotes: 0,
      helpfulUserIds: [],
      unhelpfulUserIds: [],
      isVerified: readingProgress >= 50, // Verified if read at least 50%
      readingProgress: readingProgress,
      tags: tags ?? [],
    );
  }
}

/// Extension methods for BookReview
extension BookReviewExtension on BookReview {
  /// Get the overall helpfulness score
  double get helpfulnessScore {
    final totalVotes = helpfulVotes + unhelpfulVotes;
    if (totalVotes == 0) return 0.0;
    return helpfulVotes / totalVotes;
  }
  
  /// Check if a user has voted on this review
  bool hasUserVoted(String userId) {
    return helpfulUserIds.contains(userId) || unhelpfulUserIds.contains(userId);
  }
  
  /// Check if a user marked this review as helpful
  bool isMarkedHelpfulBy(String userId) {
    return helpfulUserIds.contains(userId);
  }
  
  /// Check if a user marked this review as unhelpful
  bool isMarkedUnhelpfulBy(String userId) {
    return unhelpfulUserIds.contains(userId);
  }
  
  /// Get the user's vote on this review
  VoteType? getUserVote(String userId) {
    if (helpfulUserIds.contains(userId)) return VoteType.helpful;
    if (unhelpfulUserIds.contains(userId)) return VoteType.unhelpful;
    return null;
  }
  
  /// Mark review as helpful by a user
  BookReview markHelpful(String userId) {
    if (helpfulUserIds.contains(userId)) return this;
    
    final newHelpfulIds = List<String>.from(helpfulUserIds)..add(userId);
    final newUnhelpfulIds = List<String>.from(unhelpfulUserIds)..remove(userId);
    
    return copyWith(
      helpfulUserIds: newHelpfulIds,
      unhelpfulUserIds: newUnhelpfulIds,
      helpfulVotes: newHelpfulIds.length,
      unhelpfulVotes: newUnhelpfulIds.length,
    );
  }
  
  /// Mark review as unhelpful by a user
  BookReview markUnhelpful(String userId) {
    if (unhelpfulUserIds.contains(userId)) return this;
    
    final newUnhelpfulIds = List<String>.from(unhelpfulUserIds)..add(userId);
    final newHelpfulIds = List<String>.from(helpfulUserIds)..remove(userId);
    
    return copyWith(
      helpfulUserIds: newHelpfulIds,
      unhelpfulUserIds: newUnhelpfulIds,
      helpfulVotes: newHelpfulIds.length,
      unhelpfulVotes: newUnhelpfulIds.length,
    );
  }
  
  /// Remove user's vote
  BookReview removeVote(String userId) {
    final newHelpfulIds = List<String>.from(helpfulUserIds)..remove(userId);
    final newUnhelpfulIds = List<String>.from(unhelpfulUserIds)..remove(userId);
    
    return copyWith(
      helpfulUserIds: newHelpfulIds,
      unhelpfulUserIds: newUnhelpfulIds,
      helpfulVotes: newHelpfulIds.length,
      unhelpfulVotes: newUnhelpfulIds.length,
    );
  }
  
  /// Update review content
  BookReview updateContent({
    String? title,
    String? content,
    int? rating,
    bool? hasSpoilers,
    int? readingProgress,
    List<String>? tags,
  }) {
    return copyWith(
      title: title ?? this.title,
      content: content ?? this.content,
      rating: rating?.clamp(1, 5) ?? this.rating,
      hasSpoilers: hasSpoilers ?? this.hasSpoilers,
      readingProgress: readingProgress ?? this.readingProgress,
      tags: tags ?? this.tags,
      dateEdited: DateTime.now(),
      isVerified: (readingProgress ?? this.readingProgress) >= 50,
    );
  }
  
  /// Get formatted date string
  String get formattedDate {
    final now = DateTime.now();
    final difference = now.difference(dateWritten);
    
    if (difference.inDays == 0) return 'Today';
    if (difference.inDays == 1) return 'Yesterday';
    if (difference.inDays < 7) return '${difference.inDays} days ago';
    if (difference.inDays < 30) return '${(difference.inDays / 7).round()} weeks ago';
    if (difference.inDays < 365) return '${(difference.inDays / 30).round()} months ago';
    return '${(difference.inDays / 365).round()} years ago';
  }
  
  /// Get reading progress description
  String get readingProgressDescription {
    if (readingProgress >= 100) return 'Finished reading';
    if (readingProgress >= 75) return 'Almost finished';
    if (readingProgress >= 50) return 'Halfway through';
    if (readingProgress >= 25) return 'Started reading';
    return 'Just started';
  }
}

/// Types of votes on reviews
enum VoteType {
  helpful('Helpful'),
  unhelpful('Unhelpful');

  const VoteType(this.displayName);
  final String displayName;
}

/// Review tags for categorization
class ReviewTags {
  static const List<String> availableTags = [
    'spoiler-free',
    'detailed',
    'quick',
    'thoughtful',
    'emotional',
    'analytical',
    'entertaining',
    'insightful',
    'honest',
    'balanced',
    'critical',
    'enthusiastic',
    'disappointed',
    'surprised',
    'challenging',
    'accessible',
    'academic',
    'casual',
    'professional',
    'personal',
  ];
  
  /// Check if a tag is valid
  static bool isValidTag(String tag) {
    return availableTags.contains(tag.toLowerCase());
  }
  
  /// Get all available tags
  static List<String> get allTags => availableTags;
  
  /// Get popular tags
  static List<String> get popularTags => [
    'spoiler-free',
    'detailed',
    'thoughtful',
    'honest',
    'insightful',
  ];
}
