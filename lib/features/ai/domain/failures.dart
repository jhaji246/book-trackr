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
    int? minimumDataPoints,
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
    String? operation,
    String? text,
  }) = NLPProcessingFailure;

  const factory Failure.sentimentAnalysisFailure({
    required String message,
    String? bookId,
    String? analysisType,
  }) = SentimentAnalysisFailure;

  const factory Failure.topicModelingFailure({
    required String message,
    String? bookId,
    String? modelType,
  }) = TopicModelingFailure;

  const factory Failure.readingLevelAssessmentFailure({
    required String message,
    String? bookId,
    String? assessmentMethod,
  }) = ReadingLevelAssessmentFailure;

  const factory Failure.personalizationFailure({
    required String message,
    String? userId,
    String? personalizationType,
  }) = PersonalizationFailure;

  const factory Failure.dataQualityFailure({
    required String message,
    String? dataSource,
    String? qualityIssue,
  }) = DataQualityFailure;
}
