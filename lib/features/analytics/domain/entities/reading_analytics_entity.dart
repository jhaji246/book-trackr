import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_analytics_entity.freezed.dart';
part 'reading_analytics_entity.g.dart';

/// Core business entity for reading analytics and insights
@freezed
class ReadingAnalyticsEntity with _$ReadingAnalyticsEntity {
  const factory ReadingAnalyticsEntity({
    required String userId,
    required ReadingStatsEntity overallStats,
    required List<GenreAnalyticsEntity> genreAnalytics,
    required List<TimeAnalyticsEntity> timeAnalytics,
    required List<BookAnalyticsEntity> bookAnalytics,
    required List<GoalAnalyticsEntity> goalAnalytics,
    required List<RecommendationEntity> recommendations,
    required List<InsightEntity> insights,
    required List<AchievementEntity> achievements,
    required List<ReadingStreakEntity> readingStreaks,
    required DateTime dateGenerated,
    required DateTime lastUpdated,
  }) = _ReadingAnalyticsEntity;

  factory ReadingAnalyticsEntity.fromJson(Map<String, dynamic> json) => _$ReadingAnalyticsEntityFromJson(json);
}

/// Overall reading statistics
@freezed
class ReadingStatsEntity with _$ReadingStatsEntity {
  const factory ReadingStatsEntity({
    required int totalBooksRead,
    required int totalPagesRead,
    required int totalReadingTimeMinutes,
    required double averageRating,
    required double averagePagesPerDay,
    required double averageReadingTimePerDay,
    required int currentReadingStreak,
    required int longestReadingStreak,
    required int totalSessions,
    required double averageSessionLength,
    required Map<String, int> booksByMonth,
    required Map<String, int> pagesByMonth,
    required Map<String, double> ratingsByMonth,
  }) = _ReadingStatsEntity;

  factory ReadingStatsEntity.fromJson(Map<String, dynamic> json) => _$ReadingStatsEntityFromJson(json);
}

/// Genre-specific analytics
@freezed
class GenreAnalyticsEntity with _$GenreAnalyticsEntity {
  const factory GenreAnalyticsEntity({
    required String genre,
    required int booksRead,
    required int totalPages,
    required double averageRating,
    required double averagePagesPerBook,
    required int totalReadingTimeMinutes,
    required double percentageOfTotalReading,
    required List<String> favoriteAuthors,
    required List<String> topBooks,
    required Map<String, int> readingByMonth,
    required double readingVelocity,
    required String readingTrend,
  }) = _GenreAnalyticsEntity;

  factory GenreAnalyticsEntity.fromJson(Map<String, dynamic> json) => _$GenreAnalyticsEntityFromJson(json);
}

/// Time-based reading analytics
@freezed
class TimeAnalyticsEntity with _$TimeAnalyticsEntity {
  const factory TimeAnalyticsEntity({
    required String timeSlot,
    required int totalSessions,
    required int totalReadingTimeMinutes,
    required double averageSessionLength,
    required double productivityScore,
    required List<String> preferredGenres,
    required Map<String, int> readingByDayOfWeek,
    required Map<String, int> readingByHour,
    required double consistencyScore,
    required String optimalReadingTime,
  }) = _TimeAnalyticsEntity;

  factory TimeAnalyticsEntity.fromJson(Map<String, dynamic> json) => _$TimeAnalyticsEntityFromJson(json);
}

/// Individual book analytics
@freezed
class BookAnalyticsEntity with _$BookAnalyticsEntity {
  const factory BookAnalyticsEntity({
    required String bookId,
    required String title,
    required String author,
    required String genre,
    required int pages,
    required double rating,
    required int readingTimeMinutes,
    required DateTime startDate,
    required DateTime? completionDate,
    required double readingSpeed,
    required int sessionsCount,
    required double engagementScore,
    required List<String> notes,
    required Map<String, int> readingProgressByDay,
    required String readingPattern,
    required double difficultyScore,
    required double enjoymentScore,
  }) = _BookAnalyticsEntity;

