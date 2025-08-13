import 'package:dartz/dartz.dart';
import '../entities/ai_recommendation_entity.dart';
import '../failures.dart';
import '../repositories/ai_features_repository.dart';

/// Use case for generating AI-powered book recommendations
class GenerateAIRecommendationsUseCase {
  final AIFeaturesRepository repository;

  const GenerateAIRecommendationsUseCase(this.repository);

  /// Generate personalized book recommendations for a user
  Future<Either<Failure, List<AIRecommendationEntity>>> call(
    String userId, {
    int? limit,
    List<String>? excludeBookIds,
    RecommendationType? type,
    Map<String, double>? preferences,
  }) async {
    try {
      // Validate input parameters
      final validationResult = _validateRecommendationRequest(
        userId,
        limit,
        excludeBookIds,
        preferences,
      );
      return validationResult.fold(
        (failure) => Left(failure),
        (_) async => await repository.generateRecommendations(
          userId,
          limit: limit,
          excludeBookIds: excludeBookIds,
          type: type,
          preferences: preferences,
        ),
      );

    } catch (e) {
      return Left(Failure.recommendationGenerationFailure(
        message: 'Failed to generate recommendations: $e',
        recommendationType: type?.name,
        reason: 'Exception occurred',
      ));
    }
  }

  /// Generate contextual recommendations based on current reading
  Future<Either<Failure, List<AIRecommendationEntity>>> generateContextualRecommendations(
    String userId,
    String currentBookId,
    int currentPage,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateContextualRequest(
        userId,
        currentBookId,
        currentPage,
      );
      return validationResult.fold(
        (failure) => Left(failure),
        (_) async => await repository.generateContextualRecommendations(
          userId,
          currentBookId,
          currentPage,
        ),
      );
    } catch (e) {
      return Left(Failure.recommendationGenerationFailure(
        message: 'Failed to generate contextual recommendations: $e',
        recommendationType: 'contextual',
        reason: 'Exception occurred',
      ));
    }
  }

  /// Generate mood-based recommendations
  Future<Either<Failure, List<AIRecommendationEntity>>> generateMoodBasedRecommendations(
    String userId,
    String mood,
    List<String>? preferences,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateMoodBasedRequest(
        userId,
        mood,
        preferences,
      );
      return validationResult.fold(
        (failure) => Left(failure),
        (_) async => await repository.generateMoodBasedRecommendations(
          userId,
          mood,
          preferences,
        ),
      );
    } catch (e) {
      return Left(Failure.recommendationGenerationFailure(
        message: 'Failed to generate mood-based recommendations: $e',
        recommendationType: 'moodBased',
        reason: 'Exception occurred',
      ));
    }
  }

  /// Generate seasonal recommendations
  Future<Either<Failure, List<AIRecommendationEntity>>> generateSeasonalRecommendations(
    String userId,
    String season,
    int? year,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateSeasonalRequest(
        userId,
        season,
        year,
      );
      return validationResult.fold(
        (failure) => Left(failure),
        (_) async => await repository.generateSeasonalRecommendations(
          userId,
          season,
          year,
        ),
      );
    } catch (e) {
      return Left(Failure.recommendationGenerationFailure(
        message: 'Failed to generate seasonal recommendations: $e',
        recommendationType: 'seasonal',
        reason: 'Exception occurred',
      ));
    }
  }

  /// Generate diversity-focused recommendations
  Future<Either<Failure, List<AIRecommendationEntity>>> generateDiversityRecommendations(
    String userId,
    List<String> diversityFactors,
    int? limit,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateDiversityRequest(
        userId,
        diversityFactors,
        limit,
      );
      return validationResult.fold(
        (failure) => Left(failure),
        (_) async => await repository.generateDiversityRecommendations(
          userId,
          diversityFactors,
          limit,
        ),
      );
    } catch (e) {
      return Left(Failure.recommendationGenerationFailure(
        message: 'Failed to generate diversity recommendations: $e',
        recommendationType: 'diversity',
        reason: 'Exception occurred',
      ));
    }
  }

  /// Generate exploration recommendations (outside comfort zone)
  Future<Either<Failure, List<AIRecommendationEntity>>> generateExplorationRecommendations(
    String userId,
    double explorationLevel,
    int? limit,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateExplorationRequest(
        userId,
        explorationLevel,
        limit,
      );
      return validationResult.fold(
        (failure) => Left(failure),
        (_) async => await repository.generateExplorationRecommendations(
          userId,
          explorationLevel,
          limit,
        ),
      );
    } catch (e) {
      return Left(Failure.recommendationGenerationFailure(
        message: 'Failed to generate exploration recommendations: $e',
        recommendationType: 'exploration',
        reason: 'Exception occurred',
      ));
    }
  }

  /// Validate basic recommendation request parameters
  Either<Failure, void> _validateRecommendationRequest(
    String userId,
    int? limit,
    List<String>? excludeBookIds,
    Map<String, double>? preferences,
  ) {
    // Check if user ID is not empty
    if (userId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID cannot be empty',
        field: 'userId',
      ));
    }

    // Validate limit if provided
    if (limit != null && (limit <= 0 || limit > 100)) {
      return const Left(Failure.invalidInputFailure(
        message: 'Limit must be between 1 and 100',
        field: 'limit',
      ));
    }

    // Validate exclude book IDs if provided
    if (excludeBookIds != null) {
      if (excludeBookIds.length > 50) {
        return const Left(Failure.invalidInputFailure(
          message: 'Cannot exclude more than 50 books',
          field: 'excludeBookIds',
        ));
      }

      for (final bookId in excludeBookIds) {
        if (bookId.isEmpty) {
          return const Left(Failure.invalidInputFailure(
            message: 'Exclude book ID cannot be empty',
            field: 'excludeBookIds',
          ));
        }
      }
    }

    // Validate preferences if provided
    if (preferences != null) {
      if (preferences.length > 20) {
        return const Left(Failure.invalidInputFailure(
          message: 'Cannot have more than 20 preference factors',
          field: 'preferences',
        ));
      }

      for (final entry in preferences.entries) {
        if (entry.key.isEmpty) {
          return const Left(Failure.invalidInputFailure(
            message: 'Preference key cannot be empty',
            field: 'preferences',
          ));
        }
        if (entry.value < 0.0 || entry.value > 1.0) {
          return const Left(Failure.invalidInputFailure(
            message: 'Preference values must be between 0.0 and 1.0',
            field: 'preferences',
          ));
        }
      }
    }

    return const Right(null);
  }

  /// Validate contextual recommendation request parameters
  Either<Failure, void> _validateContextualRequest(
    String userId,
    String currentBookId,
    int currentPage,
  ) {
    // Check if user ID is not empty
    if (userId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID cannot be empty',
        field: 'userId',
      ));
    }

    // Check if current book ID is not empty
    if (currentBookId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Current book ID cannot be empty',
        field: 'currentBookId',
      ));
    }

    // Validate current page
    if (currentPage < 0) {
      return const Left(Failure.invalidInputFailure(
        message: 'Current page cannot be negative',
        field: 'currentPage',
      ));
    }

    return const Right(null);
  }

  /// Validate mood-based recommendation request parameters
  Either<Failure, void> _validateMoodBasedRequest(
    String userId,
    String mood,
    List<String>? preferences,
  ) {
    // Check if user ID is not empty
    if (userId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID cannot be empty',
        field: 'userId',
      ));
    }

    // Check if mood is not empty
    if (mood.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Mood cannot be empty',
        field: 'mood',
      ));
    }

    // Validate mood length
    if (mood.length > 50) {
      return const Left(Failure.invalidInputFailure(
        message: 'Mood description cannot exceed 50 characters',
        field: 'mood',
      ));
    }

    // Validate preferences if provided
    if (preferences != null) {
      if (preferences.length > 10) {
        return const Left(Failure.invalidInputFailure(
          message: 'Cannot have more than 10 mood preferences',
          field: 'preferences',
        ));
      }

      for (final preference in preferences) {
        if (preference.trim().isEmpty) {
          return const Left(Failure.invalidInputFailure(
            message: 'Mood preference cannot be empty',
            field: 'preferences',
          ));
        }
        if (preference.length > 30) {
          return const Left(Failure.invalidInputFailure(
            message: 'Mood preference cannot exceed 30 characters',
            field: 'preferences',
          ));
        }
      }
    }

    return const Right(null);
  }

  /// Validate seasonal recommendation request parameters
  Either<Failure, void> _validateSeasonalRequest(
    String userId,
    String season,
    int? year,
  ) {
    // Check if user ID is not empty
    if (userId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID cannot be empty',
        field: 'userId',
      ));
    }

    // Check if season is not empty
    if (season.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Season cannot be empty',
        field: 'season',
      ));
    }

    // Validate season
    final validSeasons = ['spring', 'summer', 'autumn', 'winter', 'fall'];
    if (!validSeasons.contains(season.toLowerCase())) {
      return const Left(Failure.invalidInputFailure(
        message: 'Season must be one of: spring, summer, autumn/fall, winter',
        field: 'season',
      ));
    }

    // Validate year if provided
    if (year != null) {
      final currentYear = DateTime.now().year;
      if (year < 1900 || year > currentYear + 1) {
        return Left(Failure.invalidInputFailure(
          message: 'Year must be between 1900 and ${currentYear + 1}',
          field: 'year',
        ));
      }
    }

    return const Right(null);
  }

  /// Validate diversity recommendation request parameters
  Either<Failure, void> _validateDiversityRequest(
    String userId,
    List<String> diversityFactors,
    int? limit,
  ) {
    // Check if user ID is not empty
    if (userId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID cannot be empty',
        field: 'userId',
      ));
    }

    // Check if diversity factors are provided
    if (diversityFactors.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'At least one diversity factor must be provided',
        field: 'diversityFactors',
      ));
    }

    // Validate diversity factors
    if (diversityFactors.length > 15) {
      return const Left(Failure.invalidInputFailure(
        message: 'Cannot have more than 15 diversity factors',
        field: 'diversityFactors',
      ));
    }

    for (final factor in diversityFactors) {
      if (factor.trim().isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'Diversity factor cannot be empty',
          field: 'diversityFactors',
        ));
      }
      if (factor.length > 50) {
        return const Left(Failure.invalidInputFailure(
          message: 'Diversity factor cannot exceed 50 characters',
          field: 'diversityFactors',
        ));
      }
    }

    // Validate limit if provided
    if (limit != null && (limit <= 0 || limit > 50)) {
      return const Left(Failure.invalidInputFailure(
        message: 'Limit must be between 1 and 50 for diversity recommendations',
        field: 'limit',
      ));
    }

    return const Right(null);
  }

  /// Validate exploration recommendation request parameters
  Either<Failure, void> _validateExplorationRequest(
    String userId,
    double explorationLevel,
    int? limit,
  ) {
    // Check if user ID is not empty
    if (userId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID cannot be empty',
        field: 'userId',
      ));
    }

    // Validate exploration level
    if (explorationLevel < 0.0 || explorationLevel > 1.0) {
      return const Left(Failure.invalidInputFailure(
        message: 'Exploration level must be between 0.0 and 1.0',
        field: 'explorationLevel',
      ));
    }

    // Validate limit if provided
    if (limit != null && (limit <= 0 || limit > 30)) {
      return const Left(Failure.invalidInputFailure(
        message: 'Limit must be between 1 and 30 for exploration recommendations',
        field: 'limit',
      ));
    }

    return const Right(null);
  }
}
