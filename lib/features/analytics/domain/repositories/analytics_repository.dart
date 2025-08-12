import 'package:dartz/dartz.dart';
import '../entities/reading_analytics_entity.dart';
import '../failures.dart';

/// Abstract interface for reading analytics data operations
abstract class AnalyticsRepository {
  /// Get comprehensive reading analytics for a user
  Future<Either<Failure, ReadingAnalyticsEntity>> getUserReadingAnalytics(String userId);
  
  /// Get reading statistics for a user
  Future<Either<Failure, ReadingStatsEntity>> getUserReadingStats(String userId);
  
  /// Get genre-specific analytics for a user
  Future<Either<Failure, List<GenreAnalyticsEntity>>> getUserGenreAnalytics(String userId);
  
  /// Get time-based reading analytics for a user
  Future<Either<Failure, List<TimeAnalyticsEntity>>> getUserTimeAnalytics(String userId);
  
  /// Get individual book analytics for a user
  Future<Either<Failure, List<BookAnalyticsEntity>>> getUserBookAnalytics(String userId);
  
  /// Get goal achievement analytics for a user
  Future<Either<Failure, List<GoalAnalyticsEntity>>> getUserGoalAnalytics(String userId);
  
  /// Get personalized book recommendations for a user
  Future<Either<Failure, List<RecommendationEntity>>> getUserRecommendations(String userId);
  
  /// Get reading insights for a user
  Future<Either<Failure, List<InsightEntity>>> getUserInsights(String userId);
  
  /// Get user achievements
  Future<Either<Failure, List<AchievementEntity>>> getUserAchievements(String userId);
  
  /// Get reading streaks for a user
  Future<Either<Failure, List<ReadingStreakEntity>>> getUserReadingStreaks(String userId);
  
  /// Generate new insights for a user
  Future<Either<Failure, List<InsightEntity>>> generateUserInsights(String userId);
  
  /// Generate new recommendations for a user
  Future<Either<Failure, List<RecommendationEntity>>> generateUserRecommendations(String userId);
  
  /// Update reading analytics for a user
  Future<Either<Failure, ReadingAnalyticsEntity>> updateUserAnalytics(String userId);
  
  /// Get analytics for a specific time period
  Future<Either<Failure, ReadingAnalyticsEntity>> getUserAnalyticsForPeriod(
    String userId,
    DateTime startDate,
    DateTime endDate,
  );
  
  /// Get comparative analytics between two periods
  Future<Either<Failure, Map<String, dynamic>>> getComparativeAnalytics(
    String userId,
    DateTime period1Start,
    DateTime period1End,
    DateTime period2Start,
    DateTime period2End,
  );
  
  /// Get social reading analytics (comparison with friends/community)
  Future<Either<Failure, Map<String, dynamic>>> getSocialReadingAnalytics(String userId);
  
  /// Get reading trend predictions
  Future<Either<Failure, Map<String, dynamic>>> getReadingTrendPredictions(String userId);
  
  /// Get personalized reading goals suggestions
  Future<Either<Failure, List<Map<String, dynamic>>>> getPersonalizedGoalSuggestions(String userId);
  
  /// Get reading efficiency metrics
  Future<Either<Failure, Map<String, dynamic>>> getReadingEfficiencyMetrics(String userId);
  
  /// Get genre exploration suggestions
  Future<Either<Failure, List<Map<String, dynamic>>>> getGenreExplorationSuggestions(String userId);
  
  /// Get time optimization suggestions
  Future<Either<Failure, List<Map<String, dynamic>>>> getTimeOptimizationSuggestions(String userId);
  
  /// Export user analytics data
  Future<Either<Failure, Map<String, dynamic>>> exportUserAnalytics(String userId, String format);
  
  /// Get analytics summary for dashboard
  Future<Either<Failure, Map<String, dynamic>>> getAnalyticsSummary(String userId);
  
  /// Get reading milestones and achievements
  Future<Either<Failure, List<Map<String, dynamic>>>> getReadingMilestones(String userId);
  
  /// Get reading challenges and progress
  Future<Either<Failure, List<Map<String, dynamic>>>> getReadingChallenges(String userId);
  
  /// Get reading community insights
  Future<Either<Failure, Map<String, dynamic>>> getCommunityInsights(String userId);
}
