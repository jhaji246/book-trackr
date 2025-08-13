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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
  $Res call({String message, int? minimumDataPoints, String? dataType});
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
    Object? minimumDataPoints = freezed,
    Object? dataType = freezed,
  }) {
    return _then(_$InsufficientDataFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      minimumDataPoints: freezed == minimumDataPoints
          ? _value.minimumDataPoints
          : minimumDataPoints // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {required this.message, this.minimumDataPoints, this.dataType});

  @override
  final String message;
  @override
  final int? minimumDataPoints;
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
      final int? minimumDataPoints,
      final String? dataType}) = _$InsufficientDataFailureImpl;

  @override
  String get message;
  int? get minimumDataPoints;
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
  $Res call({String message, String? operation, String? text});
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
    Object? operation = freezed,
    Object? text = freezed,
  }) {
    return _then(_$NLPProcessingFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NLPProcessingFailureImpl implements NLPProcessingFailure {
  const _$NLPProcessingFailureImpl(
      {required this.message, this.operation, this.text});

  @override
  final String message;
  @override
  final String? operation;
  @override
  final String? text;

  @override
  String toString() {
    return 'Failure.nlpProcessingFailure(message: $message, operation: $operation, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NLPProcessingFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, operation, text);

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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
        dataQualityFailure,
  }) {
    return nlpProcessingFailure(message, operation, text);
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return nlpProcessingFailure?.call(message, operation, text);
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (nlpProcessingFailure != null) {
      return nlpProcessingFailure(message, operation, text);
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
      final String? operation,
      final String? text}) = _$NLPProcessingFailureImpl;

  @override
  String get message;
  String? get operation;
  String? get text;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NLPProcessingFailureImplCopyWith<_$NLPProcessingFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SentimentAnalysisFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SentimentAnalysisFailureImplCopyWith(
          _$SentimentAnalysisFailureImpl value,
          $Res Function(_$SentimentAnalysisFailureImpl) then) =
      __$$SentimentAnalysisFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? bookId, String? analysisType});
}

