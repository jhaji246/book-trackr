// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_analytics_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingAnalyticsEntityImpl _$$ReadingAnalyticsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingAnalyticsEntityImpl(
      userId: json['userId'] as String,
      overallStats: ReadingStatsEntity.fromJson(
          json['overallStats'] as Map<String, dynamic>),
      genreAnalytics: (json['genreAnalytics'] as List<dynamic>)
          .map((e) => GenreAnalyticsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeAnalytics: (json['timeAnalytics'] as List<dynamic>)
          .map((e) => TimeAnalyticsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookAnalytics: (json['bookAnalytics'] as List<dynamic>)
          .map((e) => BookAnalyticsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      goalAnalytics: (json['goalAnalytics'] as List<dynamic>)
          .map((e) => GoalAnalyticsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => RecommendationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      insights: (json['insights'] as List<dynamic>)
          .map((e) => InsightEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => AchievementEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      readingStreaks: (json['readingStreaks'] as List<dynamic>)
          .map((e) => ReadingStreakEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateGenerated: DateTime.parse(json['dateGenerated'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$ReadingAnalyticsEntityImplToJson(
        _$ReadingAnalyticsEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'overallStats': instance.overallStats,
      'genreAnalytics': instance.genreAnalytics,
      'timeAnalytics': instance.timeAnalytics,
      'bookAnalytics': instance.bookAnalytics,
      'goalAnalytics': instance.goalAnalytics,
      'recommendations': instance.recommendations,
      'insights': instance.insights,
      'achievements': instance.achievements,
      'readingStreaks': instance.readingStreaks,
      'dateGenerated': instance.dateGenerated.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_$ReadingStatsEntityImpl _$$ReadingStatsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingStatsEntityImpl(
      totalBooksRead: (json['totalBooksRead'] as num).toInt(),
      totalPagesRead: (json['totalPagesRead'] as num).toInt(),
      totalReadingTimeMinutes: (json['totalReadingTimeMinutes'] as num).toInt(),
      averageRating: (json['averageRating'] as num).toDouble(),
      averagePagesPerDay: (json['averagePagesPerDay'] as num).toDouble(),
      averageReadingTimePerDay:
          (json['averageReadingTimePerDay'] as num).toDouble(),
      currentReadingStreak: (json['currentReadingStreak'] as num).toInt(),
      longestReadingStreak: (json['longestReadingStreak'] as num).toInt(),
      totalSessions: (json['totalSessions'] as num).toInt(),
      averageSessionLength: (json['averageSessionLength'] as num).toDouble(),
      booksByMonth: Map<String, int>.from(json['booksByMonth'] as Map),
      pagesByMonth: Map<String, int>.from(json['pagesByMonth'] as Map),
      ratingsByMonth: (json['ratingsByMonth'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$ReadingStatsEntityImplToJson(
        _$ReadingStatsEntityImpl instance) =>
    <String, dynamic>{
      'totalBooksRead': instance.totalBooksRead,
      'totalPagesRead': instance.totalPagesRead,
      'totalReadingTimeMinutes': instance.totalReadingTimeMinutes,
      'averageRating': instance.averageRating,
      'averagePagesPerDay': instance.averagePagesPerDay,
      'averageReadingTimePerDay': instance.averageReadingTimePerDay,
      'currentReadingStreak': instance.currentReadingStreak,
      'longestReadingStreak': instance.longestReadingStreak,
      'totalSessions': instance.totalSessions,
      'averageSessionLength': instance.averageSessionLength,
      'booksByMonth': instance.booksByMonth,
      'pagesByMonth': instance.pagesByMonth,
      'ratingsByMonth': instance.ratingsByMonth,
    };

_$GenreAnalyticsEntityImpl _$$GenreAnalyticsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GenreAnalyticsEntityImpl(
      genre: json['genre'] as String,
      booksRead: (json['booksRead'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      averageRating: (json['averageRating'] as num).toDouble(),
      averagePagesPerBook: (json['averagePagesPerBook'] as num).toDouble(),
      totalReadingTimeMinutes: (json['totalReadingTimeMinutes'] as num).toInt(),
      percentageOfTotalReading:
          (json['percentageOfTotalReading'] as num).toDouble(),
      favoriteAuthors: (json['favoriteAuthors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      topBooks:
          (json['topBooks'] as List<dynamic>).map((e) => e as String).toList(),
      readingByMonth: Map<String, int>.from(json['readingByMonth'] as Map),
      readingVelocity: (json['readingVelocity'] as num).toDouble(),
      readingTrend: json['readingTrend'] as String,
    );

Map<String, dynamic> _$$GenreAnalyticsEntityImplToJson(
        _$GenreAnalyticsEntityImpl instance) =>
    <String, dynamic>{
      'genre': instance.genre,
      'booksRead': instance.booksRead,
      'totalPages': instance.totalPages,
      'averageRating': instance.averageRating,
      'averagePagesPerBook': instance.averagePagesPerBook,
      'totalReadingTimeMinutes': instance.totalReadingTimeMinutes,
      'percentageOfTotalReading': instance.percentageOfTotalReading,
      'favoriteAuthors': instance.favoriteAuthors,
      'topBooks': instance.topBooks,
      'readingByMonth': instance.readingByMonth,
      'readingVelocity': instance.readingVelocity,
      'readingTrend': instance.readingTrend,
    };

_$TimeAnalyticsEntityImpl _$$TimeAnalyticsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeAnalyticsEntityImpl(
      timeSlot: json['timeSlot'] as String,
      totalSessions: (json['totalSessions'] as num).toInt(),
      totalReadingTimeMinutes: (json['totalReadingTimeMinutes'] as num).toInt(),
      averageSessionLength: (json['averageSessionLength'] as num).toDouble(),
      productivityScore: (json['productivityScore'] as num).toDouble(),
      preferredGenres: (json['preferredGenres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      readingByDayOfWeek:
          Map<String, int>.from(json['readingByDayOfWeek'] as Map),
      readingByHour: Map<String, int>.from(json['readingByHour'] as Map),
      consistencyScore: (json['consistencyScore'] as num).toDouble(),
      optimalReadingTime: json['optimalReadingTime'] as String,
    );

Map<String, dynamic> _$$TimeAnalyticsEntityImplToJson(
        _$TimeAnalyticsEntityImpl instance) =>
    <String, dynamic>{
      'timeSlot': instance.timeSlot,
      'totalSessions': instance.totalSessions,
      'totalReadingTimeMinutes': instance.totalReadingTimeMinutes,
      'averageSessionLength': instance.averageSessionLength,
      'productivityScore': instance.productivityScore,
      'preferredGenres': instance.preferredGenres,
      'readingByDayOfWeek': instance.readingByDayOfWeek,
      'readingByHour': instance.readingByHour,
      'consistencyScore': instance.consistencyScore,
      'optimalReadingTime': instance.optimalReadingTime,
    };

_$BookAnalyticsEntityImpl _$$BookAnalyticsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BookAnalyticsEntityImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      genre: json['genre'] as String,
      pages: (json['pages'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      readingTimeMinutes: (json['readingTimeMinutes'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      completionDate: json['completionDate'] == null
          ? null
          : DateTime.parse(json['completionDate'] as String),
      readingSpeed: (json['readingSpeed'] as num).toDouble(),
      sessionsCount: (json['sessionsCount'] as num).toInt(),
      engagementScore: (json['engagementScore'] as num).toDouble(),
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
      readingProgressByDay:
          Map<String, int>.from(json['readingProgressByDay'] as Map),
      readingPattern: json['readingPattern'] as String,
      difficultyScore: (json['difficultyScore'] as num).toDouble(),
      enjoymentScore: (json['enjoymentScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$BookAnalyticsEntityImplToJson(
        _$BookAnalyticsEntityImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'genre': instance.genre,
      'pages': instance.pages,
      'rating': instance.rating,
      'readingTimeMinutes': instance.readingTimeMinutes,
      'startDate': instance.startDate.toIso8601String(),
      'completionDate': instance.completionDate?.toIso8601String(),
      'readingSpeed': instance.readingSpeed,
      'sessionsCount': instance.sessionsCount,
      'engagementScore': instance.engagementScore,
      'notes': instance.notes,
      'readingProgressByDay': instance.readingProgressByDay,
      'readingPattern': instance.readingPattern,
      'difficultyScore': instance.difficultyScore,
      'enjoymentScore': instance.enjoymentScore,
    };

_$GoalAnalyticsEntityImpl _$$GoalAnalyticsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GoalAnalyticsEntityImpl(
      goalId: json['goalId'] as String,
      goalType: json['goalType'] as String,
      goalDescription: json['goalDescription'] as String,
      targetValue: (json['targetValue'] as num).toInt(),
      currentValue: (json['currentValue'] as num).toInt(),
      completionPercentage: (json['completionPercentage'] as num).toDouble(),
      startDate: DateTime.parse(json['startDate'] as String),
      targetDate: DateTime.parse(json['targetDate'] as String),
      completionDate: json['completionDate'] == null
          ? null
          : DateTime.parse(json['completionDate'] as String),
      status: $enumDecode(_$GoalStatusEnumMap, json['status']),
      progressVelocity: (json['progressVelocity'] as num).toDouble(),
      milestones: (json['milestones'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      difficultyLevel: json['difficultyLevel'] as String,
      motivationScore: (json['motivationScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$GoalAnalyticsEntityImplToJson(
        _$GoalAnalyticsEntityImpl instance) =>
    <String, dynamic>{
      'goalId': instance.goalId,
      'goalType': instance.goalType,
      'goalDescription': instance.goalDescription,
      'targetValue': instance.targetValue,
      'currentValue': instance.currentValue,
      'completionPercentage': instance.completionPercentage,
      'startDate': instance.startDate.toIso8601String(),
      'targetDate': instance.targetDate.toIso8601String(),
      'completionDate': instance.completionDate?.toIso8601String(),
      'status': _$GoalStatusEnumMap[instance.status]!,
      'progressVelocity': instance.progressVelocity,
      'milestones': instance.milestones,
      'achievements': instance.achievements,
      'difficultyLevel': instance.difficultyLevel,
      'motivationScore': instance.motivationScore,
    };

const _$GoalStatusEnumMap = {
  GoalStatus.notStarted: 'notStarted',
  GoalStatus.inProgress: 'inProgress',
  GoalStatus.completed: 'completed',
  GoalStatus.exceeded: 'exceeded',
  GoalStatus.abandoned: 'abandoned',
};

_$RecommendationEntityImpl _$$RecommendationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationEntityImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      genre: json['genre'] as String,
      confidenceScore: (json['confidenceScore'] as num).toDouble(),
      reasons:
          (json['reasons'] as List<dynamic>).map((e) => e as String).toList(),
      type: $enumDecode(_$RecommendationTypeEnumMap, json['type']),
      factorScores: (json['factorScores'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      description: json['description'] as String,
      dateGenerated: DateTime.parse(json['dateGenerated'] as String),
      isPersonalized: json['isPersonalized'] as bool,
    );

Map<String, dynamic> _$$RecommendationEntityImplToJson(
        _$RecommendationEntityImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'genre': instance.genre,
      'confidenceScore': instance.confidenceScore,
      'reasons': instance.reasons,
      'type': _$RecommendationTypeEnumMap[instance.type]!,
      'factorScores': instance.factorScores,
      'description': instance.description,
      'dateGenerated': instance.dateGenerated.toIso8601String(),
      'isPersonalized': instance.isPersonalized,
    };

const _$RecommendationTypeEnumMap = {
  RecommendationType.genreBased: 'genreBased',
  RecommendationType.authorBased: 'authorBased',
  RecommendationType.ratingBased: 'ratingBased',
  RecommendationType.readingPattern: 'readingPattern',
  RecommendationType.socialBased: 'socialBased',
  RecommendationType.trending: 'trending',
  RecommendationType.seasonal: 'seasonal',
  RecommendationType.personalized: 'personalized',
  RecommendationType.collaborative: 'collaborative',
};

_$InsightEntityImpl _$$InsightEntityImplFromJson(Map<String, dynamic> json) =>
    _$InsightEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$InsightTypeEnumMap, json['type']),
      confidence: (json['confidence'] as num).toDouble(),
      supportingData: (json['supportingData'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateGenerated: DateTime.parse(json['dateGenerated'] as String),
      isActionable: json['isActionable'] as bool,
      actionSuggestion: json['actionSuggestion'] as String?,
      category: $enumDecode(_$InsightCategoryEnumMap, json['category']),
      impactScore: (json['impactScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$InsightEntityImplToJson(_$InsightEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$InsightTypeEnumMap[instance.type]!,
      'confidence': instance.confidence,
      'supportingData': instance.supportingData,
      'dateGenerated': instance.dateGenerated.toIso8601String(),
      'isActionable': instance.isActionable,
      'actionSuggestion': instance.actionSuggestion,
      'category': _$InsightCategoryEnumMap[instance.category]!,
      'impactScore': instance.impactScore,
    };

const _$InsightTypeEnumMap = {
  InsightType.readingPattern: 'readingPattern',
  InsightType.genrePreference: 'genrePreference',
  InsightType.timeOptimization: 'timeOptimization',
  InsightType.goalProgress: 'goalProgress',
  InsightType.performance: 'performance',
  InsightType.social: 'social',
  InsightType.seasonal: 'seasonal',
  InsightType.predictive: 'predictive',
};

const _$InsightCategoryEnumMap = {
  InsightCategory.positive: 'positive',
  InsightCategory.neutral: 'neutral',
  InsightCategory.improvement: 'improvement',
  InsightCategory.warning: 'warning',
  InsightCategory.achievement: 'achievement',
};

_$AchievementEntityImpl _$$AchievementEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$AchievementTypeEnumMap, json['type']),
      level: (json['level'] as num).toInt(),
      progress: (json['progress'] as num).toDouble(),
      isUnlocked: json['isUnlocked'] as bool,
      unlockDate: json['unlockDate'] == null
          ? null
          : DateTime.parse(json['unlockDate'] as String),
      iconPath: json['iconPath'] as String,
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rarity: (json['rarity'] as num).toDouble(),
      points: (json['points'] as num).toInt(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$$AchievementEntityImplToJson(
        _$AchievementEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$AchievementTypeEnumMap[instance.type]!,
      'level': instance.level,
      'progress': instance.progress,
      'isUnlocked': instance.isUnlocked,
      'unlockDate': instance.unlockDate?.toIso8601String(),
      'iconPath': instance.iconPath,
      'requirements': instance.requirements,
      'rarity': instance.rarity,
      'points': instance.points,
      'category': instance.category,
    };

const _$AchievementTypeEnumMap = {
  AchievementType.readingStreak: 'readingStreak',
  AchievementType.bookCount: 'bookCount',
  AchievementType.pageCount: 'pageCount',
  AchievementType.genreExplorer: 'genreExplorer',
  AchievementType.speedReader: 'speedReader',
  AchievementType.consistentReader: 'consistentReader',
  AchievementType.goalAchiever: 'goalAchiever',
  AchievementType.socialReader: 'socialReader',
  AchievementType.seasonalReader: 'seasonalReader',
  AchievementType.milestone: 'milestone',
};

_$ReadingStreakEntityImpl _$$ReadingStreakEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingStreakEntityImpl(
      id: json['id'] as String,
      currentStreak: (json['currentStreak'] as num).toInt(),
      longestStreak: (json['longestStreak'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      lastReadingDate: DateTime.parse(json['lastReadingDate'] as String),
      streakDates: (json['streakDates'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
      averagePagesPerDay: (json['averagePagesPerDay'] as num).toDouble(),
      consistencyScore: (json['consistencyScore'] as num).toDouble(),
      milestones: (json['milestones'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool,
      totalStreaks: (json['totalStreaks'] as num).toInt(),
      successRate: (json['successRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReadingStreakEntityImplToJson(
        _$ReadingStreakEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentStreak': instance.currentStreak,
      'longestStreak': instance.longestStreak,
      'startDate': instance.startDate.toIso8601String(),
      'lastReadingDate': instance.lastReadingDate.toIso8601String(),
      'streakDates':
          instance.streakDates.map((e) => e.toIso8601String()).toList(),
      'averagePagesPerDay': instance.averagePagesPerDay,
      'consistencyScore': instance.consistencyScore,
      'milestones': instance.milestones,
      'isActive': instance.isActive,
      'totalStreaks': instance.totalStreaks,
      'successRate': instance.successRate,
    };
