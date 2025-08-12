// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_analytics_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadingAnalyticsEntity _$ReadingAnalyticsEntityFromJson(
    Map<String, dynamic> json) {
  return _ReadingAnalyticsEntity.fromJson(json);
}

/// @nodoc
mixin _$ReadingAnalyticsEntity {
  String get userId => throw _privateConstructorUsedError;
  ReadingStatsEntity get overallStats => throw _privateConstructorUsedError;
  List<GenreAnalyticsEntity> get genreAnalytics =>
      throw _privateConstructorUsedError;
  List<TimeAnalyticsEntity> get timeAnalytics =>
      throw _privateConstructorUsedError;
  List<BookAnalyticsEntity> get bookAnalytics =>
      throw _privateConstructorUsedError;
  List<GoalAnalyticsEntity> get goalAnalytics =>
      throw _privateConstructorUsedError;
  List<RecommendationEntity> get recommendations =>
      throw _privateConstructorUsedError;
  List<InsightEntity> get insights => throw _privateConstructorUsedError;
  List<AchievementEntity> get achievements =>
      throw _privateConstructorUsedError;
  List<ReadingStreakEntity> get readingStreaks =>
      throw _privateConstructorUsedError;
  DateTime get dateGenerated => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this ReadingAnalyticsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingAnalyticsEntityCopyWith<ReadingAnalyticsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingAnalyticsEntityCopyWith<$Res> {
  factory $ReadingAnalyticsEntityCopyWith(ReadingAnalyticsEntity value,
          $Res Function(ReadingAnalyticsEntity) then) =
      _$ReadingAnalyticsEntityCopyWithImpl<$Res, ReadingAnalyticsEntity>;
  @useResult
  $Res call(
      {String userId,
      ReadingStatsEntity overallStats,
      List<GenreAnalyticsEntity> genreAnalytics,
      List<TimeAnalyticsEntity> timeAnalytics,
      List<BookAnalyticsEntity> bookAnalytics,
      List<GoalAnalyticsEntity> goalAnalytics,
      List<RecommendationEntity> recommendations,
      List<InsightEntity> insights,
      List<AchievementEntity> achievements,
      List<ReadingStreakEntity> readingStreaks,
      DateTime dateGenerated,
      DateTime lastUpdated});

  $ReadingStatsEntityCopyWith<$Res> get overallStats;
}

/// @nodoc
class _$ReadingAnalyticsEntityCopyWithImpl<$Res,
        $Val extends ReadingAnalyticsEntity>
    implements $ReadingAnalyticsEntityCopyWith<$Res> {
  _$ReadingAnalyticsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? overallStats = null,
    Object? genreAnalytics = null,
    Object? timeAnalytics = null,
    Object? bookAnalytics = null,
    Object? goalAnalytics = null,
    Object? recommendations = null,
    Object? insights = null,
    Object? achievements = null,
    Object? readingStreaks = null,
    Object? dateGenerated = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      overallStats: null == overallStats
          ? _value.overallStats
          : overallStats // ignore: cast_nullable_to_non_nullable
              as ReadingStatsEntity,
      genreAnalytics: null == genreAnalytics
          ? _value.genreAnalytics
          : genreAnalytics // ignore: cast_nullable_to_non_nullable
              as List<GenreAnalyticsEntity>,
      timeAnalytics: null == timeAnalytics
          ? _value.timeAnalytics
          : timeAnalytics // ignore: cast_nullable_to_non_nullable
              as List<TimeAnalyticsEntity>,
      bookAnalytics: null == bookAnalytics
          ? _value.bookAnalytics
          : bookAnalytics // ignore: cast_nullable_to_non_nullable
              as List<BookAnalyticsEntity>,
      goalAnalytics: null == goalAnalytics
          ? _value.goalAnalytics
          : goalAnalytics // ignore: cast_nullable_to_non_nullable
              as List<GoalAnalyticsEntity>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<RecommendationEntity>,
      insights: null == insights
          ? _value.insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<InsightEntity>,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<AchievementEntity>,
      readingStreaks: null == readingStreaks
          ? _value.readingStreaks
          : readingStreaks // ignore: cast_nullable_to_non_nullable
              as List<ReadingStreakEntity>,
      dateGenerated: null == dateGenerated
          ? _value.dateGenerated
          : dateGenerated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ReadingAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadingStatsEntityCopyWith<$Res> get overallStats {
    return $ReadingStatsEntityCopyWith<$Res>(_value.overallStats, (value) {
      return _then(_value.copyWith(overallStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReadingAnalyticsEntityImplCopyWith<$Res>
    implements $ReadingAnalyticsEntityCopyWith<$Res> {
  factory _$$ReadingAnalyticsEntityImplCopyWith(
          _$ReadingAnalyticsEntityImpl value,
          $Res Function(_$ReadingAnalyticsEntityImpl) then) =
      __$$ReadingAnalyticsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      ReadingStatsEntity overallStats,
      List<GenreAnalyticsEntity> genreAnalytics,
      List<TimeAnalyticsEntity> timeAnalytics,
      List<BookAnalyticsEntity> bookAnalytics,
      List<GoalAnalyticsEntity> goalAnalytics,
      List<RecommendationEntity> recommendations,
      List<InsightEntity> insights,
      List<AchievementEntity> achievements,
      List<ReadingStreakEntity> readingStreaks,
      DateTime dateGenerated,
      DateTime lastUpdated});

  @override
  $ReadingStatsEntityCopyWith<$Res> get overallStats;
}

/// @nodoc
class __$$ReadingAnalyticsEntityImplCopyWithImpl<$Res>
    extends _$ReadingAnalyticsEntityCopyWithImpl<$Res,
        _$ReadingAnalyticsEntityImpl>
    implements _$$ReadingAnalyticsEntityImplCopyWith<$Res> {
  __$$ReadingAnalyticsEntityImplCopyWithImpl(
      _$ReadingAnalyticsEntityImpl _value,
      $Res Function(_$ReadingAnalyticsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? overallStats = null,
    Object? genreAnalytics = null,
    Object? timeAnalytics = null,
    Object? bookAnalytics = null,
    Object? goalAnalytics = null,
    Object? recommendations = null,
    Object? insights = null,
    Object? achievements = null,
    Object? readingStreaks = null,
    Object? dateGenerated = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$ReadingAnalyticsEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      overallStats: null == overallStats
          ? _value.overallStats
          : overallStats // ignore: cast_nullable_to_non_nullable
              as ReadingStatsEntity,
      genreAnalytics: null == genreAnalytics
          ? _value._genreAnalytics
          : genreAnalytics // ignore: cast_nullable_to_non_nullable
              as List<GenreAnalyticsEntity>,
      timeAnalytics: null == timeAnalytics
          ? _value._timeAnalytics
          : timeAnalytics // ignore: cast_nullable_to_non_nullable
              as List<TimeAnalyticsEntity>,
      bookAnalytics: null == bookAnalytics
          ? _value._bookAnalytics
          : bookAnalytics // ignore: cast_nullable_to_non_nullable
              as List<BookAnalyticsEntity>,
      goalAnalytics: null == goalAnalytics
          ? _value._goalAnalytics
          : goalAnalytics // ignore: cast_nullable_to_non_nullable
              as List<GoalAnalyticsEntity>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<RecommendationEntity>,
      insights: null == insights
          ? _value._insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<InsightEntity>,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<AchievementEntity>,
      readingStreaks: null == readingStreaks
          ? _value._readingStreaks
          : readingStreaks // ignore: cast_nullable_to_non_nullable
              as List<ReadingStreakEntity>,
      dateGenerated: null == dateGenerated
          ? _value.dateGenerated
          : dateGenerated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingAnalyticsEntityImpl implements _ReadingAnalyticsEntity {
  const _$ReadingAnalyticsEntityImpl(
      {required this.userId,
      required this.overallStats,
      required final List<GenreAnalyticsEntity> genreAnalytics,
      required final List<TimeAnalyticsEntity> timeAnalytics,
      required final List<BookAnalyticsEntity> bookAnalytics,
      required final List<GoalAnalyticsEntity> goalAnalytics,
      required final List<RecommendationEntity> recommendations,
      required final List<InsightEntity> insights,
      required final List<AchievementEntity> achievements,
      required final List<ReadingStreakEntity> readingStreaks,
      required this.dateGenerated,
      required this.lastUpdated})
      : _genreAnalytics = genreAnalytics,
        _timeAnalytics = timeAnalytics,
        _bookAnalytics = bookAnalytics,
        _goalAnalytics = goalAnalytics,
        _recommendations = recommendations,
        _insights = insights,
        _achievements = achievements,
        _readingStreaks = readingStreaks;

  factory _$ReadingAnalyticsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingAnalyticsEntityImplFromJson(json);

  @override
  final String userId;
  @override
  final ReadingStatsEntity overallStats;
  final List<GenreAnalyticsEntity> _genreAnalytics;
  @override
  List<GenreAnalyticsEntity> get genreAnalytics {
    if (_genreAnalytics is EqualUnmodifiableListView) return _genreAnalytics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreAnalytics);
  }

  final List<TimeAnalyticsEntity> _timeAnalytics;
  @override
  List<TimeAnalyticsEntity> get timeAnalytics {
    if (_timeAnalytics is EqualUnmodifiableListView) return _timeAnalytics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeAnalytics);
  }

  final List<BookAnalyticsEntity> _bookAnalytics;
  @override
  List<BookAnalyticsEntity> get bookAnalytics {
    if (_bookAnalytics is EqualUnmodifiableListView) return _bookAnalytics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookAnalytics);
  }

  final List<GoalAnalyticsEntity> _goalAnalytics;
  @override
  List<GoalAnalyticsEntity> get goalAnalytics {
    if (_goalAnalytics is EqualUnmodifiableListView) return _goalAnalytics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goalAnalytics);
  }

  final List<RecommendationEntity> _recommendations;
  @override
  List<RecommendationEntity> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final List<InsightEntity> _insights;
  @override
  List<InsightEntity> get insights {
    if (_insights is EqualUnmodifiableListView) return _insights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insights);
  }

  final List<AchievementEntity> _achievements;
  @override
  List<AchievementEntity> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  final List<ReadingStreakEntity> _readingStreaks;
  @override
  List<ReadingStreakEntity> get readingStreaks {
    if (_readingStreaks is EqualUnmodifiableListView) return _readingStreaks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readingStreaks);
  }

  @override
  final DateTime dateGenerated;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'ReadingAnalyticsEntity(userId: $userId, overallStats: $overallStats, genreAnalytics: $genreAnalytics, timeAnalytics: $timeAnalytics, bookAnalytics: $bookAnalytics, goalAnalytics: $goalAnalytics, recommendations: $recommendations, insights: $insights, achievements: $achievements, readingStreaks: $readingStreaks, dateGenerated: $dateGenerated, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingAnalyticsEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.overallStats, overallStats) ||
                other.overallStats == overallStats) &&
            const DeepCollectionEquality()
                .equals(other._genreAnalytics, _genreAnalytics) &&
            const DeepCollectionEquality()
                .equals(other._timeAnalytics, _timeAnalytics) &&
            const DeepCollectionEquality()
                .equals(other._bookAnalytics, _bookAnalytics) &&
            const DeepCollectionEquality()
                .equals(other._goalAnalytics, _goalAnalytics) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality().equals(other._insights, _insights) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            const DeepCollectionEquality()
                .equals(other._readingStreaks, _readingStreaks) &&
            (identical(other.dateGenerated, dateGenerated) ||
                other.dateGenerated == dateGenerated) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      overallStats,
      const DeepCollectionEquality().hash(_genreAnalytics),
      const DeepCollectionEquality().hash(_timeAnalytics),
      const DeepCollectionEquality().hash(_bookAnalytics),
      const DeepCollectionEquality().hash(_goalAnalytics),
      const DeepCollectionEquality().hash(_recommendations),
      const DeepCollectionEquality().hash(_insights),
      const DeepCollectionEquality().hash(_achievements),
      const DeepCollectionEquality().hash(_readingStreaks),
      dateGenerated,
      lastUpdated);

  /// Create a copy of ReadingAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingAnalyticsEntityImplCopyWith<_$ReadingAnalyticsEntityImpl>
      get copyWith => __$$ReadingAnalyticsEntityImplCopyWithImpl<
          _$ReadingAnalyticsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingAnalyticsEntityImplToJson(
      this,
    );
  }
}

