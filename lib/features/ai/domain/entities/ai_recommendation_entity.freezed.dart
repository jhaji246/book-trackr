// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_recommendation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AIRecommendationEntity _$AIRecommendationEntityFromJson(
    Map<String, dynamic> json) {
  return _AIRecommendationEntity.fromJson(json);
}

/// @nodoc
mixin _$AIRecommendationEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get bookId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  double get confidenceScore => throw _privateConstructorUsedError;
  RecommendationReason get reason => throw _privateConstructorUsedError;
  List<String> get explanationPoints => throw _privateConstructorUsedError;
  Map<String, double> get factorScores => throw _privateConstructorUsedError;
  RecommendationType get type => throw _privateConstructorUsedError;
  bool get isPersonalized => throw _privateConstructorUsedError;
  DateTime get dateGenerated => throw _privateConstructorUsedError;
  DateTime get expiryDate => throw _privateConstructorUsedError;
  bool get isViewed => throw _privateConstructorUsedError;
  bool get isAccepted => throw _privateConstructorUsedError;
  DateTime? get dateAccepted => throw _privateConstructorUsedError;
  String? get userFeedback => throw _privateConstructorUsedError;
  double? get userRating => throw _privateConstructorUsedError;

  /// Serializes this AIRecommendationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AIRecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AIRecommendationEntityCopyWith<AIRecommendationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIRecommendationEntityCopyWith<$Res> {
  factory $AIRecommendationEntityCopyWith(AIRecommendationEntity value,
          $Res Function(AIRecommendationEntity) then) =
      _$AIRecommendationEntityCopyWithImpl<$Res, AIRecommendationEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String bookId,
      String title,
      String author,
      String genre,
      double confidenceScore,
      RecommendationReason reason,
      List<String> explanationPoints,
      Map<String, double> factorScores,
      RecommendationType type,
      bool isPersonalized,
      DateTime dateGenerated,
      DateTime expiryDate,
      bool isViewed,
      bool isAccepted,
      DateTime? dateAccepted,
      String? userFeedback,
      double? userRating});
}

/// @nodoc
class _$AIRecommendationEntityCopyWithImpl<$Res,
        $Val extends AIRecommendationEntity>
    implements $AIRecommendationEntityCopyWith<$Res> {
  _$AIRecommendationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AIRecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? genre = null,
    Object? confidenceScore = null,
    Object? reason = null,
    Object? explanationPoints = null,
    Object? factorScores = null,
    Object? type = null,
    Object? isPersonalized = null,
    Object? dateGenerated = null,
    Object? expiryDate = null,
    Object? isViewed = null,
    Object? isAccepted = null,
    Object? dateAccepted = freezed,
    Object? userFeedback = freezed,
    Object? userRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      confidenceScore: null == confidenceScore
          ? _value.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as RecommendationReason,
      explanationPoints: null == explanationPoints
          ? _value.explanationPoints
          : explanationPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      factorScores: null == factorScores
          ? _value.factorScores
          : factorScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecommendationType,
      isPersonalized: null == isPersonalized
          ? _value.isPersonalized
          : isPersonalized // ignore: cast_nullable_to_non_nullable
              as bool,
      dateGenerated: null == dateGenerated
          ? _value.dateGenerated
          : dateGenerated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccepted: null == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      dateAccepted: freezed == dateAccepted
          ? _value.dateAccepted
          : dateAccepted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userFeedback: freezed == userFeedback
          ? _value.userFeedback
          : userFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AIRecommendationEntityImplCopyWith<$Res>
    implements $AIRecommendationEntityCopyWith<$Res> {
  factory _$$AIRecommendationEntityImplCopyWith(
          _$AIRecommendationEntityImpl value,
          $Res Function(_$AIRecommendationEntityImpl) then) =
      __$$AIRecommendationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String bookId,
      String title,
      String author,
      String genre,
      double confidenceScore,
      RecommendationReason reason,
      List<String> explanationPoints,
      Map<String, double> factorScores,
      RecommendationType type,
      bool isPersonalized,
      DateTime dateGenerated,
      DateTime expiryDate,
      bool isViewed,
      bool isAccepted,
      DateTime? dateAccepted,
      String? userFeedback,
      double? userRating});
}

/// @nodoc
class __$$AIRecommendationEntityImplCopyWithImpl<$Res>
    extends _$AIRecommendationEntityCopyWithImpl<$Res,
        _$AIRecommendationEntityImpl>
    implements _$$AIRecommendationEntityImplCopyWith<$Res> {
  __$$AIRecommendationEntityImplCopyWithImpl(
      _$AIRecommendationEntityImpl _value,
      $Res Function(_$AIRecommendationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AIRecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? genre = null,
    Object? confidenceScore = null,
    Object? reason = null,
    Object? explanationPoints = null,
    Object? factorScores = null,
    Object? type = null,
    Object? isPersonalized = null,
    Object? dateGenerated = null,
    Object? expiryDate = null,
    Object? isViewed = null,
    Object? isAccepted = null,
    Object? dateAccepted = freezed,
    Object? userFeedback = freezed,
    Object? userRating = freezed,
  }) {
    return _then(_$AIRecommendationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      confidenceScore: null == confidenceScore
          ? _value.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as RecommendationReason,
      explanationPoints: null == explanationPoints
          ? _value._explanationPoints
          : explanationPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      factorScores: null == factorScores
          ? _value._factorScores
          : factorScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecommendationType,
      isPersonalized: null == isPersonalized
          ? _value.isPersonalized
          : isPersonalized // ignore: cast_nullable_to_non_nullable
              as bool,
      dateGenerated: null == dateGenerated
          ? _value.dateGenerated
          : dateGenerated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccepted: null == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      dateAccepted: freezed == dateAccepted
          ? _value.dateAccepted
          : dateAccepted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userFeedback: freezed == userFeedback
          ? _value.userFeedback
          : userFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AIRecommendationEntityImpl implements _AIRecommendationEntity {
  const _$AIRecommendationEntityImpl(
      {required this.id,
      required this.userId,
      required this.bookId,
      required this.title,
      required this.author,
      required this.genre,
      required this.confidenceScore,
      required this.reason,
      required final List<String> explanationPoints,
      required final Map<String, double> factorScores,
      required this.type,
      required this.isPersonalized,
      required this.dateGenerated,
      required this.expiryDate,
      required this.isViewed,
      required this.isAccepted,
      required this.dateAccepted,
      required this.userFeedback,
      required this.userRating})
      : _explanationPoints = explanationPoints,
        _factorScores = factorScores;

  factory _$AIRecommendationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AIRecommendationEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String bookId;
  @override
  final String title;
  @override
  final String author;
  @override
  final String genre;
  @override
  final double confidenceScore;
  @override
  final RecommendationReason reason;
  final List<String> _explanationPoints;
  @override
  List<String> get explanationPoints {
    if (_explanationPoints is EqualUnmodifiableListView)
      return _explanationPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_explanationPoints);
  }

  final Map<String, double> _factorScores;
  @override
  Map<String, double> get factorScores {
    if (_factorScores is EqualUnmodifiableMapView) return _factorScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_factorScores);
  }

  @override
  final RecommendationType type;
  @override
  final bool isPersonalized;
  @override
  final DateTime dateGenerated;
  @override
  final DateTime expiryDate;
  @override
  final bool isViewed;
  @override
  final bool isAccepted;
  @override
  final DateTime? dateAccepted;
  @override
  final String? userFeedback;
  @override
  final double? userRating;

  @override
  String toString() {
    return 'AIRecommendationEntity(id: $id, userId: $userId, bookId: $bookId, title: $title, author: $author, genre: $genre, confidenceScore: $confidenceScore, reason: $reason, explanationPoints: $explanationPoints, factorScores: $factorScores, type: $type, isPersonalized: $isPersonalized, dateGenerated: $dateGenerated, expiryDate: $expiryDate, isViewed: $isViewed, isAccepted: $isAccepted, dateAccepted: $dateAccepted, userFeedback: $userFeedback, userRating: $userRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIRecommendationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.confidenceScore, confidenceScore) ||
                other.confidenceScore == confidenceScore) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality()
                .equals(other._explanationPoints, _explanationPoints) &&
            const DeepCollectionEquality()
                .equals(other._factorScores, _factorScores) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isPersonalized, isPersonalized) ||
                other.isPersonalized == isPersonalized) &&
            (identical(other.dateGenerated, dateGenerated) ||
                other.dateGenerated == dateGenerated) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            (identical(other.isAccepted, isAccepted) ||
                other.isAccepted == isAccepted) &&
            (identical(other.dateAccepted, dateAccepted) ||
                other.dateAccepted == dateAccepted) &&
            (identical(other.userFeedback, userFeedback) ||
                other.userFeedback == userFeedback) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        bookId,
        title,
        author,
        genre,
        confidenceScore,
        reason,
        const DeepCollectionEquality().hash(_explanationPoints),
        const DeepCollectionEquality().hash(_factorScores),
        type,
        isPersonalized,
        dateGenerated,
        expiryDate,
        isViewed,
        isAccepted,
        dateAccepted,
        userFeedback,
        userRating
      ]);

  /// Create a copy of AIRecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIRecommendationEntityImplCopyWith<_$AIRecommendationEntityImpl>
      get copyWith => __$$AIRecommendationEntityImplCopyWithImpl<
          _$AIRecommendationEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AIRecommendationEntityImplToJson(
      this,
    );
  }
}

abstract class _AIRecommendationEntity implements AIRecommendationEntity {
  const factory _AIRecommendationEntity(
      {required final String id,
      required final String userId,
      required final String bookId,
      required final String title,
      required final String author,
      required final String genre,
      required final double confidenceScore,
      required final RecommendationReason reason,
      required final List<String> explanationPoints,
      required final Map<String, double> factorScores,
      required final RecommendationType type,
      required final bool isPersonalized,
      required final DateTime dateGenerated,
      required final DateTime expiryDate,
      required final bool isViewed,
      required final bool isAccepted,
      required final DateTime? dateAccepted,
      required final String? userFeedback,
      required final double? userRating}) = _$AIRecommendationEntityImpl;

  factory _AIRecommendationEntity.fromJson(Map<String, dynamic> json) =
      _$AIRecommendationEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get bookId;
  @override
  String get title;
  @override
  String get author;
  @override
  String get genre;
  @override
  double get confidenceScore;
  @override
  RecommendationReason get reason;
  @override
  List<String> get explanationPoints;
  @override
  Map<String, double> get factorScores;
  @override
  RecommendationType get type;
  @override
  bool get isPersonalized;
  @override
  DateTime get dateGenerated;
  @override
  DateTime get expiryDate;
  @override
  bool get isViewed;
  @override
  bool get isAccepted;
  @override
  DateTime? get dateAccepted;
  @override
  String? get userFeedback;
  @override
  double? get userRating;

  /// Create a copy of AIRecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIRecommendationEntityImplCopyWith<_$AIRecommendationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReadingDifficultyEntity _$ReadingDifficultyEntityFromJson(
    Map<String, dynamic> json) {
  return _ReadingDifficultyEntity.fromJson(json);
}

/// @nodoc
mixin _$ReadingDifficultyEntity {
  String get bookId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  DifficultyLevel get level => throw _privateConstructorUsedError;
  double get difficultyScore => throw _privateConstructorUsedError;
  Map<String, double> get factorScores => throw _privateConstructorUsedError;
  List<String> get difficultyFactors => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  int get estimatedReadingTime => throw _privateConstructorUsedError;
  List<String> get suggestedPrerequisites => throw _privateConstructorUsedError;
  List<String> get learningObjectives => throw _privateConstructorUsedError;
  Map<String, double> get skillRequirements =>
      throw _privateConstructorUsedError;
  DateTime get dateAssessed => throw _privateConstructorUsedError;
  String get assessmentModel => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this ReadingDifficultyEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingDifficultyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingDifficultyEntityCopyWith<ReadingDifficultyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingDifficultyEntityCopyWith<$Res> {
  factory $ReadingDifficultyEntityCopyWith(ReadingDifficultyEntity value,
          $Res Function(ReadingDifficultyEntity) then) =
      _$ReadingDifficultyEntityCopyWithImpl<$Res, ReadingDifficultyEntity>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      DifficultyLevel level,
      double difficultyScore,
      Map<String, double> factorScores,
      List<String> difficultyFactors,
      String explanation,
      int estimatedReadingTime,
      List<String> suggestedPrerequisites,
      List<String> learningObjectives,
      Map<String, double> skillRequirements,
      DateTime dateAssessed,
      String assessmentModel,
      double confidence});
}

/// @nodoc
class _$ReadingDifficultyEntityCopyWithImpl<$Res,
        $Val extends ReadingDifficultyEntity>
    implements $ReadingDifficultyEntityCopyWith<$Res> {
  _$ReadingDifficultyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingDifficultyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? level = null,
    Object? difficultyScore = null,
    Object? factorScores = null,
    Object? difficultyFactors = null,
    Object? explanation = null,
    Object? estimatedReadingTime = null,
    Object? suggestedPrerequisites = null,
    Object? learningObjectives = null,
    Object? skillRequirements = null,
    Object? dateAssessed = null,
    Object? assessmentModel = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as DifficultyLevel,
      difficultyScore: null == difficultyScore
          ? _value.difficultyScore
          : difficultyScore // ignore: cast_nullable_to_non_nullable
              as double,
      factorScores: null == factorScores
          ? _value.factorScores
          : factorScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      difficultyFactors: null == difficultyFactors
          ? _value.difficultyFactors
          : difficultyFactors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedReadingTime: null == estimatedReadingTime
          ? _value.estimatedReadingTime
          : estimatedReadingTime // ignore: cast_nullable_to_non_nullable
              as int,
      suggestedPrerequisites: null == suggestedPrerequisites
          ? _value.suggestedPrerequisites
          : suggestedPrerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      learningObjectives: null == learningObjectives
          ? _value.learningObjectives
          : learningObjectives // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skillRequirements: null == skillRequirements
          ? _value.skillRequirements
          : skillRequirements // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      dateAssessed: null == dateAssessed
          ? _value.dateAssessed
          : dateAssessed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assessmentModel: null == assessmentModel
          ? _value.assessmentModel
          : assessmentModel // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingDifficultyEntityImplCopyWith<$Res>
    implements $ReadingDifficultyEntityCopyWith<$Res> {
  factory _$$ReadingDifficultyEntityImplCopyWith(
          _$ReadingDifficultyEntityImpl value,
          $Res Function(_$ReadingDifficultyEntityImpl) then) =
      __$$ReadingDifficultyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      DifficultyLevel level,
      double difficultyScore,
      Map<String, double> factorScores,
      List<String> difficultyFactors,
      String explanation,
      int estimatedReadingTime,
      List<String> suggestedPrerequisites,
      List<String> learningObjectives,
      Map<String, double> skillRequirements,
      DateTime dateAssessed,
      String assessmentModel,
      double confidence});
}

