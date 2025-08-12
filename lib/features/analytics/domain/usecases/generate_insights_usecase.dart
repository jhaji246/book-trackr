import 'package:dartz/dartz.dart';
import '../entities/reading_analytics_entity.dart';
import '../failures.dart';
import '../repositories/analytics_repository.dart';

/// Use case for generating reading insights and analytics
class GenerateInsightsUseCase {
  final AnalyticsRepository repository;

  const GenerateInsightsUseCase(this.repository);

  /// Execute the use case to generate comprehensive insights
  Future<Either<Failure, List<InsightEntity>>> call(String userId) async {
    try {
      // Validate user ID
      if (userId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'User ID cannot be empty',
          field: 'userId',
        ));
      }

      // Generate insights using the repository
      return await repository.generateUserInsights(userId);
    } catch (e) {
      return Left(Failure.insightGenerationFailure(
        message: 'Failed to generate insights: $e',
      ));
    }
  }

  /// Generate insights for a specific time period
  Future<Either<Failure, List<InsightEntity>>> generateInsightsForPeriod(
    String userId,
    DateTime startDate,
    DateTime endDate,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validatePeriod(startDate, endDate);
      if (validationResult.isLeft()) {
        return validationResult;
      }

      // Get analytics for the period and generate insights
      final analyticsResult = await repository.getUserAnalyticsForPeriod(
        userId,
        startDate,
        endDate,
      );

      return analyticsResult.fold(
        (failure) => Left(failure),
        (analytics) => _generateInsightsFromAnalytics(analytics),
      );
    } catch (e) {
      return Left(Failure.insightGenerationFailure(
        message: 'Failed to generate period insights: $e',
      ));
    }
  }

  /// Generate insights for specific insight types
  Future<Either<Failure, List<InsightEntity>>> generateInsightsByType(
    String userId,
    List<InsightType> types,
  ) async {
    try {
      // Validate input parameters
      if (types.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'At least one insight type must be specified',
          field: 'types',
        ));
      }

      // Get user analytics
      final analyticsResult = await repository.getUserReadingAnalytics(userId);
      
      return analyticsResult.fold(
        (failure) => Left(failure),
        (analytics) => _generateInsightsByTypeFromAnalytics(analytics, types),
      );
    } catch (e) {
      return Left(Failure.insightGenerationFailure(
        message: 'Failed to generate type-specific insights: $e',
      ));
    }
  }

  /// Generate personalized reading recommendations
  Future<Either<Failure, List<RecommendationEntity>>> generateRecommendations(
    String userId,
  ) async {
    try {
      // Validate user ID
      if (userId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'User ID cannot be empty',
          field: 'userId',
        ));
      }

      // Generate recommendations using the repository
      return await repository.generateUserRecommendations(userId);
    } catch (e) {
      return Left(Failure.recommendationGenerationFailure(
        message: 'Failed to generate recommendations: $e',
      ));
    }
  }

  /// Generate comparative insights between two periods
  Future<Either<Failure, List<InsightEntity>>> generateComparativeInsights(
    String userId,
    DateTime period1Start,
    DateTime period1End,
    DateTime period2Start,
    DateTime period2End,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateComparativePeriods(
        period1Start,
        period1End,
        period2Start,
        period2End,
      );
      if (validationResult.isLeft()) {
        return validationResult;
      }

      // Get comparative analytics
      final comparativeResult = await repository.getComparativeAnalytics(
        userId,
        period1Start,
        period1End,
        period2Start,
        period2End,
      );

      return comparativeResult.fold(
        (failure) => Left(failure),
        (comparativeData) => _generateComparativeInsights(comparativeData),
      );
    } catch (e) {
      return Left(Failure.insightGenerationFailure(
        message: 'Failed to generate comparative insights: $e',
      ));
    }
  }

  /// Validate time period
  Either<Failure, void> _validatePeriod(DateTime startDate, DateTime endDate) {
    if (startDate.isAfter(endDate)) {
      return const Left(Failure.periodValidationFailure(
        message: 'Start date cannot be after end date',
        startDate: null,
        endDate: null,
      ));
    }

    if (endDate.isAfter(DateTime.now())) {
      return const Left(Failure.periodValidationFailure(
        message: 'End date cannot be in the future',
        startDate: null,
        endDate: null,
      ));
    }

    final difference = endDate.difference(startDate);
    if (difference.inDays > 365) {
      return const Left(Failure.periodValidationFailure(
        message: 'Period cannot exceed one year',
        startDate: null,
        endDate: null,
      ));
    }

    return const Right(null);
  }

  /// Validate comparative periods
  Either<Failure, void> _validateComparativePeriods(
    DateTime period1Start,
    DateTime period1End,
    DateTime period2Start,
    DateTime period2End,
  ) {
    // Validate individual periods
    final period1Validation = _validatePeriod(period1Start, period1End);
    if (period1Validation.isLeft()) return period1Validation;

    final period2Validation = _validatePeriod(period2Start, period2End);
    if (period2Validation.isLeft()) return period2Validation;

    // Check for overlapping periods
    if (period1Start.isBefore(period2End) && period2Start.isBefore(period1End)) {
      return const Left(Failure.periodValidationFailure(
        message: 'Periods cannot overlap',
        startDate: null,
        endDate: null,
      ));
    }

    return const Right(null);
  }

  /// Generate insights from analytics data
  List<InsightEntity> _generateInsightsFromAnalytics(ReadingAnalyticsEntity analytics) {
    final insights = <InsightEntity>[];

    // Generate reading pattern insights
    insights.addAll(_generateReadingPatternInsights(analytics));
    
    // Generate genre preference insights
    insights.addAll(_generateGenrePreferenceInsights(analytics));
    
    // Generate time optimization insights
    insights.addAll(_generateTimeOptimizationInsights(analytics));
    
    // Generate goal progress insights
    insights.addAll(_generateGoalProgressInsights(analytics));
    
    // Generate performance insights
    insights.addAll(_generatePerformanceInsights(analytics));
    
    // Generate social insights
    insights.addAll(_generateSocialInsights(analytics));
    
    // Generate seasonal insights
    insights.addAll(_generateSeasonalInsights(analytics));
    
    // Generate predictive insights
    insights.addAll(_generatePredictiveInsights(analytics));

    return insights;
  }

  /// Generate insights by type from analytics
  List<InsightEntity> _generateInsightsByTypeFromAnalytics(
    ReadingAnalyticsEntity analytics,
    List<InsightType> types,
  ) {
    final insights = <InsightEntity>[];

    for (final type in types) {
      switch (type) {
        case InsightType.readingPattern:
          insights.addAll(_generateReadingPatternInsights(analytics));
          break;
        case InsightType.genrePreference:
          insights.addAll(_generateGenrePreferenceInsights(analytics));
          break;
        case InsightType.timeOptimization:
          insights.addAll(_generateTimeOptimizationInsights(analytics));
          break;
        case InsightType.goalProgress:
          insights.addAll(_generateGoalProgressInsights(analytics));
          break;
        case InsightType.performance:
          insights.addAll(_generatePerformanceInsights(analytics));
          break;
        case InsightType.social:
          insights.addAll(_generateSocialInsights(analytics));
          break;
        case InsightType.seasonal:
          insights.addAll(_generateSeasonalInsights(analytics));
          break;
        case InsightType.predictive:
          insights.addAll(_generatePredictiveInsights(analytics));
          break;
      }
    }

    return insights;
  }

  /// Generate reading pattern insights
  List<InsightEntity> _generateReadingPatternInsights(ReadingAnalyticsEntity analytics) {
    final insights = <InsightEntity>[];
    final stats = analytics.overallStats;

    // Reading streak insights
    if (stats.currentReadingStreak > 7) {
      insights.add(InsightEntity(
        id: 'streak-${DateTime.now().millisecondsSinceEpoch}',
        title: 'Reading Streak Achievement',
        description: 'You\'ve maintained a ${stats.currentReadingStreak}-day reading streak!',
        type: InsightType.readingPattern,
        confidence: 0.95,
        supportingData: ['Current streak: ${stats.currentReadingStreak} days'],
        dateGenerated: DateTime.now(),
        isActionable: true,
        actionSuggestion: 'Keep up the momentum by reading at least a few pages daily',
        category: InsightCategory.achievement,
        impactScore: 0.8,
      ));
    }

    // Reading consistency insights
    if (stats.averagePagesPerDay > 0) {
      final consistency = stats.averagePagesPerDay / 50; // Assuming 50 pages is good
      if (consistency < 0.5) {
        insights.add(InsightEntity(
          id: 'consistency-${DateTime.now().millisecondsSinceEpoch}',
          title: 'Reading Consistency Opportunity',
          description: 'Your daily reading could be more consistent for better progress',
          type: InsightType.readingPattern,
          confidence: 0.8,
          supportingData: ['Average pages per day: ${stats.averagePagesPerDay.toStringAsFixed(1)}'],
          dateGenerated: DateTime.now(),
          isActionable: true,
          actionSuggestion: 'Try setting a daily reading goal of 20-30 pages',
          category: InsightCategory.improvement,
          impactScore: 0.6,
        ));
      }
    }

    return insights;
  }

  /// Generate genre preference insights
  List<InsightEntity> _generateGenrePreferenceInsights(ReadingAnalyticsEntity analytics) {
    final insights = <InsightEntity>[];

    // Find dominant genre
    if (analytics.genreAnalytics.isNotEmpty) {
      final dominantGenre = analytics.genreAnalytics.reduce((a, b) => 
        a.percentageOfTotalReading > b.percentageOfTotalReading ? a : b
      );

      if (dominantGenre.percentageOfTotalReading > 60) {
        insights.add(InsightEntity(
          id: 'genre-dominance-${DateTime.now().millisecondsSinceEpoch}',
          title: 'Genre Specialization',
          description: 'You\'re highly focused on ${dominantGenre.genre} books',
          type: InsightType.genrePreference,
          confidence: 0.9,
          supportingData: ['${dominantGenre.genre}: ${dominantGenre.percentageOfTotalReading.toStringAsFixed(1)}% of reading'],
          dateGenerated: DateTime.now(),
          isActionable: true,
          actionSuggestion: 'Consider exploring other genres to broaden your reading experience',
          category: InsightCategory.neutral,
          impactScore: 0.5,
        ));
      }
    }

    return insights;
  }

  /// Generate time optimization insights
  List<InsightEntity> _generateTimeOptimizationInsights(ReadingAnalyticsEntity analytics) {
    final insights = <InsightEntity>[];

    // Find optimal reading time
    if (analytics.timeAnalytics.isNotEmpty) {
      final optimalTime = analytics.timeAnalytics.reduce((a, b) => 
        a.productivityScore > b.productivityScore ? a : b
      );

      insights.add(InsightEntity(
        id: 'optimal-time-${DateTime.now().millisecondsSinceEpoch}',
        title: 'Optimal Reading Time',
        description: '${optimalTime.timeSlot} appears to be your most productive reading time',
        type: InsightType.timeOptimization,
        confidence: 0.85,
        supportingData: ['Productivity score: ${optimalTime.productivityScore.toStringAsFixed(2)}'],
        dateGenerated: DateTime.now(),
        isActionable: true,
        actionSuggestion: 'Schedule your reading sessions during ${optimalTime.timeSlot} for better focus',
        category: InsightCategory.positive,
        impactScore: 0.7,
      ));
    }

    return insights;
  }

  /// Generate goal progress insights
  List<InsightEntity> _generateGoalProgressInsights(ReadingAnalyticsEntity analytics) {
    final insights = <InsightEntity>[];

    for (final goal in analytics.goalAnalytics) {
      if (goal.status == GoalStatus.inProgress) {
        if (goal.completionPercentage > 75) {
          insights.add(InsightEntity(
            id: 'goal-near-completion-${goal.goalId}',
            title: 'Goal Near Completion',
            description: 'You\'re ${goal.completionPercentage.toStringAsFixed(1)}% complete on your ${goal.goalType} goal',
            type: InsightType.goalProgress,
            confidence: 0.9,
            supportingData: ['Goal: ${goal.goalDescription}', 'Progress: ${goal.completionPercentage.toStringAsFixed(1)}%'],
            dateGenerated: DateTime.now(),
            isActionable: true,
            actionSuggestion: 'Push through to complete this goal and celebrate your achievement!',
            category: InsightCategory.positive,
            impactScore: 0.8,
          ));
        } else if (goal.completionPercentage < 25) {
          insights.add(InsightEntity(
            id: 'goal-slow-progress-${goal.goalId}',
            title: 'Goal Progress Opportunity',
            description: 'Your ${goal.goalType} goal progress is slower than expected',
            type: InsightType.goalProgress,
            confidence: 0.8,
            supportingData: ['Goal: ${goal.goalDescription}', 'Progress: ${goal.completionPercentage.toStringAsFixed(1)}%'],
            dateGenerated: DateTime.now(),
            isActionable: true,
            actionSuggestion: 'Consider adjusting your goal timeline or breaking it into smaller milestones',
            category: InsightCategory.improvement,
            impactScore: 0.6,
          ));
        }
      }
    }

    return insights;
  }

  /// Generate performance insights
  List<InsightEntity> _generatePerformanceInsights(ReadingAnalyticsEntity analytics) {
    final insights = <InsightEntity>[];
    final stats = analytics.overallStats;

    // Reading speed insights
    if (stats.averagePagesPerDay > 0) {
      final readingEfficiency = stats.totalPagesRead / stats.totalReadingTimeMinutes;
      if (readingEfficiency > 2.0) { // More than 2 pages per minute
        insights.add(InsightEntity(
          id: 'reading-efficiency-${DateTime.now().millisecondsSinceEpoch}',
          title: 'High Reading Efficiency',
          description: 'You\'re reading efficiently with good comprehension',
          type: InsightType.performance,
          confidence: 0.85,
          supportingData: ['Efficiency: ${readingEfficiency.toStringAsFixed(2)} pages per minute'],
          dateGenerated: DateTime.now(),
          isActionable: false,
          actionSuggestion: null,
          category: InsightCategory.positive,
          impactScore: 0.7,
        ));
      }
    }

    return insights;
  }

  /// Generate social insights
  List<InsightEntity> _generateSocialInsights(ReadingAnalyticsEntity analytics) {
    // This would typically involve comparing with friends/community data
    // For now, return empty list
    return <InsightEntity>[];
  }

  /// Generate seasonal insights
  List<InsightEntity> _generateSeasonalInsights(ReadingAnalyticsEntity analytics) {
    // This would analyze seasonal reading patterns
    // For now, return empty list
    return <InsightEntity>[];
  }

  /// Generate predictive insights
  List<InsightEntity> _generatePredictiveInsights(ReadingAnalyticsEntity analytics) {
    final insights = <InsightEntity>[];
    final stats = analytics.overallStats;

    // Predict reading completion
    if (stats.averagePagesPerDay > 0) {
      final estimatedBooksThisYear = (stats.averagePagesPerDay * 365) / 300; // Assuming 300 pages per book
      
      insights.add(InsightEntity(
        id: 'prediction-yearly-${DateTime.now().millisecondsSinceEpoch}',
        title: 'Yearly Reading Projection',
        description: 'At your current pace, you\'ll read approximately ${estimatedBooksThisYear.toStringAsFixed(1)} books this year',
        type: InsightType.predictive,
        confidence: 0.75,
        supportingData: ['Current pace: ${stats.averagePagesPerDay.toStringAsFixed(1)} pages per day'],
        dateGenerated: DateTime.now(),
        isActionable: true,
        actionSuggestion: 'Consider setting a yearly reading goal based on this projection',
        category: InsightCategory.neutral,
        impactScore: 0.6,
      ));
    }

    return insights;
  }

  /// Generate comparative insights
  List<InsightEntity> _generateComparativeInsights(Map<String, dynamic> comparativeData) {
    final insights = <InsightEntity>[];

    // This would analyze differences between periods
    // For now, return empty list
    return insights;
  }
}