abstract class _ReadingAnalyticsEntity implements ReadingAnalyticsEntity {
  const factory _ReadingAnalyticsEntity(
      {required final String userId,
      required final ReadingStatsEntity overallStats,
      required final List<GenreAnalyticsEntity> genreAnalytics,
      required final List<TimeAnalyticsEntity> timeAnalytics,
      required final List<BookAnalyticsEntity> bookAnalytics,
      required final List<GoalAnalyticsEntity> goalAnalytics,
      required final List<RecommendationEntity> recommendations,
      required final List<InsightEntity> insights,
      required final List<AchievementEntity> achievements,
      required final List<ReadingStreakEntity> readingStreaks,
      required final DateTime dateGenerated,
      required final DateTime lastUpdated}) = _$ReadingAnalyticsEntityImpl;

  factory _ReadingAnalyticsEntity.fromJson(Map<String, dynamic> json) =
      _$ReadingAnalyticsEntityImpl.fromJson;

  @override
  String get userId;
  @override
  ReadingStatsEntity get overallStats;
  @override
  List<GenreAnalyticsEntity> get genreAnalytics;
  @override
  List<TimeAnalyticsEntity> get timeAnalytics;
  @override
  List<BookAnalyticsEntity> get bookAnalytics;
  @override
  List<GoalAnalyticsEntity> get goalAnalytics;
  @override
  List<RecommendationEntity> get recommendations;
  @override
  List<InsightEntity> get insights;
  @override
  List<AchievementEntity> get achievements;
  @override
  List<ReadingStreakEntity> get readingStreaks;
  @override
  DateTime get dateGenerated;
  @override
  DateTime get lastUpdated;

  /// Create a copy of ReadingAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingAnalyticsEntityImplCopyWith<_$ReadingAnalyticsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReadingStatsEntity _$ReadingStatsEntityFromJson(Map<String, dynamic> json) {
  return _ReadingStatsEntity.fromJson(json);
}

/// @nodoc
mixin _$ReadingStatsEntity {
  int get totalBooksRead => throw _privateConstructorUsedError;
  int get totalPagesRead => throw _privateConstructorUsedError;
  int get totalReadingTimeMinutes => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  double get averagePagesPerDay => throw _privateConstructorUsedError;
  double get averageReadingTimePerDay => throw _privateConstructorUsedError;
  int get currentReadingStreak => throw _privateConstructorUsedError;
  int get longestReadingStreak => throw _privateConstructorUsedError;
  int get totalSessions => throw _privateConstructorUsedError;
  double get averageSessionLength => throw _privateConstructorUsedError;
  Map<String, int> get booksByMonth => throw _privateConstructorUsedError;
  Map<String, int> get pagesByMonth => throw _privateConstructorUsedError;
  Map<String, double> get ratingsByMonth => throw _privateConstructorUsedError;

  /// Serializes this ReadingStatsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingStatsEntityCopyWith<ReadingStatsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingStatsEntityCopyWith<$Res> {
  factory $ReadingStatsEntityCopyWith(
          ReadingStatsEntity value, $Res Function(ReadingStatsEntity) then) =
      _$ReadingStatsEntityCopyWithImpl<$Res, ReadingStatsEntity>;
  @useResult
  $Res call(
      {int totalBooksRead,
      int totalPagesRead,
      int totalReadingTimeMinutes,
      double averageRating,
      double averagePagesPerDay,
      double averageReadingTimePerDay,
      int currentReadingStreak,
      int longestReadingStreak,
      int totalSessions,
      double averageSessionLength,
      Map<String, int> booksByMonth,
      Map<String, int> pagesByMonth,
      Map<String, double> ratingsByMonth});
}

/// @nodoc
class _$ReadingStatsEntityCopyWithImpl<$Res, $Val extends ReadingStatsEntity>
    implements $ReadingStatsEntityCopyWith<$Res> {
  _$ReadingStatsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooksRead = null,
    Object? totalPagesRead = null,
    Object? totalReadingTimeMinutes = null,
    Object? averageRating = null,
    Object? averagePagesPerDay = null,
    Object? averageReadingTimePerDay = null,
    Object? currentReadingStreak = null,
    Object? longestReadingStreak = null,
    Object? totalSessions = null,
    Object? averageSessionLength = null,
    Object? booksByMonth = null,
    Object? pagesByMonth = null,
    Object? ratingsByMonth = null,
  }) {
    return _then(_value.copyWith(
      totalBooksRead: null == totalBooksRead
          ? _value.totalBooksRead
          : totalBooksRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesRead: null == totalPagesRead
          ? _value.totalPagesRead
          : totalPagesRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalReadingTimeMinutes: null == totalReadingTimeMinutes
          ? _value.totalReadingTimeMinutes
          : totalReadingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      averagePagesPerDay: null == averagePagesPerDay
          ? _value.averagePagesPerDay
          : averagePagesPerDay // ignore: cast_nullable_to_non_nullable
              as double,
      averageReadingTimePerDay: null == averageReadingTimePerDay
          ? _value.averageReadingTimePerDay
          : averageReadingTimePerDay // ignore: cast_nullable_to_non_nullable
              as double,
      currentReadingStreak: null == currentReadingStreak
          ? _value.currentReadingStreak
          : currentReadingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestReadingStreak: null == longestReadingStreak
          ? _value.longestReadingStreak
          : longestReadingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      averageSessionLength: null == averageSessionLength
          ? _value.averageSessionLength
          : averageSessionLength // ignore: cast_nullable_to_non_nullable
              as double,
      booksByMonth: null == booksByMonth
          ? _value.booksByMonth
          : booksByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      pagesByMonth: null == pagesByMonth
          ? _value.pagesByMonth
          : pagesByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      ratingsByMonth: null == ratingsByMonth
          ? _value.ratingsByMonth
          : ratingsByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingStatsEntityImplCopyWith<$Res>
    implements $ReadingStatsEntityCopyWith<$Res> {
  factory _$$ReadingStatsEntityImplCopyWith(_$ReadingStatsEntityImpl value,
          $Res Function(_$ReadingStatsEntityImpl) then) =
      __$$ReadingStatsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalBooksRead,
      int totalPagesRead,
      int totalReadingTimeMinutes,
      double averageRating,
      double averagePagesPerDay,
      double averageReadingTimePerDay,
      int currentReadingStreak,
      int longestReadingStreak,
      int totalSessions,
      double averageSessionLength,
      Map<String, int> booksByMonth,
      Map<String, int> pagesByMonth,
      Map<String, double> ratingsByMonth});
}

/// @nodoc
class __$$ReadingStatsEntityImplCopyWithImpl<$Res>
    extends _$ReadingStatsEntityCopyWithImpl<$Res, _$ReadingStatsEntityImpl>
    implements _$$ReadingStatsEntityImplCopyWith<$Res> {
  __$$ReadingStatsEntityImplCopyWithImpl(_$ReadingStatsEntityImpl _value,
      $Res Function(_$ReadingStatsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooksRead = null,
    Object? totalPagesRead = null,
    Object? totalReadingTimeMinutes = null,
    Object? averageRating = null,
    Object? averagePagesPerDay = null,
    Object? averageReadingTimePerDay = null,
    Object? currentReadingStreak = null,
    Object? longestReadingStreak = null,
    Object? totalSessions = null,
    Object? averageSessionLength = null,
    Object? booksByMonth = null,
    Object? pagesByMonth = null,
    Object? ratingsByMonth = null,
  }) {
    return _then(_$ReadingStatsEntityImpl(
      totalBooksRead: null == totalBooksRead
          ? _value.totalBooksRead
          : totalBooksRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesRead: null == totalPagesRead
          ? _value.totalPagesRead
          : totalPagesRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalReadingTimeMinutes: null == totalReadingTimeMinutes
          ? _value.totalReadingTimeMinutes
          : totalReadingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      averagePagesPerDay: null == averagePagesPerDay
          ? _value.averagePagesPerDay
          : averagePagesPerDay // ignore: cast_nullable_to_non_nullable
              as double,
      averageReadingTimePerDay: null == averageReadingTimePerDay
          ? _value.averageReadingTimePerDay
          : averageReadingTimePerDay // ignore: cast_nullable_to_non_nullable
              as double,
      currentReadingStreak: null == currentReadingStreak
          ? _value.currentReadingStreak
          : currentReadingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestReadingStreak: null == longestReadingStreak
          ? _value.longestReadingStreak
          : longestReadingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      averageSessionLength: null == averageSessionLength
          ? _value.averageSessionLength
          : averageSessionLength // ignore: cast_nullable_to_non_nullable
              as double,
      booksByMonth: null == booksByMonth
          ? _value._booksByMonth
          : booksByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      pagesByMonth: null == pagesByMonth
          ? _value._pagesByMonth
          : pagesByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      ratingsByMonth: null == ratingsByMonth
          ? _value._ratingsByMonth
          : ratingsByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingStatsEntityImpl implements _ReadingStatsEntity {
  const _$ReadingStatsEntityImpl(
      {required this.totalBooksRead,
      required this.totalPagesRead,
      required this.totalReadingTimeMinutes,
      required this.averageRating,
      required this.averagePagesPerDay,
      required this.averageReadingTimePerDay,
      required this.currentReadingStreak,
      required this.longestReadingStreak,
      required this.totalSessions,
      required this.averageSessionLength,
      required final Map<String, int> booksByMonth,
      required final Map<String, int> pagesByMonth,
      required final Map<String, double> ratingsByMonth})
      : _booksByMonth = booksByMonth,
        _pagesByMonth = pagesByMonth,
        _ratingsByMonth = ratingsByMonth;

  factory _$ReadingStatsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingStatsEntityImplFromJson(json);

  @override
  final int totalBooksRead;
  @override
  final int totalPagesRead;
  @override
  final int totalReadingTimeMinutes;
  @override
  final double averageRating;
  @override
  final double averagePagesPerDay;
  @override
  final double averageReadingTimePerDay;
  @override
  final int currentReadingStreak;
  @override
  final int longestReadingStreak;
  @override
  final int totalSessions;
  @override
  final double averageSessionLength;
  final Map<String, int> _booksByMonth;
  @override
  Map<String, int> get booksByMonth {
    if (_booksByMonth is EqualUnmodifiableMapView) return _booksByMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_booksByMonth);
  }

  final Map<String, int> _pagesByMonth;
  @override
  Map<String, int> get pagesByMonth {
    if (_pagesByMonth is EqualUnmodifiableMapView) return _pagesByMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pagesByMonth);
  }

  final Map<String, double> _ratingsByMonth;
  @override
  Map<String, double> get ratingsByMonth {
    if (_ratingsByMonth is EqualUnmodifiableMapView) return _ratingsByMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ratingsByMonth);
  }

  @override
  String toString() {
    return 'ReadingStatsEntity(totalBooksRead: $totalBooksRead, totalPagesRead: $totalPagesRead, totalReadingTimeMinutes: $totalReadingTimeMinutes, averageRating: $averageRating, averagePagesPerDay: $averagePagesPerDay, averageReadingTimePerDay: $averageReadingTimePerDay, currentReadingStreak: $currentReadingStreak, longestReadingStreak: $longestReadingStreak, totalSessions: $totalSessions, averageSessionLength: $averageSessionLength, booksByMonth: $booksByMonth, pagesByMonth: $pagesByMonth, ratingsByMonth: $ratingsByMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingStatsEntityImpl &&
            (identical(other.totalBooksRead, totalBooksRead) ||
                other.totalBooksRead == totalBooksRead) &&
            (identical(other.totalPagesRead, totalPagesRead) ||
                other.totalPagesRead == totalPagesRead) &&
            (identical(
                    other.totalReadingTimeMinutes, totalReadingTimeMinutes) ||
                other.totalReadingTimeMinutes == totalReadingTimeMinutes) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.averagePagesPerDay, averagePagesPerDay) ||
                other.averagePagesPerDay == averagePagesPerDay) &&
            (identical(
                    other.averageReadingTimePerDay, averageReadingTimePerDay) ||
                other.averageReadingTimePerDay == averageReadingTimePerDay) &&
            (identical(other.currentReadingStreak, currentReadingStreak) ||
                other.currentReadingStreak == currentReadingStreak) &&
            (identical(other.longestReadingStreak, longestReadingStreak) ||
                other.longestReadingStreak == longestReadingStreak) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.averageSessionLength, averageSessionLength) ||
                other.averageSessionLength == averageSessionLength) &&
            const DeepCollectionEquality()
                .equals(other._booksByMonth, _booksByMonth) &&
            const DeepCollectionEquality()
                .equals(other._pagesByMonth, _pagesByMonth) &&
            const DeepCollectionEquality()
                .equals(other._ratingsByMonth, _ratingsByMonth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalBooksRead,
      totalPagesRead,
      totalReadingTimeMinutes,
      averageRating,
      averagePagesPerDay,
      averageReadingTimePerDay,
      currentReadingStreak,
      longestReadingStreak,
      totalSessions,
      averageSessionLength,
      const DeepCollectionEquality().hash(_booksByMonth),
      const DeepCollectionEquality().hash(_pagesByMonth),
      const DeepCollectionEquality().hash(_ratingsByMonth));

  /// Create a copy of ReadingStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingStatsEntityImplCopyWith<_$ReadingStatsEntityImpl> get copyWith =>
      __$$ReadingStatsEntityImplCopyWithImpl<_$ReadingStatsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingStatsEntityImplToJson(
      this,
    );
  }
}