/// @nodoc
class __$$ReadingDifficultyEntityImplCopyWithImpl<$Res>
    extends _$ReadingDifficultyEntityCopyWithImpl<$Res,
        _$ReadingDifficultyEntityImpl>
    implements _$$ReadingDifficultyEntityImplCopyWith<$Res> {
  __$$ReadingDifficultyEntityImplCopyWithImpl(
      _$ReadingDifficultyEntityImpl _value,
      $Res Function(_$ReadingDifficultyEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingDifficultyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? level = null,
    Object? difficultyScore = null,
    Object? factorScores = null,
    Object? difficultyFactors = null,
    Object? explanation = null,
    Object? estimatedReadingTime = null,
    Object? suggestedPrerequisites = null,
    Object? learningObjectives = null,
    Object? skillRequirements = null,
    Object? dateAssessed = null,
    Object? assessmentModel = null,
    Object? confidence = null,
  }) {
    return _then(_$ReadingDifficultyEntityImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as DifficultyLevel,
      difficultyScore: null == difficultyScore
          ? _value.difficultyScore
          : difficultyScore // ignore: cast_nullable_to_non_nullable
              as double,
      factorScores: null == factorScores
          ? _value._factorScores
          : factorScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      difficultyFactors: null == difficultyFactors
          ? _value._difficultyFactors
          : difficultyFactors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedReadingTime: null == estimatedReadingTime
          ? _value.estimatedReadingTime
          : estimatedReadingTime // ignore: cast_nullable_to_non_nullable
              as int,
      suggestedPrerequisites: null == suggestedPrerequisites
          ? _value._suggestedPrerequisites
          : suggestedPrerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      learningObjectives: null == learningObjectives
          ? _value._learningObjectives
          : learningObjectives // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skillRequirements: null == skillRequirements
          ? _value._skillRequirements
          : skillRequirements // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      dateAssessed: null == dateAssessed
          ? _value.dateAssessed
          : dateAssessed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assessmentModel: null == assessmentModel
          ? _value.assessmentModel
          : assessmentModel // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingDifficultyEntityImpl implements _ReadingDifficultyEntity {
  const _$ReadingDifficultyEntityImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      required this.level,
      required this.difficultyScore,
      required final Map<String, double> factorScores,
      required final List<String> difficultyFactors,
      required this.explanation,
      required this.estimatedReadingTime,
      required final List<String> suggestedPrerequisites,
      required final List<String> learningObjectives,
      required final Map<String, double> skillRequirements,
      required this.dateAssessed,
      required this.assessmentModel,
      required this.confidence})
      : _factorScores = factorScores,
        _difficultyFactors = difficultyFactors,
        _suggestedPrerequisites = suggestedPrerequisites,
        _learningObjectives = learningObjectives,
        _skillRequirements = skillRequirements;

  factory _$ReadingDifficultyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingDifficultyEntityImplFromJson(json);

  @override
  final String bookId;
  @override
  final String title;
  @override
  final String author;
  @override
  final DifficultyLevel level;
  @override
  final double difficultyScore;
  final Map<String, double> _factorScores;
  @override
  Map<String, double> get factorScores {
    if (_factorScores is EqualUnmodifiableMapView) return _factorScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_factorScores);
  }

  final List<String> _difficultyFactors;
  @override
  List<String> get difficultyFactors {
    if (_difficultyFactors is EqualUnmodifiableListView)
      return _difficultyFactors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_difficultyFactors);
  }

  @override
  final String explanation;
  @override
  final int estimatedReadingTime;
  final List<String> _suggestedPrerequisites;
  @override
  List<String> get suggestedPrerequisites {
    if (_suggestedPrerequisites is EqualUnmodifiableListView)
      return _suggestedPrerequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedPrerequisites);
  }

  final List<String> _learningObjectives;
  @override
  List<String> get learningObjectives {
    if (_learningObjectives is EqualUnmodifiableListView)
      return _learningObjectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_learningObjectives);
  }

  final Map<String, double> _skillRequirements;
  @override
  Map<String, double> get skillRequirements {
    if (_skillRequirements is EqualUnmodifiableMapView)
      return _skillRequirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_skillRequirements);
  }

  @override
  final DateTime dateAssessed;
  @override
  final String assessmentModel;
  @override
  final double confidence;

  @override
  String toString() {
    return 'ReadingDifficultyEntity(bookId: $bookId, title: $title, author: $author, level: $level, difficultyScore: $difficultyScore, factorScores: $factorScores, difficultyFactors: $difficultyFactors, explanation: $explanation, estimatedReadingTime: $estimatedReadingTime, suggestedPrerequisites: $suggestedPrerequisites, learningObjectives: $learningObjectives, skillRequirements: $skillRequirements, dateAssessed: $dateAssessed, assessmentModel: $assessmentModel, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingDifficultyEntityImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.difficultyScore, difficultyScore) ||
                other.difficultyScore == difficultyScore) &&
            const DeepCollectionEquality()
                .equals(other._factorScores, _factorScores) &&
            const DeepCollectionEquality()
                .equals(other._difficultyFactors, _difficultyFactors) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.estimatedReadingTime, estimatedReadingTime) ||
                other.estimatedReadingTime == estimatedReadingTime) &&
            const DeepCollectionEquality().equals(
                other._suggestedPrerequisites, _suggestedPrerequisites) &&
            const DeepCollectionEquality()
                .equals(other._learningObjectives, _learningObjectives) &&
            const DeepCollectionEquality()
                .equals(other._skillRequirements, _skillRequirements) &&
            (identical(other.dateAssessed, dateAssessed) ||
                other.dateAssessed == dateAssessed) &&
            (identical(other.assessmentModel, assessmentModel) ||
                other.assessmentModel == assessmentModel) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      level,
      difficultyScore,
      const DeepCollectionEquality().hash(_factorScores),
      const DeepCollectionEquality().hash(_difficultyFactors),
      explanation,
      estimatedReadingTime,
      const DeepCollectionEquality().hash(_suggestedPrerequisites),
      const DeepCollectionEquality().hash(_learningObjectives),
      const DeepCollectionEquality().hash(_skillRequirements),
      dateAssessed,
      assessmentModel,
      confidence);

  /// Create a copy of ReadingDifficultyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingDifficultyEntityImplCopyWith<_$ReadingDifficultyEntityImpl>
      get copyWith => __$$ReadingDifficultyEntityImplCopyWithImpl<
          _$ReadingDifficultyEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingDifficultyEntityImplToJson(
      this,
    );
  }
}

abstract class _ReadingDifficultyEntity implements ReadingDifficultyEntity {
  const factory _ReadingDifficultyEntity(
      {required final String bookId,
      required final String title,
      required final String author,
      required final DifficultyLevel level,
      required final double difficultyScore,
      required final Map<String, double> factorScores,
      required final List<String> difficultyFactors,
      required final String explanation,
      required final int estimatedReadingTime,
      required final List<String> suggestedPrerequisites,
      required final List<String> learningObjectives,
      required final Map<String, double> skillRequirements,
      required final DateTime dateAssessed,
      required final String assessmentModel,
      required final double confidence}) = _$ReadingDifficultyEntityImpl;

  factory _ReadingDifficultyEntity.fromJson(Map<String, dynamic> json) =
      _$ReadingDifficultyEntityImpl.fromJson;

  @override
  String get bookId;
  @override
  String get title;
  @override
  String get author;
  @override
  DifficultyLevel get level;
  @override
  double get difficultyScore;
  @override
  Map<String, double> get factorScores;
  @override
  List<String> get difficultyFactors;
  @override
  String get explanation;
  @override
  int get estimatedReadingTime;
  @override
  List<String> get suggestedPrerequisites;
  @override
  List<String> get learningObjectives;
  @override
  Map<String, double> get skillRequirements;
  @override
  DateTime get dateAssessed;
  @override
  String get assessmentModel;
  @override
  double get confidence;

  /// Create a copy of ReadingDifficultyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingDifficultyEntityImplCopyWith<_$ReadingDifficultyEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContentAnalysisEntity _$ContentAnalysisEntityFromJson(
    Map<String, dynamic> json) {
  return _ContentAnalysisEntity.fromJson(json);
}

/// @nodoc
mixin _$ContentAnalysisEntity {
  String get bookId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  ContentSummaryEntity get summary => throw _privateConstructorUsedError;
  List<ThemeEntity> get themes => throw _privateConstructorUsedError;
  List<CharacterEntity> get characters => throw _privateConstructorUsedError;
  List<PlotPointEntity> get plotPoints => throw _privateConstructorUsedError;
  WritingStyleEntity get writingStyle => throw _privateConstructorUsedError;
  List<String> get keyQuotes => throw _privateConstructorUsedError;
  Map<String, double> get sentimentAnalysis =>
      throw _privateConstructorUsedError;
  List<String> get contentWarnings => throw _privateConstructorUsedError;
  List<String> get educationalValue => throw _privateConstructorUsedError;
  DateTime get dateAnalyzed => throw _privateConstructorUsedError;
  String get analysisModel => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this ContentAnalysisEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentAnalysisEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentAnalysisEntityCopyWith<ContentAnalysisEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentAnalysisEntityCopyWith<$Res> {
  factory $ContentAnalysisEntityCopyWith(ContentAnalysisEntity value,
          $Res Function(ContentAnalysisEntity) then) =
      _$ContentAnalysisEntityCopyWithImpl<$Res, ContentAnalysisEntity>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      ContentSummaryEntity summary,
      List<ThemeEntity> themes,
      List<CharacterEntity> characters,
      List<PlotPointEntity> plotPoints,
      WritingStyleEntity writingStyle,
      List<String> keyQuotes,
      Map<String, double> sentimentAnalysis,
      List<String> contentWarnings,
      List<String> educationalValue,
      DateTime dateAnalyzed,
      String analysisModel,
      double confidence});

  $ContentSummaryEntityCopyWith<$Res> get summary;
  $WritingStyleEntityCopyWith<$Res> get writingStyle;
}

/// @nodoc
class _$ContentAnalysisEntityCopyWithImpl<$Res,
        $Val extends ContentAnalysisEntity>
    implements $ContentAnalysisEntityCopyWith<$Res> {
  _$ContentAnalysisEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentAnalysisEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? summary = null,
    Object? themes = null,
    Object? characters = null,
    Object? plotPoints = null,
    Object? writingStyle = null,
    Object? keyQuotes = null,
    Object? sentimentAnalysis = null,
    Object? contentWarnings = null,
    Object? educationalValue = null,
    Object? dateAnalyzed = null,
    Object? analysisModel = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ContentSummaryEntity,
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<ThemeEntity>,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
      plotPoints: null == plotPoints
          ? _value.plotPoints
          : plotPoints // ignore: cast_nullable_to_non_nullable
              as List<PlotPointEntity>,
      writingStyle: null == writingStyle
          ? _value.writingStyle
          : writingStyle // ignore: cast_nullable_to_non_nullable
              as WritingStyleEntity,
      keyQuotes: null == keyQuotes
          ? _value.keyQuotes
          : keyQuotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentimentAnalysis: null == sentimentAnalysis
          ? _value.sentimentAnalysis
          : sentimentAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      contentWarnings: null == contentWarnings
          ? _value.contentWarnings
          : contentWarnings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      educationalValue: null == educationalValue
          ? _value.educationalValue
          : educationalValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateAnalyzed: null == dateAnalyzed
          ? _value.dateAnalyzed
          : dateAnalyzed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      analysisModel: null == analysisModel
          ? _value.analysisModel
          : analysisModel // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of ContentAnalysisEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentSummaryEntityCopyWith<$Res> get summary {
    return $ContentSummaryEntityCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  /// Create a copy of ContentAnalysisEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WritingStyleEntityCopyWith<$Res> get writingStyle {
    return $WritingStyleEntityCopyWith<$Res>(_value.writingStyle, (value) {
      return _then(_value.copyWith(writingStyle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentAnalysisEntityImplCopyWith<$Res>
    implements $ContentAnalysisEntityCopyWith<$Res> {
  factory _$$ContentAnalysisEntityImplCopyWith(
          _$ContentAnalysisEntityImpl value,
          $Res Function(_$ContentAnalysisEntityImpl) then) =
      __$$ContentAnalysisEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      ContentSummaryEntity summary,
      List<ThemeEntity> themes,
      List<CharacterEntity> characters,
      List<PlotPointEntity> plotPoints,
      WritingStyleEntity writingStyle,
      List<String> keyQuotes,
      Map<String, double> sentimentAnalysis,
      List<String> contentWarnings,
      List<String> educationalValue,
      DateTime dateAnalyzed,
      String analysisModel,
      double confidence});

  @override
  $ContentSummaryEntityCopyWith<$Res> get summary;
  @override
  $WritingStyleEntityCopyWith<$Res> get writingStyle;
}

/// @nodoc
class __$$ContentAnalysisEntityImplCopyWithImpl<$Res>
    extends _$ContentAnalysisEntityCopyWithImpl<$Res,
        _$ContentAnalysisEntityImpl>
    implements _$$ContentAnalysisEntityImplCopyWith<$Res> {
  __$$ContentAnalysisEntityImplCopyWithImpl(_$ContentAnalysisEntityImpl _value,
      $Res Function(_$ContentAnalysisEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentAnalysisEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? summary = null,
    Object? themes = null,
    Object? characters = null,
    Object? plotPoints = null,
    Object? writingStyle = null,
    Object? keyQuotes = null,
    Object? sentimentAnalysis = null,
    Object? contentWarnings = null,
    Object? educationalValue = null,
    Object? dateAnalyzed = null,
    Object? analysisModel = null,
    Object? confidence = null,
  }) {
    return _then(_$ContentAnalysisEntityImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ContentSummaryEntity,
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<ThemeEntity>,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
      plotPoints: null == plotPoints
          ? _value._plotPoints
          : plotPoints // ignore: cast_nullable_to_non_nullable
              as List<PlotPointEntity>,
      writingStyle: null == writingStyle
          ? _value.writingStyle
          : writingStyle // ignore: cast_nullable_to_non_nullable
              as WritingStyleEntity,
      keyQuotes: null == keyQuotes
          ? _value._keyQuotes
          : keyQuotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentimentAnalysis: null == sentimentAnalysis
          ? _value._sentimentAnalysis
          : sentimentAnalysis // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      contentWarnings: null == contentWarnings
          ? _value._contentWarnings
          : contentWarnings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      educationalValue: null == educationalValue
          ? _value._educationalValue
          : educationalValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateAnalyzed: null == dateAnalyzed
          ? _value.dateAnalyzed
          : dateAnalyzed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      analysisModel: null == analysisModel
          ? _value.analysisModel
          : analysisModel // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentAnalysisEntityImpl implements _ContentAnalysisEntity {
  const _$ContentAnalysisEntityImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      required this.summary,
      required final List<ThemeEntity> themes,
      required final List<CharacterEntity> characters,
      required final List<PlotPointEntity> plotPoints,
      required this.writingStyle,
      required final List<String> keyQuotes,
      required final Map<String, double> sentimentAnalysis,
      required final List<String> contentWarnings,
      required final List<String> educationalValue,
      required this.dateAnalyzed,
      required this.analysisModel,
      required this.confidence})
      : _themes = themes,
        _characters = characters,
        _plotPoints = plotPoints,
        _keyQuotes = keyQuotes,
        _sentimentAnalysis = sentimentAnalysis,
        _contentWarnings = contentWarnings,
        _educationalValue = educationalValue;

  factory _$ContentAnalysisEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentAnalysisEntityImplFromJson(json);

  @override
  final String bookId;
  @override
  final String title;
  @override
  final String author;
  @override
  final ContentSummaryEntity summary;
  final List<ThemeEntity> _themes;
  @override
  List<ThemeEntity> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  final List<CharacterEntity> _characters;
  @override
  List<CharacterEntity> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<PlotPointEntity> _plotPoints;
  @override
  List<PlotPointEntity> get plotPoints {
    if (_plotPoints is EqualUnmodifiableListView) return _plotPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plotPoints);
  }

  @override
  final WritingStyleEntity writingStyle;
  final List<String> _keyQuotes;
  @override
  List<String> get keyQuotes {
    if (_keyQuotes is EqualUnmodifiableListView) return _keyQuotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyQuotes);
  }

  final Map<String, double> _sentimentAnalysis;
  @override
  Map<String, double> get sentimentAnalysis {
    if (_sentimentAnalysis is EqualUnmodifiableMapView)
      return _sentimentAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sentimentAnalysis);
  }

  final List<String> _contentWarnings;
  @override
  List<String> get contentWarnings {
    if (_contentWarnings is EqualUnmodifiableListView) return _contentWarnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contentWarnings);
  }

  final List<String> _educationalValue;
  @override
  List<String> get educationalValue {
    if (_educationalValue is EqualUnmodifiableListView)
      return _educationalValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_educationalValue);
  }

  @override
  final DateTime dateAnalyzed;
  @override
  final String analysisModel;
  @override
  final double confidence;

  @override
  String toString() {
    return 'ContentAnalysisEntity(bookId: $bookId, title: $title, author: $author, summary: $summary, themes: $themes, characters: $characters, plotPoints: $plotPoints, writingStyle: $writingStyle, keyQuotes: $keyQuotes, sentimentAnalysis: $sentimentAnalysis, contentWarnings: $contentWarnings, educationalValue: $educationalValue, dateAnalyzed: $dateAnalyzed, analysisModel: $analysisModel, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentAnalysisEntityImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._themes, _themes) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._plotPoints, _plotPoints) &&
            (identical(other.writingStyle, writingStyle) ||
                other.writingStyle == writingStyle) &&
            const DeepCollectionEquality()
                .equals(other._keyQuotes, _keyQuotes) &&
            const DeepCollectionEquality()
                .equals(other._sentimentAnalysis, _sentimentAnalysis) &&
            const DeepCollectionEquality()
                .equals(other._contentWarnings, _contentWarnings) &&
            const DeepCollectionEquality()
                .equals(other._educationalValue, _educationalValue) &&
            (identical(other.dateAnalyzed, dateAnalyzed) ||
                other.dateAnalyzed == dateAnalyzed) &&
            (identical(other.analysisModel, analysisModel) ||
                other.analysisModel == analysisModel) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      summary,
      const DeepCollectionEquality().hash(_themes),
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_plotPoints),
      writingStyle,
      const DeepCollectionEquality().hash(_keyQuotes),
      const DeepCollectionEquality().hash(_sentimentAnalysis),
      const DeepCollectionEquality().hash(_contentWarnings),
      const DeepCollectionEquality().hash(_educationalValue),
      dateAnalyzed,
      analysisModel,
      confidence);

  /// Create a copy of ContentAnalysisEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentAnalysisEntityImplCopyWith<_$ContentAnalysisEntityImpl>
      get copyWith => __$$ContentAnalysisEntityImplCopyWithImpl<
          _$ContentAnalysisEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentAnalysisEntityImplToJson(
      this,
    );
  }
}

