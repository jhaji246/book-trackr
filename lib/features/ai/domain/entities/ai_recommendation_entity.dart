import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_recommendation_entity.freezed.dart';
part 'ai_recommendation_entity.g.dart';

/// Core business entity for AI-powered book recommendations
@freezed
class AIRecommendationEntity with _$AIRecommendationEntity {
  const factory AIRecommendationEntity({
    required String id,
    required String userId,
    required String bookId,
    required String title,
    required String author,
    required String genre,
    required double confidenceScore,
    required RecommendationReason reason,
    required List<String> explanationPoints,
    required Map<String, double> factorScores,
    required RecommendationType type,
    required bool isPersonalized,
    required DateTime dateGenerated,
    required DateTime expiryDate,
    required bool isViewed,
    required bool isAccepted,
    required DateTime? dateAccepted,
    required String? userFeedback,
    required double? userRating,
  }) = _AIRecommendationEntity;

  factory AIRecommendationEntity.fromJson(Map<String, dynamic> json) => _$AIRecommendationEntityFromJson(json);
}

/// Recommendation reason enum
enum RecommendationReason {
  genrePreference,
  authorSimilarity,
  readingPattern,
  socialInfluence,
  trending,
  seasonal,
  difficultyMatch,
  moodBased,
  completionRate,
  ratingSimilarity,
  timeBased,
  collaborative,
  diversity,
  exploration,
}

/// Recommendation type enum
enum RecommendationType {
  instant,
  daily,
  weekly,
  contextual,
  seasonal,
  social,
  personalized,
  trending,
  discovery,
  challenge,
}

/// AI reading difficulty assessment entity
@freezed
class ReadingDifficultyEntity with _$ReadingDifficultyEntity {
  const factory ReadingDifficultyEntity({
    required String bookId,
    required String title,
    required String author,
    required DifficultyLevel level,
    required double difficultyScore,
    required Map<String, double> factorScores,
    required List<String> difficultyFactors,
    required String explanation,
    required int estimatedReadingTime,
    required List<String> suggestedPrerequisites,
    required List<String> learningObjectives,
    required Map<String, double> skillRequirements,
    required DateTime dateAssessed,
    required String assessmentModel,
    required double confidence,
  }) = _ReadingDifficultyEntity;

  factory ReadingDifficultyEntity.fromJson(Map<String, dynamic> json) => _$ReadingDifficultyEntityFromJson(json);
}

/// Difficulty level enum
enum DifficultyLevel {
  beginner,
  elementary,
  intermediate,
  advanced,
  expert,
  scholarly,
}

/// AI content analysis entity
@freezed
class ContentAnalysisEntity with _$ContentAnalysisEntity {
  const factory ContentAnalysisEntity({
    required String bookId,
    required String title,
    required String author,
    required ContentSummaryEntity summary,
    required List<ThemeEntity> themes,
    required List<CharacterEntity> characters,
    required List<PlotPointEntity> plotPoints,
    required WritingStyleEntity writingStyle,
    required List<String> keyQuotes,
    required Map<String, double> sentimentAnalysis,
    required List<String> contentWarnings,
    required List<String> educationalValue,
    required DateTime dateAnalyzed,
    required String analysisModel,
    required double confidence,
  }) = _ContentAnalysisEntity;

  factory ContentAnalysisEntity.fromJson(Map<String, dynamic> json) => _$ContentAnalysisEntityFromJson(json);
}

/// Content summary entity
@freezed
class ContentSummaryEntity with _$ContentSummaryEntity {
  const factory ContentSummaryEntity({
    required String shortSummary,
    required String detailedSummary,
    required List<String> keyPoints,
    required List<String> mainIdeas,
    required String conclusion,
    required int summaryLength,
    required List<String> tags,
  }) = _ContentSummaryEntity;

  factory ContentSummaryEntity.fromJson(Map<String, dynamic> json) => _$ContentSummaryEntityFromJson(json);
}