abstract class _ReadingStatsEntity implements ReadingStatsEntity {
  const factory _ReadingStatsEntity(
          {required final int totalBooksRead,
          required final int totalPagesRead,
          required final int totalReadingTimeMinutes,
          required final double averageRating,
          required final double averagePagesPerDay,
          required final double averageReadingTimePerDay,
          required final int currentReadingStreak,
          required final int longestReadingStreak,
          required final int totalSessions,
          required final double averageSessionLength,
          required final Map<String, int> booksByMonth,
          required final Map<String, int> pagesByMonth,
          required final Map<String, double> ratingsByMonth}) =
      _$ReadingStatsEntityImpl;

  factory _ReadingStatsEntity.fromJson(Map<String, dynamic> json) =
      _$ReadingStatsEntityImpl.fromJson;

  @override
  int get totalBooksRead;
  @override
  int get totalPagesRead;
  @override
  int get totalReadingTimeMinutes;
  @override
  double get averageRating;
  @override
  double get averagePagesPerDay;
  @override
  double get averageReadingTimePerDay;
  @override
  int get currentReadingStreak;
  @override
  int get longestReadingStreak;
  @override
  int get totalSessions;
  @override
  double get averageSessionLength;
  @override
  Map<String, int> get booksByMonth;
  @override
  Map<String, int> get pagesByMonth;
  @override
  Map<String, double> get ratingsByMonth;

  /// Create a copy of ReadingStatsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingStatsEntityImplCopyWith<_$ReadingStatsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenreAnalyticsEntity _$GenreAnalyticsEntityFromJson(Map<String, dynamic> json) {
  return _GenreAnalyticsEntity.fromJson(json);
}

/// @nodoc
mixin _$GenreAnalyticsEntity {
  String get genre => throw _privateConstructorUsedError;
  int get booksRead => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  double get averagePagesPerBook => throw _privateConstructorUsedError;
  int get totalReadingTimeMinutes => throw _privateConstructorUsedError;
  double get percentageOfTotalReading => throw _privateConstructorUsedError;
  List<String> get favoriteAuthors => throw _privateConstructorUsedError;
  List<String> get topBooks => throw _privateConstructorUsedError;
  Map<String, int> get readingByMonth => throw _privateConstructorUsedError;
  double get readingVelocity => throw _privateConstructorUsedError;
  String get readingTrend => throw _privateConstructorUsedError;

  /// Serializes this GenreAnalyticsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreAnalyticsEntityCopyWith<GenreAnalyticsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreAnalyticsEntityCopyWith<$Res> {
  factory $GenreAnalyticsEntityCopyWith(GenreAnalyticsEntity value,
          $Res Function(GenreAnalyticsEntity) then) =
      _$GenreAnalyticsEntityCopyWithImpl<$Res, GenreAnalyticsEntity>;
  @useResult
  $Res call(
      {String genre,
      int booksRead,
      int totalPages,
      double averageRating,
      double averagePagesPerBook,
      int totalReadingTimeMinutes,
      double percentageOfTotalReading,
      List<String> favoriteAuthors,
      List<String> topBooks,
      Map<String, int> readingByMonth,
      double readingVelocity,
      String readingTrend});
}

/// @nodoc
class _$GenreAnalyticsEntityCopyWithImpl<$Res,
        $Val extends GenreAnalyticsEntity>
    implements $GenreAnalyticsEntityCopyWith<$Res> {
  _$GenreAnalyticsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? booksRead = null,
    Object? totalPages = null,
    Object? averageRating = null,
    Object? averagePagesPerBook = null,
    Object? totalReadingTimeMinutes = null,
    Object? percentageOfTotalReading = null,
    Object? favoriteAuthors = null,
    Object? topBooks = null,
    Object? readingByMonth = null,
    Object? readingVelocity = null,
    Object? readingTrend = null,
  }) {
    return _then(_value.copyWith(
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      booksRead: null == booksRead
          ? _value.booksRead
          : booksRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      averagePagesPerBook: null == averagePagesPerBook
          ? _value.averagePagesPerBook
          : averagePagesPerBook // ignore: cast_nullable_to_non_nullable
              as double,
      totalReadingTimeMinutes: null == totalReadingTimeMinutes
          ? _value.totalReadingTimeMinutes
          : totalReadingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      percentageOfTotalReading: null == percentageOfTotalReading
          ? _value.percentageOfTotalReading
          : percentageOfTotalReading // ignore: cast_nullable_to_non_nullable
              as double,
      favoriteAuthors: null == favoriteAuthors
          ? _value.favoriteAuthors
          : favoriteAuthors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topBooks: null == topBooks
          ? _value.topBooks
          : topBooks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingByMonth: null == readingByMonth
          ? _value.readingByMonth
          : readingByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      readingVelocity: null == readingVelocity
          ? _value.readingVelocity
          : readingVelocity // ignore: cast_nullable_to_non_nullable
              as double,
      readingTrend: null == readingTrend
          ? _value.readingTrend
          : readingTrend // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreAnalyticsEntityImplCopyWith<$Res>
    implements $GenreAnalyticsEntityCopyWith<$Res> {
  factory _$$GenreAnalyticsEntityImplCopyWith(_$GenreAnalyticsEntityImpl value,
          $Res Function(_$GenreAnalyticsEntityImpl) then) =
      __$$GenreAnalyticsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String genre,
      int booksRead,
      int totalPages,
      double averageRating,
      double averagePagesPerBook,
      int totalReadingTimeMinutes,
      double percentageOfTotalReading,
      List<String> favoriteAuthors,
      List<String> topBooks,
      Map<String, int> readingByMonth,
      double readingVelocity,
      String readingTrend});
}

/// @nodoc
class __$$GenreAnalyticsEntityImplCopyWithImpl<$Res>
    extends _$GenreAnalyticsEntityCopyWithImpl<$Res, _$GenreAnalyticsEntityImpl>
    implements _$$GenreAnalyticsEntityImplCopyWith<$Res> {
  __$$GenreAnalyticsEntityImplCopyWithImpl(_$GenreAnalyticsEntityImpl _value,
      $Res Function(_$GenreAnalyticsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? booksRead = null,
    Object? totalPages = null,
    Object? averageRating = null,
    Object? averagePagesPerBook = null,
    Object? totalReadingTimeMinutes = null,
    Object? percentageOfTotalReading = null,
    Object? favoriteAuthors = null,
    Object? topBooks = null,
    Object? readingByMonth = null,
    Object? readingVelocity = null,
    Object? readingTrend = null,
  }) {
    return _then(_$GenreAnalyticsEntityImpl(
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      booksRead: null == booksRead
          ? _value.booksRead
          : booksRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      averagePagesPerBook: null == averagePagesPerBook
          ? _value.averagePagesPerBook
          : averagePagesPerBook // ignore: cast_nullable_to_non_nullable
              as double,
      totalReadingTimeMinutes: null == totalReadingTimeMinutes
          ? _value.totalReadingTimeMinutes
          : totalReadingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      percentageOfTotalReading: null == percentageOfTotalReading
          ? _value.percentageOfTotalReading
          : percentageOfTotalReading // ignore: cast_nullable_to_non_nullable
              as double,
      favoriteAuthors: null == favoriteAuthors
          ? _value._favoriteAuthors
          : favoriteAuthors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topBooks: null == topBooks
          ? _value._topBooks
          : topBooks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingByMonth: null == readingByMonth
          ? _value._readingByMonth
          : readingByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      readingVelocity: null == readingVelocity
          ? _value.readingVelocity
          : readingVelocity // ignore: cast_nullable_to_non_nullable
              as double,
      readingTrend: null == readingTrend
          ? _value.readingTrend
          : readingTrend // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreAnalyticsEntityImpl implements _GenreAnalyticsEntity {
  const _$GenreAnalyticsEntityImpl(
      {required this.genre,
      required this.booksRead,
      required this.totalPages,
      required this.averageRating,
      required this.averagePagesPerBook,
      required this.totalReadingTimeMinutes,
      required this.percentageOfTotalReading,
      required final List<String> favoriteAuthors,
      required final List<String> topBooks,
      required final Map<String, int> readingByMonth,
      required this.readingVelocity,
      required this.readingTrend})
      : _favoriteAuthors = favoriteAuthors,
        _topBooks = topBooks,
        _readingByMonth = readingByMonth;

  factory _$GenreAnalyticsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreAnalyticsEntityImplFromJson(json);

  @override
  final String genre;
  @override
  final int booksRead;
  @override
  final int totalPages;
  @override
  final double averageRating;
  @override
  final double averagePagesPerBook;
  @override
  final int totalReadingTimeMinutes;
  @override
  final double percentageOfTotalReading;
  final List<String> _favoriteAuthors;
  @override
  List<String> get favoriteAuthors {
    if (_favoriteAuthors is EqualUnmodifiableListView) return _favoriteAuthors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteAuthors);
  }

  final List<String> _topBooks;
  @override
  List<String> get topBooks {
    if (_topBooks is EqualUnmodifiableListView) return _topBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topBooks);
  }

  final Map<String, int> _readingByMonth;
  @override
  Map<String, int> get readingByMonth {
    if (_readingByMonth is EqualUnmodifiableMapView) return _readingByMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_readingByMonth);
  }

  @override
  final double readingVelocity;
  @override
  final String readingTrend;

  @override
  String toString() {
    return 'GenreAnalyticsEntity(genre: $genre, booksRead: $booksRead, totalPages: $totalPages, averageRating: $averageRating, averagePagesPerBook: $averagePagesPerBook, totalReadingTimeMinutes: $totalReadingTimeMinutes, percentageOfTotalReading: $percentageOfTotalReading, favoriteAuthors: $favoriteAuthors, topBooks: $topBooks, readingByMonth: $readingByMonth, readingVelocity: $readingVelocity, readingTrend: $readingTrend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreAnalyticsEntityImpl &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.booksRead, booksRead) ||
                other.booksRead == booksRead) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.averagePagesPerBook, averagePagesPerBook) ||
                other.averagePagesPerBook == averagePagesPerBook) &&
            (identical(
                    other.totalReadingTimeMinutes, totalReadingTimeMinutes) ||
                other.totalReadingTimeMinutes == totalReadingTimeMinutes) &&
            (identical(
                    other.percentageOfTotalReading, percentageOfTotalReading) ||
                other.percentageOfTotalReading == percentageOfTotalReading) &&
            const DeepCollectionEquality()
                .equals(other._favoriteAuthors, _favoriteAuthors) &&
            const DeepCollectionEquality().equals(other._topBooks, _topBooks) &&
            const DeepCollectionEquality()
                .equals(other._readingByMonth, _readingByMonth) &&
            (identical(other.readingVelocity, readingVelocity) ||
                other.readingVelocity == readingVelocity) &&
            (identical(other.readingTrend, readingTrend) ||
                other.readingTrend == readingTrend));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      genre,
      booksRead,
      totalPages,
      averageRating,
      averagePagesPerBook,
      totalReadingTimeMinutes,
      percentageOfTotalReading,
      const DeepCollectionEquality().hash(_favoriteAuthors),
      const DeepCollectionEquality().hash(_topBooks),
      const DeepCollectionEquality().hash(_readingByMonth),
      readingVelocity,
      readingTrend);

  /// Create a copy of GenreAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreAnalyticsEntityImplCopyWith<_$GenreAnalyticsEntityImpl>
      get copyWith =>
          __$$GenreAnalyticsEntityImplCopyWithImpl<_$GenreAnalyticsEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreAnalyticsEntityImplToJson(
      this,
    );
  }
}