abstract class _ContentAnalysisEntity implements ContentAnalysisEntity {
  const factory _ContentAnalysisEntity(
      {required final String bookId,
      required final String title,
      required final String author,
      required final ContentSummaryEntity summary,
      required final List<ThemeEntity> themes,
      required final List<CharacterEntity> characters,
      required final List<PlotPointEntity> plotPoints,
      required final WritingStyleEntity writingStyle,
      required final List<String> keyQuotes,
      required final Map<String, double> sentimentAnalysis,
      required final List<String> contentWarnings,
      required final List<String> educationalValue,
      required final DateTime dateAnalyzed,
      required final String analysisModel,
      required final double confidence}) = _$ContentAnalysisEntityImpl;

  factory _ContentAnalysisEntity.fromJson(Map<String, dynamic> json) =
      _$ContentAnalysisEntityImpl.fromJson;

  @override
  String get bookId;
  @override
  String get title;
  @override
  String get author;
  @override
  ContentSummaryEntity get summary;
  @override
  List<ThemeEntity> get themes;
  @override
  List<CharacterEntity> get characters;
  @override
  List<PlotPointEntity> get plotPoints;
  @override
  WritingStyleEntity get writingStyle;
  @override
  List<String> get keyQuotes;
  @override
  Map<String, double> get sentimentAnalysis;
  @override
  List<String> get contentWarnings;
  @override
  List<String> get educationalValue;
  @override
  DateTime get dateAnalyzed;
  @override
  String get analysisModel;
  @override
  double get confidence;

  /// Create a copy of ContentAnalysisEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentAnalysisEntityImplCopyWith<_$ContentAnalysisEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContentSummaryEntity _$ContentSummaryEntityFromJson(Map<String, dynamic> json) {
  return _ContentSummaryEntity.fromJson(json);
}

/// @nodoc
mixin _$ContentSummaryEntity {
  String get shortSummary => throw _privateConstructorUsedError;
  String get detailedSummary => throw _privateConstructorUsedError;
  List<String> get keyPoints => throw _privateConstructorUsedError;
  List<String> get mainIdeas => throw _privateConstructorUsedError;
  String get conclusion => throw _privateConstructorUsedError;
  int get summaryLength => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this ContentSummaryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentSummaryEntityCopyWith<ContentSummaryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentSummaryEntityCopyWith<$Res> {
  factory $ContentSummaryEntityCopyWith(ContentSummaryEntity value,
          $Res Function(ContentSummaryEntity) then) =
      _$ContentSummaryEntityCopyWithImpl<$Res, ContentSummaryEntity>;
  @useResult
  $Res call(
      {String shortSummary,
      String detailedSummary,
      List<String> keyPoints,
      List<String> mainIdeas,
      String conclusion,
      int summaryLength,
      List<String> tags});
}

/// @nodoc
class _$ContentSummaryEntityCopyWithImpl<$Res,
        $Val extends ContentSummaryEntity>
    implements $ContentSummaryEntityCopyWith<$Res> {
  _$ContentSummaryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortSummary = null,
    Object? detailedSummary = null,
    Object? keyPoints = null,
    Object? mainIdeas = null,
    Object? conclusion = null,
    Object? summaryLength = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      shortSummary: null == shortSummary
          ? _value.shortSummary
          : shortSummary // ignore: cast_nullable_to_non_nullable
              as String,
      detailedSummary: null == detailedSummary
          ? _value.detailedSummary
          : detailedSummary // ignore: cast_nullable_to_non_nullable
              as String,
      keyPoints: null == keyPoints
          ? _value.keyPoints
          : keyPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mainIdeas: null == mainIdeas
          ? _value.mainIdeas
          : mainIdeas // ignore: cast_nullable_to_non_nullable
              as List<String>,
      conclusion: null == conclusion
          ? _value.conclusion
          : conclusion // ignore: cast_nullable_to_non_nullable
              as String,
      summaryLength: null == summaryLength
          ? _value.summaryLength
          : summaryLength // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentSummaryEntityImplCopyWith<$Res>
    implements $ContentSummaryEntityCopyWith<$Res> {
  factory _$$ContentSummaryEntityImplCopyWith(_$ContentSummaryEntityImpl value,
          $Res Function(_$ContentSummaryEntityImpl) then) =
      __$$ContentSummaryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shortSummary,
      String detailedSummary,
      List<String> keyPoints,
      List<String> mainIdeas,
      String conclusion,
      int summaryLength,
      List<String> tags});
}

/// @nodoc
class __$$ContentSummaryEntityImplCopyWithImpl<$Res>
    extends _$ContentSummaryEntityCopyWithImpl<$Res, _$ContentSummaryEntityImpl>
    implements _$$ContentSummaryEntityImplCopyWith<$Res> {
  __$$ContentSummaryEntityImplCopyWithImpl(_$ContentSummaryEntityImpl _value,
      $Res Function(_$ContentSummaryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortSummary = null,
    Object? detailedSummary = null,
    Object? keyPoints = null,
    Object? mainIdeas = null,
    Object? conclusion = null,
    Object? summaryLength = null,
    Object? tags = null,
  }) {
    return _then(_$ContentSummaryEntityImpl(
      shortSummary: null == shortSummary
          ? _value.shortSummary
          : shortSummary // ignore: cast_nullable_to_non_nullable
              as String,
      detailedSummary: null == detailedSummary
          ? _value.detailedSummary
          : detailedSummary // ignore: cast_nullable_to_non_nullable
              as String,
      keyPoints: null == keyPoints
          ? _value._keyPoints
          : keyPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mainIdeas: null == mainIdeas
          ? _value._mainIdeas
          : mainIdeas // ignore: cast_nullable_to_non_nullable
              as List<String>,
      conclusion: null == conclusion
          ? _value.conclusion
          : conclusion // ignore: cast_nullable_to_non_nullable
              as String,
      summaryLength: null == summaryLength
          ? _value.summaryLength
          : summaryLength // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentSummaryEntityImpl implements _ContentSummaryEntity {
  const _$ContentSummaryEntityImpl(
      {required this.shortSummary,
      required this.detailedSummary,
      required final List<String> keyPoints,
      required final List<String> mainIdeas,
      required this.conclusion,
      required this.summaryLength,
      required final List<String> tags})
      : _keyPoints = keyPoints,
        _mainIdeas = mainIdeas,
        _tags = tags;

  factory _$ContentSummaryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentSummaryEntityImplFromJson(json);

  @override
  final String shortSummary;
  @override
  final String detailedSummary;
  final List<String> _keyPoints;
  @override
  List<String> get keyPoints {
    if (_keyPoints is EqualUnmodifiableListView) return _keyPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyPoints);
  }

  final List<String> _mainIdeas;
  @override
  List<String> get mainIdeas {
    if (_mainIdeas is EqualUnmodifiableListView) return _mainIdeas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainIdeas);
  }

  @override
  final String conclusion;
  @override
  final int summaryLength;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'ContentSummaryEntity(shortSummary: $shortSummary, detailedSummary: $detailedSummary, keyPoints: $keyPoints, mainIdeas: $mainIdeas, conclusion: $conclusion, summaryLength: $summaryLength, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentSummaryEntityImpl &&
            (identical(other.shortSummary, shortSummary) ||
                other.shortSummary == shortSummary) &&
            (identical(other.detailedSummary, detailedSummary) ||
                other.detailedSummary == detailedSummary) &&
            const DeepCollectionEquality()
                .equals(other._keyPoints, _keyPoints) &&
            const DeepCollectionEquality()
                .equals(other._mainIdeas, _mainIdeas) &&
            (identical(other.conclusion, conclusion) ||
                other.conclusion == conclusion) &&
            (identical(other.summaryLength, summaryLength) ||
                other.summaryLength == summaryLength) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shortSummary,
      detailedSummary,
      const DeepCollectionEquality().hash(_keyPoints),
      const DeepCollectionEquality().hash(_mainIdeas),
      conclusion,
      summaryLength,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of ContentSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentSummaryEntityImplCopyWith<_$ContentSummaryEntityImpl>
      get copyWith =>
          __$$ContentSummaryEntityImplCopyWithImpl<_$ContentSummaryEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentSummaryEntityImplToJson(
      this,
    );
  }
}

abstract class _ContentSummaryEntity implements ContentSummaryEntity {
  const factory _ContentSummaryEntity(
      {required final String shortSummary,
      required final String detailedSummary,
      required final List<String> keyPoints,
      required final List<String> mainIdeas,
      required final String conclusion,
      required final int summaryLength,
      required final List<String> tags}) = _$ContentSummaryEntityImpl;

  factory _ContentSummaryEntity.fromJson(Map<String, dynamic> json) =
      _$ContentSummaryEntityImpl.fromJson;

  @override
  String get shortSummary;
  @override
  String get detailedSummary;
  @override
  List<String> get keyPoints;
  @override
  List<String> get mainIdeas;
  @override
  String get conclusion;
  @override
  int get summaryLength;
  @override
  List<String> get tags;

  /// Create a copy of ContentSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentSummaryEntityImplCopyWith<_$ContentSummaryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ThemeEntity _$ThemeEntityFromJson(Map<String, dynamic> json) {
  return _ThemeEntity.fromJson(json);
}

/// @nodoc
mixin _$ThemeEntity {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get prominence => throw _privateConstructorUsedError;
  List<String> get examples => throw _privateConstructorUsedError;
  List<String> get relatedThemes => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this ThemeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeEntityCopyWith<ThemeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEntityCopyWith<$Res> {
  factory $ThemeEntityCopyWith(
          ThemeEntity value, $Res Function(ThemeEntity) then) =
      _$ThemeEntityCopyWithImpl<$Res, ThemeEntity>;
  @useResult
  $Res call(
      {String name,
      String description,
      double prominence,
      List<String> examples,
      List<String> relatedThemes,
      String category});
}

/// @nodoc
class _$ThemeEntityCopyWithImpl<$Res, $Val extends ThemeEntity>
    implements $ThemeEntityCopyWith<$Res> {
  _$ThemeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? prominence = null,
    Object? examples = null,
    Object? relatedThemes = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prominence: null == prominence
          ? _value.prominence
          : prominence // ignore: cast_nullable_to_non_nullable
              as double,
      examples: null == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedThemes: null == relatedThemes
          ? _value.relatedThemes
          : relatedThemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeEntityImplCopyWith<$Res>
    implements $ThemeEntityCopyWith<$Res> {
  factory _$$ThemeEntityImplCopyWith(
          _$ThemeEntityImpl value, $Res Function(_$ThemeEntityImpl) then) =
      __$$ThemeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      double prominence,
      List<String> examples,
      List<String> relatedThemes,
      String category});
}

/// @nodoc
class __$$ThemeEntityImplCopyWithImpl<$Res>
    extends _$ThemeEntityCopyWithImpl<$Res, _$ThemeEntityImpl>
    implements _$$ThemeEntityImplCopyWith<$Res> {
  __$$ThemeEntityImplCopyWithImpl(
      _$ThemeEntityImpl _value, $Res Function(_$ThemeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? prominence = null,
    Object? examples = null,
    Object? relatedThemes = null,
    Object? category = null,
  }) {
    return _then(_$ThemeEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prominence: null == prominence
          ? _value.prominence
          : prominence // ignore: cast_nullable_to_non_nullable
              as double,
      examples: null == examples
          ? _value._examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedThemes: null == relatedThemes
          ? _value._relatedThemes
          : relatedThemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeEntityImpl implements _ThemeEntity {
  const _$ThemeEntityImpl(
      {required this.name,
      required this.description,
      required this.prominence,
      required final List<String> examples,
      required final List<String> relatedThemes,
      required this.category})
      : _examples = examples,
        _relatedThemes = relatedThemes;

  factory _$ThemeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final double prominence;
  final List<String> _examples;
  @override
  List<String> get examples {
    if (_examples is EqualUnmodifiableListView) return _examples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examples);
  }

  final List<String> _relatedThemes;
  @override
  List<String> get relatedThemes {
    if (_relatedThemes is EqualUnmodifiableListView) return _relatedThemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedThemes);
  }

  @override
  final String category;

  @override
  String toString() {
    return 'ThemeEntity(name: $name, description: $description, prominence: $prominence, examples: $examples, relatedThemes: $relatedThemes, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.prominence, prominence) ||
                other.prominence == prominence) &&
            const DeepCollectionEquality().equals(other._examples, _examples) &&
            const DeepCollectionEquality()
                .equals(other._relatedThemes, _relatedThemes) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      prominence,
      const DeepCollectionEquality().hash(_examples),
      const DeepCollectionEquality().hash(_relatedThemes),
      category);

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeEntityImplCopyWith<_$ThemeEntityImpl> get copyWith =>
      __$$ThemeEntityImplCopyWithImpl<_$ThemeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeEntityImplToJson(
      this,
    );
  }
}

abstract class _ThemeEntity implements ThemeEntity {
  const factory _ThemeEntity(
      {required final String name,
      required final String description,
      required final double prominence,
      required final List<String> examples,
      required final List<String> relatedThemes,
      required final String category}) = _$ThemeEntityImpl;

