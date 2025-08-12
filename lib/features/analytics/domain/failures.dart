import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base failure class for the analytics feature
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

  const factory Failure.analyticsNotFoundFailure({
    required String userId,
  }) = AnalyticsNotFoundFailure;

  const factory Failure.insufficientDataFailure({
    required String message,
    required int minimumDataPoints,
  }) = InsufficientDataFailure;

  const factory Failure.insightGenerationFailure({
    required String message,
    String? insightType,
  }) = InsightGenerationFailure;

  const factory Failure.recommendationGenerationFailure({
    required String message,
    String? recommendationType,
  }) = RecommendationGenerationFailure;

  const factory Failure.dataProcessingFailure({
    required String message,
    String? processingStep,
  }) = DataProcessingFailure;

  const factory Failure.exportFailure({
    required String message,
    String? format,
  }) = ExportFailure;

  const factory Failure.predictionFailure({
    required String message,
    String? predictionType,
  }) = PredictionFailure;

  const factory Failure.comparisonFailure({
    required String message,
    String? comparisonType,
  }) = ComparisonFailure;

  const factory Failure.periodValidationFailure({
    required String message,
    DateTime? startDate,
    DateTime? endDate,
  }) = PeriodValidationFailure;
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

/// Analytics not found failures
class AnalyticsNotFoundFailure extends Failure {
  const AnalyticsNotFoundFailure({required super.userId});
}

/// Insufficient data failures
class InsufficientDataFailure extends Failure {
  const InsufficientDataFailure({
    required super.message,
    this.minimumDataPoints,
  });
}

/// Insight generation failures
class InsightGenerationFailure extends Failure {
  const InsightGenerationFailure({
    required super.message,
    this.insightType,
  });
}

/// Recommendation generation failures
class RecommendationGenerationFailure extends Failure {
  const RecommendationGenerationFailure({
    required super.message,
    this.recommendationType,
  });
}

/// Data processing failures
class DataProcessingFailure extends Failure {
  const DataProcessingFailure({
    required super.message,
    this.processingStep,
  });
}

/// Export failures
class ExportFailure extends Failure {
  const ExportFailure({
    required super.message,
    this.format,
  });
}

/// Prediction failures
class PredictionFailure extends Failure {
  const PredictionFailure({
    required super.message,
    this.predictionType,
  });
}

/// Comparison failures
class ComparisonFailure extends Failure {
  const ComparisonFailure({
    required super.message,
    this.comparisonType,
  });
}

/// Period validation failures
class PeriodValidationFailure extends Failure {
  const PeriodValidationFailure({
    required super.message,
    this.startDate,
    this.endDate,
  });
}