abstract class _GenreAnalyticsEntity implements GenreAnalyticsEntity {
  const factory _GenreAnalyticsEntity(
      {required final String genre,
      required final int booksRead,
      required final int totalPages,
      required final double averageRating,
      required final double averagePagesPerBook,
      required final int totalReadingTimeMinutes,
      required final double percentageOfTotalReading,
      required final List<String> favoriteAuthors,
      required final List<String> topBooks,
      required final Map<String, int> readingByMonth,
      required final double readingVelocity,
      required final String readingTrend}) = _$GenreAnalyticsEntityImpl;

  factory _GenreAnalyticsEntity.fromJson(Map<String, dynamic> json) =
      _$GenreAnalyticsEntityImpl.fromJson;

  @override
  String get genre;
  @override
  int get booksRead;
  @override
  int get totalPages;
  @override
  double get averageRating;
  @override
  double get averagePagesPerBook;
  @override
  int get totalReadingTimeMinutes;
  @override
  double get percentageOfTotalReading;
  @override
  List<String> get favoriteAuthors;
  @override
  List<String> get topBooks;
  @override
  Map<String, int> get readingByMonth;
  @override
  double get readingVelocity;
  @override
  String get readingTrend;

  /// Create a copy of GenreAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreAnalyticsEntityImplCopyWith<_$GenreAnalyticsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TimeAnalyticsEntity _$TimeAnalyticsEntityFromJson(Map<String, dynamic> json) {
  return _TimeAnalyticsEntity.fromJson(json);
}

/// @nodoc
mixin _$TimeAnalyticsEntity {
  String get timeSlot => throw _privateConstructorUsedError;
  int get totalSessions => throw _privateConstructorUsedError;
  int get totalReadingTimeMinutes => throw _privateConstructorUsedError;
  double get averageSessionLength => throw _privateConstructorUsedError;
  double get productivityScore => throw _privateConstructorUsedError;
  List<String> get preferredGenres => throw _privateConstructorUsedError;
  Map<String, int> get readingByDayOfWeek => throw _privateConstructorUsedError;
  Map<String, int> get readingByHour => throw _privateConstructorUsedError;
  double get consistencyScore => throw _privateConstructorUsedError;
  String get optimalReadingTime => throw _privateConstructorUsedError;

  /// Serializes this TimeAnalyticsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeAnalyticsEntityCopyWith<TimeAnalyticsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeAnalyticsEntityCopyWith<$Res> {
  factory $TimeAnalyticsEntityCopyWith(
          TimeAnalyticsEntity value, $Res Function(TimeAnalyticsEntity) then) =
      _$TimeAnalyticsEntityCopyWithImpl<$Res, TimeAnalyticsEntity>;
  @useResult
  $Res call(
      {String timeSlot,
      int totalSessions,
      int totalReadingTimeMinutes,
      double averageSessionLength,
      double productivityScore,
      List<String> preferredGenres,
      Map<String, int> readingByDayOfWeek,
      Map<String, int> readingByHour,
      double consistencyScore,
      String optimalReadingTime});
}

/// @nodoc
class _$TimeAnalyticsEntityCopyWithImpl<$Res, $Val extends TimeAnalyticsEntity>
    implements $TimeAnalyticsEntityCopyWith<$Res> {
  _$TimeAnalyticsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlot = null,
    Object? totalSessions = null,
    Object? totalReadingTimeMinutes = null,
    Object? averageSessionLength = null,
    Object? productivityScore = null,
    Object? preferredGenres = null,
    Object? readingByDayOfWeek = null,
    Object? readingByHour = null,
    Object? consistencyScore = null,
    Object? optimalReadingTime = null,
  }) {
    return _then(_value.copyWith(
      timeSlot: null == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      totalReadingTimeMinutes: null == totalReadingTimeMinutes
          ? _value.totalReadingTimeMinutes
          : totalReadingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      averageSessionLength: null == averageSessionLength
          ? _value.averageSessionLength
          : averageSessionLength // ignore: cast_nullable_to_non_nullable
              as double,
      productivityScore: null == productivityScore
          ? _value.productivityScore
          : productivityScore // ignore: cast_nullable_to_non_nullable
              as double,
      preferredGenres: null == preferredGenres
          ? _value.preferredGenres
          : preferredGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingByDayOfWeek: null == readingByDayOfWeek
          ? _value.readingByDayOfWeek
          : readingByDayOfWeek // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      readingByHour: null == readingByHour
          ? _value.readingByHour
          : readingByHour // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      consistencyScore: null == consistencyScore
          ? _value.consistencyScore
          : consistencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      optimalReadingTime: null == optimalReadingTime
          ? _value.optimalReadingTime
          : optimalReadingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeAnalyticsEntityImplCopyWith<$Res>
    implements $TimeAnalyticsEntityCopyWith<$Res> {
  factory _$$TimeAnalyticsEntityImplCopyWith(_$TimeAnalyticsEntityImpl value,
          $Res Function(_$TimeAnalyticsEntityImpl) then) =
      __$$TimeAnalyticsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String timeSlot,
      int totalSessions,
      int totalReadingTimeMinutes,
      double averageSessionLength,
      double productivityScore,
      List<String> preferredGenres,
      Map<String, int> readingByDayOfWeek,
      Map<String, int> readingByHour,
      double consistencyScore,
      String optimalReadingTime});
}

/// @nodoc
class __$$TimeAnalyticsEntityImplCopyWithImpl<$Res>
    extends _$TimeAnalyticsEntityCopyWithImpl<$Res, _$TimeAnalyticsEntityImpl>
    implements _$$TimeAnalyticsEntityImplCopyWith<$Res> {
  __$$TimeAnalyticsEntityImplCopyWithImpl(_$TimeAnalyticsEntityImpl _value,
      $Res Function(_$TimeAnalyticsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlot = null,
    Object? totalSessions = null,
    Object? totalReadingTimeMinutes = null,
    Object? averageSessionLength = null,
    Object? productivityScore = null,
    Object? preferredGenres = null,
    Object? readingByDayOfWeek = null,
    Object? readingByHour = null,
    Object? consistencyScore = null,
    Object? optimalReadingTime = null,
  }) {
    return _then(_$TimeAnalyticsEntityImpl(
      timeSlot: null == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as String,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      totalReadingTimeMinutes: null == totalReadingTimeMinutes
          ? _value.totalReadingTimeMinutes
          : totalReadingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      averageSessionLength: null == averageSessionLength
          ? _value.averageSessionLength
          : averageSessionLength // ignore: cast_nullable_to_non_nullable
              as double,
      productivityScore: null == productivityScore
          ? _value.productivityScore
          : productivityScore // ignore: cast_nullable_to_non_nullable
              as double,
      preferredGenres: null == preferredGenres
          ? _value._preferredGenres
          : preferredGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingByDayOfWeek: null == readingByDayOfWeek
          ? _value._readingByDayOfWeek
          : readingByDayOfWeek // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      readingByHour: null == readingByHour
          ? _value._readingByHour
          : readingByHour // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      consistencyScore: null == consistencyScore
          ? _value.consistencyScore
          : consistencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      optimalReadingTime: null == optimalReadingTime
          ? _value.optimalReadingTime
          : optimalReadingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeAnalyticsEntityImpl implements _TimeAnalyticsEntity {
  const _$TimeAnalyticsEntityImpl(
      {required this.timeSlot,
      required this.totalSessions,
      required this.totalReadingTimeMinutes,
      required this.averageSessionLength,
      required this.productivityScore,
      required final List<String> preferredGenres,
      required final Map<String, int> readingByDayOfWeek,
      required final Map<String, int> readingByHour,
      required this.consistencyScore,
      required this.optimalReadingTime})
      : _preferredGenres = preferredGenres,
        _readingByDayOfWeek = readingByDayOfWeek,
        _readingByHour = readingByHour;

  factory _$TimeAnalyticsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeAnalyticsEntityImplFromJson(json);

  @override
  final String timeSlot;
  @override
  final int totalSessions;
  @override
  final int totalReadingTimeMinutes;
  @override
  final double averageSessionLength;
  @override
  final double productivityScore;
  final List<String> _preferredGenres;
  @override
  List<String> get preferredGenres {
    if (_preferredGenres is EqualUnmodifiableListView) return _preferredGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredGenres);
  }

  final Map<String, int> _readingByDayOfWeek;
  @override
  Map<String, int> get readingByDayOfWeek {
    if (_readingByDayOfWeek is EqualUnmodifiableMapView)
      return _readingByDayOfWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_readingByDayOfWeek);
  }

  final Map<String, int> _readingByHour;
  @override
  Map<String, int> get readingByHour {
    if (_readingByHour is EqualUnmodifiableMapView) return _readingByHour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_readingByHour);
  }

  @override
  final double consistencyScore;
  @override
  final String optimalReadingTime;

  @override
  String toString() {
    return 'TimeAnalyticsEntity(timeSlot: $timeSlot, totalSessions: $totalSessions, totalReadingTimeMinutes: $totalReadingTimeMinutes, averageSessionLength: $averageSessionLength, productivityScore: $productivityScore, preferredGenres: $preferredGenres, readingByDayOfWeek: $readingByDayOfWeek, readingByHour: $readingByHour, consistencyScore: $consistencyScore, optimalReadingTime: $optimalReadingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeAnalyticsEntityImpl &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(
                    other.totalReadingTimeMinutes, totalReadingTimeMinutes) ||
                other.totalReadingTimeMinutes == totalReadingTimeMinutes) &&
            (identical(other.averageSessionLength, averageSessionLength) ||
                other.averageSessionLength == averageSessionLength) &&
            (identical(other.productivityScore, productivityScore) ||
                other.productivityScore == productivityScore) &&
            const DeepCollectionEquality()
                .equals(other._preferredGenres, _preferredGenres) &&
            const DeepCollectionEquality()
                .equals(other._readingByDayOfWeek, _readingByDayOfWeek) &&
            const DeepCollectionEquality()
                .equals(other._readingByHour, _readingByHour) &&
            (identical(other.consistencyScore, consistencyScore) ||
                other.consistencyScore == consistencyScore) &&
            (identical(other.optimalReadingTime, optimalReadingTime) ||
                other.optimalReadingTime == optimalReadingTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeSlot,
      totalSessions,
      totalReadingTimeMinutes,
      averageSessionLength,
      productivityScore,
      const DeepCollectionEquality().hash(_preferredGenres),
      const DeepCollectionEquality().hash(_readingByDayOfWeek),
      const DeepCollectionEquality().hash(_readingByHour),
      consistencyScore,
      optimalReadingTime);

  /// Create a copy of TimeAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeAnalyticsEntityImplCopyWith<_$TimeAnalyticsEntityImpl> get copyWith =>
      __$$TimeAnalyticsEntityImplCopyWithImpl<_$TimeAnalyticsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeAnalyticsEntityImplToJson(
      this,
    );
  }
}