  factory _ThemeEntity.fromJson(Map<String, dynamic> json) =
      _$ThemeEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  double get prominence;
  @override
  List<String> get examples;
  @override
  List<String> get relatedThemes;
  @override
  String get category;

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeEntityImplCopyWith<_$ThemeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterEntity _$CharacterEntityFromJson(Map<String, dynamic> json) {
  return _CharacterEntity.fromJson(json);
}

/// @nodoc
mixin _$CharacterEntity {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  CharacterRole get role => throw _privateConstructorUsedError;
  double get importance => throw _privateConstructorUsedError;
  List<String> get traits => throw _privateConstructorUsedError;
  List<String> get relationships => throw _privateConstructorUsedError;
  String get development => throw _privateConstructorUsedError;
  List<String> get quotes => throw _privateConstructorUsedError;

  /// Serializes this CharacterEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterEntityCopyWith<CharacterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEntityCopyWith<$Res> {
  factory $CharacterEntityCopyWith(
          CharacterEntity value, $Res Function(CharacterEntity) then) =
      _$CharacterEntityCopyWithImpl<$Res, CharacterEntity>;
  @useResult
  $Res call(
      {String name,
      String description,
      CharacterRole role,
      double importance,
      List<String> traits,
      List<String> relationships,
      String development,
      List<String> quotes});
}

/// @nodoc
class _$CharacterEntityCopyWithImpl<$Res, $Val extends CharacterEntity>
    implements $CharacterEntityCopyWith<$Res> {
  _$CharacterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? role = null,
    Object? importance = null,
    Object? traits = null,
    Object? relationships = null,
    Object? development = null,
    Object? quotes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CharacterRole,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double,
      traits: null == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relationships: null == relationships
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<String>,
      development: null == development
          ? _value.development
          : development // ignore: cast_nullable_to_non_nullable
              as String,
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterEntityImplCopyWith<$Res>
    implements $CharacterEntityCopyWith<$Res> {
  factory _$$CharacterEntityImplCopyWith(_$CharacterEntityImpl value,
          $Res Function(_$CharacterEntityImpl) then) =
      __$$CharacterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      CharacterRole role,
      double importance,
      List<String> traits,
      List<String> relationships,
      String development,
      List<String> quotes});
}

/// @nodoc
class __$$CharacterEntityImplCopyWithImpl<$Res>
    extends _$CharacterEntityCopyWithImpl<$Res, _$CharacterEntityImpl>
    implements _$$CharacterEntityImplCopyWith<$Res> {
  __$$CharacterEntityImplCopyWithImpl(
      _$CharacterEntityImpl _value, $Res Function(_$CharacterEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? role = null,
    Object? importance = null,
    Object? traits = null,
    Object? relationships = null,
    Object? development = null,
    Object? quotes = null,
  }) {
    return _then(_$CharacterEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CharacterRole,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double,
      traits: null == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relationships: null == relationships
          ? _value._relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<String>,
      development: null == development
          ? _value.development
          : development // ignore: cast_nullable_to_non_nullable
              as String,
      quotes: null == quotes
          ? _value._quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterEntityImpl implements _CharacterEntity {
  const _$CharacterEntityImpl(
      {required this.name,
      required this.description,
      required this.role,
      required this.importance,
      required final List<String> traits,
      required final List<String> relationships,
      required this.development,
      required final List<String> quotes})
      : _traits = traits,
        _relationships = relationships,
        _quotes = quotes;

  factory _$CharacterEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final CharacterRole role;
  @override
  final double importance;
  final List<String> _traits;
  @override
  List<String> get traits {
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_traits);
  }

  final List<String> _relationships;
  @override
  List<String> get relationships {
    if (_relationships is EqualUnmodifiableListView) return _relationships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relationships);
  }

  @override
  final String development;
  final List<String> _quotes;
  @override
  List<String> get quotes {
    if (_quotes is EqualUnmodifiableListView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotes);
  }

  @override
  String toString() {
    return 'CharacterEntity(name: $name, description: $description, role: $role, importance: $importance, traits: $traits, relationships: $relationships, development: $development, quotes: $quotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            const DeepCollectionEquality().equals(other._traits, _traits) &&
            const DeepCollectionEquality()
                .equals(other._relationships, _relationships) &&
            (identical(other.development, development) ||
                other.development == development) &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      role,
      importance,
      const DeepCollectionEquality().hash(_traits),
      const DeepCollectionEquality().hash(_relationships),
      development,
      const DeepCollectionEquality().hash(_quotes));

  /// Create a copy of CharacterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterEntityImplCopyWith<_$CharacterEntityImpl> get copyWith =>
      __$$CharacterEntityImplCopyWithImpl<_$CharacterEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterEntityImplToJson(
      this,
    );
  }
}

abstract class _CharacterEntity implements CharacterEntity {
  const factory _CharacterEntity(
      {required final String name,
      required final String description,
      required final CharacterRole role,
      required final double importance,
      required final List<String> traits,
      required final List<String> relationships,
      required final String development,
      required final List<String> quotes}) = _$CharacterEntityImpl;

  factory _CharacterEntity.fromJson(Map<String, dynamic> json) =
      _$CharacterEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  CharacterRole get role;
  @override
  double get importance;
  @override
  List<String> get traits;
  @override
  List<String> get relationships;
  @override
  String get development;
  @override
  List<String> get quotes;

  /// Create a copy of CharacterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterEntityImplCopyWith<_$CharacterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlotPointEntity _$PlotPointEntityFromJson(Map<String, dynamic> json) {
  return _PlotPointEntity.fromJson(json);
}

/// @nodoc
mixin _$PlotPointEntity {
  String get description => throw _privateConstructorUsedError;
  PlotPointType get type => throw _privateConstructorUsedError;
  int get chapter => throw _privateConstructorUsedError;
  double get significance => throw _privateConstructorUsedError;
  List<String> get consequences => throw _privateConstructorUsedError;
  List<String> get relatedEvents => throw _privateConstructorUsedError;
  String get impact => throw _privateConstructorUsedError;

  /// Serializes this PlotPointEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlotPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlotPointEntityCopyWith<PlotPointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlotPointEntityCopyWith<$Res> {
  factory $PlotPointEntityCopyWith(
          PlotPointEntity value, $Res Function(PlotPointEntity) then) =
      _$PlotPointEntityCopyWithImpl<$Res, PlotPointEntity>;
  @useResult
  $Res call(
      {String description,
      PlotPointType type,
      int chapter,
      double significance,
      List<String> consequences,
      List<String> relatedEvents,
      String impact});
}

/// @nodoc
class _$PlotPointEntityCopyWithImpl<$Res, $Val extends PlotPointEntity>
    implements $PlotPointEntityCopyWith<$Res> {
  _$PlotPointEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlotPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? type = null,
    Object? chapter = null,
    Object? significance = null,
    Object? consequences = null,
    Object? relatedEvents = null,
    Object? impact = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlotPointType,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      significance: null == significance
          ? _value.significance
          : significance // ignore: cast_nullable_to_non_nullable
              as double,
      consequences: null == consequences
          ? _value.consequences
          : consequences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedEvents: null == relatedEvents
          ? _value.relatedEvents
          : relatedEvents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlotPointEntityImplCopyWith<$Res>
    implements $PlotPointEntityCopyWith<$Res> {
  factory _$$PlotPointEntityImplCopyWith(_$PlotPointEntityImpl value,
          $Res Function(_$PlotPointEntityImpl) then) =
      __$$PlotPointEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      PlotPointType type,
      int chapter,
      double significance,
      List<String> consequences,
      List<String> relatedEvents,
      String impact});
}

/// @nodoc
class __$$PlotPointEntityImplCopyWithImpl<$Res>
    extends _$PlotPointEntityCopyWithImpl<$Res, _$PlotPointEntityImpl>
    implements _$$PlotPointEntityImplCopyWith<$Res> {
  __$$PlotPointEntityImplCopyWithImpl(
      _$PlotPointEntityImpl _value, $Res Function(_$PlotPointEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlotPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? type = null,
    Object? chapter = null,
    Object? significance = null,
    Object? consequences = null,
    Object? relatedEvents = null,
    Object? impact = null,
  }) {
    return _then(_$PlotPointEntityImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlotPointType,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      significance: null == significance
          ? _value.significance
          : significance // ignore: cast_nullable_to_non_nullable
              as double,
      consequences: null == consequences
          ? _value._consequences
          : consequences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedEvents: null == relatedEvents
          ? _value._relatedEvents
          : relatedEvents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlotPointEntityImpl implements _PlotPointEntity {
  const _$PlotPointEntityImpl(
      {required this.description,
      required this.type,
      required this.chapter,
      required this.significance,
      required final List<String> consequences,
      required final List<String> relatedEvents,
      required this.impact})
      : _consequences = consequences,
        _relatedEvents = relatedEvents;

  factory _$PlotPointEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlotPointEntityImplFromJson(json);

  @override
  final String description;
  @override
  final PlotPointType type;
  @override
  final int chapter;
  @override
  final double significance;
  final List<String> _consequences;
  @override
  List<String> get consequences {
    if (_consequences is EqualUnmodifiableListView) return _consequences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consequences);
  }

  final List<String> _relatedEvents;
  @override
  List<String> get relatedEvents {
    if (_relatedEvents is EqualUnmodifiableListView) return _relatedEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedEvents);
  }

  @override
  final String impact;

  @override
  String toString() {
    return 'PlotPointEntity(description: $description, type: $type, chapter: $chapter, significance: $significance, consequences: $consequences, relatedEvents: $relatedEvents, impact: $impact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlotPointEntityImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.significance, significance) ||
                other.significance == significance) &&
            const DeepCollectionEquality()
                .equals(other._consequences, _consequences) &&
            const DeepCollectionEquality()
                .equals(other._relatedEvents, _relatedEvents) &&
            (identical(other.impact, impact) || other.impact == impact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      type,
      chapter,
      significance,
      const DeepCollectionEquality().hash(_consequences),
      const DeepCollectionEquality().hash(_relatedEvents),
      impact);

  /// Create a copy of PlotPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlotPointEntityImplCopyWith<_$PlotPointEntityImpl> get copyWith =>
      __$$PlotPointEntityImplCopyWithImpl<_$PlotPointEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlotPointEntityImplToJson(
      this,
    );
  }
}

abstract class _PlotPointEntity implements PlotPointEntity {
  const factory _PlotPointEntity(
      {required final String description,
      required final PlotPointType type,
      required final int chapter,
      required final double significance,
      required final List<String> consequences,
      required final List<String> relatedEvents,
      required final String impact}) = _$PlotPointEntityImpl;

  factory _PlotPointEntity.fromJson(Map<String, dynamic> json) =
      _$PlotPointEntityImpl.fromJson;

  @override
  String get description;
  @override
  PlotPointType get type;
  @override
  int get chapter;
  @override
  double get significance;
  @override
  List<String> get consequences;
  @override
  List<String> get relatedEvents;
  @override
  String get impact;

  /// Create a copy of PlotPointEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlotPointEntityImplCopyWith<_$PlotPointEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WritingStyleEntity _$WritingStyleEntityFromJson(Map<String, dynamic> json) {
  return _WritingStyleEntity.fromJson(json);
}

/// @nodoc
mixin _$WritingStyleEntity {
  String get style => throw _privateConstructorUsedError;
  double get complexity => throw _privateConstructorUsedError;
  List<String> get characteristics => throw _privateConstructorUsedError;
  List<String> get techniques => throw _privateConstructorUsedError;
  String get tone => throw _privateConstructorUsedError;
  String get pacing => throw _privateConstructorUsedError;
  List<String> get influences => throw _privateConstructorUsedError;
  String get accessibility => throw _privateConstructorUsedError;

  /// Serializes this WritingStyleEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WritingStyleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WritingStyleEntityCopyWith<WritingStyleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WritingStyleEntityCopyWith<$Res> {
  factory $WritingStyleEntityCopyWith(
          WritingStyleEntity value, $Res Function(WritingStyleEntity) then) =
      _$WritingStyleEntityCopyWithImpl<$Res, WritingStyleEntity>;
  @useResult
  $Res call(
      {String style,
      double complexity,
      List<String> characteristics,
      List<String> techniques,
      String tone,
      String pacing,
      List<String> influences,
      String accessibility});
}

/// @nodoc
class _$WritingStyleEntityCopyWithImpl<$Res, $Val extends WritingStyleEntity>
    implements $WritingStyleEntityCopyWith<$Res> {
  _$WritingStyleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WritingStyleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? complexity = null,
    Object? characteristics = null,
    Object? techniques = null,
    Object? tone = null,
    Object? pacing = null,
    Object? influences = null,
    Object? accessibility = null,
  }) {
    return _then(_value.copyWith(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      complexity: null == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as double,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      techniques: null == techniques
          ? _value.techniques
          : techniques // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tone: null == tone
          ? _value.tone
          : tone // ignore: cast_nullable_to_non_nullable
              as String,
      pacing: null == pacing
          ? _value.pacing
          : pacing // ignore: cast_nullable_to_non_nullable
              as String,
      influences: null == influences
          ? _value.influences
          : influences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accessibility: null == accessibility
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WritingStyleEntityImplCopyWith<$Res>
    implements $WritingStyleEntityCopyWith<$Res> {
  factory _$$WritingStyleEntityImplCopyWith(_$WritingStyleEntityImpl value,
          $Res Function(_$WritingStyleEntityImpl) then) =
      __$$WritingStyleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String style,
      double complexity,
      List<String> characteristics,
      List<String> techniques,
      String tone,
      String pacing,
      List<String> influences,
      String accessibility});
}

/// @nodoc
class __$$WritingStyleEntityImplCopyWithImpl<$Res>
    extends _$WritingStyleEntityCopyWithImpl<$Res, _$WritingStyleEntityImpl>
    implements _$$WritingStyleEntityImplCopyWith<$Res> {
  __$$WritingStyleEntityImplCopyWithImpl(_$WritingStyleEntityImpl _value,
      $Res Function(_$WritingStyleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WritingStyleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? complexity = null,
    Object? characteristics = null,
    Object? techniques = null,
    Object? tone = null,
    Object? pacing = null,
    Object? influences = null,
    Object? accessibility = null,
  }) {
    return _then(_$WritingStyleEntityImpl(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      complexity: null == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as double,
      characteristics: null == characteristics
          ? _value._characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      techniques: null == techniques
          ? _value._techniques
          : techniques // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tone: null == tone
          ? _value.tone
          : tone // ignore: cast_nullable_to_non_nullable
              as String,
      pacing: null == pacing
          ? _value.pacing
          : pacing // ignore: cast_nullable_to_non_nullable
              as String,
      influences: null == influences
          ? _value._influences
          : influences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accessibility: null == accessibility
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WritingStyleEntityImpl implements _WritingStyleEntity {
  const _$WritingStyleEntityImpl(
      {required this.style,
      required this.complexity,
      required final List<String> characteristics,
      required final List<String> techniques,
      required this.tone,
      required this.pacing,
      required final List<String> influences,
      required this.accessibility})
      : _characteristics = characteristics,
        _techniques = techniques,
        _influences = influences;

  factory _$WritingStyleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$WritingStyleEntityImplFromJson(json);

  @override
  final String style;
  @override
  final double complexity;
  final List<String> _characteristics;
  @override
  List<String> get characteristics {
    if (_characteristics is EqualUnmodifiableListView) return _characteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characteristics);
  }

  final List<String> _techniques;
  @override
  List<String> get techniques {
    if (_techniques is EqualUnmodifiableListView) return _techniques;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_techniques);
  }

  @override
  final String tone;
  @override
  final String pacing;
  final List<String> _influences;
  @override
  List<String> get influences {
    if (_influences is EqualUnmodifiableListView) return _influences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_influences);
  }

  @override
  final String accessibility;

  @override
  String toString() {
    return 'WritingStyleEntity(style: $style, complexity: $complexity, characteristics: $characteristics, techniques: $techniques, tone: $tone, pacing: $pacing, influences: $influences, accessibility: $accessibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WritingStyleEntityImpl &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.complexity, complexity) ||
                other.complexity == complexity) &&
            const DeepCollectionEquality()
                .equals(other._characteristics, _characteristics) &&
            const DeepCollectionEquality()
                .equals(other._techniques, _techniques) &&
            (identical(other.tone, tone) || other.tone == tone) &&
            (identical(other.pacing, pacing) || other.pacing == pacing) &&
            const DeepCollectionEquality()
                .equals(other._influences, _influences) &&
            (identical(other.accessibility, accessibility) ||
                other.accessibility == accessibility));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      style,
      complexity,
      const DeepCollectionEquality().hash(_characteristics),
      const DeepCollectionEquality().hash(_techniques),
      tone,
      pacing,
      const DeepCollectionEquality().hash(_influences),
      accessibility);

  /// Create a copy of WritingStyleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WritingStyleEntityImplCopyWith<_$WritingStyleEntityImpl> get copyWith =>
      __$$WritingStyleEntityImplCopyWithImpl<_$WritingStyleEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WritingStyleEntityImplToJson(
      this,
    );
  }
}

