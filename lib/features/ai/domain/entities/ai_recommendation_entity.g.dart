// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_recommendation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AIRecommendationEntityImpl _$$AIRecommendationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AIRecommendationEntityImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      genre: json['genre'] as String,
      confidenceScore: (json['confidenceScore'] as num).toDouble(),
      reason: $enumDecode(_$RecommendationReasonEnumMap, json['reason']),
      explanationPoints: (json['explanationPoints'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      factorScores: (json['factorScores'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      type: $enumDecode(_$RecommendationTypeEnumMap, json['type']),
      isPersonalized: json['isPersonalized'] as bool,
      dateGenerated: DateTime.parse(json['dateGenerated'] as String),
      expiryDate: DateTime.parse(json['expiryDate'] as String),
      isViewed: json['isViewed'] as bool,
      isAccepted: json['isAccepted'] as bool,
      dateAccepted: json['dateAccepted'] == null
          ? null
          : DateTime.parse(json['dateAccepted'] as String),
      userFeedback: json['userFeedback'] as String?,
      userRating: (json['userRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AIRecommendationEntityImplToJson(
        _$AIRecommendationEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'genre': instance.genre,
      'confidenceScore': instance.confidenceScore,
      'reason': _$RecommendationReasonEnumMap[instance.reason]!,
      'explanationPoints': instance.explanationPoints,
      'factorScores': instance.factorScores,
      'type': _$RecommendationTypeEnumMap[instance.type]!,
      'isPersonalized': instance.isPersonalized,
      'dateGenerated': instance.dateGenerated.toIso8601String(),
      'expiryDate': instance.expiryDate.toIso8601String(),
      'isViewed': instance.isViewed,
      'isAccepted': instance.isAccepted,
      'dateAccepted': instance.dateAccepted?.toIso8601String(),
      'userFeedback': instance.userFeedback,
      'userRating': instance.userRating,
    };

const _$RecommendationReasonEnumMap = {
  RecommendationReason.genrePreference: 'genrePreference',
  RecommendationReason.authorSimilarity: 'authorSimilarity',
  RecommendationReason.readingPattern: 'readingPattern',
  RecommendationReason.socialInfluence: 'socialInfluence',
  RecommendationReason.trending: 'trending',
  RecommendationReason.seasonal: 'seasonal',
  RecommendationReason.difficultyMatch: 'difficultyMatch',
  RecommendationReason.moodBased: 'moodBased',
  RecommendationReason.completionRate: 'completionRate',
  RecommendationReason.ratingSimilarity: 'ratingSimilarity',
  RecommendationReason.timeBased: 'timeBased',
  RecommendationReason.collaborative: 'collaborative',
  RecommendationReason.diversity: 'diversity',
  RecommendationReason.exploration: 'exploration',
};

const _$RecommendationTypeEnumMap = {
  RecommendationType.instant: 'instant',
  RecommendationType.daily: 'daily',
  RecommendationType.weekly: 'weekly',
  RecommendationType.contextual: 'contextual',
  RecommendationType.seasonal: 'seasonal',
  RecommendationType.social: 'social',
  RecommendationType.personalized: 'personalized',
  RecommendationType.trending: 'trending',
  RecommendationType.discovery: 'discovery',
  RecommendationType.challenge: 'challenge',
};

_$ReadingDifficultyEntityImpl _$$ReadingDifficultyEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingDifficultyEntityImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      level: $enumDecode(_$DifficultyLevelEnumMap, json['level']),
      difficultyScore: (json['difficultyScore'] as num).toDouble(),
      factorScores: (json['factorScores'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      difficultyFactors: (json['difficultyFactors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      explanation: json['explanation'] as String,
      estimatedReadingTime: (json['estimatedReadingTime'] as num).toInt(),
      suggestedPrerequisites: (json['suggestedPrerequisites'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      learningObjectives: (json['learningObjectives'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      skillRequirements:
          (json['skillRequirements'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      dateAssessed: DateTime.parse(json['dateAssessed'] as String),
      assessmentModel: json['assessmentModel'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReadingDifficultyEntityImplToJson(
        _$ReadingDifficultyEntityImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'level': _$DifficultyLevelEnumMap[instance.level]!,
      'difficultyScore': instance.difficultyScore,
      'factorScores': instance.factorScores,
      'difficultyFactors': instance.difficultyFactors,
      'explanation': instance.explanation,
      'estimatedReadingTime': instance.estimatedReadingTime,
      'suggestedPrerequisites': instance.suggestedPrerequisites,
      'learningObjectives': instance.learningObjectives,
      'skillRequirements': instance.skillRequirements,
      'dateAssessed': instance.dateAssessed.toIso8601String(),
      'assessmentModel': instance.assessmentModel,
      'confidence': instance.confidence,
    };

const _$DifficultyLevelEnumMap = {
  DifficultyLevel.beginner: 'beginner',
  DifficultyLevel.elementary: 'elementary',
  DifficultyLevel.intermediate: 'intermediate',
  DifficultyLevel.advanced: 'advanced',
  DifficultyLevel.expert: 'expert',
  DifficultyLevel.scholarly: 'scholarly',
};

_$ContentAnalysisEntityImpl _$$ContentAnalysisEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentAnalysisEntityImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      summary: ContentSummaryEntity.fromJson(
          json['summary'] as Map<String, dynamic>),
      themes: (json['themes'] as List<dynamic>)
          .map((e) => ThemeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      characters: (json['characters'] as List<dynamic>)
          .map((e) => CharacterEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      plotPoints: (json['plotPoints'] as List<dynamic>)
          .map((e) => PlotPointEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      writingStyle: WritingStyleEntity.fromJson(
          json['writingStyle'] as Map<String, dynamic>),
      keyQuotes:
          (json['keyQuotes'] as List<dynamic>).map((e) => e as String).toList(),
      sentimentAnalysis:
          (json['sentimentAnalysis'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      contentWarnings: (json['contentWarnings'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      educationalValue: (json['educationalValue'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateAnalyzed: DateTime.parse(json['dateAnalyzed'] as String),
      analysisModel: json['analysisModel'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$ContentAnalysisEntityImplToJson(
        _$ContentAnalysisEntityImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'summary': instance.summary,
      'themes': instance.themes,
      'characters': instance.characters,
      'plotPoints': instance.plotPoints,
      'writingStyle': instance.writingStyle,
      'keyQuotes': instance.keyQuotes,
      'sentimentAnalysis': instance.sentimentAnalysis,
      'contentWarnings': instance.contentWarnings,
      'educationalValue': instance.educationalValue,
      'dateAnalyzed': instance.dateAnalyzed.toIso8601String(),
      'analysisModel': instance.analysisModel,
      'confidence': instance.confidence,
    };

_$ContentSummaryEntityImpl _$$ContentSummaryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentSummaryEntityImpl(
      shortSummary: json['shortSummary'] as String,
      detailedSummary: json['detailedSummary'] as String,
      keyPoints:
          (json['keyPoints'] as List<dynamic>).map((e) => e as String).toList(),
      mainIdeas:
          (json['mainIdeas'] as List<dynamic>).map((e) => e as String).toList(),
      conclusion: json['conclusion'] as String,
      summaryLength: (json['summaryLength'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ContentSummaryEntityImplToJson(
        _$ContentSummaryEntityImpl instance) =>
    <String, dynamic>{
      'shortSummary': instance.shortSummary,
      'detailedSummary': instance.detailedSummary,
      'keyPoints': instance.keyPoints,
      'mainIdeas': instance.mainIdeas,
      'conclusion': instance.conclusion,
      'summaryLength': instance.summaryLength,
      'tags': instance.tags,
    };

_$ThemeEntityImpl _$$ThemeEntityImplFromJson(Map<String, dynamic> json) =>
    _$ThemeEntityImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      prominence: (json['prominence'] as num).toDouble(),
      examples:
          (json['examples'] as List<dynamic>).map((e) => e as String).toList(),
      relatedThemes: (json['relatedThemes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$$ThemeEntityImplToJson(_$ThemeEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'prominence': instance.prominence,
      'examples': instance.examples,
      'relatedThemes': instance.relatedThemes,
      'category': instance.category,
    };

_$CharacterEntityImpl _$$CharacterEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterEntityImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      role: $enumDecode(_$CharacterRoleEnumMap, json['role']),
      importance: (json['importance'] as num).toDouble(),
      traits:
          (json['traits'] as List<dynamic>).map((e) => e as String).toList(),
      relationships: (json['relationships'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      development: json['development'] as String,
      quotes:
          (json['quotes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CharacterEntityImplToJson(
        _$CharacterEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'role': _$CharacterRoleEnumMap[instance.role]!,
      'importance': instance.importance,
      'traits': instance.traits,
      'relationships': instance.relationships,
      'development': instance.development,
      'quotes': instance.quotes,
    };

const _$CharacterRoleEnumMap = {
  CharacterRole.protagonist: 'protagonist',
  CharacterRole.antagonist: 'antagonist',
  CharacterRole.supporting: 'supporting',
  CharacterRole.minor: 'minor',
  CharacterRole.narrator: 'narrator',
  CharacterRole.mentor: 'mentor',
  CharacterRole.foil: 'foil',
};

_$PlotPointEntityImpl _$$PlotPointEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PlotPointEntityImpl(
      description: json['description'] as String,
      type: $enumDecode(_$PlotPointTypeEnumMap, json['type']),
      chapter: (json['chapter'] as num).toInt(),
      significance: (json['significance'] as num).toDouble(),
      consequences: (json['consequences'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      relatedEvents: (json['relatedEvents'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      impact: json['impact'] as String,
    );

Map<String, dynamic> _$$PlotPointEntityImplToJson(
        _$PlotPointEntityImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'type': _$PlotPointTypeEnumMap[instance.type]!,
      'chapter': instance.chapter,
      'significance': instance.significance,
      'consequences': instance.consequences,
      'relatedEvents': instance.relatedEvents,
      'impact': instance.impact,
    };

const _$PlotPointTypeEnumMap = {
  PlotPointType.exposition: 'exposition',
  PlotPointType.incitingIncident: 'incitingIncident',
  PlotPointType.risingAction: 'risingAction',
  PlotPointType.climax: 'climax',
  PlotPointType.fallingAction: 'fallingAction',
  PlotPointType.resolution: 'resolution',
  PlotPointType.plotTwist: 'plotTwist',
  PlotPointType.revelation: 'revelation',
  PlotPointType.conflict: 'conflict',
};

_$WritingStyleEntityImpl _$$WritingStyleEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$WritingStyleEntityImpl(
      style: json['style'] as String,
      complexity: (json['complexity'] as num).toDouble(),
      characteristics: (json['characteristics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      techniques: (json['techniques'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tone: json['tone'] as String,
      pacing: json['pacing'] as String,
      influences: (json['influences'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      accessibility: json['accessibility'] as String,
    );

Map<String, dynamic> _$$WritingStyleEntityImplToJson(
        _$WritingStyleEntityImpl instance) =>
    <String, dynamic>{
      'style': instance.style,
      'complexity': instance.complexity,
      'characteristics': instance.characteristics,
      'techniques': instance.techniques,
      'tone': instance.tone,
      'pacing': instance.pacing,
      'influences': instance.influences,
      'accessibility': instance.accessibility,
    };

_$LearningPathEntityImpl _$$LearningPathEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningPathEntityImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      goal: json['goal'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => LearningStepEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$LearningPathStatusEnumMap, json['status']),
      startDate: DateTime.parse(json['startDate'] as String),
      completionDate: json['completionDate'] == null
          ? null
          : DateTime.parse(json['completionDate'] as String),
      progress: (json['progress'] as num).toDouble(),
      prerequisites: (json['prerequisites'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      outcomes:
          (json['outcomes'] as List<dynamic>).map((e) => e as String).toList(),
      difficulty: json['difficulty'] as String,
      estimatedDuration: (json['estimatedDuration'] as num).toInt(),
      resources:
          (json['resources'] as List<dynamic>).map((e) => e as String).toList(),
      skillGains: (json['skillGains'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$LearningPathEntityImplToJson(
        _$LearningPathEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'goal': instance.goal,
      'steps': instance.steps,
      'status': _$LearningPathStatusEnumMap[instance.status]!,
      'startDate': instance.startDate.toIso8601String(),
      'completionDate': instance.completionDate?.toIso8601String(),
      'progress': instance.progress,
      'prerequisites': instance.prerequisites,
      'outcomes': instance.outcomes,
      'difficulty': instance.difficulty,
      'estimatedDuration': instance.estimatedDuration,
      'resources': instance.resources,
      'skillGains': instance.skillGains,
    };

const _$LearningPathStatusEnumMap = {
  LearningPathStatus.notStarted: 'notStarted',
  LearningPathStatus.inProgress: 'inProgress',
  LearningPathStatus.paused: 'paused',
  LearningPathStatus.completed: 'completed',
  LearningPathStatus.abandoned: 'abandoned',
};

_$LearningStepEntityImpl _$$LearningStepEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningStepEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      bookId: json['bookId'] as String,
      order: (json['order'] as num).toInt(),
      type: $enumDecode(_$LearningStepTypeEnumMap, json['type']),
      status: $enumDecode(_$LearningStepStatusEnumMap, json['status']),
      objectives: (json['objectives'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      activities: (json['activities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      estimatedTime: (json['estimatedTime'] as num).toInt(),
      assessments: (json['assessments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      skillFocus: (json['skillFocus'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$LearningStepEntityImplToJson(
        _$LearningStepEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'bookId': instance.bookId,
      'order': instance.order,
      'type': _$LearningStepTypeEnumMap[instance.type]!,
      'status': _$LearningStepStatusEnumMap[instance.status]!,
      'objectives': instance.objectives,
      'activities': instance.activities,
      'estimatedTime': instance.estimatedTime,
      'assessments': instance.assessments,
      'skillFocus': instance.skillFocus,
    };

const _$LearningStepTypeEnumMap = {
  LearningStepType.reading: 'reading',
  LearningStepType.reflection: 'reflection',
  LearningStepType.discussion: 'discussion',
  LearningStepType.practice: 'practice',
  LearningStepType.assessment: 'assessment',
  LearningStepType.research: 'research',
  LearningStepType.creative: 'creative',
  LearningStepType.review: 'review',
};

const _$LearningStepStatusEnumMap = {
  LearningStepStatus.notStarted: 'notStarted',
  LearningStepStatus.inProgress: 'inProgress',
  LearningStepStatus.completed: 'completed',
  LearningStepStatus.skipped: 'skipped',
  LearningStepStatus.failed: 'failed',
};

_$ComprehensionTrackingEntityImpl _$$ComprehensionTrackingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ComprehensionTrackingEntityImpl(
      userId: json['userId'] as String,
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      level: $enumDecode(_$ComprehensionLevelEnumMap, json['level']),
      comprehensionScore: (json['comprehensionScore'] as num).toDouble(),
      strengths:
          (json['strengths'] as List<dynamic>).map((e) => e as String).toList(),
      areasForImprovement: (json['areasForImprovement'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      strategies: (json['strategies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      skillAssessment: (json['skillAssessment'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      recommendedActivities: (json['recommendedActivities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateAssessed: DateTime.parse(json['dateAssessed'] as String),
      assessmentMethod: json['assessmentMethod'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$ComprehensionTrackingEntityImplToJson(
        _$ComprehensionTrackingEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'bookId': instance.bookId,
      'title': instance.title,
      'level': _$ComprehensionLevelEnumMap[instance.level]!,
      'comprehensionScore': instance.comprehensionScore,
      'strengths': instance.strengths,
      'areasForImprovement': instance.areasForImprovement,
      'strategies': instance.strategies,
      'skillAssessment': instance.skillAssessment,
      'recommendedActivities': instance.recommendedActivities,
      'dateAssessed': instance.dateAssessed.toIso8601String(),
      'assessmentMethod': instance.assessmentMethod,
      'confidence': instance.confidence,
    };

const _$ComprehensionLevelEnumMap = {
  ComprehensionLevel.basic: 'basic',
  ComprehensionLevel.developing: 'developing',
  ComprehensionLevel.proficient: 'proficient',
  ComprehensionLevel.advanced: 'advanced',
  ComprehensionLevel.expert: 'expert',
};

_$NLPEntityImpl _$$NLPEntityImplFromJson(Map<String, dynamic> json) =>
    _$NLPEntityImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      sentiments: (json['sentiments'] as List<dynamic>)
          .map((e) => SentimentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      entities: (json['entities'] as List<dynamic>)
          .map((e) => EntityEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords: (json['keywords'] as List<dynamic>)
          .map((e) => KeywordEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      topics: (json['topics'] as List<dynamic>)
          .map((e) => TopicEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      languageComplexity: LanguageComplexityEntity.fromJson(
          json['languageComplexity'] as Map<String, dynamic>),
      languageFeatures: (json['languageFeatures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      readabilityMetrics:
          (json['readabilityMetrics'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      dateProcessed: DateTime.parse(json['dateProcessed'] as String),
      nlpModel: json['nlpModel'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$NLPEntityImplToJson(_$NLPEntityImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'sentiments': instance.sentiments,
      'entities': instance.entities,
      'keywords': instance.keywords,
      'topics': instance.topics,
      'languageComplexity': instance.languageComplexity,
      'languageFeatures': instance.languageFeatures,
      'readabilityMetrics': instance.readabilityMetrics,
      'dateProcessed': instance.dateProcessed.toIso8601String(),
      'nlpModel': instance.nlpModel,
      'confidence': instance.confidence,
    };

_$SentimentEntityImpl _$$SentimentEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SentimentEntityImpl(
      text: json['text'] as String,
      type: $enumDecode(_$SentimentTypeEnumMap, json['type']),
      score: (json['score'] as num).toDouble(),
      context: json['context'] as String,
      chapter: (json['chapter'] as num).toInt(),
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SentimentEntityImplToJson(
        _$SentimentEntityImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': _$SentimentTypeEnumMap[instance.type]!,
      'score': instance.score,
      'context': instance.context,
      'chapter': instance.chapter,
      'keywords': instance.keywords,
    };

const _$SentimentTypeEnumMap = {
  SentimentType.positive: 'positive',
  SentimentType.negative: 'negative',
  SentimentType.neutral: 'neutral',
  SentimentType.mixed: 'mixed',
  SentimentType.complex: 'complex',
};

_$EntityEntityImpl _$$EntityEntityImplFromJson(Map<String, dynamic> json) =>
    _$EntityEntityImpl(
      text: json['text'] as String,
      type: $enumDecode(_$EntityTypeEnumMap, json['type']),
      confidence: (json['confidence'] as num).toDouble(),
      description: json['description'] as String,
      synonyms:
          (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
      frequency: (json['frequency'] as num).toInt(),
      occurrences: (json['occurrences'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$EntityEntityImplToJson(_$EntityEntityImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': _$EntityTypeEnumMap[instance.type]!,
      'confidence': instance.confidence,
      'description': instance.description,
      'synonyms': instance.synonyms,
      'frequency': instance.frequency,
      'occurrences': instance.occurrences,
    };

const _$EntityTypeEnumMap = {
  EntityType.person: 'person',
  EntityType.location: 'location',
  EntityType.organization: 'organization',
  EntityType.date: 'date',
  EntityType.event: 'event',
  EntityType.concept: 'concept',
  EntityType.object: 'object',
  EntityType.other: 'other',
};

_$KeywordEntityImpl _$$KeywordEntityImplFromJson(Map<String, dynamic> json) =>
    _$KeywordEntityImpl(
      text: json['text'] as String,
      importance: (json['importance'] as num).toDouble(),
      relatedKeywords: (json['relatedKeywords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      frequency: (json['frequency'] as num).toInt(),
      occurrences: (json['occurrences'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      context: json['context'] as String,
    );

Map<String, dynamic> _$$KeywordEntityImplToJson(_$KeywordEntityImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'importance': instance.importance,
      'relatedKeywords': instance.relatedKeywords,
      'frequency': instance.frequency,
      'occurrences': instance.occurrences,
      'context': instance.context,
    };

_$TopicEntityImpl _$$TopicEntityImplFromJson(Map<String, dynamic> json) =>
    _$TopicEntityImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      prominence: (json['prominence'] as num).toDouble(),
      subtopics:
          (json['subtopics'] as List<dynamic>).map((e) => e as String).toList(),
      relatedTopics: (json['relatedTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$$TopicEntityImplToJson(_$TopicEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'prominence': instance.prominence,
      'subtopics': instance.subtopics,
      'relatedTopics': instance.relatedTopics,
      'keywords': instance.keywords,
      'category': instance.category,
    };

_$LanguageComplexityEntityImpl _$$LanguageComplexityEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageComplexityEntityImpl(
      overallComplexity: (json['overallComplexity'] as num).toDouble(),
      vocabularyComplexity: (json['vocabularyComplexity'] as num).toDouble(),
      sentenceComplexity: (json['sentenceComplexity'] as num).toDouble(),
      structuralComplexity: (json['structuralComplexity'] as num).toDouble(),
      complexityFactors:
          (json['complexityFactors'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      complexityFeatures: (json['complexityFeatures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      readabilityLevel: json['readabilityLevel'] as String,
      estimatedAgeGroup: (json['estimatedAgeGroup'] as num).toInt(),
    );

Map<String, dynamic> _$$LanguageComplexityEntityImplToJson(
        _$LanguageComplexityEntityImpl instance) =>
    <String, dynamic>{
      'overallComplexity': instance.overallComplexity,
      'vocabularyComplexity': instance.vocabularyComplexity,
      'sentenceComplexity': instance.sentenceComplexity,
      'structuralComplexity': instance.structuralComplexity,
      'complexityFactors': instance.complexityFactors,
      'complexityFeatures': instance.complexityFeatures,
      'readabilityLevel': instance.readabilityLevel,
      'estimatedAgeGroup': instance.estimatedAgeGroup,
    };
