// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int? statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl({required this.message, this.statusCode});

  @override
  final String message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return serverFailure(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return serverFailure?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(
      {required final String message,
      final int? statusCode}) = _$ServerFailureImpl;

  @override
  String get message;
  int? get statusCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NetworkFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.networkFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return networkFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return networkFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure({required final String message}) =
      _$NetworkFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CacheFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl implements CacheFailure {
  const _$CacheFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return cacheFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return cacheFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure({required final String message}) =
      _$CacheFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidInputFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$InvalidInputFailureImplCopyWith(_$InvalidInputFailureImpl value,
          $Res Function(_$InvalidInputFailureImpl) then) =
      __$$InvalidInputFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? field});
}

/// @nodoc
class __$$InvalidInputFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InvalidInputFailureImpl>
    implements _$$InvalidInputFailureImplCopyWith<$Res> {
  __$$InvalidInputFailureImplCopyWithImpl(_$InvalidInputFailureImpl _value,
      $Res Function(_$InvalidInputFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? field = freezed,
  }) {
    return _then(_$InvalidInputFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidInputFailureImpl implements InvalidInputFailure {
  const _$InvalidInputFailureImpl({required this.message, this.field});

  @override
  final String message;
  @override
  final String? field;

  @override
  String toString() {
    return 'Failure.invalidInputFailure(message: $message, field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidInputFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, field);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidInputFailureImplCopyWith<_$InvalidInputFailureImpl> get copyWith =>
      __$$InvalidInputFailureImplCopyWithImpl<_$InvalidInputFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return invalidInputFailure(message, field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return invalidInputFailure?.call(message, field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (invalidInputFailure != null) {
      return invalidInputFailure(message, field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return invalidInputFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return invalidInputFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (invalidInputFailure != null) {
      return invalidInputFailure(this);
    }
    return orElse();
  }
}

abstract class InvalidInputFailure implements Failure {
  const factory InvalidInputFailure(
      {required final String message,
      final String? field}) = _$InvalidInputFailureImpl;

  @override
  String get message;
  String? get field;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidInputFailureImplCopyWith<_$InvalidInputFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl implements AuthFailure {
  const _$AuthFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.authFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return authFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return authFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements Failure {
  const factory AuthFailure({required final String message}) =
      _$AuthFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AIModelFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AIModelFailureImplCopyWith(_$AIModelFailureImpl value,
          $Res Function(_$AIModelFailureImpl) then) =
      __$$AIModelFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? modelName, String? operation});
}

/// @nodoc
class __$$AIModelFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AIModelFailureImpl>
    implements _$$AIModelFailureImplCopyWith<$Res> {
  __$$AIModelFailureImplCopyWithImpl(
      _$AIModelFailureImpl _value, $Res Function(_$AIModelFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? modelName = freezed,
    Object? operation = freezed,
  }) {
    return _then(_$AIModelFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AIModelFailureImpl implements AIModelFailure {
  const _$AIModelFailureImpl(
      {required this.message, this.modelName, this.operation});

  @override
  final String message;
  @override
  final String? modelName;
  @override
  final String? operation;

  @override
  String toString() {
    return 'Failure.aiModelFailure(message: $message, modelName: $modelName, operation: $operation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIModelFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, modelName, operation);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIModelFailureImplCopyWith<_$AIModelFailureImpl> get copyWith =>
      __$$AIModelFailureImplCopyWithImpl<_$AIModelFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return aiModelFailure(message, modelName, operation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return aiModelFailure?.call(message, modelName, operation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (aiModelFailure != null) {
      return aiModelFailure(message, modelName, operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return aiModelFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return aiModelFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (aiModelFailure != null) {
      return aiModelFailure(this);
    }
    return orElse();
  }
}

abstract class AIModelFailure implements Failure {
  const factory AIModelFailure(
      {required final String message,
      final String? modelName,
      final String? operation}) = _$AIModelFailureImpl;

  @override
  String get message;
  String? get modelName;
  String? get operation;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIModelFailureImplCopyWith<_$AIModelFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsufficientDataFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$InsufficientDataFailureImplCopyWith(
          _$InsufficientDataFailureImpl value,
          $Res Function(_$InsufficientDataFailureImpl) then) =
      __$$InsufficientDataFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int minimumDataPoints, String? dataType});
}

/// @nodoc
class __$$InsufficientDataFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InsufficientDataFailureImpl>
    implements _$$InsufficientDataFailureImplCopyWith<$Res> {
  __$$InsufficientDataFailureImplCopyWithImpl(
      _$InsufficientDataFailureImpl _value,
      $Res Function(_$InsufficientDataFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? minimumDataPoints = null,
    Object? dataType = freezed,
  }) {
    return _then(_$InsufficientDataFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      minimumDataPoints: null == minimumDataPoints
          ? _value.minimumDataPoints
          : minimumDataPoints // ignore: cast_nullable_to_non_nullable
              as int,
      dataType: freezed == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InsufficientDataFailureImpl implements InsufficientDataFailure {
  const _$InsufficientDataFailureImpl(
      {required this.message, required this.minimumDataPoints, this.dataType});

  @override
  final String message;
  @override
  final int minimumDataPoints;
  @override
  final String? dataType;

  @override
  String toString() {
    return 'Failure.insufficientDataFailure(message: $message, minimumDataPoints: $minimumDataPoints, dataType: $dataType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientDataFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.minimumDataPoints, minimumDataPoints) ||
                other.minimumDataPoints == minimumDataPoints) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, minimumDataPoints, dataType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsufficientDataFailureImplCopyWith<_$InsufficientDataFailureImpl>
      get copyWith => __$$InsufficientDataFailureImplCopyWithImpl<
          _$InsufficientDataFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return insufficientDataFailure(message, minimumDataPoints, dataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return insufficientDataFailure?.call(message, minimumDataPoints, dataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (insufficientDataFailure != null) {
      return insufficientDataFailure(message, minimumDataPoints, dataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return insufficientDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return insufficientDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (insufficientDataFailure != null) {
      return insufficientDataFailure(this);
    }
    return orElse();
  }
}

abstract class InsufficientDataFailure implements Failure {
  const factory InsufficientDataFailure(
      {required final String message,
      required final int minimumDataPoints,
      final String? dataType}) = _$InsufficientDataFailureImpl;

  @override
  String get message;
  int get minimumDataPoints;
  String? get dataType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsufficientDataFailureImplCopyWith<_$InsufficientDataFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecommendationGenerationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$RecommendationGenerationFailureImplCopyWith(
          _$RecommendationGenerationFailureImpl value,
          $Res Function(_$RecommendationGenerationFailureImpl) then) =
      __$$RecommendationGenerationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? recommendationType, String? reason});
}

/// @nodoc
class __$$RecommendationGenerationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RecommendationGenerationFailureImpl>
    implements _$$RecommendationGenerationFailureImplCopyWith<$Res> {
  __$$RecommendationGenerationFailureImplCopyWithImpl(
      _$RecommendationGenerationFailureImpl _value,
      $Res Function(_$RecommendationGenerationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? recommendationType = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$RecommendationGenerationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      recommendationType: freezed == recommendationType
          ? _value.recommendationType
          : recommendationType // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RecommendationGenerationFailureImpl
    implements RecommendationGenerationFailure {
  const _$RecommendationGenerationFailureImpl(
      {required this.message, this.recommendationType, this.reason});

  @override
  final String message;
  @override
  final String? recommendationType;
  @override
  final String? reason;

  @override
  String toString() {
    return 'Failure.recommendationGenerationFailure(message: $message, recommendationType: $recommendationType, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationGenerationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.recommendationType, recommendationType) ||
                other.recommendationType == recommendationType) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, recommendationType, reason);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationGenerationFailureImplCopyWith<
          _$RecommendationGenerationFailureImpl>
      get copyWith => __$$RecommendationGenerationFailureImplCopyWithImpl<
          _$RecommendationGenerationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return recommendationGenerationFailure(message, recommendationType, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return recommendationGenerationFailure?.call(
        message, recommendationType, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (recommendationGenerationFailure != null) {
      return recommendationGenerationFailure(
          message, recommendationType, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return recommendationGenerationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return recommendationGenerationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (recommendationGenerationFailure != null) {
      return recommendationGenerationFailure(this);
    }
    return orElse();
  }
}

abstract class RecommendationGenerationFailure implements Failure {
  const factory RecommendationGenerationFailure(
      {required final String message,
      final String? recommendationType,
      final String? reason}) = _$RecommendationGenerationFailureImpl;

  @override
  String get message;
  String? get recommendationType;
  String? get reason;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationGenerationFailureImplCopyWith<
          _$RecommendationGenerationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentAnalysisFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ContentAnalysisFailureImplCopyWith(
          _$ContentAnalysisFailureImpl value,
          $Res Function(_$ContentAnalysisFailureImpl) then) =
      __$$ContentAnalysisFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? analysisType, String? bookId});
}

/// @nodoc
class __$$ContentAnalysisFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ContentAnalysisFailureImpl>
    implements _$$ContentAnalysisFailureImplCopyWith<$Res> {
  __$$ContentAnalysisFailureImplCopyWithImpl(
      _$ContentAnalysisFailureImpl _value,
      $Res Function(_$ContentAnalysisFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? analysisType = freezed,
    Object? bookId = freezed,
  }) {
    return _then(_$ContentAnalysisFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      analysisType: freezed == analysisType
          ? _value.analysisType
          : analysisType // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ContentAnalysisFailureImpl implements ContentAnalysisFailure {
  const _$ContentAnalysisFailureImpl(
      {required this.message, this.analysisType, this.bookId});

  @override
  final String message;
  @override
  final String? analysisType;
  @override
  final String? bookId;

  @override
  String toString() {
    return 'Failure.contentAnalysisFailure(message: $message, analysisType: $analysisType, bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentAnalysisFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.analysisType, analysisType) ||
                other.analysisType == analysisType) &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, analysisType, bookId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentAnalysisFailureImplCopyWith<_$ContentAnalysisFailureImpl>
      get copyWith => __$$ContentAnalysisFailureImplCopyWithImpl<
          _$ContentAnalysisFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return contentAnalysisFailure(message, analysisType, bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return contentAnalysisFailure?.call(message, analysisType, bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (contentAnalysisFailure != null) {
      return contentAnalysisFailure(message, analysisType, bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return contentAnalysisFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return contentAnalysisFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (contentAnalysisFailure != null) {
      return contentAnalysisFailure(this);
    }
    return orElse();
  }
}

abstract class ContentAnalysisFailure implements Failure {
  const factory ContentAnalysisFailure(
      {required final String message,
      final String? analysisType,
      final String? bookId}) = _$ContentAnalysisFailureImpl;

  @override
  String get message;
  String? get analysisType;
  String? get bookId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentAnalysisFailureImplCopyWith<_$ContentAnalysisFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DifficultyAssessmentFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$DifficultyAssessmentFailureImplCopyWith(
          _$DifficultyAssessmentFailureImpl value,
          $Res Function(_$DifficultyAssessmentFailureImpl) then) =
      __$$DifficultyAssessmentFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? bookId, String? assessmentType});
}

/// @nodoc
class __$$DifficultyAssessmentFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DifficultyAssessmentFailureImpl>
    implements _$$DifficultyAssessmentFailureImplCopyWith<$Res> {
  __$$DifficultyAssessmentFailureImplCopyWithImpl(
      _$DifficultyAssessmentFailureImpl _value,
      $Res Function(_$DifficultyAssessmentFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? bookId = freezed,
    Object? assessmentType = freezed,
  }) {
    return _then(_$DifficultyAssessmentFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentType: freezed == assessmentType
          ? _value.assessmentType
          : assessmentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DifficultyAssessmentFailureImpl implements DifficultyAssessmentFailure {
  const _$DifficultyAssessmentFailureImpl(
      {required this.message, this.bookId, this.assessmentType});

  @override
  final String message;
  @override
  final String? bookId;
  @override
  final String? assessmentType;

  @override
  String toString() {
    return 'Failure.difficultyAssessmentFailure(message: $message, bookId: $bookId, assessmentType: $assessmentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DifficultyAssessmentFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.assessmentType, assessmentType) ||
                other.assessmentType == assessmentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, bookId, assessmentType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DifficultyAssessmentFailureImplCopyWith<_$DifficultyAssessmentFailureImpl>
      get copyWith => __$$DifficultyAssessmentFailureImplCopyWithImpl<
          _$DifficultyAssessmentFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return difficultyAssessmentFailure(message, bookId, assessmentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return difficultyAssessmentFailure?.call(message, bookId, assessmentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (difficultyAssessmentFailure != null) {
      return difficultyAssessmentFailure(message, bookId, assessmentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return difficultyAssessmentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return difficultyAssessmentFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (difficultyAssessmentFailure != null) {
      return difficultyAssessmentFailure(this);
    }
    return orElse();
  }
}

abstract class DifficultyAssessmentFailure implements Failure {
  const factory DifficultyAssessmentFailure(
      {required final String message,
      final String? bookId,
      final String? assessmentType}) = _$DifficultyAssessmentFailureImpl;

  @override
  String get message;
  String? get bookId;
  String? get assessmentType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DifficultyAssessmentFailureImplCopyWith<_$DifficultyAssessmentFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningPathFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$LearningPathFailureImplCopyWith(_$LearningPathFailureImpl value,
          $Res Function(_$LearningPathFailureImpl) then) =
      __$$LearningPathFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? pathId, String? operation});
}

/// @nodoc
class __$$LearningPathFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LearningPathFailureImpl>
    implements _$$LearningPathFailureImplCopyWith<$Res> {
  __$$LearningPathFailureImplCopyWithImpl(_$LearningPathFailureImpl _value,
      $Res Function(_$LearningPathFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? pathId = freezed,
    Object? operation = freezed,
  }) {
    return _then(_$LearningPathFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pathId: freezed == pathId
          ? _value.pathId
          : pathId // ignore: cast_nullable_to_non_nullable
              as String?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LearningPathFailureImpl implements LearningPathFailure {
  const _$LearningPathFailureImpl(
      {required this.message, this.pathId, this.operation});

  @override
  final String message;
  @override
  final String? pathId;
  @override
  final String? operation;

  @override
  String toString() {
    return 'Failure.learningPathFailure(message: $message, pathId: $pathId, operation: $operation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningPathFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pathId, pathId) || other.pathId == pathId) &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, pathId, operation);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningPathFailureImplCopyWith<_$LearningPathFailureImpl> get copyWith =>
      __$$LearningPathFailureImplCopyWithImpl<_$LearningPathFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return learningPathFailure(message, pathId, operation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return learningPathFailure?.call(message, pathId, operation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (learningPathFailure != null) {
      return learningPathFailure(message, pathId, operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return learningPathFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return learningPathFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (learningPathFailure != null) {
      return learningPathFailure(this);
    }
    return orElse();
  }
}

abstract class LearningPathFailure implements Failure {
  const factory LearningPathFailure(
      {required final String message,
      final String? pathId,
      final String? operation}) = _$LearningPathFailureImpl;

  @override
  String get message;
  String? get pathId;
  String? get operation;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningPathFailureImplCopyWith<_$LearningPathFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComprehensionAssessmentFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ComprehensionAssessmentFailureImplCopyWith(
          _$ComprehensionAssessmentFailureImpl value,
          $Res Function(_$ComprehensionAssessmentFailureImpl) then) =
      __$$ComprehensionAssessmentFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message, String? userId, String? bookId, String? assessmentType});
}

/// @nodoc
class __$$ComprehensionAssessmentFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ComprehensionAssessmentFailureImpl>
    implements _$$ComprehensionAssessmentFailureImplCopyWith<$Res> {
  __$$ComprehensionAssessmentFailureImplCopyWithImpl(
      _$ComprehensionAssessmentFailureImpl _value,
      $Res Function(_$ComprehensionAssessmentFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = freezed,
    Object? bookId = freezed,
    Object? assessmentType = freezed,
  }) {
    return _then(_$ComprehensionAssessmentFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentType: freezed == assessmentType
          ? _value.assessmentType
          : assessmentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ComprehensionAssessmentFailureImpl
    implements ComprehensionAssessmentFailure {
  const _$ComprehensionAssessmentFailureImpl(
      {required this.message, this.userId, this.bookId, this.assessmentType});

  @override
  final String message;
  @override
  final String? userId;
  @override
  final String? bookId;
  @override
  final String? assessmentType;

  @override
  String toString() {
    return 'Failure.comprehensionAssessmentFailure(message: $message, userId: $userId, bookId: $bookId, assessmentType: $assessmentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComprehensionAssessmentFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.assessmentType, assessmentType) ||
                other.assessmentType == assessmentType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, userId, bookId, assessmentType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComprehensionAssessmentFailureImplCopyWith<
          _$ComprehensionAssessmentFailureImpl>
      get copyWith => __$$ComprehensionAssessmentFailureImplCopyWithImpl<
          _$ComprehensionAssessmentFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return comprehensionAssessmentFailure(
        message, userId, bookId, assessmentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return comprehensionAssessmentFailure?.call(
        message, userId, bookId, assessmentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (comprehensionAssessmentFailure != null) {
      return comprehensionAssessmentFailure(
          message, userId, bookId, assessmentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return comprehensionAssessmentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return comprehensionAssessmentFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (comprehensionAssessmentFailure != null) {
      return comprehensionAssessmentFailure(this);
    }
    return orElse();
  }
}

abstract class ComprehensionAssessmentFailure implements Failure {
  const factory ComprehensionAssessmentFailure(
      {required final String message,
      final String? userId,
      final String? bookId,
      final String? assessmentType}) = _$ComprehensionAssessmentFailureImpl;

  @override
  String get message;
  String? get userId;
  String? get bookId;
  String? get assessmentType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComprehensionAssessmentFailureImplCopyWith<
          _$ComprehensionAssessmentFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NLPProcessingFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NLPProcessingFailureImplCopyWith(_$NLPProcessingFailureImpl value,
          $Res Function(_$NLPProcessingFailureImpl) then) =
      __$$NLPProcessingFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? bookId, String? nlpOperation});
}

/// @nodoc
class __$$NLPProcessingFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NLPProcessingFailureImpl>
    implements _$$NLPProcessingFailureImplCopyWith<$Res> {
  __$$NLPProcessingFailureImplCopyWithImpl(_$NLPProcessingFailureImpl _value,
      $Res Function(_$NLPProcessingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? bookId = freezed,
    Object? nlpOperation = freezed,
  }) {
    return _then(_$NLPProcessingFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      nlpOperation: freezed == nlpOperation
          ? _value.nlpOperation
          : nlpOperation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NLPProcessingFailureImpl implements NLPProcessingFailure {
  const _$NLPProcessingFailureImpl(
      {required this.message, this.bookId, this.nlpOperation});

  @override
  final String message;
  @override
  final String? bookId;
  @override
  final String? nlpOperation;

  @override
  String toString() {
    return 'Failure.nlpProcessingFailure(message: $message, bookId: $bookId, nlpOperation: $nlpOperation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NLPProcessingFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.nlpOperation, nlpOperation) ||
                other.nlpOperation == nlpOperation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, bookId, nlpOperation);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NLPProcessingFailureImplCopyWith<_$NLPProcessingFailureImpl>
      get copyWith =>
          __$$NLPProcessingFailureImplCopyWithImpl<_$NLPProcessingFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return nlpProcessingFailure(message, bookId, nlpOperation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return nlpProcessingFailure?.call(message, bookId, nlpOperation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (nlpProcessingFailure != null) {
      return nlpProcessingFailure(message, bookId, nlpOperation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return nlpProcessingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return nlpProcessingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (nlpProcessingFailure != null) {
      return nlpProcessingFailure(this);
    }
    return orElse();
  }
}

abstract class NLPProcessingFailure implements Failure {
  const factory NLPProcessingFailure(
      {required final String message,
      final String? bookId,
      final String? nlpOperation}) = _$NLPProcessingFailureImpl;

  @override
  String get message;
  String? get bookId;
  String? get nlpOperation;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NLPProcessingFailureImplCopyWith<_$NLPProcessingFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModelTrainingFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ModelTrainingFailureImplCopyWith(_$ModelTrainingFailureImpl value,
          $Res Function(_$ModelTrainingFailureImpl) then) =
      __$$ModelTrainingFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? modelName, String? trainingData});
}

/// @nodoc
class __$$ModelTrainingFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ModelTrainingFailureImpl>
    implements _$$ModelTrainingFailureImplCopyWith<$Res> {
  __$$ModelTrainingFailureImplCopyWithImpl(_$ModelTrainingFailureImpl _value,
      $Res Function(_$ModelTrainingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? modelName = freezed,
    Object? trainingData = freezed,
  }) {
    return _then(_$ModelTrainingFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      trainingData: freezed == trainingData
          ? _value.trainingData
          : trainingData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ModelTrainingFailureImpl implements ModelTrainingFailure {
  const _$ModelTrainingFailureImpl(
      {required this.message, this.modelName, this.trainingData});

  @override
  final String message;
  @override
  final String? modelName;
  @override
  final String? trainingData;

  @override
  String toString() {
    return 'Failure.modelTrainingFailure(message: $message, modelName: $modelName, trainingData: $trainingData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelTrainingFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.trainingData, trainingData) ||
                other.trainingData == trainingData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, modelName, trainingData);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelTrainingFailureImplCopyWith<_$ModelTrainingFailureImpl>
      get copyWith =>
          __$$ModelTrainingFailureImplCopyWithImpl<_$ModelTrainingFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return modelTrainingFailure(message, modelName, trainingData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return modelTrainingFailure?.call(message, modelName, trainingData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (modelTrainingFailure != null) {
      return modelTrainingFailure(message, modelName, trainingData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return modelTrainingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return modelTrainingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (modelTrainingFailure != null) {
      return modelTrainingFailure(this);
    }
    return orElse();
  }
}

abstract class ModelTrainingFailure implements Failure {
  const factory ModelTrainingFailure(
      {required final String message,
      final String? modelName,
      final String? trainingData}) = _$ModelTrainingFailureImpl;

  @override
  String get message;
  String? get modelName;
  String? get trainingData;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelTrainingFailureImplCopyWith<_$ModelTrainingFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreferenceUpdateFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$PreferenceUpdateFailureImplCopyWith(
          _$PreferenceUpdateFailureImpl value,
          $Res Function(_$PreferenceUpdateFailureImpl) then) =
      __$$PreferenceUpdateFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? userId, String? preferenceType});
}

/// @nodoc
class __$$PreferenceUpdateFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PreferenceUpdateFailureImpl>
    implements _$$PreferenceUpdateFailureImplCopyWith<$Res> {
  __$$PreferenceUpdateFailureImplCopyWithImpl(
      _$PreferenceUpdateFailureImpl _value,
      $Res Function(_$PreferenceUpdateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = freezed,
    Object? preferenceType = freezed,
  }) {
    return _then(_$PreferenceUpdateFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      preferenceType: freezed == preferenceType
          ? _value.preferenceType
          : preferenceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PreferenceUpdateFailureImpl implements PreferenceUpdateFailure {
  const _$PreferenceUpdateFailureImpl(
      {required this.message, this.userId, this.preferenceType});

  @override
  final String message;
  @override
  final String? userId;
  @override
  final String? preferenceType;

  @override
  String toString() {
    return 'Failure.preferenceUpdateFailure(message: $message, userId: $userId, preferenceType: $preferenceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceUpdateFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.preferenceType, preferenceType) ||
                other.preferenceType == preferenceType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, userId, preferenceType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceUpdateFailureImplCopyWith<_$PreferenceUpdateFailureImpl>
      get copyWith => __$$PreferenceUpdateFailureImplCopyWithImpl<
          _$PreferenceUpdateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return preferenceUpdateFailure(message, userId, preferenceType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return preferenceUpdateFailure?.call(message, userId, preferenceType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (preferenceUpdateFailure != null) {
      return preferenceUpdateFailure(message, userId, preferenceType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return preferenceUpdateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return preferenceUpdateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (preferenceUpdateFailure != null) {
      return preferenceUpdateFailure(this);
    }
    return orElse();
  }
}

abstract class PreferenceUpdateFailure implements Failure {
  const factory PreferenceUpdateFailure(
      {required final String message,
      final String? userId,
      final String? preferenceType}) = _$PreferenceUpdateFailureImpl;

  @override
  String get message;
  String? get userId;
  String? get preferenceType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferenceUpdateFailureImplCopyWith<_$PreferenceUpdateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsightGenerationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$InsightGenerationFailureImplCopyWith(
          _$InsightGenerationFailureImpl value,
          $Res Function(_$InsightGenerationFailureImpl) then) =
      __$$InsightGenerationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? insightType, String? context});
}

/// @nodoc
class __$$InsightGenerationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InsightGenerationFailureImpl>
    implements _$$InsightGenerationFailureImplCopyWith<$Res> {
  __$$InsightGenerationFailureImplCopyWithImpl(
      _$InsightGenerationFailureImpl _value,
      $Res Function(_$InsightGenerationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? insightType = freezed,
    Object? context = freezed,
  }) {
    return _then(_$InsightGenerationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      insightType: freezed == insightType
          ? _value.insightType
          : insightType // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InsightGenerationFailureImpl implements InsightGenerationFailure {
  const _$InsightGenerationFailureImpl(
      {required this.message, this.insightType, this.context});

  @override
  final String message;
  @override
  final String? insightType;
  @override
  final String? context;

  @override
  String toString() {
    return 'Failure.insightGenerationFailure(message: $message, insightType: $insightType, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsightGenerationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.insightType, insightType) ||
                other.insightType == insightType) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, insightType, context);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsightGenerationFailureImplCopyWith<_$InsightGenerationFailureImpl>
      get copyWith => __$$InsightGenerationFailureImplCopyWithImpl<
          _$InsightGenerationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return insightGenerationFailure(message, insightType, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return insightGenerationFailure?.call(message, insightType, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (insightGenerationFailure != null) {
      return insightGenerationFailure(message, insightType, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return insightGenerationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return insightGenerationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (insightGenerationFailure != null) {
      return insightGenerationFailure(this);
    }
    return orElse();
  }
}

abstract class InsightGenerationFailure implements Failure {
  const factory InsightGenerationFailure(
      {required final String message,
      final String? insightType,
      final String? context}) = _$InsightGenerationFailureImpl;

  @override
  String get message;
  String? get insightType;
  String? get context;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsightGenerationFailureImplCopyWith<_$InsightGenerationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleGenerationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ScheduleGenerationFailureImplCopyWith(
          _$ScheduleGenerationFailureImpl value,
          $Res Function(_$ScheduleGenerationFailureImpl) then) =
      __$$ScheduleGenerationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message, String? userId, String? bookId, String? scheduleType});
}

/// @nodoc
class __$$ScheduleGenerationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ScheduleGenerationFailureImpl>
    implements _$$ScheduleGenerationFailureImplCopyWith<$Res> {
  __$$ScheduleGenerationFailureImplCopyWithImpl(
      _$ScheduleGenerationFailureImpl _value,
      $Res Function(_$ScheduleGenerationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = freezed,
    Object? bookId = freezed,
    Object? scheduleType = freezed,
  }) {
    return _then(_$ScheduleGenerationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScheduleGenerationFailureImpl implements ScheduleGenerationFailure {
  const _$ScheduleGenerationFailureImpl(
      {required this.message, this.userId, this.bookId, this.scheduleType});

  @override
  final String message;
  @override
  final String? userId;
  @override
  final String? bookId;
  @override
  final String? scheduleType;

  @override
  String toString() {
    return 'Failure.scheduleGenerationFailure(message: $message, userId: $userId, bookId: $bookId, scheduleType: $scheduleType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleGenerationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, userId, bookId, scheduleType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleGenerationFailureImplCopyWith<_$ScheduleGenerationFailureImpl>
      get copyWith => __$$ScheduleGenerationFailureImplCopyWithImpl<
          _$ScheduleGenerationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return scheduleGenerationFailure(message, userId, bookId, scheduleType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return scheduleGenerationFailure?.call(
        message, userId, bookId, scheduleType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (scheduleGenerationFailure != null) {
      return scheduleGenerationFailure(message, userId, bookId, scheduleType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return scheduleGenerationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return scheduleGenerationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (scheduleGenerationFailure != null) {
      return scheduleGenerationFailure(this);
    }
    return orElse();
  }
}

abstract class ScheduleGenerationFailure implements Failure {
  const factory ScheduleGenerationFailure(
      {required final String message,
      final String? userId,
      final String? bookId,
      final String? scheduleType}) = _$ScheduleGenerationFailureImpl;

  @override
  String get message;
  String? get userId;
  String? get bookId;
  String? get scheduleType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleGenerationFailureImplCopyWith<_$ScheduleGenerationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoalGenerationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$GoalGenerationFailureImplCopyWith(
          _$GoalGenerationFailureImpl value,
          $Res Function(_$GoalGenerationFailureImpl) then) =
      __$$GoalGenerationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message, String? userId, String? goalType, String? timeframe});
}

/// @nodoc
class __$$GoalGenerationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$GoalGenerationFailureImpl>
    implements _$$GoalGenerationFailureImplCopyWith<$Res> {
  __$$GoalGenerationFailureImplCopyWithImpl(_$GoalGenerationFailureImpl _value,
      $Res Function(_$GoalGenerationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = freezed,
    Object? goalType = freezed,
    Object? timeframe = freezed,
  }) {
    return _then(_$GoalGenerationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      goalType: freezed == goalType
          ? _value.goalType
          : goalType // ignore: cast_nullable_to_non_nullable
              as String?,
      timeframe: freezed == timeframe
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GoalGenerationFailureImpl implements GoalGenerationFailure {
  const _$GoalGenerationFailureImpl(
      {required this.message, this.userId, this.goalType, this.timeframe});

  @override
  final String message;
  @override
  final String? userId;
  @override
  final String? goalType;
  @override
  final String? timeframe;

  @override
  String toString() {
    return 'Failure.goalGenerationFailure(message: $message, userId: $userId, goalType: $goalType, timeframe: $timeframe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalGenerationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.goalType, goalType) ||
                other.goalType == goalType) &&
            (identical(other.timeframe, timeframe) ||
                other.timeframe == timeframe));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, userId, goalType, timeframe);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalGenerationFailureImplCopyWith<_$GoalGenerationFailureImpl>
      get copyWith => __$$GoalGenerationFailureImplCopyWithImpl<
          _$GoalGenerationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return goalGenerationFailure(message, userId, goalType, timeframe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return goalGenerationFailure?.call(message, userId, goalType, timeframe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (goalGenerationFailure != null) {
      return goalGenerationFailure(message, userId, goalType, timeframe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return goalGenerationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return goalGenerationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (goalGenerationFailure != null) {
      return goalGenerationFailure(this);
    }
    return orElse();
  }
}

abstract class GoalGenerationFailure implements Failure {
  const factory GoalGenerationFailure(
      {required final String message,
      final String? userId,
      final String? goalType,
      final String? timeframe}) = _$GoalGenerationFailureImpl;

  @override
  String get message;
  String? get userId;
  String? get goalType;
  String? get timeframe;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalGenerationFailureImplCopyWith<_$GoalGenerationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChallengeGenerationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ChallengeGenerationFailureImplCopyWith(
          _$ChallengeGenerationFailureImpl value,
          $Res Function(_$ChallengeGenerationFailureImpl) then) =
      __$$ChallengeGenerationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      String? userId,
      String? challengeType,
      String? difficulty});
}

/// @nodoc
class __$$ChallengeGenerationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ChallengeGenerationFailureImpl>
    implements _$$ChallengeGenerationFailureImplCopyWith<$Res> {
  __$$ChallengeGenerationFailureImplCopyWithImpl(
      _$ChallengeGenerationFailureImpl _value,
      $Res Function(_$ChallengeGenerationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = freezed,
    Object? challengeType = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(_$ChallengeGenerationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      challengeType: freezed == challengeType
          ? _value.challengeType
          : challengeType // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChallengeGenerationFailureImpl implements ChallengeGenerationFailure {
  const _$ChallengeGenerationFailureImpl(
      {required this.message,
      this.userId,
      this.challengeType,
      this.difficulty});

  @override
  final String message;
  @override
  final String? userId;
  @override
  final String? challengeType;
  @override
  final String? difficulty;

  @override
  String toString() {
    return 'Failure.challengeGenerationFailure(message: $message, userId: $userId, challengeType: $challengeType, difficulty: $difficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeGenerationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.challengeType, challengeType) ||
                other.challengeType == challengeType) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, userId, challengeType, difficulty);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeGenerationFailureImplCopyWith<_$ChallengeGenerationFailureImpl>
      get copyWith => __$$ChallengeGenerationFailureImplCopyWithImpl<
          _$ChallengeGenerationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return challengeGenerationFailure(
        message, userId, challengeType, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return challengeGenerationFailure?.call(
        message, userId, challengeType, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (challengeGenerationFailure != null) {
      return challengeGenerationFailure(
          message, userId, challengeType, difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return challengeGenerationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return challengeGenerationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (challengeGenerationFailure != null) {
      return challengeGenerationFailure(this);
    }
    return orElse();
  }
}

abstract class ChallengeGenerationFailure implements Failure {
  const factory ChallengeGenerationFailure(
      {required final String message,
      final String? userId,
      final String? challengeType,
      final String? difficulty}) = _$ChallengeGenerationFailureImpl;

  @override
  String get message;
  String? get userId;
  String? get challengeType;
  String? get difficulty;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeGenerationFailureImplCopyWith<_$ChallengeGenerationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentModerationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ContentModerationFailureImplCopyWith(
          _$ContentModerationFailureImpl value,
          $Res Function(_$ContentModerationFailureImpl) then) =
      __$$ContentModerationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? reason, String? contentType});
}

/// @nodoc
class __$$ContentModerationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ContentModerationFailureImpl>
    implements _$$ContentModerationFailureImplCopyWith<$Res> {
  __$$ContentModerationFailureImplCopyWithImpl(
      _$ContentModerationFailureImpl _value,
      $Res Function(_$ContentModerationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? reason = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_$ContentModerationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ContentModerationFailureImpl implements ContentModerationFailure {
  const _$ContentModerationFailureImpl(
      {required this.message, this.reason, this.contentType});

  @override
  final String message;
  @override
  final String? reason;
  @override
  final String? contentType;

  @override
  String toString() {
    return 'Failure.contentModerationFailure(message: $message, reason: $reason, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentModerationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, reason, contentType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentModerationFailureImplCopyWith<_$ContentModerationFailureImpl>
      get copyWith => __$$ContentModerationFailureImplCopyWithImpl<
          _$ContentModerationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return contentModerationFailure(message, reason, contentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return contentModerationFailure?.call(message, reason, contentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (contentModerationFailure != null) {
      return contentModerationFailure(message, reason, contentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return contentModerationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return contentModerationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (contentModerationFailure != null) {
      return contentModerationFailure(this);
    }
    return orElse();
  }
}

abstract class ContentModerationFailure implements Failure {
  const factory ContentModerationFailure(
      {required final String message,
      final String? reason,
      final String? contentType}) = _$ContentModerationFailureImpl;

  @override
  String get message;
  String? get reason;
  String? get contentType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentModerationFailureImplCopyWith<_$ContentModerationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateLimitFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$RateLimitFailureImplCopyWith(_$RateLimitFailureImpl value,
          $Res Function(_$RateLimitFailureImpl) then) =
      __$$RateLimitFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Duration cooldown, String? operation});
}

/// @nodoc
class __$$RateLimitFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RateLimitFailureImpl>
    implements _$$RateLimitFailureImplCopyWith<$Res> {
  __$$RateLimitFailureImplCopyWithImpl(_$RateLimitFailureImpl _value,
      $Res Function(_$RateLimitFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cooldown = null,
    Object? operation = freezed,
  }) {
    return _then(_$RateLimitFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      cooldown: null == cooldown
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as Duration,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RateLimitFailureImpl implements RateLimitFailure {
  const _$RateLimitFailureImpl(
      {required this.message, required this.cooldown, this.operation});

  @override
  final String message;
  @override
  final Duration cooldown;
  @override
  final String? operation;

  @override
  String toString() {
    return 'Failure.rateLimitFailure(message: $message, cooldown: $cooldown, operation: $operation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateLimitFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cooldown, cooldown) ||
                other.cooldown == cooldown) &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cooldown, operation);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateLimitFailureImplCopyWith<_$RateLimitFailureImpl> get copyWith =>
      __$$RateLimitFailureImplCopyWithImpl<_$RateLimitFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return rateLimitFailure(message, cooldown, operation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return rateLimitFailure?.call(message, cooldown, operation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (rateLimitFailure != null) {
      return rateLimitFailure(message, cooldown, operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return rateLimitFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return rateLimitFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (rateLimitFailure != null) {
      return rateLimitFailure(this);
    }
    return orElse();
  }
}

abstract class RateLimitFailure implements Failure {
  const factory RateLimitFailure(
      {required final String message,
      required final Duration cooldown,
      final String? operation}) = _$RateLimitFailureImpl;

  @override
  String get message;
  Duration get cooldown;
  String? get operation;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateLimitFailureImplCopyWith<_$RateLimitFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModelUnavailableFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ModelUnavailableFailureImplCopyWith(
          _$ModelUnavailableFailureImpl value,
          $Res Function(_$ModelUnavailableFailureImpl) then) =
      __$$ModelUnavailableFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? modelName, String? alternative});
}

/// @nodoc
class __$$ModelUnavailableFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ModelUnavailableFailureImpl>
    implements _$$ModelUnavailableFailureImplCopyWith<$Res> {
  __$$ModelUnavailableFailureImplCopyWithImpl(
      _$ModelUnavailableFailureImpl _value,
      $Res Function(_$ModelUnavailableFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? modelName = freezed,
    Object? alternative = freezed,
  }) {
    return _then(_$ModelUnavailableFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      alternative: freezed == alternative
          ? _value.alternative
          : alternative // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ModelUnavailableFailureImpl implements ModelUnavailableFailure {
  const _$ModelUnavailableFailureImpl(
      {required this.message, this.modelName, this.alternative});

  @override
  final String message;
  @override
  final String? modelName;
  @override
  final String? alternative;

  @override
  String toString() {
    return 'Failure.modelUnavailableFailure(message: $message, modelName: $modelName, alternative: $alternative)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelUnavailableFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.alternative, alternative) ||
                other.alternative == alternative));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, modelName, alternative);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelUnavailableFailureImplCopyWith<_$ModelUnavailableFailureImpl>
      get copyWith => __$$ModelUnavailableFailureImplCopyWithImpl<
          _$ModelUnavailableFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return modelUnavailableFailure(message, modelName, alternative);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return modelUnavailableFailure?.call(message, modelName, alternative);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (modelUnavailableFailure != null) {
      return modelUnavailableFailure(message, modelName, alternative);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return modelUnavailableFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return modelUnavailableFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (modelUnavailableFailure != null) {
      return modelUnavailableFailure(this);
    }
    return orElse();
  }
}

abstract class ModelUnavailableFailure implements Failure {
  const factory ModelUnavailableFailure(
      {required final String message,
      final String? modelName,
      final String? alternative}) = _$ModelUnavailableFailureImpl;

  @override
  String get message;
  String? get modelName;
  String? get alternative;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelUnavailableFailureImplCopyWith<_$ModelUnavailableFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataQualityFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$DataQualityFailureImplCopyWith(_$DataQualityFailureImpl value,
          $Res Function(_$DataQualityFailureImpl) then) =
      __$$DataQualityFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? dataType, String? qualityIssue});
}

/// @nodoc
class __$$DataQualityFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DataQualityFailureImpl>
    implements _$$DataQualityFailureImplCopyWith<$Res> {
  __$$DataQualityFailureImplCopyWithImpl(_$DataQualityFailureImpl _value,
      $Res Function(_$DataQualityFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? dataType = freezed,
    Object? qualityIssue = freezed,
  }) {
    return _then(_$DataQualityFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: freezed == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityIssue: freezed == qualityIssue
          ? _value.qualityIssue
          : qualityIssue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataQualityFailureImpl implements DataQualityFailure {
  const _$DataQualityFailureImpl(
      {required this.message, this.dataType, this.qualityIssue});

  @override
  final String message;
  @override
  final String? dataType;
  @override
  final String? qualityIssue;

  @override
  String toString() {
    return 'Failure.dataQualityFailure(message: $message, dataType: $dataType, qualityIssue: $qualityIssue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataQualityFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.qualityIssue, qualityIssue) ||
                other.qualityIssue == qualityIssue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, dataType, qualityIssue);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataQualityFailureImplCopyWith<_$DataQualityFailureImpl> get copyWith =>
      __$$DataQualityFailureImplCopyWithImpl<_$DataQualityFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(
            String message, String? modelName, String? operation)
        aiModelFailure,
    required TResult Function(
            String message, int minimumDataPoints, String? dataType)
        insufficientDataFailure,
    required TResult Function(
            String message, String? recommendationType, String? reason)
        recommendationGenerationFailure,
    required TResult Function(
            String message, String? analysisType, String? bookId)
        contentAnalysisFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentType)
        difficultyAssessmentFailure,
    required TResult Function(String message, String? pathId, String? operation)
        learningPathFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)
        comprehensionAssessmentFailure,
    required TResult Function(
            String message, String? bookId, String? nlpOperation)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? modelName, String? trainingData)
        modelTrainingFailure,
    required TResult Function(
            String message, String? userId, String? preferenceType)
        preferenceUpdateFailure,
    required TResult Function(
            String message, String? insightType, String? context)
        insightGenerationFailure,
    required TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)
        scheduleGenerationFailure,
    required TResult Function(
            String message, String? userId, String? goalType, String? timeframe)
        goalGenerationFailure,
    required TResult Function(String message, String? userId,
            String? challengeType, String? difficulty)
        challengeGenerationFailure,
    required TResult Function(
            String message, String? reason, String? contentType)
        contentModerationFailure,
    required TResult Function(
            String message, Duration cooldown, String? operation)
        rateLimitFailure,
    required TResult Function(
            String message, String? modelName, String? alternative)
        modelUnavailableFailure,
    required TResult Function(
            String message, String? dataType, String? qualityIssue)
        dataQualityFailure,
  }) {
    return dataQualityFailure(message, dataType, qualityIssue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult? Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult? Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult? Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult? Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult? Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult? Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult? Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult? Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult? Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult? Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult? Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult? Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult? Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult? Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult? Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return dataQualityFailure?.call(message, dataType, qualityIssue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message, String? modelName, String? operation)?
        aiModelFailure,
    TResult Function(String message, int minimumDataPoints, String? dataType)?
        insufficientDataFailure,
    TResult Function(
            String message, String? recommendationType, String? reason)?
        recommendationGenerationFailure,
    TResult Function(String message, String? analysisType, String? bookId)?
        contentAnalysisFailure,
    TResult Function(String message, String? bookId, String? assessmentType)?
        difficultyAssessmentFailure,
    TResult Function(String message, String? pathId, String? operation)?
        learningPathFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? assessmentType)?
        comprehensionAssessmentFailure,
    TResult Function(String message, String? bookId, String? nlpOperation)?
        nlpProcessingFailure,
    TResult Function(String message, String? modelName, String? trainingData)?
        modelTrainingFailure,
    TResult Function(String message, String? userId, String? preferenceType)?
        preferenceUpdateFailure,
    TResult Function(String message, String? insightType, String? context)?
        insightGenerationFailure,
    TResult Function(String message, String? userId, String? bookId,
            String? scheduleType)?
        scheduleGenerationFailure,
    TResult Function(String message, String? userId, String? goalType,
            String? timeframe)?
        goalGenerationFailure,
    TResult Function(String message, String? userId, String? challengeType,
            String? difficulty)?
        challengeGenerationFailure,
    TResult Function(String message, String? reason, String? contentType)?
        contentModerationFailure,
    TResult Function(String message, Duration cooldown, String? operation)?
        rateLimitFailure,
    TResult Function(String message, String? modelName, String? alternative)?
        modelUnavailableFailure,
    TResult Function(String message, String? dataType, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (dataQualityFailure != null) {
      return dataQualityFailure(message, dataType, qualityIssue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(AIModelFailure value) aiModelFailure,
    required TResult Function(InsufficientDataFailure value)
        insufficientDataFailure,
    required TResult Function(RecommendationGenerationFailure value)
        recommendationGenerationFailure,
    required TResult Function(ContentAnalysisFailure value)
        contentAnalysisFailure,
    required TResult Function(DifficultyAssessmentFailure value)
        difficultyAssessmentFailure,
    required TResult Function(LearningPathFailure value) learningPathFailure,
    required TResult Function(ComprehensionAssessmentFailure value)
        comprehensionAssessmentFailure,
    required TResult Function(NLPProcessingFailure value) nlpProcessingFailure,
    required TResult Function(ModelTrainingFailure value) modelTrainingFailure,
    required TResult Function(PreferenceUpdateFailure value)
        preferenceUpdateFailure,
    required TResult Function(InsightGenerationFailure value)
        insightGenerationFailure,
    required TResult Function(ScheduleGenerationFailure value)
        scheduleGenerationFailure,
    required TResult Function(GoalGenerationFailure value)
        goalGenerationFailure,
    required TResult Function(ChallengeGenerationFailure value)
        challengeGenerationFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ModelUnavailableFailure value)
        modelUnavailableFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return dataQualityFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(AIModelFailure value)? aiModelFailure,
    TResult? Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult? Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult? Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult? Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult? Function(LearningPathFailure value)? learningPathFailure,
    TResult? Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult? Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult? Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult? Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult? Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult? Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult? Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult? Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return dataQualityFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(AIModelFailure value)? aiModelFailure,
    TResult Function(InsufficientDataFailure value)? insufficientDataFailure,
    TResult Function(RecommendationGenerationFailure value)?
        recommendationGenerationFailure,
    TResult Function(ContentAnalysisFailure value)? contentAnalysisFailure,
    TResult Function(DifficultyAssessmentFailure value)?
        difficultyAssessmentFailure,
    TResult Function(LearningPathFailure value)? learningPathFailure,
    TResult Function(ComprehensionAssessmentFailure value)?
        comprehensionAssessmentFailure,
    TResult Function(NLPProcessingFailure value)? nlpProcessingFailure,
    TResult Function(ModelTrainingFailure value)? modelTrainingFailure,
    TResult Function(PreferenceUpdateFailure value)? preferenceUpdateFailure,
    TResult Function(InsightGenerationFailure value)? insightGenerationFailure,
    TResult Function(ScheduleGenerationFailure value)?
        scheduleGenerationFailure,
    TResult Function(GoalGenerationFailure value)? goalGenerationFailure,
    TResult Function(ChallengeGenerationFailure value)?
        challengeGenerationFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ModelUnavailableFailure value)? modelUnavailableFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (dataQualityFailure != null) {
      return dataQualityFailure(this);
    }
    return orElse();
  }
}

abstract class DataQualityFailure implements Failure {
  const factory DataQualityFailure(
      {required final String message,
      final String? dataType,
      final String? qualityIssue}) = _$DataQualityFailureImpl;

  @override
  String get message;
  String? get dataType;
  String? get qualityIssue;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataQualityFailureImplCopyWith<_$DataQualityFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