abstract class _WritingStyleEntity implements WritingStyleEntity {
  const factory _WritingStyleEntity(
      {required final String style,
      required final double complexity,
      required final List<String> characteristics,
      required final List<String> techniques,
      required final String tone,
      required final String pacing,
      required final List<String> influences,
      required final String accessibility}) = _$WritingStyleEntityImpl;

  factory _WritingStyleEntity.fromJson(Map<String, dynamic> json) =
      _$WritingStyleEntityImpl.fromJson;

  @override
  String get style;
  @override
  double get complexity;
  @override
  List<String> get characteristics;
  @override
  List<String> get techniques;
  @override
  String get tone;
  @override
  String get pacing;
  @override
  List<String> get influences;
  @override
  String get accessibility;

  /// Create a copy of WritingStyleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WritingStyleEntityImplCopyWith<_$WritingStyleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningPathEntity _$LearningPathEntityFromJson(Map<String, dynamic> json) {
  return _LearningPathEntity.fromJson(json);
}

/// @nodoc
mixin _$LearningPathEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;
  List<LearningStepEntity> get steps => throw _privateConstructorUsedError;
  LearningPathStatus get status => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get completionDate => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  List<String> get prerequisites => throw _privateConstructorUsedError;
  List<String> get outcomes => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  int get estimatedDuration => throw _privateConstructorUsedError;
  List<String> get resources => throw _privateConstructorUsedError;
  Map<String, double> get skillGains => throw _privateConstructorUsedError;

  /// Serializes this LearningPathEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearningPathEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningPathEntityCopyWith<LearningPathEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathEntityCopyWith<$Res> {
  factory $LearningPathEntityCopyWith(
          LearningPathEntity value, $Res Function(LearningPathEntity) then) =
      _$LearningPathEntityCopyWithImpl<$Res, LearningPathEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String goal,
      List<LearningStepEntity> steps,
      LearningPathStatus status,
      DateTime startDate,
      DateTime? completionDate,
      double progress,
      List<String> prerequisites,
      List<String> outcomes,
      String difficulty,
      int estimatedDuration,
      List<String> resources,
      Map<String, double> skillGains});
}

/// @nodoc
class _$LearningPathEntityCopyWithImpl<$Res, $Val extends LearningPathEntity>
    implements $LearningPathEntityCopyWith<$Res> {
  _$LearningPathEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearningPathEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? goal = null,
    Object? steps = null,
    Object? status = null,
    Object? startDate = null,
    Object? completionDate = freezed,
    Object? progress = null,
    Object? prerequisites = null,
    Object? outcomes = null,
    Object? difficulty = null,
    Object? estimatedDuration = null,
    Object? resources = null,
    Object? skillGains = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<LearningStepEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LearningPathStatus,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completionDate: freezed == completionDate
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      outcomes: null == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDuration: null == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skillGains: null == skillGains
          ? _value.skillGains
          : skillGains // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningPathEntityImplCopyWith<$Res>
    implements $LearningPathEntityCopyWith<$Res> {
  factory _$$LearningPathEntityImplCopyWith(_$LearningPathEntityImpl value,
          $Res Function(_$LearningPathEntityImpl) then) =
      __$$LearningPathEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String goal,
      List<LearningStepEntity> steps,
      LearningPathStatus status,
      DateTime startDate,
      DateTime? completionDate,
      double progress,
      List<String> prerequisites,
      List<String> outcomes,
      String difficulty,
      int estimatedDuration,
      List<String> resources,
      Map<String, double> skillGains});
}

/// @nodoc
class __$$LearningPathEntityImplCopyWithImpl<$Res>
    extends _$LearningPathEntityCopyWithImpl<$Res, _$LearningPathEntityImpl>
    implements _$$LearningPathEntityImplCopyWith<$Res> {
  __$$LearningPathEntityImplCopyWithImpl(_$LearningPathEntityImpl _value,
      $Res Function(_$LearningPathEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LearningPathEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? goal = null,
    Object? steps = null,
    Object? status = null,
    Object? startDate = null,
    Object? completionDate = freezed,
    Object? progress = null,
    Object? prerequisites = null,
    Object? outcomes = null,
    Object? difficulty = null,
    Object? estimatedDuration = null,
    Object? resources = null,
    Object? skillGains = null,
  }) {
    return _then(_$LearningPathEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<LearningStepEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LearningPathStatus,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completionDate: freezed == completionDate
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      prerequisites: null == prerequisites
          ? _value._prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      outcomes: null == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedDuration: null == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int,
      resources: null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skillGains: null == skillGains
          ? _value._skillGains
          : skillGains // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningPathEntityImpl implements _LearningPathEntity {
  const _$LearningPathEntityImpl(
      {required this.id,
      required this.userId,
      required this.goal,
      required final List<LearningStepEntity> steps,
      required this.status,
      required this.startDate,
      required this.completionDate,
      required this.progress,
      required final List<String> prerequisites,
      required final List<String> outcomes,
      required this.difficulty,
      required this.estimatedDuration,
      required final List<String> resources,
      required final Map<String, double> skillGains})
      : _steps = steps,
        _prerequisites = prerequisites,
        _outcomes = outcomes,
        _resources = resources,
        _skillGains = skillGains;

  factory _$LearningPathEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningPathEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String goal;
  final List<LearningStepEntity> _steps;
  @override
  List<LearningStepEntity> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final LearningPathStatus status;
  @override
  final DateTime startDate;
  @override
  final DateTime? completionDate;
  @override
  final double progress;
  final List<String> _prerequisites;
  @override
  List<String> get prerequisites {
    if (_prerequisites is EqualUnmodifiableListView) return _prerequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

  final List<String> _outcomes;
  @override
  List<String> get outcomes {
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outcomes);
  }

  @override
  final String difficulty;
  @override
  final int estimatedDuration;
  final List<String> _resources;
  @override
  List<String> get resources {
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resources);
  }

  final Map<String, double> _skillGains;
  @override
  Map<String, double> get skillGains {
    if (_skillGains is EqualUnmodifiableMapView) return _skillGains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_skillGains);
  }

  @override
  String toString() {
    return 'LearningPathEntity(id: $id, userId: $userId, goal: $goal, steps: $steps, status: $status, startDate: $startDate, completionDate: $completionDate, progress: $progress, prerequisites: $prerequisites, outcomes: $outcomes, difficulty: $difficulty, estimatedDuration: $estimatedDuration, resources: $resources, skillGains: $skillGains)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningPathEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            const DeepCollectionEquality()
                .equals(other._skillGains, _skillGains));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      goal,
      const DeepCollectionEquality().hash(_steps),
      status,
      startDate,
      completionDate,
      progress,
      const DeepCollectionEquality().hash(_prerequisites),
      const DeepCollectionEquality().hash(_outcomes),
      difficulty,
      estimatedDuration,
      const DeepCollectionEquality().hash(_resources),
      const DeepCollectionEquality().hash(_skillGains));

  /// Create a copy of LearningPathEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningPathEntityImplCopyWith<_$LearningPathEntityImpl> get copyWith =>
      __$$LearningPathEntityImplCopyWithImpl<_$LearningPathEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningPathEntityImplToJson(
      this,
    );
  }
}

abstract class _LearningPathEntity implements LearningPathEntity {
  const factory _LearningPathEntity(
          {required final String id,
          required final String userId,
          required final String goal,
          required final List<LearningStepEntity> steps,
          required final LearningPathStatus status,
          required final DateTime startDate,
          required final DateTime? completionDate,
          required final double progress,
          required final List<String> prerequisites,
          required final List<String> outcomes,
          required final String difficulty,
          required final int estimatedDuration,
          required final List<String> resources,
          required final Map<String, double> skillGains}) =
      _$LearningPathEntityImpl;

  factory _LearningPathEntity.fromJson(Map<String, dynamic> json) =
      _$LearningPathEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get goal;
  @override
  List<LearningStepEntity> get steps;
  @override
  LearningPathStatus get status;
  @override
  DateTime get startDate;
  @override
  DateTime? get completionDate;
  @override
  double get progress;
  @override
  List<String> get prerequisites;
  @override
  List<String> get outcomes;
  @override
  String get difficulty;
  @override
  int get estimatedDuration;
  @override
  List<String> get resources;
  @override
  Map<String, double> get skillGains;

  /// Create a copy of LearningPathEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningPathEntityImplCopyWith<_$LearningPathEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningStepEntity _$LearningStepEntityFromJson(Map<String, dynamic> json) {
  return _LearningStepEntity.fromJson(json);
}

/// @nodoc
mixin _$LearningStepEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get bookId => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  LearningStepType get type => throw _privateConstructorUsedError;
  LearningStepStatus get status => throw _privateConstructorUsedError;
  List<String> get objectives => throw _privateConstructorUsedError;
  List<String> get activities => throw _privateConstructorUsedError;
  int get estimatedTime => throw _privateConstructorUsedError;
  List<String> get assessments => throw _privateConstructorUsedError;
  Map<String, double> get skillFocus => throw _privateConstructorUsedError;

  /// Serializes this LearningStepEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearningStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningStepEntityCopyWith<LearningStepEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningStepEntityCopyWith<$Res> {
  factory $LearningStepEntityCopyWith(
          LearningStepEntity value, $Res Function(LearningStepEntity) then) =
      _$LearningStepEntityCopyWithImpl<$Res, LearningStepEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String bookId,
      int order,
      LearningStepType type,
      LearningStepStatus status,
      List<String> objectives,
      List<String> activities,
      int estimatedTime,
      List<String> assessments,
      Map<String, double> skillFocus});
}

/// @nodoc
class _$LearningStepEntityCopyWithImpl<$Res, $Val extends LearningStepEntity>
    implements $LearningStepEntityCopyWith<$Res> {
  _$LearningStepEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearningStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? bookId = null,
    Object? order = null,
    Object? type = null,
    Object? status = null,
    Object? objectives = null,
    Object? activities = null,
    Object? estimatedTime = null,
    Object? assessments = null,
    Object? skillFocus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LearningStepType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LearningStepStatus,
      objectives: null == objectives
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      estimatedTime: null == estimatedTime
          ? _value.estimatedTime
          : estimatedTime // ignore: cast_nullable_to_non_nullable
              as int,
      assessments: null == assessments
          ? _value.assessments
          : assessments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skillFocus: null == skillFocus
          ? _value.skillFocus
          : skillFocus // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningStepEntityImplCopyWith<$Res>
    implements $LearningStepEntityCopyWith<$Res> {
  factory _$$LearningStepEntityImplCopyWith(_$LearningStepEntityImpl value,
          $Res Function(_$LearningStepEntityImpl) then) =
      __$$LearningStepEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String bookId,
      int order,
      LearningStepType type,
      LearningStepStatus status,
      List<String> objectives,
      List<String> activities,
      int estimatedTime,
      List<String> assessments,
      Map<String, double> skillFocus});
}

/// @nodoc
class __$$LearningStepEntityImplCopyWithImpl<$Res>
    extends _$LearningStepEntityCopyWithImpl<$Res, _$LearningStepEntityImpl>
    implements _$$LearningStepEntityImplCopyWith<$Res> {
  __$$LearningStepEntityImplCopyWithImpl(_$LearningStepEntityImpl _value,
      $Res Function(_$LearningStepEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LearningStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? bookId = null,
    Object? order = null,
    Object? type = null,
    Object? status = null,
    Object? objectives = null,
    Object? activities = null,
    Object? estimatedTime = null,
    Object? assessments = null,
    Object? skillFocus = null,
  }) {
    return _then(_$LearningStepEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LearningStepType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LearningStepStatus,
      objectives: null == objectives
          ? _value._objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      estimatedTime: null == estimatedTime
          ? _value.estimatedTime
          : estimatedTime // ignore: cast_nullable_to_non_nullable
              as int,
      assessments: null == assessments
          ? _value._assessments
          : assessments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skillFocus: null == skillFocus
          ? _value._skillFocus
          : skillFocus // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningStepEntityImpl implements _LearningStepEntity {
  const _$LearningStepEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.bookId,
      required this.order,
      required this.type,
      required this.status,
      required final List<String> objectives,
      required final List<String> activities,
      required this.estimatedTime,
      required final List<String> assessments,
      required final Map<String, double> skillFocus})
      : _objectives = objectives,
        _activities = activities,
        _assessments = assessments,
        _skillFocus = skillFocus;

  factory _$LearningStepEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningStepEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String bookId;
  @override
  final int order;
  @override
  final LearningStepType type;
  @override
  final LearningStepStatus status;
  final List<String> _objectives;
  @override
  List<String> get objectives {
    if (_objectives is EqualUnmodifiableListView) return _objectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objectives);
  }

  final List<String> _activities;
  @override
  List<String> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final int estimatedTime;
  final List<String> _assessments;
  @override
  List<String> get assessments {
    if (_assessments is EqualUnmodifiableListView) return _assessments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assessments);
  }

  final Map<String, double> _skillFocus;
  @override
  Map<String, double> get skillFocus {
    if (_skillFocus is EqualUnmodifiableMapView) return _skillFocus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_skillFocus);
  }

  @override
  String toString() {
    return 'LearningStepEntity(id: $id, title: $title, description: $description, bookId: $bookId, order: $order, type: $type, status: $status, objectives: $objectives, activities: $activities, estimatedTime: $estimatedTime, assessments: $assessments, skillFocus: $skillFocus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningStepEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._objectives, _objectives) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.estimatedTime, estimatedTime) ||
                other.estimatedTime == estimatedTime) &&
            const DeepCollectionEquality()
                .equals(other._assessments, _assessments) &&
            const DeepCollectionEquality()
                .equals(other._skillFocus, _skillFocus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      bookId,
      order,
      type,
      status,
      const DeepCollectionEquality().hash(_objectives),
      const DeepCollectionEquality().hash(_activities),
      estimatedTime,
      const DeepCollectionEquality().hash(_assessments),
      const DeepCollectionEquality().hash(_skillFocus));

  /// Create a copy of LearningStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningStepEntityImplCopyWith<_$LearningStepEntityImpl> get copyWith =>
      __$$LearningStepEntityImplCopyWithImpl<_$LearningStepEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningStepEntityImplToJson(
      this,
    );
  }
}

abstract class _LearningStepEntity implements LearningStepEntity {
  const factory _LearningStepEntity(
          {required final String id,
          required final String title,
          required final String description,
          required final String bookId,
          required final int order,
          required final LearningStepType type,
          required final LearningStepStatus status,
          required final List<String> objectives,
          required final List<String> activities,
          required final int estimatedTime,
          required final List<String> assessments,
          required final Map<String, double> skillFocus}) =
      _$LearningStepEntityImpl;

  factory _LearningStepEntity.fromJson(Map<String, dynamic> json) =
      _$LearningStepEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get bookId;
  @override
  int get order;
  @override
  LearningStepType get type;
  @override
  LearningStepStatus get status;
  @override
  List<String> get objectives;
  @override
  List<String> get activities;
  @override
  int get estimatedTime;
  @override
  List<String> get assessments;
  @override
  Map<String, double> get skillFocus;

  /// Create a copy of LearningStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningStepEntityImplCopyWith<_$LearningStepEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComprehensionTrackingEntity _$ComprehensionTrackingEntityFromJson(
    Map<String, dynamic> json) {
  return _ComprehensionTrackingEntity.fromJson(json);
}

