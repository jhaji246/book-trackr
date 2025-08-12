import 'package:dartz/dartz.dart';
import '../entities/ai_recommendation_entity.dart';
import '../failures.dart';

/// Abstract interface for AI features data operations
abstract class AIFeaturesRepository {
  /// Generate personalized book recommendations for a user
  Future<Either<Failure, List<AIRecommendationEntity>>> generateRecommendations(
    String userId, {
    int? limit,
    List<String>? excludeBookIds,
    RecommendationType? type,
    Map<String, double>? preferences,
  });
  
  /// Get reading difficulty assessment for a book
  Future<Either<Failure, ReadingDifficultyEntity>> assessReadingDifficulty(String bookId);
  
  /// Get content analysis for a book
  Future<Either<Failure, ContentAnalysisEntity>> analyzeBookContent(String bookId);
  
  /// Generate content summary for a book
  Future<Either<Failure, ContentSummaryEntity>> generateContentSummary(String bookId);
  
  /// Extract themes from book content
  Future<Either<Failure, List<ThemeEntity>>> extractThemes(String bookId);
  
  /// Analyze characters in a book
  Future<Either<Failure, List<CharacterEntity>>> analyzeCharacters(String bookId);
  
  /// Identify plot points in a book
  Future<Either<Failure, List<PlotPointEntity>>> identifyPlotPoints(String bookId);
  
  /// Analyze writing style of a book
  Future<Either<Failure, WritingStyleEntity>> analyzeWritingStyle(String bookId);
  
  /// Create personalized learning path for a user
  Future<Either<Failure, LearningPathEntity>> createLearningPath(
    String userId,
    String goal,
    List<String>? prerequisites,
    String? difficulty,
  );
  
  /// Update learning path progress
  Future<Either<Failure, LearningPathEntity>> updateLearningPath(
    String pathId,
    String stepId,
    LearningStepStatus status,
  );
  
  /// Get user's learning paths
  Future<Either<Failure, List<LearningPathEntity>>> getUserLearningPaths(String userId);
  
  /// Assess reading comprehension for a user and book
  Future<Either<Failure, ComprehensionTrackingEntity>> assessComprehension(
    String userId,
    String bookId,
  );
  
  /// Track comprehension progress over time
  Future<Either<Failure, List<ComprehensionTrackingEntity>>> trackComprehensionProgress(
    String userId,
    String bookId,
  );
  
  /// Get comprehension insights and recommendations
  Future<Either<Failure, Map<String, dynamic>>> getComprehensionInsights(String userId);
  
  /// Perform natural language processing on book content
  Future<Either<Failure, NLPEntity>> processBookContent(String bookId);
  
  /// Analyze sentiment in book content
  Future<Either<Failure, List<SentimentEntity>>> analyzeSentiment(String bookId);
  
  /// Extract named entities from book content
  Future<Either<Failure, List<EntityEntity>>> extractEntities(String bookId);
  
  /// Extract keywords from book content
  Future<Either<Failure, List<KeywordEntity>>> extractKeywords(String bookId);
  
  /// Identify topics in book content
  Future<Either<Failure, List<TopicEntity>>> identifyTopics(String bookId);
  
  /// Analyze language complexity of a book
  Future<Either<Failure, LanguageComplexityEntity>> analyzeLanguageComplexity(String bookId);
  
  /// Get readability metrics for a book
  Future<Either<Failure, Map<String, double>>> getReadabilityMetrics(String bookId);
  
  /// Generate contextual recommendations based on current reading
  Future<Either<Failure, List<AIRecommendationEntity>>> generateContextualRecommendations(
    String userId,
    String currentBookId,
    int currentPage,
  );
  
  /// Generate mood-based recommendations
  Future<Either<Failure, List<AIRecommendationEntity>>> generateMoodBasedRecommendations(
    String userId,
    String mood,
    List<String>? preferences,
  );
  
  /// Generate seasonal recommendations
  Future<Either<Failure, List<AIRecommendationEntity>>> generateSeasonalRecommendations(
    String userId,
    String season,
    int? year,
  );
  
  /// Generate diversity-focused recommendations
  Future<Either<Failure, List<AIRecommendationEntity>>> generateDiversityRecommendations(
    String userId,
    List<String> diversityFactors,
    int? limit,
  );
  