/// @nodoc
class __$$SentimentAnalysisFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SentimentAnalysisFailureImpl>
    implements _$$SentimentAnalysisFailureImplCopyWith<$Res> {
  __$$SentimentAnalysisFailureImplCopyWithImpl(
      _$SentimentAnalysisFailureImpl _value,
      $Res Function(_$SentimentAnalysisFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? bookId = freezed,
    Object? analysisType = freezed,
  }) {
    return _then(_$SentimentAnalysisFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      analysisType: freezed == analysisType
          ? _value.analysisType
          : analysisType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SentimentAnalysisFailureImpl implements SentimentAnalysisFailure {
  const _$SentimentAnalysisFailureImpl(
      {required this.message, this.bookId, this.analysisType});

  @override
  final String message;
  @override
  final String? bookId;
  @override
  final String? analysisType;

  @override
  String toString() {
    return 'Failure.sentimentAnalysisFailure(message: $message, bookId: $bookId, analysisType: $analysisType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentAnalysisFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.analysisType, analysisType) ||
                other.analysisType == analysisType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, bookId, analysisType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentAnalysisFailureImplCopyWith<_$SentimentAnalysisFailureImpl>
      get copyWith => __$$SentimentAnalysisFailureImplCopyWithImpl<
          _$SentimentAnalysisFailureImpl>(this, _$identity);

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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
        dataQualityFailure,
  }) {
    return sentimentAnalysisFailure(message, bookId, analysisType);
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return sentimentAnalysisFailure?.call(message, bookId, analysisType);
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (sentimentAnalysisFailure != null) {
      return sentimentAnalysisFailure(message, bookId, analysisType);
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return sentimentAnalysisFailure(this);
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return sentimentAnalysisFailure?.call(this);
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (sentimentAnalysisFailure != null) {
      return sentimentAnalysisFailure(this);
    }
    return orElse();
  }
}

abstract class SentimentAnalysisFailure implements Failure {
  const factory SentimentAnalysisFailure(
      {required final String message,
      final String? bookId,
      final String? analysisType}) = _$SentimentAnalysisFailureImpl;

  @override
  String get message;
  String? get bookId;
  String? get analysisType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentAnalysisFailureImplCopyWith<_$SentimentAnalysisFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopicModelingFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$TopicModelingFailureImplCopyWith(_$TopicModelingFailureImpl value,
          $Res Function(_$TopicModelingFailureImpl) then) =
      __$$TopicModelingFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? bookId, String? modelType});
}

/// @nodoc
class __$$TopicModelingFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$TopicModelingFailureImpl>
    implements _$$TopicModelingFailureImplCopyWith<$Res> {
  __$$TopicModelingFailureImplCopyWithImpl(_$TopicModelingFailureImpl _value,
      $Res Function(_$TopicModelingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? bookId = freezed,
    Object? modelType = freezed,
  }) {
    return _then(_$TopicModelingFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      modelType: freezed == modelType
          ? _value.modelType
          : modelType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TopicModelingFailureImpl implements TopicModelingFailure {
  const _$TopicModelingFailureImpl(
      {required this.message, this.bookId, this.modelType});

  @override
  final String message;
  @override
  final String? bookId;
  @override
  final String? modelType;

  @override
  String toString() {
    return 'Failure.topicModelingFailure(message: $message, bookId: $bookId, modelType: $modelType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicModelingFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.modelType, modelType) ||
                other.modelType == modelType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, bookId, modelType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicModelingFailureImplCopyWith<_$TopicModelingFailureImpl>
      get copyWith =>
          __$$TopicModelingFailureImplCopyWithImpl<_$TopicModelingFailureImpl>(
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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
        dataQualityFailure,
  }) {
    return topicModelingFailure(message, bookId, modelType);
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return topicModelingFailure?.call(message, bookId, modelType);
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (topicModelingFailure != null) {
      return topicModelingFailure(message, bookId, modelType);
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return topicModelingFailure(this);
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return topicModelingFailure?.call(this);
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (topicModelingFailure != null) {
      return topicModelingFailure(this);
    }
    return orElse();
  }
}

abstract class TopicModelingFailure implements Failure {
  const factory TopicModelingFailure(
      {required final String message,
      final String? bookId,
      final String? modelType}) = _$TopicModelingFailureImpl;

  @override
  String get message;
  String? get bookId;
  String? get modelType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicModelingFailureImplCopyWith<_$TopicModelingFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadingLevelAssessmentFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ReadingLevelAssessmentFailureImplCopyWith(
          _$ReadingLevelAssessmentFailureImpl value,
          $Res Function(_$ReadingLevelAssessmentFailureImpl) then) =
      __$$ReadingLevelAssessmentFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? bookId, String? assessmentMethod});
}

/// @nodoc
class __$$ReadingLevelAssessmentFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ReadingLevelAssessmentFailureImpl>
    implements _$$ReadingLevelAssessmentFailureImplCopyWith<$Res> {
  __$$ReadingLevelAssessmentFailureImplCopyWithImpl(
      _$ReadingLevelAssessmentFailureImpl _value,
      $Res Function(_$ReadingLevelAssessmentFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? bookId = freezed,
    Object? assessmentMethod = freezed,
  }) {
    return _then(_$ReadingLevelAssessmentFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentMethod: freezed == assessmentMethod
          ? _value.assessmentMethod
          : assessmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReadingLevelAssessmentFailureImpl
    implements ReadingLevelAssessmentFailure {
  const _$ReadingLevelAssessmentFailureImpl(
      {required this.message, this.bookId, this.assessmentMethod});

  @override
  final String message;
  @override
  final String? bookId;
  @override
  final String? assessmentMethod;

  @override
  String toString() {
    return 'Failure.readingLevelAssessmentFailure(message: $message, bookId: $bookId, assessmentMethod: $assessmentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingLevelAssessmentFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.assessmentMethod, assessmentMethod) ||
                other.assessmentMethod == assessmentMethod));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, bookId, assessmentMethod);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingLevelAssessmentFailureImplCopyWith<
          _$ReadingLevelAssessmentFailureImpl>
      get copyWith => __$$ReadingLevelAssessmentFailureImplCopyWithImpl<
          _$ReadingLevelAssessmentFailureImpl>(this, _$identity);

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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
        dataQualityFailure,
  }) {
    return readingLevelAssessmentFailure(message, bookId, assessmentMethod);
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return readingLevelAssessmentFailure?.call(
        message, bookId, assessmentMethod);
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (readingLevelAssessmentFailure != null) {
      return readingLevelAssessmentFailure(message, bookId, assessmentMethod);
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return readingLevelAssessmentFailure(this);
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return readingLevelAssessmentFailure?.call(this);
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (readingLevelAssessmentFailure != null) {
      return readingLevelAssessmentFailure(this);
    }
    return orElse();
  }
}

abstract class ReadingLevelAssessmentFailure implements Failure {
  const factory ReadingLevelAssessmentFailure(
      {required final String message,
      final String? bookId,
      final String? assessmentMethod}) = _$ReadingLevelAssessmentFailureImpl;

  @override
  String get message;
  String? get bookId;
  String? get assessmentMethod;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingLevelAssessmentFailureImplCopyWith<
          _$ReadingLevelAssessmentFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonalizationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$PersonalizationFailureImplCopyWith(
          _$PersonalizationFailureImpl value,
          $Res Function(_$PersonalizationFailureImpl) then) =
      __$$PersonalizationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? userId, String? personalizationType});
}

/// @nodoc
class __$$PersonalizationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PersonalizationFailureImpl>
    implements _$$PersonalizationFailureImplCopyWith<$Res> {
  __$$PersonalizationFailureImplCopyWithImpl(
      _$PersonalizationFailureImpl _value,
      $Res Function(_$PersonalizationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = freezed,
    Object? personalizationType = freezed,
  }) {
    return _then(_$PersonalizationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      personalizationType: freezed == personalizationType
          ? _value.personalizationType
          : personalizationType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PersonalizationFailureImpl implements PersonalizationFailure {
  const _$PersonalizationFailureImpl(
      {required this.message, this.userId, this.personalizationType});

  @override
  final String message;
  @override
  final String? userId;
  @override
  final String? personalizationType;

  @override
  String toString() {
    return 'Failure.personalizationFailure(message: $message, userId: $userId, personalizationType: $personalizationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalizationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.personalizationType, personalizationType) ||
                other.personalizationType == personalizationType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, userId, personalizationType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalizationFailureImplCopyWith<_$PersonalizationFailureImpl>
      get copyWith => __$$PersonalizationFailureImplCopyWithImpl<
          _$PersonalizationFailureImpl>(this, _$identity);

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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
        dataQualityFailure,
  }) {
    return personalizationFailure(message, userId, personalizationType);
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return personalizationFailure?.call(message, userId, personalizationType);
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (personalizationFailure != null) {
      return personalizationFailure(message, userId, personalizationType);
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
    required TResult Function(DataQualityFailure value) dataQualityFailure,
  }) {
    return personalizationFailure(this);
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
    TResult? Function(DataQualityFailure value)? dataQualityFailure,
  }) {
    return personalizationFailure?.call(this);
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
    TResult Function(DataQualityFailure value)? dataQualityFailure,
    required TResult orElse(),
  }) {
    if (personalizationFailure != null) {
      return personalizationFailure(this);
    }
    return orElse();
  }
}

abstract class PersonalizationFailure implements Failure {
  const factory PersonalizationFailure(
      {required final String message,
      final String? userId,
      final String? personalizationType}) = _$PersonalizationFailureImpl;

  @override
  String get message;
  String? get userId;
  String? get personalizationType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalizationFailureImplCopyWith<_$PersonalizationFailureImpl>
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
  $Res call({String message, String? dataSource, String? qualityIssue});
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
    Object? dataSource = freezed,
    Object? qualityIssue = freezed,
  }) {
    return _then(_$DataQualityFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dataSource: freezed == dataSource
          ? _value.dataSource
          : dataSource // ignore: cast_nullable_to_non_nullable
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
      {required this.message, this.dataSource, this.qualityIssue});

  @override
  final String message;
  @override
  final String? dataSource;
  @override
  final String? qualityIssue;

  @override
  String toString() {
    return 'Failure.dataQualityFailure(message: $message, dataSource: $dataSource, qualityIssue: $qualityIssue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataQualityFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.dataSource, dataSource) ||
                other.dataSource == dataSource) &&
            (identical(other.qualityIssue, qualityIssue) ||
                other.qualityIssue == qualityIssue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, dataSource, qualityIssue);

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
            String message, int? minimumDataPoints, String? dataType)
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
    required TResult Function(String message, String? operation, String? text)
        nlpProcessingFailure,
    required TResult Function(
            String message, String? bookId, String? analysisType)
        sentimentAnalysisFailure,
    required TResult Function(String message, String? bookId, String? modelType)
        topicModelingFailure,
    required TResult Function(
            String message, String? bookId, String? assessmentMethod)
        readingLevelAssessmentFailure,
    required TResult Function(
            String message, String? userId, String? personalizationType)
        personalizationFailure,
    required TResult Function(
            String message, String? dataSource, String? qualityIssue)
        dataQualityFailure,
  }) {
    return dataQualityFailure(message, dataSource, qualityIssue);
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
    TResult? Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult? Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult? Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult? Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult? Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult? Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult? Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
  }) {
    return dataQualityFailure?.call(message, dataSource, qualityIssue);
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
    TResult Function(String message, int? minimumDataPoints, String? dataType)?
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
    TResult Function(String message, String? operation, String? text)?
        nlpProcessingFailure,
    TResult Function(String message, String? bookId, String? analysisType)?
        sentimentAnalysisFailure,
    TResult Function(String message, String? bookId, String? modelType)?
        topicModelingFailure,
    TResult Function(String message, String? bookId, String? assessmentMethod)?
        readingLevelAssessmentFailure,
    TResult Function(
            String message, String? userId, String? personalizationType)?
        personalizationFailure,
    TResult Function(String message, String? dataSource, String? qualityIssue)?
        dataQualityFailure,
    required TResult orElse(),
  }) {
    if (dataQualityFailure != null) {
      return dataQualityFailure(message, dataSource, qualityIssue);
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
    required TResult Function(SentimentAnalysisFailure value)
        sentimentAnalysisFailure,
    required TResult Function(TopicModelingFailure value) topicModelingFailure,
    required TResult Function(ReadingLevelAssessmentFailure value)
        readingLevelAssessmentFailure,
    required TResult Function(PersonalizationFailure value)
        personalizationFailure,
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
    TResult? Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult? Function(TopicModelingFailure value)? topicModelingFailure,
    TResult? Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult? Function(PersonalizationFailure value)? personalizationFailure,
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
    TResult Function(SentimentAnalysisFailure value)? sentimentAnalysisFailure,
    TResult Function(TopicModelingFailure value)? topicModelingFailure,
    TResult Function(ReadingLevelAssessmentFailure value)?
        readingLevelAssessmentFailure,
    TResult Function(PersonalizationFailure value)? personalizationFailure,
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
      final String? dataSource,
      final String? qualityIssue}) = _$DataQualityFailureImpl;

  @override
  String get message;
  String? get dataSource;
  String? get qualityIssue;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataQualityFailureImplCopyWith<_$DataQualityFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