abstract class _TimeAnalyticsEntity implements TimeAnalyticsEntity {
  const factory _TimeAnalyticsEntity(
      {required final String timeSlot,
      required final int totalSessions,
      required final int totalReadingTimeMinutes,
      required final double averageSessionLength,
      required final double productivityScore,
      required final List<String> preferredGenres,
      required final Map<String, int> readingByDayOfWeek,
      required final Map<String, int> readingByHour,
      required final double consistencyScore,
      required final String optimalReadingTime}) = _$TimeAnalyticsEntityImpl;

  factory _TimeAnalyticsEntity.fromJson(Map<String, dynamic> json) =
      _$TimeAnalyticsEntityImpl.fromJson;

  @override
  String get timeSlot;
  @override
  int get totalSessions;
  @override
  int get totalReadingTimeMinutes;
  @override
  double get averageSessionLength;
  @override
  double get productivityScore;
  @override
  List<String> get preferredGenres;
  @override
  Map<String, int> get readingByDayOfWeek;
  @override
  Map<String, int> get readingByHour;
  @override
  double get consistencyScore;
  @override
  String get optimalReadingTime;

  /// Create a copy of TimeAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeAnalyticsEntityImplCopyWith<_$TimeAnalyticsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookAnalyticsEntity _$BookAnalyticsEntityFromJson(Map<String, dynamic> json) {
  return _BookAnalyticsEntity.fromJson(json);
}

/// @nodoc
mixin _$BookAnalyticsEntity {
  String get bookId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get readingTimeMinutes => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get completionDate => throw _privateConstructorUsedError;
  double get readingSpeed => throw _privateConstructorUsedError;
  int get sessionsCount => throw _privateConstructorUsedError;
  double get engagementScore => throw _privateConstructorUsedError;
  List<String> get notes => throw _privateConstructorUsedError;
  Map<String, int> get readingProgressByDay =>
      throw _privateConstructorUsedError;
  String get readingPattern => throw _privateConstructorUsedError;
  double get difficultyScore => throw _privateConstructorUsedError;
  double get enjoymentScore => throw _privateConstructorUsedError;

  /// Serializes this BookAnalyticsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookAnalyticsEntityCopyWith<BookAnalyticsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAnalyticsEntityCopyWith<$Res> {
  factory $BookAnalyticsEntityCopyWith(
          BookAnalyticsEntity value, $Res Function(BookAnalyticsEntity) then) =
      _$BookAnalyticsEntityCopyWithImpl<$Res, BookAnalyticsEntity>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String genre,
      int pages,
      double rating,
      int readingTimeMinutes,
      DateTime startDate,
      DateTime? completionDate,
      double readingSpeed,
      int sessionsCount,
      double engagementScore,
      List<String> notes,
      Map<String, int> readingProgressByDay,
      String readingPattern,
      double difficultyScore,
      double enjoymentScore});
}

/// @nodoc
class _$BookAnalyticsEntityCopyWithImpl<$Res, $Val extends BookAnalyticsEntity>
    implements $BookAnalyticsEntityCopyWith<$Res> {
  _$BookAnalyticsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? genre = null,
    Object? pages = null,
    Object? rating = null,
    Object? readingTimeMinutes = null,
    Object? startDate = null,
    Object? completionDate = freezed,
    Object? readingSpeed = null,
    Object? sessionsCount = null,
    Object? engagementScore = null,
    Object? notes = null,
    Object? readingProgressByDay = null,
    Object? readingPattern = null,
    Object? difficultyScore = null,
    Object? enjoymentScore = null,
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
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      readingTimeMinutes: null == readingTimeMinutes
          ? _value.readingTimeMinutes
          : readingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completionDate: freezed == completionDate
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readingSpeed: null == readingSpeed
          ? _value.readingSpeed
          : readingSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      sessionsCount: null == sessionsCount
          ? _value.sessionsCount
          : sessionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      engagementScore: null == engagementScore
          ? _value.engagementScore
          : engagementScore // ignore: cast_nullable_to_non_nullable
              as double,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingProgressByDay: null == readingProgressByDay
          ? _value.readingProgressByDay
          : readingProgressByDay // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      readingPattern: null == readingPattern
          ? _value.readingPattern
          : readingPattern // ignore: cast_nullable_to_non_nullable
              as String,
      difficultyScore: null == difficultyScore
          ? _value.difficultyScore
          : difficultyScore // ignore: cast_nullable_to_non_nullable
              as double,
      enjoymentScore: null == enjoymentScore
          ? _value.enjoymentScore
          : enjoymentScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookAnalyticsEntityImplCopyWith<$Res>
    implements $BookAnalyticsEntityCopyWith<$Res> {
  factory _$$BookAnalyticsEntityImplCopyWith(_$BookAnalyticsEntityImpl value,
          $Res Function(_$BookAnalyticsEntityImpl) then) =
      __$$BookAnalyticsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String genre,
      int pages,
      double rating,
      int readingTimeMinutes,
      DateTime startDate,
      DateTime? completionDate,
      double readingSpeed,
      int sessionsCount,
      double engagementScore,
      List<String> notes,
      Map<String, int> readingProgressByDay,
      String readingPattern,
      double difficultyScore,
      double enjoymentScore});
}

/// @nodoc
class __$$BookAnalyticsEntityImplCopyWithImpl<$Res>
    extends _$BookAnalyticsEntityCopyWithImpl<$Res, _$BookAnalyticsEntityImpl>
    implements _$$BookAnalyticsEntityImplCopyWith<$Res> {
  __$$BookAnalyticsEntityImplCopyWithImpl(_$BookAnalyticsEntityImpl _value,
      $Res Function(_$BookAnalyticsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? genre = null,
    Object? pages = null,
    Object? rating = null,
    Object? readingTimeMinutes = null,
    Object? startDate = null,
    Object? completionDate = freezed,
    Object? readingSpeed = null,
    Object? sessionsCount = null,
    Object? engagementScore = null,
    Object? notes = null,
    Object? readingProgressByDay = null,
    Object? readingPattern = null,
    Object? difficultyScore = null,
    Object? enjoymentScore = null,
  }) {
    return _then(_$BookAnalyticsEntityImpl(
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
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      readingTimeMinutes: null == readingTimeMinutes
          ? _value.readingTimeMinutes
          : readingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completionDate: freezed == completionDate
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readingSpeed: null == readingSpeed
          ? _value.readingSpeed
          : readingSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      sessionsCount: null == sessionsCount
          ? _value.sessionsCount
          : sessionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      engagementScore: null == engagementScore
          ? _value.engagementScore
          : engagementScore // ignore: cast_nullable_to_non_nullable
              as double,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingProgressByDay: null == readingProgressByDay
          ? _value._readingProgressByDay
          : readingProgressByDay // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      readingPattern: null == readingPattern
          ? _value.readingPattern
          : readingPattern // ignore: cast_nullable_to_non_nullable
              as String,
      difficultyScore: null == difficultyScore
          ? _value.difficultyScore
          : difficultyScore // ignore: cast_nullable_to_non_nullable
              as double,
      enjoymentScore: null == enjoymentScore
          ? _value.enjoymentScore
          : enjoymentScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookAnalyticsEntityImpl implements _BookAnalyticsEntity {
  const _$BookAnalyticsEntityImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      required this.genre,
      required this.pages,
      required this.rating,
      required this.readingTimeMinutes,
      required this.startDate,
      required this.completionDate,
      required this.readingSpeed,
      required this.sessionsCount,
      required this.engagementScore,
      required final List<String> notes,
      required final Map<String, int> readingProgressByDay,
      required this.readingPattern,
      required this.difficultyScore,
      required this.enjoymentScore})
      : _notes = notes,
        _readingProgressByDay = readingProgressByDay;

  factory _$BookAnalyticsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookAnalyticsEntityImplFromJson(json);

  @override
  final String bookId;
  @override
  final String title;
  @override
  final String author;
  @override
  final String genre;
  @override
  final int pages;
  @override
  final double rating;
  @override
  final int readingTimeMinutes;
  @override
  final DateTime startDate;
  @override
  final DateTime? completionDate;
  @override
  final double readingSpeed;
  @override
  final int sessionsCount;
  @override
  final double engagementScore;
  final List<String> _notes;
  @override
  List<String> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  final Map<String, int> _readingProgressByDay;
  @override
  Map<String, int> get readingProgressByDay {
    if (_readingProgressByDay is EqualUnmodifiableMapView)
      return _readingProgressByDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_readingProgressByDay);
  }

  @override
  final String readingPattern;
  @override
  final double difficultyScore;
  @override
  final double enjoymentScore;

  @override
  String toString() {
    return 'BookAnalyticsEntity(bookId: $bookId, title: $title, author: $author, genre: $genre, pages: $pages, rating: $rating, readingTimeMinutes: $readingTimeMinutes, startDate: $startDate, completionDate: $completionDate, readingSpeed: $readingSpeed, sessionsCount: $sessionsCount, engagementScore: $engagementScore, notes: $notes, readingProgressByDay: $readingProgressByDay, readingPattern: $readingPattern, difficultyScore: $difficultyScore, enjoymentScore: $enjoymentScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookAnalyticsEntityImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.readingTimeMinutes, readingTimeMinutes) ||
                other.readingTimeMinutes == readingTimeMinutes) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            (identical(other.readingSpeed, readingSpeed) ||
                other.readingSpeed == readingSpeed) &&
            (identical(other.sessionsCount, sessionsCount) ||
                other.sessionsCount == sessionsCount) &&
            (identical(other.engagementScore, engagementScore) ||
                other.engagementScore == engagementScore) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality()
                .equals(other._readingProgressByDay, _readingProgressByDay) &&
            (identical(other.readingPattern, readingPattern) ||
                other.readingPattern == readingPattern) &&
            (identical(other.difficultyScore, difficultyScore) ||
                other.difficultyScore == difficultyScore) &&
            (identical(other.enjoymentScore, enjoymentScore) ||
                other.enjoymentScore == enjoymentScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      genre,
      pages,
      rating,
      readingTimeMinutes,
      startDate,
      completionDate,
      readingSpeed,
      sessionsCount,
      engagementScore,
      const DeepCollectionEquality().hash(_notes),
      const DeepCollectionEquality().hash(_readingProgressByDay),
      readingPattern,
      difficultyScore,
      enjoymentScore);

  /// Create a copy of BookAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookAnalyticsEntityImplCopyWith<_$BookAnalyticsEntityImpl> get copyWith =>
      __$$BookAnalyticsEntityImplCopyWithImpl<_$BookAnalyticsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookAnalyticsEntityImplToJson(
      this,
    );
  }
}

abstract class _BookAnalyticsEntity implements BookAnalyticsEntity {
  const factory _BookAnalyticsEntity(
      {required final String bookId,
      required final String title,
      required final String author,
      required final String genre,
      required final int pages,
      required final double rating,
      required final int readingTimeMinutes,
      required final DateTime startDate,
      required final DateTime? completionDate,
      required final double readingSpeed,
      required final int sessionsCount,
      required final double engagementScore,
      required final List<String> notes,
      required final Map<String, int> readingProgressByDay,
      required final String readingPattern,
      required final double difficultyScore,
      required final double enjoymentScore}) = _$BookAnalyticsEntityImpl;

  factory _BookAnalyticsEntity.fromJson(Map<String, dynamic> json) =
      _$BookAnalyticsEntityImpl.fromJson;

  @override
  String get bookId;
  @override
  String get title;
  @override
  String get author;
  @override
  String get genre;
  @override
  int get pages;
  @override
  double get rating;
  @override
  int get readingTimeMinutes;
  @override
  DateTime get startDate;
  @override
  DateTime? get completionDate;
  @override
  double get readingSpeed;
  @override
  int get sessionsCount;
  @override
  double get engagementScore;
  @override
  List<String> get notes;
  @override
  Map<String, int> get readingProgressByDay;
  @override
  String get readingPattern;
  @override
  double get difficultyScore;
  @override
  double get enjoymentScore;

  /// Create a copy of BookAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookAnalyticsEntityImplCopyWith<_$BookAnalyticsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalAnalyticsEntity _$GoalAnalyticsEntityFromJson(Map<String, dynamic> json) {
  return _GoalAnalyticsEntity.fromJson(json);
}

