import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base failure class for the AI features
@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory Failure.cacheFailure({
    required String message,
  }) = CacheFailure;

  const factory Failure.invalidInputFailure({
    required String message,
    String? field,
  }) = InvalidInputFailure;

  const factory Failure.authFailure({
    required String message,
  }) = AuthFailure;

  const factory Failure.aiModelFailure({
    required String message,
    String? modelName,
    String? operation,
  }) = AIModelFailure;

  const factory Failure.insufficientDataFailure({
    required String message,
    required int minimumDataPoints,
    String? dataType,
  }) = InsufficientDataFailure;

  const factory Failure.recommendationGenerationFailure({
    required String message,
    String? recommendationType,
    String? reason,
  }) = RecommendationGenerationFailure;

  const factory Failure.contentAnalysisFailure({
    required String message,
    String? analysisType,
    String? bookId,
  }) = ContentAnalysisFailure;

  const factory Failure.difficultyAssessmentFailure({
    required String message,
    String? bookId,
    String? assessmentType,
  }) = DifficultyAssessmentFailure;

  const factory Failure.learningPathFailure({
    required String message,
    String? pathId,
    String? operation,
  }) = LearningPathFailure;

  const factory Failure.comprehensionAssessmentFailure({
    required String message,
    String? userId,
    String? bookId,
    String? assessmentType,
  }) = ComprehensionAssessmentFailure;

  const factory Failure.nlpProcessingFailure({
    required String message,
    String? bookId,
    String? nlpOperation,
  }) = NLPProcessingFailure;

  const factory Failure.modelTrainingFailure({
    required String message,
    String? modelName,
    String? trainingData,
  }) = ModelTrainingFailure;

  const factory Failure.preferenceUpdateFailure({
    required String message,
    String? userId,
    String? preferenceType,
  }) = PreferenceUpdateFailure;

  const factory Failure.insightGenerationFailure({
    required String message,
    String? insightType,
    String? context,
  }) = InsightGenerationFailure;

  const factory Failure.scheduleGenerationFailure({
    required String message,
    String? userId,
    String? bookId,
    String? scheduleType,
  }) = ScheduleGenerationFailure;

  const factory Failure.goalGenerationFailure({
    required String message,
    String? userId,
    String? goalType,
    String? timeframe,
  }) = GoalGenerationFailure;

  const factory Failure.challengeGenerationFailure({
    required String message,
    String? userId,
    String? challengeType,
    String? difficulty,
  }) = ChallengeGenerationFailure;

  const factory Failure.contentModerationFailure({
    required String message,
    String? reason,
    String? contentType,
  }) = ContentModerationFailure;

  const factory Failure.rateLimitFailure({
    required String message,
    required Duration cooldown,
    String? operation,
  }) = RateLimitFailure;

  const factory Failure.modelUnavailableFailure({
    required String message,
    String? modelName,
    String? alternative,
  }) = ModelUnavailableFailure;

  const factory Failure.dataQualityFailure({
    required String message,
    String? dataType,
    String? qualityIssue,
  }) = DataQualityFailure;
}

/// Server-related failures
class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    this.statusCode,
  });
}

/// Network-related failures
class NetworkFailure extends Failure {
  const NetworkFailure({required super.message});
}

/// Cache-related failures
class CacheFailure extends Failure {
  const CacheFailure({required super.message});
}

/// Input validation failures
class InvalidInputFailure extends Failure {
  const InvalidInputFailure({
    required super.message,
    this.field,
  });
}

/// Authentication failures
class AuthFailure extends Failure {
  const AuthFailure({required super.message});
}

/// AI model failures
class AIModelFailure extends Failure {
  const AIModelFailure({
    required super.message,
    this.modelName,
    this.operation,
  });
}

/// Insufficient data failures
class InsufficientDataFailure extends Failure {
  const InsufficientDataFailure({
    required super.message,
    this.minimumDataPoints,
    this.dataType,
  });
}

/// Recommendation generation failures
class RecommendationGenerationFailure extends Failure {
  const RecommendationGenerationFailure({
    required super.message,
    this.recommendationType,
    this.reason,
  });
}

/// Content analysis failures
class ContentAnalysisFailure extends Failure {
  const ContentAnalysisFailure({
    required super.message,
    this.analysisType,
    this.bookId,
  });
}

/// Difficulty assessment failures
class DifficultyAssessmentFailure extends Failure {
  const DifficultyAssessmentFailure({
    required super.message,
    this.bookId,
    this.assessmentType,
  });
}

/// Learning path failures
class LearningPathFailure extends Failure {
  const LearningPathFailure({
    required super.message,
    this.pathId,
    this.operation,
  });
}

/// Comprehension assessment failures
class ComprehensionAssessmentFailure extends Failure {
  const ComprehensionAssessmentFailure({
    required super.message,
    this.userId,
    this.bookId,
    this.assessmentType,
  });
}

/// NLP processing failures
class NLPProcessingFailure extends Failure {
  const NLPProcessingFailure({
    required super.message,
    this.bookId,
    this.nlpOperation,
  });
}

/// Model training failures
class ModelTrainingFailure extends Failure {
  const ModelTrainingFailure({
    required super.message,
    this.modelName,
    this.trainingData,
  });
}

/// Preference update failures
class PreferenceUpdateFailure extends Failure {
  const PreferenceUpdateFailure({
    required super.message,
    this.userId,
    this.preferenceType,
  });
}

/// Insight generation failures
class InsightGenerationFailure extends Failure {
  const InsightGenerationFailure({
    required super.message,
    this.insightType,
    this.context,
  });
}

/// Schedule generation failures
class ScheduleGenerationFailure extends Failure {
  const ScheduleGenerationFailure({
    required super.message,
    this.userId,
    this.bookId,
    this.scheduleType,
  });
}

/// Goal generation failures
class GoalGenerationFailure extends Failure {
  const GoalGenerationFailure({
    required super.message,
    this.userId,
    this.goalType,
    this.timeframe,
  });
}

/// Challenge generation failures
class ChallengeGenerationFailure extends Failure {
  const ChallengeGenerationFailure({
    required super.message,
    this.userId,
    this.challengeType,
    this.difficulty,
  });
}

/// Content moderation failures
class ContentModerationFailure extends Failure {
  const ContentModerationFailure({
    required super.message,
    this.reason,
    this.contentType,
  });
}

/// Rate limit failures
class RateLimitFailure extends Failure {
  const RateLimitFailure({
    required super.message,
    this.cooldown,
    this.operation,
  });
}

/// Model unavailable failures
class ModelUnavailableFailure extends Failure {
  const ModelUnavailableFailure({
    required super.message,
    this.modelName,
    this.alternative,
  });
}

/// Data quality failures
class DataQualityFailure extends Failure {
  const DataQualityFailure({
    required super.message,
    this.dataType,
    this.qualityIssue,
  });
}
