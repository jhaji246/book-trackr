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
    int? minimumDataPoints,
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