/// @nodoc
mixin _$GoalAnalyticsEntity {
  String get goalId => throw _privateConstructorUsedError;
  String get goalType => throw _privateConstructorUsedError;
  String get goalDescription => throw _privateConstructorUsedError;
  int get targetValue => throw _privateConstructorUsedError;
  int get currentValue => throw _privateConstructorUsedError;
  double get completionPercentage => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get targetDate => throw _privateConstructorUsedError;
  DateTime? get completionDate => throw _privateConstructorUsedError;
  GoalStatus get status => throw _privateConstructorUsedError;
  double get progressVelocity => throw _privateConstructorUsedError;
  List<String> get milestones => throw _privateConstructorUsedError;
  List<String> get achievements => throw _privateConstructorUsedError;
  String get difficultyLevel => throw _privateConstructorUsedError;
  double get motivationScore => throw _privateConstructorUsedError;

  /// Serializes this GoalAnalyticsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalAnalyticsEntityCopyWith<GoalAnalyticsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalAnalyticsEntityCopyWith<$Res> {
  factory $GoalAnalyticsEntityCopyWith(
          GoalAnalyticsEntity value, $Res Function(GoalAnalyticsEntity) then) =
      _$GoalAnalyticsEntityCopyWithImpl<$Res, GoalAnalyticsEntity>;
  @useResult
  $Res call(
      {String goalId,
      String goalType,
      String goalDescription,
      int targetValue,
      int currentValue,
      double completionPercentage,
      DateTime startDate,
      DateTime targetDate,
      DateTime? completionDate,
      GoalStatus status,
      double progressVelocity,
      List<String> milestones,
      List<String> achievements,
      String difficultyLevel,
      double motivationScore});
}

/// @nodoc
class _$GoalAnalyticsEntityCopyWithImpl<$Res, $Val extends GoalAnalyticsEntity>
    implements $GoalAnalyticsEntityCopyWith<$Res> {
  _$GoalAnalyticsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalId = null,
    Object? goalType = null,
    Object? goalDescription = null,
    Object? targetValue = null,
    Object? currentValue = null,
    Object? completionPercentage = null,
    Object? startDate = null,
    Object? targetDate = null,
    Object? completionDate = freezed,
    Object? status = null,
    Object? progressVelocity = null,
    Object? milestones = null,
    Object? achievements = null,
    Object? difficultyLevel = null,
    Object? motivationScore = null,
  }) {
    return _then(_value.copyWith(
      goalId: null == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String,
      goalType: null == goalType
          ? _value.goalType
          : goalType // ignore: cast_nullable_to_non_nullable
              as String,
      goalDescription: null == goalDescription
          ? _value.goalDescription
          : goalDescription // ignore: cast_nullable_to_non_nullable
              as String,
      targetValue: null == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int,
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as int,
      completionPercentage: null == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completionDate: freezed == completionDate
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GoalStatus,
      progressVelocity: null == progressVelocity
          ? _value.progressVelocity
          : progressVelocity // ignore: cast_nullable_to_non_nullable
              as double,
      milestones: null == milestones
          ? _value.milestones
          : milestones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as String,
      motivationScore: null == motivationScore
          ? _value.motivationScore
          : motivationScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalAnalyticsEntityImplCopyWith<$Res>
    implements $GoalAnalyticsEntityCopyWith<$Res> {
  factory _$$GoalAnalyticsEntityImplCopyWith(_$GoalAnalyticsEntityImpl value,
          $Res Function(_$GoalAnalyticsEntityImpl) then) =
      __$$GoalAnalyticsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String goalId,
      String goalType,
      String goalDescription,
      int targetValue,
      int currentValue,
      double completionPercentage,
      DateTime startDate,
      DateTime targetDate,
      DateTime? completionDate,
      GoalStatus status,
      double progressVelocity,
      List<String> milestones,
      List<String> achievements,
      String difficultyLevel,
      double motivationScore});
}

/// @nodoc
class __$$GoalAnalyticsEntityImplCopyWithImpl<$Res>
    extends _$GoalAnalyticsEntityCopyWithImpl<$Res, _$GoalAnalyticsEntityImpl>
    implements _$$GoalAnalyticsEntityImplCopyWith<$Res> {
  __$$GoalAnalyticsEntityImplCopyWithImpl(_$GoalAnalyticsEntityImpl _value,
      $Res Function(_$GoalAnalyticsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalId = null,
    Object? goalType = null,
    Object? goalDescription = null,
    Object? targetValue = null,
    Object? currentValue = null,
    Object? completionPercentage = null,
    Object? startDate = null,
    Object? targetDate = null,
    Object? completionDate = freezed,
    Object? status = null,
    Object? progressVelocity = null,
    Object? milestones = null,
    Object? achievements = null,
    Object? difficultyLevel = null,
    Object? motivationScore = null,
  }) {
    return _then(_$GoalAnalyticsEntityImpl(
      goalId: null == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String,
      goalType: null == goalType
          ? _value.goalType
          : goalType // ignore: cast_nullable_to_non_nullable
              as String,
      goalDescription: null == goalDescription
          ? _value.goalDescription
          : goalDescription // ignore: cast_nullable_to_non_nullable
              as String,
      targetValue: null == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int,
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as int,
      completionPercentage: null == completionPercentage
          ? _value.completionPercentage
          : completionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completionDate: freezed == completionDate
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GoalStatus,
      progressVelocity: null == progressVelocity
          ? _value.progressVelocity
          : progressVelocity // ignore: cast_nullable_to_non_nullable
              as double,
      milestones: null == milestones
          ? _value._milestones
          : milestones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as String,
      motivationScore: null == motivationScore
          ? _value.motivationScore
          : motivationScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalAnalyticsEntityImpl implements _GoalAnalyticsEntity {
  const _$GoalAnalyticsEntityImpl(
      {required this.goalId,
      required this.goalType,
      required this.goalDescription,
      required this.targetValue,
      required this.currentValue,
      required this.completionPercentage,
      required this.startDate,
      required this.targetDate,
      required this.completionDate,
      required this.status,
      required this.progressVelocity,
      required final List<String> milestones,
      required final List<String> achievements,
      required this.difficultyLevel,
      required this.motivationScore})
      : _milestones = milestones,
        _achievements = achievements;

  factory _$GoalAnalyticsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalAnalyticsEntityImplFromJson(json);

  @override
  final String goalId;
  @override
  final String goalType;
  @override
  final String goalDescription;
  @override
  final int targetValue;
  @override
  final int currentValue;
  @override
  final double completionPercentage;
  @override
  final DateTime startDate;
  @override
  final DateTime targetDate;
  @override
  final DateTime? completionDate;
  @override
  final GoalStatus status;
  @override
  final double progressVelocity;
  final List<String> _milestones;
  @override
  List<String> get milestones {
    if (_milestones is EqualUnmodifiableListView) return _milestones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_milestones);
  }

  final List<String> _achievements;
  @override
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  final String difficultyLevel;
  @override
  final double motivationScore;

  @override
  String toString() {
    return 'GoalAnalyticsEntity(goalId: $goalId, goalType: $goalType, goalDescription: $goalDescription, targetValue: $targetValue, currentValue: $currentValue, completionPercentage: $completionPercentage, startDate: $startDate, targetDate: $targetDate, completionDate: $completionDate, status: $status, progressVelocity: $progressVelocity, milestones: $milestones, achievements: $achievements, difficultyLevel: $difficultyLevel, motivationScore: $motivationScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalAnalyticsEntityImpl &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.goalType, goalType) ||
                other.goalType == goalType) &&
            (identical(other.goalDescription, goalDescription) ||
                other.goalDescription == goalDescription) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.completionPercentage, completionPercentage) ||
                other.completionPercentage == completionPercentage) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progressVelocity, progressVelocity) ||
                other.progressVelocity == progressVelocity) &&
            const DeepCollectionEquality()
                .equals(other._milestones, _milestones) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.motivationScore, motivationScore) ||
                other.motivationScore == motivationScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      goalId,
      goalType,
      goalDescription,
      targetValue,
      currentValue,
      completionPercentage,
      startDate,
      targetDate,
      completionDate,
      status,
      progressVelocity,
      const DeepCollectionEquality().hash(_milestones),
      const DeepCollectionEquality().hash(_achievements),
      difficultyLevel,
      motivationScore);

  /// Create a copy of GoalAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalAnalyticsEntityImplCopyWith<_$GoalAnalyticsEntityImpl> get copyWith =>
      __$$GoalAnalyticsEntityImplCopyWithImpl<_$GoalAnalyticsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalAnalyticsEntityImplToJson(
      this,
    );
  }
}

abstract class _GoalAnalyticsEntity implements GoalAnalyticsEntity {
  const factory _GoalAnalyticsEntity(
      {required final String goalId,
      required final String goalType,
      required final String goalDescription,
      required final int targetValue,
      required final int currentValue,
      required final double completionPercentage,
      required final DateTime startDate,
      required final DateTime targetDate,
      required final DateTime? completionDate,
      required final GoalStatus status,
      required final double progressVelocity,
      required final List<String> milestones,
      required final List<String> achievements,
      required final String difficultyLevel,
      required final double motivationScore}) = _$GoalAnalyticsEntityImpl;

  factory _GoalAnalyticsEntity.fromJson(Map<String, dynamic> json) =
      _$GoalAnalyticsEntityImpl.fromJson;

  @override
  String get goalId;
  @override
  String get goalType;
  @override
  String get goalDescription;
  @override
  int get targetValue;
  @override
  int get currentValue;
  @override
  double get completionPercentage;
  @override
  DateTime get startDate;
  @override
  DateTime get targetDate;
  @override
  DateTime? get completionDate;
  @override
  GoalStatus get status;
  @override
  double get progressVelocity;
  @override
  List<String> get milestones;
  @override
  List<String> get achievements;
  @override
  String get difficultyLevel;
  @override
  double get motivationScore;

  /// Create a copy of GoalAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalAnalyticsEntityImplCopyWith<_$GoalAnalyticsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecommendationEntity _$RecommendationEntityFromJson(Map<String, dynamic> json) {
  return _RecommendationEntity.fromJson(json);
}

/// @nodoc
mixin _$RecommendationEntity {
  String get bookId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  double get confidenceScore => throw _privateConstructorUsedError;
  List<String> get reasons => throw _privateConstructorUsedError;
  RecommendationType get type => throw _privateConstructorUsedError;
  Map<String, double> get factorScores => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get dateGenerated => throw _privateConstructorUsedError;
  bool get isPersonalized => throw _privateConstructorUsedError;

  /// Serializes this RecommendationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationEntityCopyWith<RecommendationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationEntityCopyWith<$Res> {
  factory $RecommendationEntityCopyWith(RecommendationEntity value,
          $Res Function(RecommendationEntity) then) =
      _$RecommendationEntityCopyWithImpl<$Res, RecommendationEntity>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String genre,
      double confidenceScore,
      List<String> reasons,
      RecommendationType type,
      Map<String, double> factorScores,
      String description,
      DateTime dateGenerated,
      bool isPersonalized});
}

/// @nodoc
class _$RecommendationEntityCopyWithImpl<$Res,
        $Val extends RecommendationEntity>
    implements $RecommendationEntityCopyWith<$Res> {
  _$RecommendationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? genre = null,
    Object? confidenceScore = null,
    Object? reasons = null,
    Object? type = null,
    Object? factorScores = null,
    Object? description = null,
    Object? dateGenerated = null,
    Object? isPersonalized = null,
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
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      confidenceScore: null == confidenceScore
          ? _value.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      reasons: null == reasons
          ? _value.reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecommendationType,
      factorScores: null == factorScores
          ? _value.factorScores
          : factorScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateGenerated: null == dateGenerated
          ? _value.dateGenerated
          : dateGenerated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPersonalized: null == isPersonalized
          ? _value.isPersonalized
          : isPersonalized // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationEntityImplCopyWith<$Res>
    implements $RecommendationEntityCopyWith<$Res> {
  factory _$$RecommendationEntityImplCopyWith(_$RecommendationEntityImpl value,
          $Res Function(_$RecommendationEntityImpl) then) =
      __$$RecommendationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String genre,
      double confidenceScore,
      List<String> reasons,
      RecommendationType type,
      Map<String, double> factorScores,
      String description,
      DateTime dateGenerated,
      bool isPersonalized});
}