  /// Generate exploration recommendations (outside comfort zone)
  Future<Either<Failure, List<AIRecommendationEntity>>> generateExplorationRecommendations(
    String userId,
    double explorationLevel,
    int? limit,
  );
  
  /// Get AI model information and capabilities
  Future<Either<Failure, Map<String, dynamic>>> getAIModelInfo();
  
  /// Update AI model preferences for a user
  Future<Either<Failure, Map<String, dynamic>>> updateUserAIPreferences(
    String userId,
    Map<String, dynamic> preferences,
  );
  
  /// Get AI feature usage statistics for a user
  Future<Either<Failure, Map<String, dynamic>>> getUserAIUsageStats(String userId);
  
  /// Get AI feature performance metrics
  Future<Either<Failure, Map<String, dynamic>>> getAIPerformanceMetrics();
  
  /// Train or update AI models with new data
  Future<Either<Failure, Map<String, dynamic>>> updateAIModels(
    Map<String, dynamic> trainingData,
  );
  
  /// Get AI-generated book insights
  Future<Either<Failure, Map<String, dynamic>>> getBookInsights(String bookId);
  
  /// Generate AI-powered reading suggestions
  Future<Either<Failure, List<String>>> generateReadingSuggestions(
    String userId,
    String context,
    int? limit,
  );
  
  /// Get AI-powered reading difficulty comparison
  Future<Either<Failure, Map<String, dynamic>>> compareReadingDifficulty(
    List<String> bookIds,
  );
  
  /// Generate AI-powered study guides
  Future<Either<Failure, Map<String, dynamic>>> generateStudyGuide(
    String bookId,
    String focus,
    int? depth,
  );
  
  /// Get AI-powered content warnings
  Future<Either<Failure, List<String>>> getContentWarnings(String bookId);
  
  /// Generate AI-powered discussion questions
  Future<Either<Failure, List<String>>> generateDiscussionQuestions(
    String bookId,
    String audience,
    int? count,
  );
  
  /// Get AI-powered vocabulary enhancement
  Future<Either<Failure, Map<String, dynamic>>> getVocabularyEnhancement(
    String bookId,
    String userId,
  );
  
  /// Generate AI-powered reading comprehension questions
  Future<Either<Failure, List<Map<String, dynamic>>>> generateComprehensionQuestions(
    String bookId,
    ComprehensionLevel level,
    int? count,
  );
  
  /// Get AI-powered reading pace recommendations
  Future<Either<Failure, Map<String, dynamic>>> getReadingPaceRecommendations(
    String userId,
    String bookId,
  );
  
  /// Generate AI-powered reading challenges
  Future<Either<Failure, List<Map<String, dynamic>>>> generateReadingChallenges(
    String userId,
    String difficulty,
    int? count,
  );
  
  /// Get AI-powered genre exploration suggestions
  Future<Either<Failure, List<Map<String, dynamic>>>> getGenreExplorationSuggestions(
    String userId,
    List<String> currentGenres,
    int? limit,
  );
  
  /// Generate AI-powered author discovery recommendations
  Future<Either<Failure, List<Map<String, dynamic>>>> generateAuthorDiscoveryRecommendations(
    String userId,
    List<String> favoriteAuthors,
    int? limit,
  );
  
  /// Get AI-powered reading habit insights
  Future<Either<Failure, Map<String, dynamic>>> getReadingHabitInsights(String userId);
  
  /// Generate AI-powered reading goals
  Future<Either<Failure, List<Map<String, dynamic>>>> generateReadingGoals(
    String userId,
    String timeframe,
    String? focus,
  );
  
  /// Get AI-powered reading motivation insights
  Future<Either<Failure, Map<String, dynamic>>> getReadingMotivationInsights(String userId);
  
  /// Generate AI-powered reading schedule
  Future<Either<Failure, Map<String, dynamic>>> generateReadingSchedule(
    String userId,
    String bookId,
    DateTime startDate,
    DateTime targetDate,
  );
  
  /// Get AI-powered reading environment recommendations
  Future<Either<Failure, List<String>>> getReadingEnvironmentRecommendations(
    String userId,
    String bookId,
    String? location,
  );
}