/// @nodoc
mixin _$ComprehensionTrackingEntity {
  String get userId => throw _privateConstructorUsedError;
  String get bookId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ComprehensionLevel get level => throw _privateConstructorUsedError;
  double get comprehensionScore => throw _privateConstructorUsedError;
  List<String> get strengths => throw _privateConstructorUsedError;
  List<String> get areasForImprovement => throw _privateConstructorUsedError;
  List<String> get strategies => throw _privateConstructorUsedError;
  Map<String, double> get skillAssessment => throw _privateConstructorUsedError;
  List<String> get recommendedActivities => throw _privateConstructorUsedError;
  DateTime get dateAssessed => throw _privateConstructorUsedError;
  String get assessmentMethod => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this ComprehensionTrackingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComprehensionTrackingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComprehensionTrackingEntityCopyWith<ComprehensionTrackingEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComprehensionTrackingEntityCopyWith<$Res> {
  factory $ComprehensionTrackingEntityCopyWith(
          ComprehensionTrackingEntity value,
          $Res Function(ComprehensionTrackingEntity) then) =
      _$ComprehensionTrackingEntityCopyWithImpl<$Res,
          ComprehensionTrackingEntity>;
  @useResult
  $Res call(
      {String userId,
      String bookId,
      String title,
      ComprehensionLevel level,
      double comprehensionScore,
      List<String> strengths,
      List<String> areasForImprovement,
      List<String> strategies,
      Map<String, double> skillAssessment,
      List<String> recommendedActivities,
      DateTime dateAssessed,
      String assessmentMethod,
      double confidence});
}

/// @nodoc
class _$ComprehensionTrackingEntityCopyWithImpl<$Res,
        $Val extends ComprehensionTrackingEntity>
    implements $ComprehensionTrackingEntityCopyWith<$Res> {
  _$ComprehensionTrackingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComprehensionTrackingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bookId = null,
    Object? title = null,
    Object? level = null,
    Object? comprehensionScore = null,
    Object? strengths = null,
    Object? areasForImprovement = null,
    Object? strategies = null,
    Object? skillAssessment = null,
    Object? recommendedActivities = null,
    Object? dateAssessed = null,
    Object? assessmentMethod = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ComprehensionLevel,
      comprehensionScore: null == comprehensionScore
          ? _value.comprehensionScore
          : comprehensionScore // ignore: cast_nullable_to_non_nullable
              as double,
      strengths: null == strengths
          ? _value.strengths
          : strengths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      areasForImprovement: null == areasForImprovement
          ? _value.areasForImprovement
          : areasForImprovement // ignore: cast_nullable_to_non_nullable
              as List<String>,
      strategies: null == strategies
          ? _value.strategies
          : strategies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skillAssessment: null == skillAssessment
          ? _value.skillAssessment
          : skillAssessment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      recommendedActivities: null == recommendedActivities
          ? _value.recommendedActivities
          : recommendedActivities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateAssessed: null == dateAssessed
          ? _value.dateAssessed
          : dateAssessed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assessmentMethod: null == assessmentMethod
          ? _value.assessmentMethod
          : assessmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComprehensionTrackingEntityImplCopyWith<$Res>
    implements $ComprehensionTrackingEntityCopyWith<$Res> {
  factory _$$ComprehensionTrackingEntityImplCopyWith(
          _$ComprehensionTrackingEntityImpl value,
          $Res Function(_$ComprehensionTrackingEntityImpl) then) =
      __$$ComprehensionTrackingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String bookId,
      String title,
      ComprehensionLevel level,
      double comprehensionScore,
      List<String> strengths,
      List<String> areasForImprovement,
      List<String> strategies,
      Map<String, double> skillAssessment,
      List<String> recommendedActivities,
      DateTime dateAssessed,
      String assessmentMethod,
      double confidence});
}

/// @nodoc
class __$$ComprehensionTrackingEntityImplCopyWithImpl<$Res>
    extends _$ComprehensionTrackingEntityCopyWithImpl<$Res,
        _$ComprehensionTrackingEntityImpl>
    implements _$$ComprehensionTrackingEntityImplCopyWith<$Res> {
  __$$ComprehensionTrackingEntityImplCopyWithImpl(
      _$ComprehensionTrackingEntityImpl _value,
      $Res Function(_$ComprehensionTrackingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComprehensionTrackingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bookId = null,
    Object? title = null,
    Object? level = null,
    Object? comprehensionScore = null,
    Object? strengths = null,
    Object? areasForImprovement = null,
    Object? strategies = null,
    Object? skillAssessment = null,
    Object? recommendedActivities = null,
    Object? dateAssessed = null,
    Object? assessmentMethod = null,
    Object? confidence = null,
  }) {
    return _then(_$ComprehensionTrackingEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ComprehensionLevel,
      comprehensionScore: null == comprehensionScore
          ? _value.comprehensionScore
          : comprehensionScore // ignore: cast_nullable_to_non_nullable
              as double,
      strengths: null == strengths
          ? _value._strengths
          : strengths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      areasForImprovement: null == areasForImprovement
          ? _value._areasForImprovement
          : areasForImprovement // ignore: cast_nullable_to_non_nullable
              as List<String>,
      strategies: null == strategies
          ? _value._strategies
          : strategies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skillAssessment: null == skillAssessment
          ? _value._skillAssessment
          : skillAssessment // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      recommendedActivities: null == recommendedActivities
          ? _value._recommendedActivities
          : recommendedActivities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateAssessed: null == dateAssessed
          ? _value.dateAssessed
          : dateAssessed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assessmentMethod: null == assessmentMethod
          ? _value.assessmentMethod
          : assessmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComprehensionTrackingEntityImpl
    implements _ComprehensionTrackingEntity {
  const _$ComprehensionTrackingEntityImpl(
      {required this.userId,
      required this.bookId,
      required this.title,
      required this.level,
      required this.comprehensionScore,
      required final List<String> strengths,
      required final List<String> areasForImprovement,
      required final List<String> strategies,
      required final Map<String, double> skillAssessment,
      required final List<String> recommendedActivities,
      required this.dateAssessed,
      required this.assessmentMethod,
      required this.confidence})
      : _strengths = strengths,
        _areasForImprovement = areasForImprovement,
        _strategies = strategies,
        _skillAssessment = skillAssessment,
        _recommendedActivities = recommendedActivities;

  factory _$ComprehensionTrackingEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ComprehensionTrackingEntityImplFromJson(json);

  @override
  final String userId;
  @override
  final String bookId;
  @override
  final String title;
  @override
  final ComprehensionLevel level;
  @override
  final double comprehensionScore;
  final List<String> _strengths;
  @override
  List<String> get strengths {
    if (_strengths is EqualUnmodifiableListView) return _strengths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strengths);
  }

  final List<String> _areasForImprovement;
  @override
  List<String> get areasForImprovement {
    if (_areasForImprovement is EqualUnmodifiableListView)
      return _areasForImprovement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_areasForImprovement);
  }

  final List<String> _strategies;
  @override
  List<String> get strategies {
    if (_strategies is EqualUnmodifiableListView) return _strategies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strategies);
  }

  final Map<String, double> _skillAssessment;
  @override
  Map<String, double> get skillAssessment {
    if (_skillAssessment is EqualUnmodifiableMapView) return _skillAssessment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_skillAssessment);
  }

  final List<String> _recommendedActivities;
  @override
  List<String> get recommendedActivities {
    if (_recommendedActivities is EqualUnmodifiableListView)
      return _recommendedActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedActivities);
  }

  @override
  final DateTime dateAssessed;
  @override
  final String assessmentMethod;
  @override
  final double confidence;

  @override
  String toString() {
    return 'ComprehensionTrackingEntity(userId: $userId, bookId: $bookId, title: $title, level: $level, comprehensionScore: $comprehensionScore, strengths: $strengths, areasForImprovement: $areasForImprovement, strategies: $strategies, skillAssessment: $skillAssessment, recommendedActivities: $recommendedActivities, dateAssessed: $dateAssessed, assessmentMethod: $assessmentMethod, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComprehensionTrackingEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.comprehensionScore, comprehensionScore) ||
                other.comprehensionScore == comprehensionScore) &&
            const DeepCollectionEquality()
                .equals(other._strengths, _strengths) &&
            const DeepCollectionEquality()
                .equals(other._areasForImprovement, _areasForImprovement) &&
            const DeepCollectionEquality()
                .equals(other._strategies, _strategies) &&
            const DeepCollectionEquality()
                .equals(other._skillAssessment, _skillAssessment) &&
            const DeepCollectionEquality()
                .equals(other._recommendedActivities, _recommendedActivities) &&
            (identical(other.dateAssessed, dateAssessed) ||
                other.dateAssessed == dateAssessed) &&
            (identical(other.assessmentMethod, assessmentMethod) ||
                other.assessmentMethod == assessmentMethod) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      bookId,
      title,
      level,
      comprehensionScore,
      const DeepCollectionEquality().hash(_strengths),
      const DeepCollectionEquality().hash(_areasForImprovement),
      const DeepCollectionEquality().hash(_strategies),
      const DeepCollectionEquality().hash(_skillAssessment),
      const DeepCollectionEquality().hash(_recommendedActivities),
      dateAssessed,
      assessmentMethod,
      confidence);

  /// Create a copy of ComprehensionTrackingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComprehensionTrackingEntityImplCopyWith<_$ComprehensionTrackingEntityImpl>
      get copyWith => __$$ComprehensionTrackingEntityImplCopyWithImpl<
          _$ComprehensionTrackingEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComprehensionTrackingEntityImplToJson(
      this,
    );
  }
}

abstract class _ComprehensionTrackingEntity
    implements ComprehensionTrackingEntity {
  const factory _ComprehensionTrackingEntity(
      {required final String userId,
      required final String bookId,
      required final String title,
      required final ComprehensionLevel level,
      required final double comprehensionScore,
      required final List<String> strengths,
      required final List<String> areasForImprovement,
      required final List<String> strategies,
      required final Map<String, double> skillAssessment,
      required final List<String> recommendedActivities,
      required final DateTime dateAssessed,
      required final String assessmentMethod,
      required final double confidence}) = _$ComprehensionTrackingEntityImpl;

  factory _ComprehensionTrackingEntity.fromJson(Map<String, dynamic> json) =
      _$ComprehensionTrackingEntityImpl.fromJson;

  @override
  String get userId;
  @override
  String get bookId;
  @override
  String get title;
  @override
  ComprehensionLevel get level;
  @override
  double get comprehensionScore;
  @override
  List<String> get strengths;
  @override
  List<String> get areasForImprovement;
  @override
  List<String> get strategies;
  @override
  Map<String, double> get skillAssessment;
  @override
  List<String> get recommendedActivities;
  @override
  DateTime get dateAssessed;
  @override
  String get assessmentMethod;
  @override
  double get confidence;

  /// Create a copy of ComprehensionTrackingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComprehensionTrackingEntityImplCopyWith<_$ComprehensionTrackingEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NLPEntity _$NLPEntityFromJson(Map<String, dynamic> json) {
  return _NLPEntity.fromJson(json);
}

/// @nodoc
mixin _$NLPEntity {
  String get bookId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  List<SentimentEntity> get sentiments => throw _privateConstructorUsedError;
  List<EntityEntity> get entities => throw _privateConstructorUsedError;
  List<KeywordEntity> get keywords => throw _privateConstructorUsedError;
  List<TopicEntity> get topics => throw _privateConstructorUsedError;
  LanguageComplexityEntity get languageComplexity =>
      throw _privateConstructorUsedError;
  List<String> get languageFeatures => throw _privateConstructorUsedError;
  Map<String, double> get readabilityMetrics =>
      throw _privateConstructorUsedError;
  DateTime get dateProcessed => throw _privateConstructorUsedError;
  String get nlpModel => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this NLPEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NLPEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NLPEntityCopyWith<NLPEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NLPEntityCopyWith<$Res> {
  factory $NLPEntityCopyWith(NLPEntity value, $Res Function(NLPEntity) then) =
      _$NLPEntityCopyWithImpl<$Res, NLPEntity>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      List<SentimentEntity> sentiments,
      List<EntityEntity> entities,
      List<KeywordEntity> keywords,
      List<TopicEntity> topics,
      LanguageComplexityEntity languageComplexity,
      List<String> languageFeatures,
      Map<String, double> readabilityMetrics,
      DateTime dateProcessed,
      String nlpModel,
      double confidence});

  $LanguageComplexityEntityCopyWith<$Res> get languageComplexity;
}

/// @nodoc
class _$NLPEntityCopyWithImpl<$Res, $Val extends NLPEntity>
    implements $NLPEntityCopyWith<$Res> {
  _$NLPEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NLPEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? sentiments = null,
    Object? entities = null,
    Object? keywords = null,
    Object? topics = null,
    Object? languageComplexity = null,
    Object? languageFeatures = null,
    Object? readabilityMetrics = null,
    Object? dateProcessed = null,
    Object? nlpModel = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      sentiments: null == sentiments
          ? _value.sentiments
          : sentiments // ignore: cast_nullable_to_non_nullable
              as List<SentimentEntity>,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<EntityEntity>,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<KeywordEntity>,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicEntity>,
      languageComplexity: null == languageComplexity
          ? _value.languageComplexity
          : languageComplexity // ignore: cast_nullable_to_non_nullable
              as LanguageComplexityEntity,
      languageFeatures: null == languageFeatures
          ? _value.languageFeatures
          : languageFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readabilityMetrics: null == readabilityMetrics
          ? _value.readabilityMetrics
          : readabilityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      dateProcessed: null == dateProcessed
          ? _value.dateProcessed
          : dateProcessed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nlpModel: null == nlpModel
          ? _value.nlpModel
          : nlpModel // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of NLPEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageComplexityEntityCopyWith<$Res> get languageComplexity {
    return $LanguageComplexityEntityCopyWith<$Res>(_value.languageComplexity,
        (value) {
      return _then(_value.copyWith(languageComplexity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NLPEntityImplCopyWith<$Res>
    implements $NLPEntityCopyWith<$Res> {
  factory _$$NLPEntityImplCopyWith(
          _$NLPEntityImpl value, $Res Function(_$NLPEntityImpl) then) =
      __$$NLPEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      List<SentimentEntity> sentiments,
      List<EntityEntity> entities,
      List<KeywordEntity> keywords,
      List<TopicEntity> topics,
      LanguageComplexityEntity languageComplexity,
      List<String> languageFeatures,
      Map<String, double> readabilityMetrics,
      DateTime dateProcessed,
      String nlpModel,
      double confidence});

  @override
  $LanguageComplexityEntityCopyWith<$Res> get languageComplexity;
}

/// @nodoc
class __$$NLPEntityImplCopyWithImpl<$Res>
    extends _$NLPEntityCopyWithImpl<$Res, _$NLPEntityImpl>
    implements _$$NLPEntityImplCopyWith<$Res> {
  __$$NLPEntityImplCopyWithImpl(
      _$NLPEntityImpl _value, $Res Function(_$NLPEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NLPEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? sentiments = null,
    Object? entities = null,
    Object? keywords = null,
    Object? topics = null,
    Object? languageComplexity = null,
    Object? languageFeatures = null,
    Object? readabilityMetrics = null,
    Object? dateProcessed = null,
    Object? nlpModel = null,
    Object? confidence = null,
  }) {
    return _then(_$NLPEntityImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      sentiments: null == sentiments
          ? _value._sentiments
          : sentiments // ignore: cast_nullable_to_non_nullable
              as List<SentimentEntity>,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<EntityEntity>,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<KeywordEntity>,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicEntity>,
      languageComplexity: null == languageComplexity
          ? _value.languageComplexity
          : languageComplexity // ignore: cast_nullable_to_non_nullable
              as LanguageComplexityEntity,
      languageFeatures: null == languageFeatures
          ? _value._languageFeatures
          : languageFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readabilityMetrics: null == readabilityMetrics
          ? _value._readabilityMetrics
          : readabilityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      dateProcessed: null == dateProcessed
          ? _value.dateProcessed
          : dateProcessed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nlpModel: null == nlpModel
          ? _value.nlpModel
          : nlpModel // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NLPEntityImpl implements _NLPEntity {
  const _$NLPEntityImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      required final List<SentimentEntity> sentiments,
      required final List<EntityEntity> entities,
      required final List<KeywordEntity> keywords,
      required final List<TopicEntity> topics,
      required this.languageComplexity,
      required final List<String> languageFeatures,
      required final Map<String, double> readabilityMetrics,
      required this.dateProcessed,
      required this.nlpModel,
      required this.confidence})
      : _sentiments = sentiments,
        _entities = entities,
        _keywords = keywords,
        _topics = topics,
        _languageFeatures = languageFeatures,
        _readabilityMetrics = readabilityMetrics;

  factory _$NLPEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NLPEntityImplFromJson(json);

  @override
  final String bookId;
  @override
  final String title;
  @override
  final String author;
  final List<SentimentEntity> _sentiments;
  @override
  List<SentimentEntity> get sentiments {
    if (_sentiments is EqualUnmodifiableListView) return _sentiments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentiments);
  }

  final List<EntityEntity> _entities;
  @override
  List<EntityEntity> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  final List<KeywordEntity> _keywords;
  @override
  List<KeywordEntity> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  final List<TopicEntity> _topics;
  @override
  List<TopicEntity> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  final LanguageComplexityEntity languageComplexity;
  final List<String> _languageFeatures;
  @override
  List<String> get languageFeatures {
    if (_languageFeatures is EqualUnmodifiableListView)
      return _languageFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageFeatures);
  }

  final Map<String, double> _readabilityMetrics;
  @override
  Map<String, double> get readabilityMetrics {
    if (_readabilityMetrics is EqualUnmodifiableMapView)
      return _readabilityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_readabilityMetrics);
  }

  @override
  final DateTime dateProcessed;
  @override
  final String nlpModel;
  @override
  final double confidence;

  @override
  String toString() {
    return 'NLPEntity(bookId: $bookId, title: $title, author: $author, sentiments: $sentiments, entities: $entities, keywords: $keywords, topics: $topics, languageComplexity: $languageComplexity, languageFeatures: $languageFeatures, readabilityMetrics: $readabilityMetrics, dateProcessed: $dateProcessed, nlpModel: $nlpModel, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NLPEntityImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality()
                .equals(other._sentiments, _sentiments) &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.languageComplexity, languageComplexity) ||
                other.languageComplexity == languageComplexity) &&
            const DeepCollectionEquality()
                .equals(other._languageFeatures, _languageFeatures) &&
            const DeepCollectionEquality()
                .equals(other._readabilityMetrics, _readabilityMetrics) &&
            (identical(other.dateProcessed, dateProcessed) ||
                other.dateProcessed == dateProcessed) &&
            (identical(other.nlpModel, nlpModel) ||
                other.nlpModel == nlpModel) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      const DeepCollectionEquality().hash(_sentiments),
      const DeepCollectionEquality().hash(_entities),
      const DeepCollectionEquality().hash(_keywords),
      const DeepCollectionEquality().hash(_topics),
      languageComplexity,
      const DeepCollectionEquality().hash(_languageFeatures),
      const DeepCollectionEquality().hash(_readabilityMetrics),
      dateProcessed,
      nlpModel,
      confidence);

  /// Create a copy of NLPEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NLPEntityImplCopyWith<_$NLPEntityImpl> get copyWith =>
      __$$NLPEntityImplCopyWithImpl<_$NLPEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NLPEntityImplToJson(
      this,
    );
  }
}