  factory BookAnalyticsEntity.fromJson(Map<String, dynamic> json) => _$BookAnalyticsEntityFromJson(json);
}

/// Goal achievement analytics
@freezed
class GoalAnalyticsEntity with _$GoalAnalyticsEntity {
  const factory GoalAnalyticsEntity({
    required String goalId,
    required String goalType,
    required String goalDescription,
    required int targetValue,
    required int currentValue,
    required double completionPercentage,
    required DateTime startDate,
    required DateTime targetDate,
    required DateTime? completionDate,
    required GoalStatus status,
    required double progressVelocity,
    required List<String> milestones,
    required List<String> achievements,
    required String difficultyLevel,
    required double motivationScore,
  }) = _GoalAnalyticsEntity;

  factory GoalAnalyticsEntity.fromJson(Map<String, dynamic> json) => _$GoalAnalyticsEntityFromJson(json);
}

/// Goal status enum
enum GoalStatus {
  notStarted,
  inProgress,
  completed,
  exceeded,
  abandoned,
}

/// Book recommendation entity
@freezed
class RecommendationEntity with _$RecommendationEntity {
  const factory RecommendationEntity({
    required String bookId,
    required String title,
    required String author,
    required String genre,
    required double confidenceScore,
    required List<String> reasons,
    required RecommendationType type,
    required Map<String, double> factorScores,
    required String description,
    required DateTime dateGenerated,
    required bool isPersonalized,
  }) = _RecommendationEntity;

  factory RecommendationEntity.fromJson(Map<String, dynamic> json) => _$RecommendationEntityFromJson(json);
}

/// Recommendation type enum
enum RecommendationType {
  genreBased,
  authorBased,
  ratingBased,
  readingPattern,
  socialBased,
  trending,
  seasonal,
  personalized,
  collaborative,
}

/// Reading insight entity
@freezed
class InsightEntity with _$InsightEntity {
  const factory InsightEntity({
    required String id,
    required String title,
    required String description,
    required InsightType type,
    required double confidence,
    required List<String> supportingData,
    required DateTime dateGenerated,
    required bool isActionable,
    required String? actionSuggestion,
    required InsightCategory category,
    required double impactScore,
  }) = _InsightEntity;

  factory InsightEntity.fromJson(Map<String, dynamic> json) => _$InsightEntityFromJson(json);
}

/// Insight type enum
enum InsightType {
  readingPattern,
  genrePreference,
  timeOptimization,
  goalProgress,
  performance,
  social,
  seasonal,
  predictive,
}

/// Insight category enum
enum InsightCategory {
  positive,
  neutral,
  improvement,
  warning,
  achievement,
}

/// Achievement entity
@freezed
class AchievementEntity with _$AchievementEntity {
  const factory AchievementEntity({
    required String id,
    required String title,
    required String description,
    required AchievementType type,
    required int level,
    required double progress,
    required bool isUnlocked,
    required DateTime? unlockDate,
    required String iconPath,
    required List<String> requirements,
    required double rarity,
    required int points,
    required String category,
  }) = _AchievementEntity;

  factory AchievementEntity.fromJson(Map<String, dynamic> json) => _$AchievementEntityFromJson(json);
}

/// Achievement type enum
enum AchievementType {
  readingStreak,
  bookCount,
  pageCount,
  genreExplorer,
  speedReader,
  consistentReader,
  goalAchiever,
  socialReader,
  seasonalReader,
  milestone,
}

/// Reading streak entity
@freezed
class ReadingStreakEntity with _$ReadingStreakEntity {
  const factory ReadingStreakEntity({
    required String id,
    required int currentStreak,
    required int longestStreak,
    required DateTime startDate,
    required DateTime lastReadingDate,
    required List<DateTime> streakDates,
    required double averagePagesPerDay,
    required double consistencyScore,
    required List<String> milestones,
    required bool isActive,
    required int totalStreaks,
    required double successRate,
  }) = _ReadingStreakEntity;

  factory ReadingStreakEntity.fromJson(Map<String, dynamic> json) => _$ReadingStreakEntityFromJson(json);
}