/// @nodoc
class __$$RecommendationEntityImplCopyWithImpl<$Res>
    extends _$RecommendationEntityCopyWithImpl<$Res, _$RecommendationEntityImpl>
    implements _$$RecommendationEntityImplCopyWith<$Res> {
  __$$RecommendationEntityImplCopyWithImpl(_$RecommendationEntityImpl _value,
      $Res Function(_$RecommendationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? genre = null,
    Object? confidenceScore = null,
    Object? reasons = null,
    Object? type = null,
    Object? factorScores = null,
    Object? description = null,
    Object? dateGenerated = null,
    Object? isPersonalized = null,
  }) {
    return _then(_$RecommendationEntityImpl(
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
      reasons: null == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecommendationType,
      factorScores: null == factorScores
          ? _value._factorScores
          : factorScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateGenerated: null == dateGenerated
          ? _value.dateGenerated
          : dateGenerated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPersonalized: null == isPersonalized
          ? _value.isPersonalized
          : isPersonalized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationEntityImpl implements _RecommendationEntity {
  const _$RecommendationEntityImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      required this.genre,
      required this.confidenceScore,
      required final List<String> reasons,
      required this.type,
      required final Map<String, double> factorScores,
      required this.description,
      required this.dateGenerated,
      required this.isPersonalized})
      : _reasons = reasons,
        _factorScores = factorScores;

  factory _$RecommendationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationEntityImplFromJson(json);

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
  final List<String> _reasons;
  @override
  List<String> get reasons {
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reasons);
  }

  @override
  final RecommendationType type;
  final Map<String, double> _factorScores;
  @override
  Map<String, double> get factorScores {
    if (_factorScores is EqualUnmodifiableMapView) return _factorScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_factorScores);
  }

  @override
  final String description;
  @override
  final DateTime dateGenerated;
  @override
  final bool isPersonalized;

  @override
  String toString() {
    return 'RecommendationEntity(bookId: $bookId, title: $title, author: $author, genre: $genre, confidenceScore: $confidenceScore, reasons: $reasons, type: $type, factorScores: $factorScores, description: $description, dateGenerated: $dateGenerated, isPersonalized: $isPersonalized)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationEntityImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.confidenceScore, confidenceScore) ||
                other.confidenceScore == confidenceScore) &&
            const DeepCollectionEquality().equals(other._reasons, _reasons) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._factorScores, _factorScores) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dateGenerated, dateGenerated) ||
                other.dateGenerated == dateGenerated) &&
            (identical(other.isPersonalized, isPersonalized) ||
                other.isPersonalized == isPersonalized));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      genre,
      confidenceScore,
      const DeepCollectionEquality().hash(_reasons),
      type,
      const DeepCollectionEquality().hash(_factorScores),
      description,
      dateGenerated,
      isPersonalized);

  /// Create a copy of RecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationEntityImplCopyWith<_$RecommendationEntityImpl>
      get copyWith =>
          __$$RecommendationEntityImplCopyWithImpl<_$RecommendationEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationEntityImplToJson(
      this,
    );
  }
}

abstract class _RecommendationEntity implements RecommendationEntity {
  const factory _RecommendationEntity(
      {required final String bookId,
      required final String title,
      required final String author,
      required final String genre,
      required final double confidenceScore,
      required final List<String> reasons,
      required final RecommendationType type,
      required final Map<String, double> factorScores,
      required final String description,
      required final DateTime dateGenerated,
      required final bool isPersonalized}) = _$RecommendationEntityImpl;

  factory _RecommendationEntity.fromJson(Map<String, dynamic> json) =
      _$RecommendationEntityImpl.fromJson;

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
  List<String> get reasons;
  @override
  RecommendationType get type;
  @override
  Map<String, double> get factorScores;
  @override
  String get description;
  @override
  DateTime get dateGenerated;
  @override
  bool get isPersonalized;

  /// Create a copy of RecommendationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationEntityImplCopyWith<_$RecommendationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InsightEntity _$InsightEntityFromJson(Map<String, dynamic> json) {
  return _InsightEntity.fromJson(json);
}

/// @nodoc
mixin _$InsightEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  InsightType get type => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  List<String> get supportingData => throw _privateConstructorUsedError;
  DateTime get dateGenerated => throw _privateConstructorUsedError;
  bool get isActionable => throw _privateConstructorUsedError;
  String? get actionSuggestion => throw _privateConstructorUsedError;
  InsightCategory get category => throw _privateConstructorUsedError;
  double get impactScore => throw _privateConstructorUsedError;

  /// Serializes this InsightEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsightEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsightEntityCopyWith<InsightEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightEntityCopyWith<$Res> {
  factory $InsightEntityCopyWith(
          InsightEntity value, $Res Function(InsightEntity) then) =
      _$InsightEntityCopyWithImpl<$Res, InsightEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      InsightType type,
      double confidence,
      List<String> supportingData,
      DateTime dateGenerated,
      bool isActionable,
      String? actionSuggestion,
      InsightCategory category,
      double impactScore});
}

/// @nodoc
class _$InsightEntityCopyWithImpl<$Res, $Val extends InsightEntity>
    implements $InsightEntityCopyWith<$Res> {
  _$InsightEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsightEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? confidence = null,
    Object? supportingData = null,
    Object? dateGenerated = null,
    Object? isActionable = null,
    Object? actionSuggestion = freezed,
    Object? category = null,
    Object? impactScore = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InsightType,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      supportingData: null == supportingData
          ? _value.supportingData
          : supportingData // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateGenerated: null == dateGenerated
          ? _value.dateGenerated
          : dateGenerated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActionable: null == isActionable
          ? _value.isActionable
          : isActionable // ignore: cast_nullable_to_non_nullable
              as bool,
      actionSuggestion: freezed == actionSuggestion
          ? _value.actionSuggestion
          : actionSuggestion // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as InsightCategory,
      impactScore: null == impactScore
          ? _value.impactScore
          : impactScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsightEntityImplCopyWith<$Res>
    implements $InsightEntityCopyWith<$Res> {
  factory _$$InsightEntityImplCopyWith(
          _$InsightEntityImpl value, $Res Function(_$InsightEntityImpl) then) =
      __$$InsightEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      InsightType type,
      double confidence,
      List<String> supportingData,
      DateTime dateGenerated,
      bool isActionable,
      String? actionSuggestion,
      InsightCategory category,
      double impactScore});
}

/// @nodoc
class __$$InsightEntityImplCopyWithImpl<$Res>
    extends _$InsightEntityCopyWithImpl<$Res, _$InsightEntityImpl>
    implements _$$InsightEntityImplCopyWith<$Res> {
  __$$InsightEntityImplCopyWithImpl(
      _$InsightEntityImpl _value, $Res Function(_$InsightEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? confidence = null,
    Object? supportingData = null,
    Object? dateGenerated = null,
    Object? isActionable = null,
    Object? actionSuggestion = freezed,
    Object? category = null,
    Object? impactScore = null,
  }) {
    return _then(_$InsightEntityImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InsightType,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      supportingData: null == supportingData
          ? _value._supportingData
          : supportingData // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateGenerated: null == dateGenerated
          ? _value.dateGenerated
          : dateGenerated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActionable: null == isActionable
          ? _value.isActionable
          : isActionable // ignore: cast_nullable_to_non_nullable
              as bool,
      actionSuggestion: freezed == actionSuggestion
          ? _value.actionSuggestion
          : actionSuggestion // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as InsightCategory,
      impactScore: null == impactScore
          ? _value.impactScore
          : impactScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsightEntityImpl implements _InsightEntity {
  const _$InsightEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.confidence,
      required final List<String> supportingData,
      required this.dateGenerated,
      required this.isActionable,
      required this.actionSuggestion,
      required this.category,
      required this.impactScore})
      : _supportingData = supportingData;

  factory _$InsightEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsightEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final InsightType type;
  @override
  final double confidence;
  final List<String> _supportingData;
  @override
  List<String> get supportingData {
    if (_supportingData is EqualUnmodifiableListView) return _supportingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportingData);
  }

  @override
  final DateTime dateGenerated;
  @override
  final bool isActionable;
  @override
  final String? actionSuggestion;
  @override
  final InsightCategory category;
  @override
  final double impactScore;

  @override
  String toString() {
    return 'InsightEntity(id: $id, title: $title, description: $description, type: $type, confidence: $confidence, supportingData: $supportingData, dateGenerated: $dateGenerated, isActionable: $isActionable, actionSuggestion: $actionSuggestion, category: $category, impactScore: $impactScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsightEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._supportingData, _supportingData) &&
            (identical(other.dateGenerated, dateGenerated) ||
                other.dateGenerated == dateGenerated) &&
            (identical(other.isActionable, isActionable) ||
                other.isActionable == isActionable) &&
            (identical(other.actionSuggestion, actionSuggestion) ||
                other.actionSuggestion == actionSuggestion) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.impactScore, impactScore) ||
                other.impactScore == impactScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      confidence,
      const DeepCollectionEquality().hash(_supportingData),
      dateGenerated,
      isActionable,
      actionSuggestion,
      category,
      impactScore);

  /// Create a copy of InsightEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsightEntityImplCopyWith<_$InsightEntityImpl> get copyWith =>
      __$$InsightEntityImplCopyWithImpl<_$InsightEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsightEntityImplToJson(
      this,
    );
  }
}

abstract class _InsightEntity implements InsightEntity {
  const factory _InsightEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final InsightType type,
      required final double confidence,
      required final List<String> supportingData,
      required final DateTime dateGenerated,
      required final bool isActionable,
      required final String? actionSuggestion,
      required final InsightCategory category,
      required final double impactScore}) = _$InsightEntityImpl;

  factory _InsightEntity.fromJson(Map<String, dynamic> json) =
      _$InsightEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  InsightType get type;
  @override
  double get confidence;
  @override
  List<String> get supportingData;
  @override
  DateTime get dateGenerated;
  @override
  bool get isActionable;
  @override
  String? get actionSuggestion;
  @override
  InsightCategory get category;
  @override
  double get impactScore;

  /// Create a copy of InsightEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsightEntityImplCopyWith<_$InsightEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AchievementEntity _$AchievementEntityFromJson(Map<String, dynamic> json) {
  return _AchievementEntity.fromJson(json);
}

/// @nodoc
mixin _$AchievementEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  AchievementType get type => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  bool get isUnlocked => throw _privateConstructorUsedError;
  DateTime? get unlockDate => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  List<String> get requirements => throw _privateConstructorUsedError;
  double get rarity => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this AchievementEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementEntityCopyWith<AchievementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementEntityCopyWith<$Res> {
  factory $AchievementEntityCopyWith(
          AchievementEntity value, $Res Function(AchievementEntity) then) =
      _$AchievementEntityCopyWithImpl<$Res, AchievementEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      AchievementType type,
      int level,
      double progress,
      bool isUnlocked,
      DateTime? unlockDate,
      String iconPath,
      List<String> requirements,
      double rarity,
      int points,
      String category});
}

/// @nodoc
class _$AchievementEntityCopyWithImpl<$Res, $Val extends AchievementEntity>
    implements $AchievementEntityCopyWith<$Res> {
  _$AchievementEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? level = null,
    Object? progress = null,
    Object? isUnlocked = null,
    Object? unlockDate = freezed,
    Object? iconPath = null,
    Object? requirements = null,
    Object? rarity = null,
    Object? points = null,
    Object? category = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AchievementType,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      unlockDate: freezed == unlockDate
          ? _value.unlockDate
          : unlockDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as double,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementEntityImplCopyWith<$Res>
    implements $AchievementEntityCopyWith<$Res> {
  factory _$$AchievementEntityImplCopyWith(_$AchievementEntityImpl value,
          $Res Function(_$AchievementEntityImpl) then) =
      __$$AchievementEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      AchievementType type,
      int level,
      double progress,
      bool isUnlocked,
      DateTime? unlockDate,
      String iconPath,
      List<String> requirements,
      double rarity,
      int points,
      String category});
}