abstract class _NLPEntity implements NLPEntity {
  const factory _NLPEntity(
      {required final String bookId,
      required final String title,
      required final String author,
      required final List<SentimentEntity> sentiments,
      required final List<EntityEntity> entities,
      required final List<KeywordEntity> keywords,
      required final List<TopicEntity> topics,
      required final LanguageComplexityEntity languageComplexity,
      required final List<String> languageFeatures,
      required final Map<String, double> readabilityMetrics,
      required final DateTime dateProcessed,
      required final String nlpModel,
      required final double confidence}) = _$NLPEntityImpl;

  factory _NLPEntity.fromJson(Map<String, dynamic> json) =
      _$NLPEntityImpl.fromJson;

  @override
  String get bookId;
  @override
  String get title;
  @override
  String get author;
  @override
  List<SentimentEntity> get sentiments;
  @override
  List<EntityEntity> get entities;
  @override
  List<KeywordEntity> get keywords;
  @override
  List<TopicEntity> get topics;
  @override
  LanguageComplexityEntity get languageComplexity;
  @override
  List<String> get languageFeatures;
  @override
  Map<String, double> get readabilityMetrics;
  @override
  DateTime get dateProcessed;
  @override
  String get nlpModel;
  @override
  double get confidence;

  /// Create a copy of NLPEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NLPEntityImplCopyWith<_$NLPEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentimentEntity _$SentimentEntityFromJson(Map<String, dynamic> json) {
  return _SentimentEntity.fromJson(json);
}

/// @nodoc
mixin _$SentimentEntity {
  String get text => throw _privateConstructorUsedError;
  SentimentType get type => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  String get context => throw _privateConstructorUsedError;
  int get chapter => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;

  /// Serializes this SentimentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentimentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentimentEntityCopyWith<SentimentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentimentEntityCopyWith<$Res> {
  factory $SentimentEntityCopyWith(
          SentimentEntity value, $Res Function(SentimentEntity) then) =
      _$SentimentEntityCopyWithImpl<$Res, SentimentEntity>;
  @useResult
  $Res call(
      {String text,
      SentimentType type,
      double score,
      String context,
      int chapter,
      List<String> keywords});
}

/// @nodoc
class _$SentimentEntityCopyWithImpl<$Res, $Val extends SentimentEntity>
    implements $SentimentEntityCopyWith<$Res> {
  _$SentimentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentimentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? score = null,
    Object? context = null,
    Object? chapter = null,
    Object? keywords = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SentimentType,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentimentEntityImplCopyWith<$Res>
    implements $SentimentEntityCopyWith<$Res> {
  factory _$$SentimentEntityImplCopyWith(_$SentimentEntityImpl value,
          $Res Function(_$SentimentEntityImpl) then) =
      __$$SentimentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      SentimentType type,
      double score,
      String context,
      int chapter,
      List<String> keywords});
}

