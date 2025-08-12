import 'package:dartz/dartz.dart';
import '../entities/reading_analytics_entity.dart';
import '../failures.dart';
import '../repositories/analytics_repository.dart';

/// Use case for getting reading analytics
class GetAnalyticsUseCase {
  final AnalyticsRepository repository;

  const GetAnalyticsUseCase(this.repository);

  /// Get comprehensive reading analytics for a user
  Future<Either<Failure, ReadingAnalyticsEntity>> call(String userId) async {
    try {
      // Validate user ID
      if (userId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'User ID cannot be empty',
          field: 'userId',
        ));
      }

      // Get analytics using the repository
      return await repository.getUserReadingAnalytics(userId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to get analytics: $e',
      ));
    }
  }

  /// Get analytics summary for dashboard
  Future<Either<Failure, Map<String, dynamic>>> getAnalyticsSummary(String userId) async {
    try {
      if (userId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'User ID cannot be empty',
          field: 'userId',
        ));
      }

      return await repository.getAnalyticsSummary(userId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to get analytics summary: $e',
      ));
    }
  }

  /// Get user recommendations
  Future<Either<Failure, List<RecommendationEntity>>> getUserRecommendations(String userId) async {
    try {
      if (userId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'User ID cannot be empty',
          field: 'userId',
        ));
      }

      return await repository.getUserRecommendations(userId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to get recommendations: $e',
      ));
    }
  }

  /// Get user insights
  Future<Either<Failure, List<InsightEntity>>> getUserInsights(String userId) async {
    try {
      if (userId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'User ID cannot be empty',
          field: 'userId',
        ));
      }

      return await repository.getUserInsights(userId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to get insights: $e',
      ));
    }
  }
}