/// @nodoc
class __$$AchievementEntityImplCopyWithImpl<$Res>
    extends _$AchievementEntityCopyWithImpl<$Res, _$AchievementEntityImpl>
    implements _$$AchievementEntityImplCopyWith<$Res> {
  __$$AchievementEntityImplCopyWithImpl(_$AchievementEntityImpl _value,
      $Res Function(_$AchievementEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? level = null,
    Object? progress = null,
    Object? isUnlocked = null,
    Object? unlockDate = freezed,
    Object? iconPath = null,
    Object? requirements = null,
    Object? rarity = null,
    Object? points = null,
    Object? category = null,
  }) {
    return _then(_$AchievementEntityImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AchievementType,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      isUnlocked: null == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      unlockDate: freezed == unlockDate
          ? _value.unlockDate
          : unlockDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as double,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementEntityImpl implements _AchievementEntity {
  const _$AchievementEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.level,
      required this.progress,
      required this.isUnlocked,
      required this.unlockDate,
      required this.iconPath,
      required final List<String> requirements,
      required this.rarity,
      required this.points,
      required this.category})
      : _requirements = requirements;

  factory _$AchievementEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final AchievementType type;
  @override
  final int level;
  @override
  final double progress;
  @override
  final bool isUnlocked;
  @override
  final DateTime? unlockDate;
  @override
  final String iconPath;
  final List<String> _requirements;
  @override
  List<String> get requirements {
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  @override
  final double rarity;
  @override
  final int points;
  @override
  final String category;

  @override
  String toString() {
    return 'AchievementEntity(id: $id, title: $title, description: $description, type: $type, level: $level, progress: $progress, isUnlocked: $isUnlocked, unlockDate: $unlockDate, iconPath: $iconPath, requirements: $requirements, rarity: $rarity, points: $points, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.unlockDate, unlockDate) ||
                other.unlockDate == unlockDate) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      level,
      progress,
      isUnlocked,
      unlockDate,
      iconPath,
      const DeepCollectionEquality().hash(_requirements),
      rarity,
      points,
      category);

  /// Create a copy of AchievementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementEntityImplCopyWith<_$AchievementEntityImpl> get copyWith =>
      __$$AchievementEntityImplCopyWithImpl<_$AchievementEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementEntityImplToJson(
      this,
    );
  }
}

abstract class _AchievementEntity implements AchievementEntity {
  const factory _AchievementEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final AchievementType type,
      required final int level,
      required final double progress,
      required final bool isUnlocked,
      required final DateTime? unlockDate,
      required final String iconPath,
      required final List<String> requirements,
      required final double rarity,
      required final int points,
      required final String category}) = _$AchievementEntityImpl;

  factory _AchievementEntity.fromJson(Map<String, dynamic> json) =
      _$AchievementEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  AchievementType get type;
  @override
  int get level;
  @override
  double get progress;
  @override
  bool get isUnlocked;
  @override
  DateTime? get unlockDate;
  @override
  String get iconPath;
  @override
  List<String> get requirements;
  @override
  double get rarity;
  @override
  int get points;
  @override
  String get category;

  /// Create a copy of AchievementEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementEntityImplCopyWith<_$AchievementEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingStreakEntity _$ReadingStreakEntityFromJson(Map<String, dynamic> json) {
  return _ReadingStreakEntity.fromJson(json);
}

/// @nodoc
mixin _$ReadingStreakEntity {
  String get id => throw _privateConstructorUsedError;
  int get currentStreak => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get lastReadingDate => throw _privateConstructorUsedError;
  List<DateTime> get streakDates => throw _privateConstructorUsedError;
  double get averagePagesPerDay => throw _privateConstructorUsedError;
  double get consistencyScore => throw _privateConstructorUsedError;
  List<String> get milestones => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get totalStreaks => throw _privateConstructorUsedError;
  double get successRate => throw _privateConstructorUsedError;

  /// Serializes this ReadingStreakEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingStreakEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingStreakEntityCopyWith<ReadingStreakEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingStreakEntityCopyWith<$Res> {
  factory $ReadingStreakEntityCopyWith(
          ReadingStreakEntity value, $Res Function(ReadingStreakEntity) then) =
      _$ReadingStreakEntityCopyWithImpl<$Res, ReadingStreakEntity>;
  @useResult
  $Res call(
      {String id,
      int currentStreak,
      int longestStreak,
      DateTime startDate,
      DateTime lastReadingDate,
      List<DateTime> streakDates,
      double averagePagesPerDay,
      double consistencyScore,
      List<String> milestones,
      bool isActive,
      int totalStreaks,
      double successRate});
}

/// @nodoc
class _$ReadingStreakEntityCopyWithImpl<$Res, $Val extends ReadingStreakEntity>
    implements $ReadingStreakEntityCopyWith<$Res> {
  _$ReadingStreakEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingStreakEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? startDate = null,
    Object? lastReadingDate = null,
    Object? streakDates = null,
    Object? averagePagesPerDay = null,
    Object? consistencyScore = null,
    Object? milestones = null,
    Object? isActive = null,
    Object? totalStreaks = null,
    Object? successRate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastReadingDate: null == lastReadingDate
          ? _value.lastReadingDate
          : lastReadingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      streakDates: null == streakDates
          ? _value.streakDates
          : streakDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      averagePagesPerDay: null == averagePagesPerDay
          ? _value.averagePagesPerDay
          : averagePagesPerDay // ignore: cast_nullable_to_non_nullable
              as double,
      consistencyScore: null == consistencyScore
          ? _value.consistencyScore
          : consistencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      milestones: null == milestones
          ? _value.milestones
          : milestones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      totalStreaks: null == totalStreaks
          ? _value.totalStreaks
          : totalStreaks // ignore: cast_nullable_to_non_nullable
              as int,
      successRate: null == successRate
          ? _value.successRate
          : successRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingStreakEntityImplCopyWith<$Res>
    implements $ReadingStreakEntityCopyWith<$Res> {
  factory _$$ReadingStreakEntityImplCopyWith(_$ReadingStreakEntityImpl value,
          $Res Function(_$ReadingStreakEntityImpl) then) =
      __$$ReadingStreakEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int currentStreak,
      int longestStreak,
      DateTime startDate,
      DateTime lastReadingDate,
      List<DateTime> streakDates,
      double averagePagesPerDay,
      double consistencyScore,
      List<String> milestones,
      bool isActive,
      int totalStreaks,
      double successRate});
}

/// @nodoc
class __$$ReadingStreakEntityImplCopyWithImpl<$Res>
    extends _$ReadingStreakEntityCopyWithImpl<$Res, _$ReadingStreakEntityImpl>
    implements _$$ReadingStreakEntityImplCopyWith<$Res> {
  __$$ReadingStreakEntityImplCopyWithImpl(_$ReadingStreakEntityImpl _value,
      $Res Function(_$ReadingStreakEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingStreakEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? startDate = null,
    Object? lastReadingDate = null,
    Object? streakDates = null,
    Object? averagePagesPerDay = null,
    Object? consistencyScore = null,
    Object? milestones = null,
    Object? isActive = null,
    Object? totalStreaks = null,
    Object? successRate = null,
  }) {
    return _then(_$ReadingStreakEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastReadingDate: null == lastReadingDate
          ? _value.lastReadingDate
          : lastReadingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      streakDates: null == streakDates
          ? _value._streakDates
          : streakDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      averagePagesPerDay: null == averagePagesPerDay
          ? _value.averagePagesPerDay
          : averagePagesPerDay // ignore: cast_nullable_to_non_nullable
              as double,
      consistencyScore: null == consistencyScore
          ? _value.consistencyScore
          : consistencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      milestones: null == milestones
          ? _value._milestones
          : milestones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      totalStreaks: null == totalStreaks
          ? _value.totalStreaks
          : totalStreaks // ignore: cast_nullable_to_non_nullable
              as int,
      successRate: null == successRate
          ? _value.successRate
          : successRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingStreakEntityImpl implements _ReadingStreakEntity {
  const _$ReadingStreakEntityImpl(
      {required this.id,
      required this.currentStreak,
      required this.longestStreak,
      required this.startDate,
      required this.lastReadingDate,
      required final List<DateTime> streakDates,
      required this.averagePagesPerDay,
      required this.consistencyScore,
      required final List<String> milestones,
      required this.isActive,
      required this.totalStreaks,
      required this.successRate})
      : _streakDates = streakDates,
        _milestones = milestones;

  factory _$ReadingStreakEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingStreakEntityImplFromJson(json);

  @override
  final String id;
  @override
  final int currentStreak;
  @override
  final int longestStreak;
  @override
  final DateTime startDate;
  @override
  final DateTime lastReadingDate;
  final List<DateTime> _streakDates;
  @override
  List<DateTime> get streakDates {
    if (_streakDates is EqualUnmodifiableListView) return _streakDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streakDates);
  }

  @override
  final double averagePagesPerDay;
  @override
  final double consistencyScore;
  final List<String> _milestones;
  @override
  List<String> get milestones {
    if (_milestones is EqualUnmodifiableListView) return _milestones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_milestones);
  }

  @override
  final bool isActive;
  @override
  final int totalStreaks;
  @override
  final double successRate;

  @override
  String toString() {
    return 'ReadingStreakEntity(id: $id, currentStreak: $currentStreak, longestStreak: $longestStreak, startDate: $startDate, lastReadingDate: $lastReadingDate, streakDates: $streakDates, averagePagesPerDay: $averagePagesPerDay, consistencyScore: $consistencyScore, milestones: $milestones, isActive: $isActive, totalStreaks: $totalStreaks, successRate: $successRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingStreakEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.lastReadingDate, lastReadingDate) ||
                other.lastReadingDate == lastReadingDate) &&
            const DeepCollectionEquality()
                .equals(other._streakDates, _streakDates) &&
            (identical(other.averagePagesPerDay, averagePagesPerDay) ||
                other.averagePagesPerDay == averagePagesPerDay) &&
            (identical(other.consistencyScore, consistencyScore) ||
                other.consistencyScore == consistencyScore) &&
            const DeepCollectionEquality()
                .equals(other._milestones, _milestones) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.totalStreaks, totalStreaks) ||
                other.totalStreaks == totalStreaks) &&
            (identical(other.successRate, successRate) ||
                other.successRate == successRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentStreak,
      longestStreak,
      startDate,
      lastReadingDate,
      const DeepCollectionEquality().hash(_streakDates),
      averagePagesPerDay,
      consistencyScore,
      const DeepCollectionEquality().hash(_milestones),
      isActive,
      totalStreaks,
      successRate);

  /// Create a copy of ReadingStreakEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingStreakEntityImplCopyWith<_$ReadingStreakEntityImpl> get copyWith =>
      __$$ReadingStreakEntityImplCopyWithImpl<_$ReadingStreakEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingStreakEntityImplToJson(
      this,
    );
  }
}

abstract class _ReadingStreakEntity implements ReadingStreakEntity {
  const factory _ReadingStreakEntity(
      {required final String id,
      required final int currentStreak,
      required final int longestStreak,
      required final DateTime startDate,
      required final DateTime lastReadingDate,
      required final List<DateTime> streakDates,
      required final double averagePagesPerDay,
      required final double consistencyScore,
      required final List<String> milestones,
      required final bool isActive,
      required final int totalStreaks,
      required final double successRate}) = _$ReadingStreakEntityImpl;

  factory _ReadingStreakEntity.fromJson(Map<String, dynamic> json) =
      _$ReadingStreakEntityImpl.fromJson;

  @override
  String get id;
  @override
  int get currentStreak;
  @override
  int get longestStreak;
  @override
  DateTime get startDate;
  @override
  DateTime get lastReadingDate;
  @override
  List<DateTime> get streakDates;
  @override
  double get averagePagesPerDay;
  @override
  double get consistencyScore;
  @override
  List<String> get milestones;
  @override
  bool get isActive;
  @override
  int get totalStreaks;
  @override
  double get successRate;

  /// Create a copy of ReadingStreakEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingStreakEntityImplCopyWith<_$ReadingStreakEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