/// @nodoc
class __$$SentimentEntityImplCopyWithImpl<$Res>
    extends _$SentimentEntityCopyWithImpl<$Res, _$SentimentEntityImpl>
    implements _$$SentimentEntityImplCopyWith<$Res> {
  __$$SentimentEntityImplCopyWithImpl(
      _$SentimentEntityImpl _value, $Res Function(_$SentimentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentimentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? score = null,
    Object? context = null,
    Object? chapter = null,
    Object? keywords = null,
  }) {
    return _then(_$SentimentEntityImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SentimentType,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentimentEntityImpl implements _SentimentEntity {
  const _$SentimentEntityImpl(
      {required this.text,
      required this.type,
      required this.score,
      required this.context,
      required this.chapter,
      required final List<String> keywords})
      : _keywords = keywords;

  factory _$SentimentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentimentEntityImplFromJson(json);

  @override
  final String text;
  @override
  final SentimentType type;
  @override
  final double score;
  @override
  final String context;
  @override
  final int chapter;
  final List<String> _keywords;
  @override
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  String toString() {
    return 'SentimentEntity(text: $text, type: $type, score: $score, context: $context, chapter: $chapter, keywords: $keywords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentimentEntityImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, type, score, context,
      chapter, const DeepCollectionEquality().hash(_keywords));

  /// Create a copy of SentimentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentimentEntityImplCopyWith<_$SentimentEntityImpl> get copyWith =>
      __$$SentimentEntityImplCopyWithImpl<_$SentimentEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentimentEntityImplToJson(
      this,
    );
  }
}

abstract class _SentimentEntity implements SentimentEntity {
  const factory _SentimentEntity(
      {required final String text,
      required final SentimentType type,
      required final double score,
      required final String context,
      required final int chapter,
      required final List<String> keywords}) = _$SentimentEntityImpl;

  factory _SentimentEntity.fromJson(Map<String, dynamic> json) =
      _$SentimentEntityImpl.fromJson;

  @override
  String get text;
  @override
  SentimentType get type;
  @override
  double get score;
  @override
  String get context;
  @override
  int get chapter;
  @override
  List<String> get keywords;

  /// Create a copy of SentimentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentimentEntityImplCopyWith<_$SentimentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityEntity _$EntityEntityFromJson(Map<String, dynamic> json) {
  return _EntityEntity.fromJson(json);
}

/// @nodoc
mixin _$EntityEntity {
  String get text => throw _privateConstructorUsedError;
  EntityType get type => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get synonyms => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  List<int> get occurrences => throw _privateConstructorUsedError;

  /// Serializes this EntityEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityEntityCopyWith<EntityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityEntityCopyWith<$Res> {
  factory $EntityEntityCopyWith(
          EntityEntity value, $Res Function(EntityEntity) then) =
      _$EntityEntityCopyWithImpl<$Res, EntityEntity>;
  @useResult
  $Res call(
      {String text,
      EntityType type,
      double confidence,
      String description,
      List<String> synonyms,
      int frequency,
      List<int> occurrences});
}

/// @nodoc
class _$EntityEntityCopyWithImpl<$Res, $Val extends EntityEntity>
    implements $EntityEntityCopyWith<$Res> {
  _$EntityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? confidence = null,
    Object? description = null,
    Object? synonyms = null,
    Object? frequency = null,
    Object? occurrences = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntityType,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      occurrences: null == occurrences
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityEntityImplCopyWith<$Res>
    implements $EntityEntityCopyWith<$Res> {
  factory _$$EntityEntityImplCopyWith(
          _$EntityEntityImpl value, $Res Function(_$EntityEntityImpl) then) =
      __$$EntityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      EntityType type,
      double confidence,
      String description,
      List<String> synonyms,
      int frequency,
      List<int> occurrences});
}

/// @nodoc
class __$$EntityEntityImplCopyWithImpl<$Res>
    extends _$EntityEntityCopyWithImpl<$Res, _$EntityEntityImpl>
    implements _$$EntityEntityImplCopyWith<$Res> {
  __$$EntityEntityImplCopyWithImpl(
      _$EntityEntityImpl _value, $Res Function(_$EntityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? confidence = null,
    Object? description = null,
    Object? synonyms = null,
    Object? frequency = null,
    Object? occurrences = null,
  }) {
    return _then(_$EntityEntityImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntityType,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      occurrences: null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityEntityImpl implements _EntityEntity {
  const _$EntityEntityImpl(
      {required this.text,
      required this.type,
      required this.confidence,
      required this.description,
      required final List<String> synonyms,
      required this.frequency,
      required final List<int> occurrences})
      : _synonyms = synonyms,
        _occurrences = occurrences;

  factory _$EntityEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityEntityImplFromJson(json);

  @override
  final String text;
  @override
  final EntityType type;
  @override
  final double confidence;
  @override
  final String description;
  final List<String> _synonyms;
  @override
  List<String> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  @override
  final int frequency;
  final List<int> _occurrences;
  @override
  List<int> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  String toString() {
    return 'EntityEntity(text: $text, type: $type, confidence: $confidence, description: $description, synonyms: $synonyms, frequency: $frequency, occurrences: $occurrences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityEntityImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      type,
      confidence,
      description,
      const DeepCollectionEquality().hash(_synonyms),
      frequency,
      const DeepCollectionEquality().hash(_occurrences));

  /// Create a copy of EntityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityEntityImplCopyWith<_$EntityEntityImpl> get copyWith =>
      __$$EntityEntityImplCopyWithImpl<_$EntityEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityEntityImplToJson(
      this,
    );
  }
}

abstract class _EntityEntity implements EntityEntity {
  const factory _EntityEntity(
      {required final String text,
      required final EntityType type,
      required final double confidence,
      required final String description,
      required final List<String> synonyms,
      required final int frequency,
      required final List<int> occurrences}) = _$EntityEntityImpl;

  factory _EntityEntity.fromJson(Map<String, dynamic> json) =
      _$EntityEntityImpl.fromJson;

  @override
  String get text;
  @override
  EntityType get type;
  @override
  double get confidence;
  @override
  String get description;
  @override
  List<String> get synonyms;
  @override
  int get frequency;
  @override
  List<int> get occurrences;

  /// Create a copy of EntityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityEntityImplCopyWith<_$EntityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeywordEntity _$KeywordEntityFromJson(Map<String, dynamic> json) {
  return _KeywordEntity.fromJson(json);
}

/// @nodoc
mixin _$KeywordEntity {
  String get text => throw _privateConstructorUsedError;
  double get importance => throw _privateConstructorUsedError;
  List<String> get relatedKeywords => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  List<int> get occurrences => throw _privateConstructorUsedError;
  String get context => throw _privateConstructorUsedError;

  /// Serializes this KeywordEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeywordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeywordEntityCopyWith<KeywordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordEntityCopyWith<$Res> {
  factory $KeywordEntityCopyWith(
          KeywordEntity value, $Res Function(KeywordEntity) then) =
      _$KeywordEntityCopyWithImpl<$Res, KeywordEntity>;
  @useResult
  $Res call(
      {String text,
      double importance,
      List<String> relatedKeywords,
      int frequency,
      List<int> occurrences,
      String context});
}

/// @nodoc
class _$KeywordEntityCopyWithImpl<$Res, $Val extends KeywordEntity>
    implements $KeywordEntityCopyWith<$Res> {
  _$KeywordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeywordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? importance = null,
    Object? relatedKeywords = null,
    Object? frequency = null,
    Object? occurrences = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double,
      relatedKeywords: null == relatedKeywords
          ? _value.relatedKeywords
          : relatedKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      occurrences: null == occurrences
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<int>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeywordEntityImplCopyWith<$Res>
    implements $KeywordEntityCopyWith<$Res> {
  factory _$$KeywordEntityImplCopyWith(
          _$KeywordEntityImpl value, $Res Function(_$KeywordEntityImpl) then) =
      __$$KeywordEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      double importance,
      List<String> relatedKeywords,
      int frequency,
      List<int> occurrences,
      String context});
}

/// @nodoc
class __$$KeywordEntityImplCopyWithImpl<$Res>
    extends _$KeywordEntityCopyWithImpl<$Res, _$KeywordEntityImpl>
    implements _$$KeywordEntityImplCopyWith<$Res> {
  __$$KeywordEntityImplCopyWithImpl(
      _$KeywordEntityImpl _value, $Res Function(_$KeywordEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeywordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? importance = null,
    Object? relatedKeywords = null,
    Object? frequency = null,
    Object? occurrences = null,
    Object? context = null,
  }) {
    return _then(_$KeywordEntityImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double,
      relatedKeywords: null == relatedKeywords
          ? _value._relatedKeywords
          : relatedKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      occurrences: null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<int>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeywordEntityImpl implements _KeywordEntity {
  const _$KeywordEntityImpl(
      {required this.text,
      required this.importance,
      required final List<String> relatedKeywords,
      required this.frequency,
      required final List<int> occurrences,
      required this.context})
      : _relatedKeywords = relatedKeywords,
        _occurrences = occurrences;

  factory _$KeywordEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeywordEntityImplFromJson(json);

  @override
  final String text;
  @override
  final double importance;
  final List<String> _relatedKeywords;
  @override
  List<String> get relatedKeywords {
    if (_relatedKeywords is EqualUnmodifiableListView) return _relatedKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedKeywords);
  }

  @override
  final int frequency;
  final List<int> _occurrences;
  @override
  List<int> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  final String context;

  @override
  String toString() {
    return 'KeywordEntity(text: $text, importance: $importance, relatedKeywords: $relatedKeywords, frequency: $frequency, occurrences: $occurrences, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordEntityImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            const DeepCollectionEquality()
                .equals(other._relatedKeywords, _relatedKeywords) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      importance,
      const DeepCollectionEquality().hash(_relatedKeywords),
      frequency,
      const DeepCollectionEquality().hash(_occurrences),
      context);

  /// Create a copy of KeywordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeywordEntityImplCopyWith<_$KeywordEntityImpl> get copyWith =>
      __$$KeywordEntityImplCopyWithImpl<_$KeywordEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeywordEntityImplToJson(
      this,
    );
  }
}

abstract class _KeywordEntity implements KeywordEntity {
  const factory _KeywordEntity(
      {required final String text,
      required final double importance,
      required final List<String> relatedKeywords,
      required final int frequency,
      required final List<int> occurrences,
      required final String context}) = _$KeywordEntityImpl;

  factory _KeywordEntity.fromJson(Map<String, dynamic> json) =
      _$KeywordEntityImpl.fromJson;

  @override
  String get text;
  @override
  double get importance;
  @override
  List<String> get relatedKeywords;
  @override
  int get frequency;
  @override
  List<int> get occurrences;
  @override
  String get context;

  /// Create a copy of KeywordEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeywordEntityImplCopyWith<_$KeywordEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicEntity _$TopicEntityFromJson(Map<String, dynamic> json) {
  return _TopicEntity.fromJson(json);
}

/// @nodoc
mixin _$TopicEntity {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get prominence => throw _privateConstructorUsedError;
  List<String> get subtopics => throw _privateConstructorUsedError;
  List<String> get relatedTopics => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this TopicEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicEntityCopyWith<TopicEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicEntityCopyWith<$Res> {
  factory $TopicEntityCopyWith(
          TopicEntity value, $Res Function(TopicEntity) then) =
      _$TopicEntityCopyWithImpl<$Res, TopicEntity>;
  @useResult
  $Res call(
      {String name,
      String description,
      double prominence,
      List<String> subtopics,
      List<String> relatedTopics,
      List<String> keywords,
      String category});
}

/// @nodoc
class _$TopicEntityCopyWithImpl<$Res, $Val extends TopicEntity>
    implements $TopicEntityCopyWith<$Res> {
  _$TopicEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? prominence = null,
    Object? subtopics = null,
    Object? relatedTopics = null,
    Object? keywords = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prominence: null == prominence
          ? _value.prominence
          : prominence // ignore: cast_nullable_to_non_nullable
              as double,
      subtopics: null == subtopics
          ? _value.subtopics
          : subtopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedTopics: null == relatedTopics
          ? _value.relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicEntityImplCopyWith<$Res>
    implements $TopicEntityCopyWith<$Res> {
  factory _$$TopicEntityImplCopyWith(
          _$TopicEntityImpl value, $Res Function(_$TopicEntityImpl) then) =
      __$$TopicEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      double prominence,
      List<String> subtopics,
      List<String> relatedTopics,
      List<String> keywords,
      String category});
}

/// @nodoc
class __$$TopicEntityImplCopyWithImpl<$Res>
    extends _$TopicEntityCopyWithImpl<$Res, _$TopicEntityImpl>
    implements _$$TopicEntityImplCopyWith<$Res> {
  __$$TopicEntityImplCopyWithImpl(
      _$TopicEntityImpl _value, $Res Function(_$TopicEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? prominence = null,
    Object? subtopics = null,
    Object? relatedTopics = null,
    Object? keywords = null,
    Object? category = null,
  }) {
    return _then(_$TopicEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      prominence: null == prominence
          ? _value.prominence
          : prominence // ignore: cast_nullable_to_non_nullable
              as double,
      subtopics: null == subtopics
          ? _value._subtopics
          : subtopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedTopics: null == relatedTopics
          ? _value._relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicEntityImpl implements _TopicEntity {
  const _$TopicEntityImpl(
      {required this.name,
      required this.description,
      required this.prominence,
      required final List<String> subtopics,
      required final List<String> relatedTopics,
      required final List<String> keywords,
      required this.category})
      : _subtopics = subtopics,
        _relatedTopics = relatedTopics,
        _keywords = keywords;

  factory _$TopicEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final double prominence;
  final List<String> _subtopics;
  @override
  List<String> get subtopics {
    if (_subtopics is EqualUnmodifiableListView) return _subtopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtopics);
  }

  final List<String> _relatedTopics;
  @override
  List<String> get relatedTopics {
    if (_relatedTopics is EqualUnmodifiableListView) return _relatedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedTopics);
  }

  final List<String> _keywords;
  @override
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  final String category;

  @override
  String toString() {
    return 'TopicEntity(name: $name, description: $description, prominence: $prominence, subtopics: $subtopics, relatedTopics: $relatedTopics, keywords: $keywords, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.prominence, prominence) ||
                other.prominence == prominence) &&
            const DeepCollectionEquality()
                .equals(other._subtopics, _subtopics) &&
            const DeepCollectionEquality()
                .equals(other._relatedTopics, _relatedTopics) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      prominence,
      const DeepCollectionEquality().hash(_subtopics),
      const DeepCollectionEquality().hash(_relatedTopics),
      const DeepCollectionEquality().hash(_keywords),
      category);

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicEntityImplCopyWith<_$TopicEntityImpl> get copyWith =>
      __$$TopicEntityImplCopyWithImpl<_$TopicEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicEntityImplToJson(
      this,
    );
  }
}

abstract class _TopicEntity implements TopicEntity {
  const factory _TopicEntity(
      {required final String name,
      required final String description,
      required final double prominence,
      required final List<String> subtopics,
      required final List<String> relatedTopics,
      required final List<String> keywords,
      required final String category}) = _$TopicEntityImpl;

  factory _TopicEntity.fromJson(Map<String, dynamic> json) =
      _$TopicEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  double get prominence;
  @override
  List<String> get subtopics;
  @override
  List<String> get relatedTopics;
  @override
  List<String> get keywords;
  @override
  String get category;

  /// Create a copy of TopicEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicEntityImplCopyWith<_$TopicEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageComplexityEntity _$LanguageComplexityEntityFromJson(
    Map<String, dynamic> json) {
  return _LanguageComplexityEntity.fromJson(json);
}

/// @nodoc
mixin _$LanguageComplexityEntity {
  double get overallComplexity => throw _privateConstructorUsedError;
  double get vocabularyComplexity => throw _privateConstructorUsedError;
  double get sentenceComplexity => throw _privateConstructorUsedError;
  double get structuralComplexity => throw _privateConstructorUsedError;
  Map<String, double> get complexityFactors =>
      throw _privateConstructorUsedError;
  List<String> get complexityFeatures => throw _privateConstructorUsedError;
  String get readabilityLevel => throw _privateConstructorUsedError;
  int get estimatedAgeGroup => throw _privateConstructorUsedError;

  /// Serializes this LanguageComplexityEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageComplexityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageComplexityEntityCopyWith<LanguageComplexityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageComplexityEntityCopyWith<$Res> {
  factory $LanguageComplexityEntityCopyWith(LanguageComplexityEntity value,
          $Res Function(LanguageComplexityEntity) then) =
      _$LanguageComplexityEntityCopyWithImpl<$Res, LanguageComplexityEntity>;
  @useResult
  $Res call(
      {double overallComplexity,
      double vocabularyComplexity,
      double sentenceComplexity,
      double structuralComplexity,
      Map<String, double> complexityFactors,
      List<String> complexityFeatures,
      String readabilityLevel,
      int estimatedAgeGroup});
}

/// @nodoc
class _$LanguageComplexityEntityCopyWithImpl<$Res,
        $Val extends LanguageComplexityEntity>
    implements $LanguageComplexityEntityCopyWith<$Res> {
  _$LanguageComplexityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageComplexityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallComplexity = null,
    Object? vocabularyComplexity = null,
    Object? sentenceComplexity = null,
    Object? structuralComplexity = null,
    Object? complexityFactors = null,
    Object? complexityFeatures = null,
    Object? readabilityLevel = null,
    Object? estimatedAgeGroup = null,
  }) {
    return _then(_value.copyWith(
      overallComplexity: null == overallComplexity
          ? _value.overallComplexity
          : overallComplexity // ignore: cast_nullable_to_non_nullable
              as double,
      vocabularyComplexity: null == vocabularyComplexity
          ? _value.vocabularyComplexity
          : vocabularyComplexity // ignore: cast_nullable_to_non_nullable
              as double,
      sentenceComplexity: null == sentenceComplexity
          ? _value.sentenceComplexity
          : sentenceComplexity // ignore: cast_nullable_to_non_nullable
              as double,
      structuralComplexity: null == structuralComplexity
          ? _value.structuralComplexity
          : structuralComplexity // ignore: cast_nullable_to_non_nullable
              as double,
      complexityFactors: null == complexityFactors
          ? _value.complexityFactors
          : complexityFactors // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      complexityFeatures: null == complexityFeatures
          ? _value.complexityFeatures
          : complexityFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readabilityLevel: null == readabilityLevel
          ? _value.readabilityLevel
          : readabilityLevel // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedAgeGroup: null == estimatedAgeGroup
          ? _value.estimatedAgeGroup
          : estimatedAgeGroup // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageComplexityEntityImplCopyWith<$Res>
    implements $LanguageComplexityEntityCopyWith<$Res> {
  factory _$$LanguageComplexityEntityImplCopyWith(
          _$LanguageComplexityEntityImpl value,
          $Res Function(_$LanguageComplexityEntityImpl) then) =
      __$$LanguageComplexityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double overallComplexity,
      double vocabularyComplexity,
      double sentenceComplexity,
      double structuralComplexity,
      Map<String, double> complexityFactors,
      List<String> complexityFeatures,
      String readabilityLevel,
      int estimatedAgeGroup});
}

/// @nodoc
class __$$LanguageComplexityEntityImplCopyWithImpl<$Res>
    extends _$LanguageComplexityEntityCopyWithImpl<$Res,
        _$LanguageComplexityEntityImpl>
    implements _$$LanguageComplexityEntityImplCopyWith<$Res> {
  __$$LanguageComplexityEntityImplCopyWithImpl(
      _$LanguageComplexityEntityImpl _value,
      $Res Function(_$LanguageComplexityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageComplexityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallComplexity = null,
    Object? vocabularyComplexity = null,
    Object? sentenceComplexity = null,
    Object? structuralComplexity = null,
    Object? complexityFactors = null,
    Object? complexityFeatures = null,
    Object? readabilityLevel = null,
    Object? estimatedAgeGroup = null,
  }) {
    return _then(_$LanguageComplexityEntityImpl(
      overallComplexity: null == overallComplexity
          ? _value.overallComplexity
          : overallComplexity // ignore: cast_nullable_to_non_nullable
              as double,
      vocabularyComplexity: null == vocabularyComplexity
          ? _value.vocabularyComplexity
          : vocabularyComplexity // ignore: cast_nullable_to_non_nullable
              as double,
      sentenceComplexity: null == sentenceComplexity
          ? _value.sentenceComplexity
          : sentenceComplexity // ignore: cast_nullable_to_non_nullable
              as double,
      structuralComplexity: null == structuralComplexity
          ? _value.structuralComplexity
          : structuralComplexity // ignore: cast_nullable_to_non_nullable
              as double,
      complexityFactors: null == complexityFactors
          ? _value._complexityFactors
          : complexityFactors // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      complexityFeatures: null == complexityFeatures
          ? _value._complexityFeatures
          : complexityFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readabilityLevel: null == readabilityLevel
          ? _value.readabilityLevel
          : readabilityLevel // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedAgeGroup: null == estimatedAgeGroup
          ? _value.estimatedAgeGroup
          : estimatedAgeGroup // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageComplexityEntityImpl implements _LanguageComplexityEntity {
  const _$LanguageComplexityEntityImpl(
      {required this.overallComplexity,
      required this.vocabularyComplexity,
      required this.sentenceComplexity,
      required this.structuralComplexity,
      required final Map<String, double> complexityFactors,
      required final List<String> complexityFeatures,
      required this.readabilityLevel,
      required this.estimatedAgeGroup})
      : _complexityFactors = complexityFactors,
        _complexityFeatures = complexityFeatures;

  factory _$LanguageComplexityEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageComplexityEntityImplFromJson(json);

  @override
  final double overallComplexity;
  @override
  final double vocabularyComplexity;
  @override
  final double sentenceComplexity;
  @override
  final double structuralComplexity;
  final Map<String, double> _complexityFactors;
  @override
  Map<String, double> get complexityFactors {
    if (_complexityFactors is EqualUnmodifiableMapView)
      return _complexityFactors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_complexityFactors);
  }

  final List<String> _complexityFeatures;
  @override
  List<String> get complexityFeatures {
    if (_complexityFeatures is EqualUnmodifiableListView)
      return _complexityFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_complexityFeatures);
  }

  @override
  final String readabilityLevel;
  @override
  final int estimatedAgeGroup;

  @override
  String toString() {
    return 'LanguageComplexityEntity(overallComplexity: $overallComplexity, vocabularyComplexity: $vocabularyComplexity, sentenceComplexity: $sentenceComplexity, structuralComplexity: $structuralComplexity, complexityFactors: $complexityFactors, complexityFeatures: $complexityFeatures, readabilityLevel: $readabilityLevel, estimatedAgeGroup: $estimatedAgeGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageComplexityEntityImpl &&
            (identical(other.overallComplexity, overallComplexity) ||
                other.overallComplexity == overallComplexity) &&
            (identical(other.vocabularyComplexity, vocabularyComplexity) ||
                other.vocabularyComplexity == vocabularyComplexity) &&
            (identical(other.sentenceComplexity, sentenceComplexity) ||
                other.sentenceComplexity == sentenceComplexity) &&
            (identical(other.structuralComplexity, structuralComplexity) ||
                other.structuralComplexity == structuralComplexity) &&
            const DeepCollectionEquality()
                .equals(other._complexityFactors, _complexityFactors) &&
            const DeepCollectionEquality()
                .equals(other._complexityFeatures, _complexityFeatures) &&
            (identical(other.readabilityLevel, readabilityLevel) ||
                other.readabilityLevel == readabilityLevel) &&
            (identical(other.estimatedAgeGroup, estimatedAgeGroup) ||
                other.estimatedAgeGroup == estimatedAgeGroup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overallComplexity,
      vocabularyComplexity,
      sentenceComplexity,
      structuralComplexity,
      const DeepCollectionEquality().hash(_complexityFactors),
      const DeepCollectionEquality().hash(_complexityFeatures),
      readabilityLevel,
      estimatedAgeGroup);

  /// Create a copy of LanguageComplexityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageComplexityEntityImplCopyWith<_$LanguageComplexityEntityImpl>
      get copyWith => __$$LanguageComplexityEntityImplCopyWithImpl<
          _$LanguageComplexityEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageComplexityEntityImplToJson(
      this,
    );
  }
}

abstract class _LanguageComplexityEntity implements LanguageComplexityEntity {
  const factory _LanguageComplexityEntity(
      {required final double overallComplexity,
      required final double vocabularyComplexity,
      required final double sentenceComplexity,
      required final double structuralComplexity,
      required final Map<String, double> complexityFactors,
      required final List<String> complexityFeatures,
      required final String readabilityLevel,
      required final int estimatedAgeGroup}) = _$LanguageComplexityEntityImpl;

  factory _LanguageComplexityEntity.fromJson(Map<String, dynamic> json) =
      _$LanguageComplexityEntityImpl.fromJson;

  @override
  double get overallComplexity;
  @override
  double get vocabularyComplexity;
  @override
  double get sentenceComplexity;
  @override
  double get structuralComplexity;
  @override
  Map<String, double> get complexityFactors;
  @override
  List<String> get complexityFeatures;
  @override
  String get readabilityLevel;
  @override
  int get estimatedAgeGroup;

  /// Create a copy of LanguageComplexityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageComplexityEntityImplCopyWith<_$LanguageComplexityEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