/// Theme entity
@freezed
class ThemeEntity with _$ThemeEntity {
  const factory ThemeEntity({
    required String name,
    required String description,
    required double prominence,
    required List<String> examples,
    required List<String> relatedThemes,
    required String category,
  }) = _ThemeEntity;

  factory ThemeEntity.fromJson(Map<String, dynamic> json) => _$ThemeEntityFromJson(json);
}

/// Character entity
@freezed
class CharacterEntity with _$CharacterEntity {
  const factory CharacterEntity({
    required String name,
    required String description,
    required CharacterRole role,
    required double importance,
    required List<String> traits,
    required List<String> relationships,
    required String development,
    required List<String> quotes,
  }) = _CharacterEntity;

  factory CharacterEntity.fromJson(Map<String, dynamic> json) => _$CharacterEntityFromJson(json);
}

/// Character role enum
enum CharacterRole {
  protagonist,
  antagonist,
  supporting,
  minor,
  narrator,
  mentor,
  foil,
}

/// Plot point entity
@freezed
class PlotPointEntity with _$PlotPointEntity {
  const factory PlotPointEntity({
    required String description,
    required PlotPointType type,
    required int chapter,
    required double significance,
    required List<String> consequences,
    required List<String> relatedEvents,
    required String impact,
  }) = _PlotPointEntity;

  factory PlotPointEntity.fromJson(Map<String, dynamic> json) => _$PlotPointEntityFromJson(json);
}

/// Plot point type enum
enum PlotPointType {
  exposition,
  incitingIncident,
  risingAction,
  climax,
  fallingAction,
  resolution,
  plotTwist,
  revelation,
  conflict,
  resolution,
}

/// Writing style entity
@freezed
class WritingStyleEntity with _$WritingStyleEntity {
  const factory WritingStyleEntity({
    required String style,
    required double complexity,
    required List<String> characteristics,
    required List<String> techniques,
    required String tone,
    required String pacing,
    required List<String> influences,
    required String accessibility,
  }) = _WritingStyleEntity;

  factory WritingStyleEntity.fromJson(Map<String, dynamic> json) => _$WritingStyleEntityFromJson(json);
}

/// AI learning path entity
@freezed
class LearningPathEntity with _$LearningPathEntity {
  const factory LearningPathEntity({
    required String id,
    required String userId,
    required String goal,
    required List<LearningStepEntity> steps,
    required LearningPathStatus status,
    required DateTime startDate,
    required DateTime? completionDate,
    required double progress,
    required List<String> prerequisites,
    required List<String> outcomes,
    required String difficulty,
    required int estimatedDuration,
    required List<String> resources,
    required Map<String, double> skillGains,
  }) = _LearningPathEntity;

  factory LearningPathEntity.fromJson(Map<String, dynamic> json) => _$LearningPathEntityFromJson(json);
}

/// Learning step entity
@freezed
class LearningStepEntity with _$LearningStepEntity {
  const factory LearningStepEntity({
    required String id,
    required String title,
    required String description,
    required String bookId,
    required int order,
    required LearningStepType type,
    required LearningStepStatus status,
    required List<String> objectives,
    required List<String> activities,
    required int estimatedTime,
    required List<String> assessments,
    required Map<String, double> skillFocus,
  }) = _LearningStepEntity;

  factory LearningStepEntity.fromJson(Map<String, dynamic> json) => _$LearningStepEntityFromJson(json);
}

/// Learning step type enum
enum LearningStepType {
  reading,
  reflection,
  discussion,
  practice,
  assessment,
  research,
  creative,
  review,
}

/// Learning step status enum
enum LearningStepStatus {
  notStarted,
  inProgress,
  completed,
  skipped,
  failed,
}

/// Learning path status enum
enum LearningPathStatus {
  notStarted,
  inProgress,
  paused,
  completed,
  abandoned,
}

/// AI comprehension tracking entity
@freezed
class ComprehensionTrackingEntity with _$ComprehensionTrackingEntity {
  const factory ComprehensionTrackingEntity({
    required String userId,
    required String bookId,
    required String title,
    required ComprehensionLevel level,
    required double comprehensionScore,
    required List<String> strengths,
    required List<String> areasForImprovement,
    required List<String> strategies,
    required Map<String, double> skillAssessment,
    required List<String> recommendedActivities,
    required DateTime dateAssessed,
    required String assessmentMethod,
    required double confidence,
  }) = _ComprehensionTrackingEntity;

  factory ComprehensionTrackingEntity.fromJson(Map<String, dynamic> json) => _$ComprehensionTrackingEntityFromJson(json);
}

/// Comprehension level enum
enum ComprehensionLevel {
  basic,
  developing,
  proficient,
  advanced,
  expert,
}

/// AI natural language processing entity
@freezed
class NLPEntity with _$NLPEntity {
  const factory NLPEntity({
    required String bookId,
    required String title,
    required String author,
    required List<SentimentEntity> sentiments,
    required List<EntityEntity> entities,
    required List<KeywordEntity> keywords,
    required List<TopicEntity> topics,
    required LanguageComplexityEntity languageComplexity,
    required List<String> languageFeatures,
    required Map<String, double> readabilityMetrics,
    required DateTime dateProcessed,
    required String nlpModel,
    required double confidence,
  }) = _NLPEntity;

  factory NLPEntity.fromJson(Map<String, dynamic> json) => _$NLPEntityFromJson(json);
}

/// Sentiment entity
@freezed
class SentimentEntity with _$SentimentEntity {
  const factory SentimentEntity({
    required String text,
    required SentimentType type,
    required double score,
    required String context,
    required int chapter,
    required List<String> keywords,
  }) = _SentimentEntity;

  factory SentimentEntity.fromJson(Map<String, dynamic> json) => _$SentimentEntityFromJson(json);
}

/// Sentiment type enum
enum SentimentType {
  positive,
  negative,
  neutral,
  mixed,
  complex,
}

/// Entity entity (named entities)
@freezed
class EntityEntity with _$EntityEntity {
  const factory EntityEntity({
    required String text,
    required EntityType type,
    required double confidence,
    required String description,
    required List<String> synonyms,
    required int frequency,
    required List<int> occurrences,
  }) = _EntityEntity;

  factory EntityEntity.fromJson(Map<String, dynamic> json) => _$EntityEntityFromJson(json);
}

/// Entity type enum
enum EntityType {
  person,
  location,
  organization,
  date,
  event,
  concept,
  object,
  other,
}

/// Keyword entity
@freezed
class KeywordEntity with _$KeywordEntity {
  const factory KeywordEntity({
    required String text,
    required double importance,
    required List<String> relatedKeywords,
    required int frequency,
    required List<int> occurrences,
    required String context,
  }) = _KeywordEntity;

  factory KeywordEntity.fromJson(Map<String, dynamic> json) => _$KeywordEntityFromJson(json);
}

/// Topic entity
@freezed
class TopicEntity with _$TopicEntity {
  const factory TopicEntity({
    required String name,
    required String description,
    required double prominence,
    required List<String> subtopics,
    required List<String> relatedTopics,
    required List<String> keywords,
    required String category,
  }) = _TopicEntity;

  factory TopicEntity.fromJson(Map<String, dynamic> json) => _$TopicEntityFromJson(json);
}

/// Language complexity entity
@freezed
class LanguageComplexityEntity with _$LanguageComplexityEntity {
  const factory LanguageComplexityEntity({
    required double overallComplexity,
    required double vocabularyComplexity,
    required double sentenceComplexity,
    required double structuralComplexity,
    required Map<String, double> complexityFactors,
    required List<String> complexityFeatures,
    required String readabilityLevel,
    required int estimatedAgeGroup,
  }) = _LanguageComplexityEntity;

  factory LanguageComplexityEntity.fromJson(Map<String, dynamic> json) => _$LanguageComplexityEntityFromJson(json);
}
