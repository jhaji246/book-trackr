// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_reading_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialReadingEntity _$SocialReadingEntityFromJson(Map<String, dynamic> json) {
  return _SocialReadingEntity.fromJson(json);
}

/// @nodoc
mixin _$SocialReadingEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  SocialProfileEntity get profile => throw _privateConstructorUsedError;
  List<SocialConnectionEntity> get connections =>
      throw _privateConstructorUsedError;
  List<ReadingChallengeEntity> get challenges =>
      throw _privateConstructorUsedError;
  List<ReadingGroupEntity> get groups => throw _privateConstructorUsedError;
  List<SocialEventEntity> get events => throw _privateConstructorUsedError;
  List<AchievementEntity> get achievements =>
      throw _privateConstructorUsedError;
  List<LeaderboardEntity> get leaderboards =>
      throw _privateConstructorUsedError;
  List<SocialActivityEntity> get activities =>
      throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this SocialReadingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialReadingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialReadingEntityCopyWith<SocialReadingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialReadingEntityCopyWith<$Res> {
  factory $SocialReadingEntityCopyWith(
          SocialReadingEntity value, $Res Function(SocialReadingEntity) then) =
      _$SocialReadingEntityCopyWithImpl<$Res, SocialReadingEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      SocialProfileEntity profile,
      List<SocialConnectionEntity> connections,
      List<ReadingChallengeEntity> challenges,
      List<ReadingGroupEntity> groups,
      List<SocialEventEntity> events,
      List<AchievementEntity> achievements,
      List<LeaderboardEntity> leaderboards,
      List<SocialActivityEntity> activities,
      DateTime dateCreated,
      DateTime lastUpdated});

  $SocialProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class _$SocialReadingEntityCopyWithImpl<$Res, $Val extends SocialReadingEntity>
    implements $SocialReadingEntityCopyWith<$Res> {
  _$SocialReadingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialReadingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? profile = null,
    Object? connections = null,
    Object? challenges = null,
    Object? groups = null,
    Object? events = null,
    Object? achievements = null,
    Object? leaderboards = null,
    Object? activities = null,
    Object? dateCreated = null,
    Object? lastUpdated = null,
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
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as SocialProfileEntity,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SocialConnectionEntity>,
      challenges: null == challenges
          ? _value.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<ReadingChallengeEntity>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<ReadingGroupEntity>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<SocialEventEntity>,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<AchievementEntity>,
      leaderboards: null == leaderboards
          ? _value.leaderboards
          : leaderboards // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardEntity>,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<SocialActivityEntity>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of SocialReadingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialProfileEntityCopyWith<$Res> get profile {
    return $SocialProfileEntityCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocialReadingEntityImplCopyWith<$Res>
    implements $SocialReadingEntityCopyWith<$Res> {
  factory _$$SocialReadingEntityImplCopyWith(_$SocialReadingEntityImpl value,
          $Res Function(_$SocialReadingEntityImpl) then) =
      __$$SocialReadingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      SocialProfileEntity profile,
      List<SocialConnectionEntity> connections,
      List<ReadingChallengeEntity> challenges,
      List<ReadingGroupEntity> groups,
      List<SocialEventEntity> events,
      List<AchievementEntity> achievements,
      List<LeaderboardEntity> leaderboards,
      List<SocialActivityEntity> activities,
      DateTime dateCreated,
      DateTime lastUpdated});

  @override
  $SocialProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$SocialReadingEntityImplCopyWithImpl<$Res>
    extends _$SocialReadingEntityCopyWithImpl<$Res, _$SocialReadingEntityImpl>
    implements _$$SocialReadingEntityImplCopyWith<$Res> {
  __$$SocialReadingEntityImplCopyWithImpl(_$SocialReadingEntityImpl _value,
      $Res Function(_$SocialReadingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialReadingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? profile = null,
    Object? connections = null,
    Object? challenges = null,
    Object? groups = null,
    Object? events = null,
    Object? achievements = null,
    Object? leaderboards = null,
    Object? activities = null,
    Object? dateCreated = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$SocialReadingEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as SocialProfileEntity,
      connections: null == connections
          ? _value._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SocialConnectionEntity>,
      challenges: null == challenges
          ? _value._challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<ReadingChallengeEntity>,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<ReadingGroupEntity>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<SocialEventEntity>,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<AchievementEntity>,
      leaderboards: null == leaderboards
          ? _value._leaderboards
          : leaderboards // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardEntity>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<SocialActivityEntity>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
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
class _$SocialReadingEntityImpl implements _SocialReadingEntity {
  const _$SocialReadingEntityImpl(
      {required this.id,
      required this.userId,
      required this.profile,
      required final List<SocialConnectionEntity> connections,
      required final List<ReadingChallengeEntity> challenges,
      required final List<ReadingGroupEntity> groups,
      required final List<SocialEventEntity> events,
      required final List<AchievementEntity> achievements,
      required final List<LeaderboardEntity> leaderboards,
      required final List<SocialActivityEntity> activities,
      required this.dateCreated,
      required this.lastUpdated})
      : _connections = connections,
        _challenges = challenges,
        _groups = groups,
        _events = events,
        _achievements = achievements,
        _leaderboards = leaderboards,
        _activities = activities;

  factory _$SocialReadingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialReadingEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final SocialProfileEntity profile;
  final List<SocialConnectionEntity> _connections;
  @override
  List<SocialConnectionEntity> get connections {
    if (_connections is EqualUnmodifiableListView) return _connections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connections);
  }

  final List<ReadingChallengeEntity> _challenges;
  @override
  List<ReadingChallengeEntity> get challenges {
    if (_challenges is EqualUnmodifiableListView) return _challenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challenges);
  }

  final List<ReadingGroupEntity> _groups;
  @override
  List<ReadingGroupEntity> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<SocialEventEntity> _events;
  @override
  List<SocialEventEntity> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<AchievementEntity> _achievements;
  @override
  List<AchievementEntity> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  final List<LeaderboardEntity> _leaderboards;
  @override
  List<LeaderboardEntity> get leaderboards {
    if (_leaderboards is EqualUnmodifiableListView) return _leaderboards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaderboards);
  }

  final List<SocialActivityEntity> _activities;
  @override
  List<SocialActivityEntity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final DateTime dateCreated;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'SocialReadingEntity(id: $id, userId: $userId, profile: $profile, connections: $connections, challenges: $challenges, groups: $groups, events: $events, achievements: $achievements, leaderboards: $leaderboards, activities: $activities, dateCreated: $dateCreated, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialReadingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other._connections, _connections) &&
            const DeepCollectionEquality()
                .equals(other._challenges, _challenges) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            const DeepCollectionEquality()
                .equals(other._leaderboards, _leaderboards) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      profile,
      const DeepCollectionEquality().hash(_connections),
      const DeepCollectionEquality().hash(_challenges),
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_achievements),
      const DeepCollectionEquality().hash(_leaderboards),
      const DeepCollectionEquality().hash(_activities),
      dateCreated,
      lastUpdated);

  /// Create a copy of SocialReadingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialReadingEntityImplCopyWith<_$SocialReadingEntityImpl> get copyWith =>
      __$$SocialReadingEntityImplCopyWithImpl<_$SocialReadingEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialReadingEntityImplToJson(
      this,
    );
  }
}

abstract class _SocialReadingEntity implements SocialReadingEntity {
  const factory _SocialReadingEntity(
      {required final String id,
      required final String userId,
      required final SocialProfileEntity profile,
      required final List<SocialConnectionEntity> connections,
      required final List<ReadingChallengeEntity> challenges,
      required final List<ReadingGroupEntity> groups,
      required final List<SocialEventEntity> events,
      required final List<AchievementEntity> achievements,
      required final List<LeaderboardEntity> leaderboards,
      required final List<SocialActivityEntity> activities,
      required final DateTime dateCreated,
      required final DateTime lastUpdated}) = _$SocialReadingEntityImpl;

  factory _SocialReadingEntity.fromJson(Map<String, dynamic> json) =
      _$SocialReadingEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  SocialProfileEntity get profile;
  @override
  List<SocialConnectionEntity> get connections;
  @override
  List<ReadingChallengeEntity> get challenges;
  @override
  List<ReadingGroupEntity> get groups;
  @override
  List<SocialEventEntity> get events;
  @override
  List<AchievementEntity> get achievements;
  @override
  List<LeaderboardEntity> get leaderboards;
  @override
  List<SocialActivityEntity> get activities;
  @override
  DateTime get dateCreated;
  @override
  DateTime get lastUpdated;

  /// Create a copy of SocialReadingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialReadingEntityImplCopyWith<_$SocialReadingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialProfileEntity _$SocialProfileEntityFromJson(Map<String, dynamic> json) {
  return _SocialProfileEntity.fromJson(json);
}

/// @nodoc
mixin _$SocialProfileEntity {
  String get userId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String> get interests => throw _privateConstructorUsedError;
  List<String> get favoriteGenres => throw _privateConstructorUsedError;
  List<String> get favoriteAuthors => throw _privateConstructorUsedError;
  int get totalBooksRead => throw _privateConstructorUsedError;
  int get totalPagesRead => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  int get readingStreak => throw _privateConstructorUsedError;
  int get totalPoints => throw _privateConstructorUsedError;
  String get readingLevel => throw _privateConstructorUsedError;
  List<String> get badges => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  DateTime get joinDate => throw _privateConstructorUsedError;
  DateTime get lastActive => throw _privateConstructorUsedError;

  /// Serializes this SocialProfileEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialProfileEntityCopyWith<SocialProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialProfileEntityCopyWith<$Res> {
  factory $SocialProfileEntityCopyWith(
          SocialProfileEntity value, $Res Function(SocialProfileEntity) then) =
      _$SocialProfileEntityCopyWithImpl<$Res, SocialProfileEntity>;
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? bio,
      String? avatarUrl,
      String? location,
      List<String> interests,
      List<String> favoriteGenres,
      List<String> favoriteAuthors,
      int totalBooksRead,
      int totalPagesRead,
      double averageRating,
      int readingStreak,
      int totalPoints,
      String readingLevel,
      List<String> badges,
      bool isPublic,
      DateTime joinDate,
      DateTime lastActive});
}

/// @nodoc
class _$SocialProfileEntityCopyWithImpl<$Res, $Val extends SocialProfileEntity>
    implements $SocialProfileEntityCopyWith<$Res> {
  _$SocialProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? bio = freezed,
    Object? avatarUrl = freezed,
    Object? location = freezed,
    Object? interests = null,
    Object? favoriteGenres = null,
    Object? favoriteAuthors = null,
    Object? totalBooksRead = null,
    Object? totalPagesRead = null,
    Object? averageRating = null,
    Object? readingStreak = null,
    Object? totalPoints = null,
    Object? readingLevel = null,
    Object? badges = null,
    Object? isPublic = null,
    Object? joinDate = null,
    Object? lastActive = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteGenres: null == favoriteGenres
          ? _value.favoriteGenres
          : favoriteGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteAuthors: null == favoriteAuthors
          ? _value.favoriteAuthors
          : favoriteAuthors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalBooksRead: null == totalBooksRead
          ? _value.totalBooksRead
          : totalBooksRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesRead: null == totalPagesRead
          ? _value.totalPagesRead
          : totalPagesRead // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      readingStreak: null == readingStreak
          ? _value.readingStreak
          : readingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      totalPoints: null == totalPoints
          ? _value.totalPoints
          : totalPoints // ignore: cast_nullable_to_non_nullable
              as int,
      readingLevel: null == readingLevel
          ? _value.readingLevel
          : readingLevel // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      joinDate: null == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialProfileEntityImplCopyWith<$Res>
    implements $SocialProfileEntityCopyWith<$Res> {
  factory _$$SocialProfileEntityImplCopyWith(_$SocialProfileEntityImpl value,
          $Res Function(_$SocialProfileEntityImpl) then) =
      __$$SocialProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? bio,
      String? avatarUrl,
      String? location,
      List<String> interests,
      List<String> favoriteGenres,
      List<String> favoriteAuthors,
      int totalBooksRead,
      int totalPagesRead,
      double averageRating,
      int readingStreak,
      int totalPoints,
      String readingLevel,
      List<String> badges,
      bool isPublic,
      DateTime joinDate,
      DateTime lastActive});
}

/// @nodoc
class __$$SocialProfileEntityImplCopyWithImpl<$Res>
    extends _$SocialProfileEntityCopyWithImpl<$Res, _$SocialProfileEntityImpl>
    implements _$$SocialProfileEntityImplCopyWith<$Res> {
  __$$SocialProfileEntityImplCopyWithImpl(_$SocialProfileEntityImpl _value,
      $Res Function(_$SocialProfileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? bio = freezed,
    Object? avatarUrl = freezed,
    Object? location = freezed,
    Object? interests = null,
    Object? favoriteGenres = null,
    Object? favoriteAuthors = null,
    Object? totalBooksRead = null,
    Object? totalPagesRead = null,
    Object? averageRating = null,
    Object? readingStreak = null,
    Object? totalPoints = null,
    Object? readingLevel = null,
    Object? badges = null,
    Object? isPublic = null,
    Object? joinDate = null,
    Object? lastActive = null,
  }) {
    return _then(_$SocialProfileEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteGenres: null == favoriteGenres
          ? _value._favoriteGenres
          : favoriteGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteAuthors: null == favoriteAuthors
          ? _value._favoriteAuthors
          : favoriteAuthors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalBooksRead: null == totalBooksRead
          ? _value.totalBooksRead
          : totalBooksRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesRead: null == totalPagesRead
          ? _value.totalPagesRead
          : totalPagesRead // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      readingStreak: null == readingStreak
          ? _value.readingStreak
          : readingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      totalPoints: null == totalPoints
          ? _value.totalPoints
          : totalPoints // ignore: cast_nullable_to_non_nullable
              as int,
      readingLevel: null == readingLevel
          ? _value.readingLevel
          : readingLevel // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      joinDate: null == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialProfileEntityImpl implements _SocialProfileEntity {
  const _$SocialProfileEntityImpl(
      {required this.userId,
      required this.displayName,
      required this.bio,
      required this.avatarUrl,
      required this.location,
      required final List<String> interests,
      required final List<String> favoriteGenres,
      required final List<String> favoriteAuthors,
      required this.totalBooksRead,
      required this.totalPagesRead,
      required this.averageRating,
      required this.readingStreak,
      required this.totalPoints,
      required this.readingLevel,
      required final List<String> badges,
      required this.isPublic,
      required this.joinDate,
      required this.lastActive})
      : _interests = interests,
        _favoriteGenres = favoriteGenres,
        _favoriteAuthors = favoriteAuthors,
        _badges = badges;

  factory _$SocialProfileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialProfileEntityImplFromJson(json);

  @override
  final String userId;
  @override
  final String displayName;
  @override
  final String? bio;
  @override
  final String? avatarUrl;
  @override
  final String? location;
  final List<String> _interests;
  @override
  List<String> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  final List<String> _favoriteGenres;
  @override
  List<String> get favoriteGenres {
    if (_favoriteGenres is EqualUnmodifiableListView) return _favoriteGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteGenres);
  }

  final List<String> _favoriteAuthors;
  @override
  List<String> get favoriteAuthors {
    if (_favoriteAuthors is EqualUnmodifiableListView) return _favoriteAuthors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteAuthors);
  }

  @override
  final int totalBooksRead;
  @override
  final int totalPagesRead;
  @override
  final double averageRating;
  @override
  final int readingStreak;
  @override
  final int totalPoints;
  @override
  final String readingLevel;
  final List<String> _badges;
  @override
  List<String> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final bool isPublic;
  @override
  final DateTime joinDate;
  @override
  final DateTime lastActive;

  @override
  String toString() {
    return 'SocialProfileEntity(userId: $userId, displayName: $displayName, bio: $bio, avatarUrl: $avatarUrl, location: $location, interests: $interests, favoriteGenres: $favoriteGenres, favoriteAuthors: $favoriteAuthors, totalBooksRead: $totalBooksRead, totalPagesRead: $totalPagesRead, averageRating: $averageRating, readingStreak: $readingStreak, totalPoints: $totalPoints, readingLevel: $readingLevel, badges: $badges, isPublic: $isPublic, joinDate: $joinDate, lastActive: $lastActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialProfileEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._favoriteGenres, _favoriteGenres) &&
            const DeepCollectionEquality()
                .equals(other._favoriteAuthors, _favoriteAuthors) &&
            (identical(other.totalBooksRead, totalBooksRead) ||
                other.totalBooksRead == totalBooksRead) &&
            (identical(other.totalPagesRead, totalPagesRead) ||
                other.totalPagesRead == totalPagesRead) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.readingStreak, readingStreak) ||
                other.readingStreak == readingStreak) &&
            (identical(other.totalPoints, totalPoints) ||
                other.totalPoints == totalPoints) &&
            (identical(other.readingLevel, readingLevel) ||
                other.readingLevel == readingLevel) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.joinDate, joinDate) ||
                other.joinDate == joinDate) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      displayName,
      bio,
      avatarUrl,
      location,
      const DeepCollectionEquality().hash(_interests),
      const DeepCollectionEquality().hash(_favoriteGenres),
      const DeepCollectionEquality().hash(_favoriteAuthors),
      totalBooksRead,
      totalPagesRead,
      averageRating,
      readingStreak,
      totalPoints,
      readingLevel,
      const DeepCollectionEquality().hash(_badges),
      isPublic,
      joinDate,
      lastActive);

  /// Create a copy of SocialProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialProfileEntityImplCopyWith<_$SocialProfileEntityImpl> get copyWith =>
      __$$SocialProfileEntityImplCopyWithImpl<_$SocialProfileEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialProfileEntityImplToJson(
      this,
    );
  }
}

abstract class _SocialProfileEntity implements SocialProfileEntity {
  const factory _SocialProfileEntity(
      {required final String userId,
      required final String displayName,
      required final String? bio,
      required final String? avatarUrl,
      required final String? location,
      required final List<String> interests,
      required final List<String> favoriteGenres,
      required final List<String> favoriteAuthors,
      required final int totalBooksRead,
      required final int totalPagesRead,
      required final double averageRating,
      required final int readingStreak,
      required final int totalPoints,
      required final String readingLevel,
      required final List<String> badges,
      required final bool isPublic,
      required final DateTime joinDate,
      required final DateTime lastActive}) = _$SocialProfileEntityImpl;

  factory _SocialProfileEntity.fromJson(Map<String, dynamic> json) =
      _$SocialProfileEntityImpl.fromJson;

  @override
  String get userId;
  @override
  String get displayName;
  @override
  String? get bio;
  @override
  String? get avatarUrl;
  @override
  String? get location;
  @override
  List<String> get interests;
  @override
  List<String> get favoriteGenres;
  @override
  List<String> get favoriteAuthors;
  @override
  int get totalBooksRead;
  @override
  int get totalPagesRead;
  @override
  double get averageRating;
  @override
  int get readingStreak;
  @override
  int get totalPoints;
  @override
  String get readingLevel;
  @override
  List<String> get badges;
  @override
  bool get isPublic;
  @override
  DateTime get joinDate;
  @override
  DateTime get lastActive;

  /// Create a copy of SocialProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialProfileEntityImplCopyWith<_$SocialProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialConnectionEntity _$SocialConnectionEntityFromJson(
    Map<String, dynamic> json) {
  return _SocialConnectionEntity.fromJson(json);
}

/// @nodoc
mixin _$SocialConnectionEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get connectedUserId => throw _privateConstructorUsedError;
  ConnectionStatus get status => throw _privateConstructorUsedError;
  DateTime get dateRequested => throw _privateConstructorUsedError;
  DateTime? get dateAccepted => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  int get mutualBooks => throw _privateConstructorUsedError;
  double get compatibilityScore => throw _privateConstructorUsedError;

  /// Serializes this SocialConnectionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialConnectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialConnectionEntityCopyWith<SocialConnectionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialConnectionEntityCopyWith<$Res> {
  factory $SocialConnectionEntityCopyWith(SocialConnectionEntity value,
          $Res Function(SocialConnectionEntity) then) =
      _$SocialConnectionEntityCopyWithImpl<$Res, SocialConnectionEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String connectedUserId,
      ConnectionStatus status,
      DateTime dateRequested,
      DateTime? dateAccepted,
      String? message,
      bool isFavorite,
      int mutualBooks,
      double compatibilityScore});
}

/// @nodoc
class _$SocialConnectionEntityCopyWithImpl<$Res,
        $Val extends SocialConnectionEntity>
    implements $SocialConnectionEntityCopyWith<$Res> {
  _$SocialConnectionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialConnectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? connectedUserId = null,
    Object? status = null,
    Object? dateRequested = null,
    Object? dateAccepted = freezed,
    Object? message = freezed,
    Object? isFavorite = null,
    Object? mutualBooks = null,
    Object? compatibilityScore = null,
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
      connectedUserId: null == connectedUserId
          ? _value.connectedUserId
          : connectedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      dateRequested: null == dateRequested
          ? _value.dateRequested
          : dateRequested // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateAccepted: freezed == dateAccepted
          ? _value.dateAccepted
          : dateAccepted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      mutualBooks: null == mutualBooks
          ? _value.mutualBooks
          : mutualBooks // ignore: cast_nullable_to_non_nullable
              as int,
      compatibilityScore: null == compatibilityScore
          ? _value.compatibilityScore
          : compatibilityScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialConnectionEntityImplCopyWith<$Res>
    implements $SocialConnectionEntityCopyWith<$Res> {
  factory _$$SocialConnectionEntityImplCopyWith(
          _$SocialConnectionEntityImpl value,
          $Res Function(_$SocialConnectionEntityImpl) then) =
      __$$SocialConnectionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String connectedUserId,
      ConnectionStatus status,
      DateTime dateRequested,
      DateTime? dateAccepted,
      String? message,
      bool isFavorite,
      int mutualBooks,
      double compatibilityScore});
}

/// @nodoc
class __$$SocialConnectionEntityImplCopyWithImpl<$Res>
    extends _$SocialConnectionEntityCopyWithImpl<$Res,
        _$SocialConnectionEntityImpl>
    implements _$$SocialConnectionEntityImplCopyWith<$Res> {
  __$$SocialConnectionEntityImplCopyWithImpl(
      _$SocialConnectionEntityImpl _value,
      $Res Function(_$SocialConnectionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialConnectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? connectedUserId = null,
    Object? status = null,
    Object? dateRequested = null,
    Object? dateAccepted = freezed,
    Object? message = freezed,
    Object? isFavorite = null,
    Object? mutualBooks = null,
    Object? compatibilityScore = null,
  }) {
    return _then(_$SocialConnectionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      connectedUserId: null == connectedUserId
          ? _value.connectedUserId
          : connectedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      dateRequested: null == dateRequested
          ? _value.dateRequested
          : dateRequested // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateAccepted: freezed == dateAccepted
          ? _value.dateAccepted
          : dateAccepted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      mutualBooks: null == mutualBooks
          ? _value.mutualBooks
          : mutualBooks // ignore: cast_nullable_to_non_nullable
              as int,
      compatibilityScore: null == compatibilityScore
          ? _value.compatibilityScore
          : compatibilityScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialConnectionEntityImpl implements _SocialConnectionEntity {
  const _$SocialConnectionEntityImpl(
      {required this.id,
      required this.userId,
      required this.connectedUserId,
      required this.status,
      required this.dateRequested,
      required this.dateAccepted,
      required this.message,
      required this.isFavorite,
      required this.mutualBooks,
      required this.compatibilityScore});

  factory _$SocialConnectionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialConnectionEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String connectedUserId;
  @override
  final ConnectionStatus status;
  @override
  final DateTime dateRequested;
  @override
  final DateTime? dateAccepted;
  @override
  final String? message;
  @override
  final bool isFavorite;
  @override
  final int mutualBooks;
  @override
  final double compatibilityScore;

  @override
  String toString() {
    return 'SocialConnectionEntity(id: $id, userId: $userId, connectedUserId: $connectedUserId, status: $status, dateRequested: $dateRequested, dateAccepted: $dateAccepted, message: $message, isFavorite: $isFavorite, mutualBooks: $mutualBooks, compatibilityScore: $compatibilityScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialConnectionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.connectedUserId, connectedUserId) ||
                other.connectedUserId == connectedUserId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateRequested, dateRequested) ||
                other.dateRequested == dateRequested) &&
            (identical(other.dateAccepted, dateAccepted) ||
                other.dateAccepted == dateAccepted) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.mutualBooks, mutualBooks) ||
                other.mutualBooks == mutualBooks) &&
            (identical(other.compatibilityScore, compatibilityScore) ||
                other.compatibilityScore == compatibilityScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      connectedUserId,
      status,
      dateRequested,
      dateAccepted,
      message,
      isFavorite,
      mutualBooks,
      compatibilityScore);

  /// Create a copy of SocialConnectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialConnectionEntityImplCopyWith<_$SocialConnectionEntityImpl>
      get copyWith => __$$SocialConnectionEntityImplCopyWithImpl<
          _$SocialConnectionEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialConnectionEntityImplToJson(
      this,
    );
  }
}

abstract class _SocialConnectionEntity implements SocialConnectionEntity {
  const factory _SocialConnectionEntity(
      {required final String id,
      required final String userId,
      required final String connectedUserId,
      required final ConnectionStatus status,
      required final DateTime dateRequested,
      required final DateTime? dateAccepted,
      required final String? message,
      required final bool isFavorite,
      required final int mutualBooks,
      required final double compatibilityScore}) = _$SocialConnectionEntityImpl;

  factory _SocialConnectionEntity.fromJson(Map<String, dynamic> json) =
      _$SocialConnectionEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get connectedUserId;
  @override
  ConnectionStatus get status;
  @override
  DateTime get dateRequested;
  @override
  DateTime? get dateAccepted;
  @override
  String? get message;
  @override
  bool get isFavorite;
  @override
  int get mutualBooks;
  @override
  double get compatibilityScore;

  /// Create a copy of SocialConnectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialConnectionEntityImplCopyWith<_$SocialConnectionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReadingChallengeEntity _$ReadingChallengeEntityFromJson(
    Map<String, dynamic> json) {
  return _ReadingChallengeEntity.fromJson(json);
}

/// @nodoc
mixin _$ReadingChallengeEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ChallengeType get type => throw _privateConstructorUsedError;
  ChallengeDifficulty get difficulty => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  int get targetValue => throw _privateConstructorUsedError;
  String get targetUnit => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  List<String> get winners => throw _privateConstructorUsedError;
  ChallengeStatus get status => throw _privateConstructorUsedError;
  Map<String, int> get participantProgress =>
      throw _privateConstructorUsedError;
  List<String> get rewards => throw _privateConstructorUsedError;
  int get maxParticipants => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  double get completionRate => throw _privateConstructorUsedError;

  /// Serializes this ReadingChallengeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingChallengeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingChallengeEntityCopyWith<ReadingChallengeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingChallengeEntityCopyWith<$Res> {
  factory $ReadingChallengeEntityCopyWith(ReadingChallengeEntity value,
          $Res Function(ReadingChallengeEntity) then) =
      _$ReadingChallengeEntityCopyWithImpl<$Res, ReadingChallengeEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      ChallengeType type,
      ChallengeDifficulty difficulty,
      DateTime startDate,
      DateTime endDate,
      int targetValue,
      String targetUnit,
      List<String> participants,
      List<String> winners,
      ChallengeStatus status,
      Map<String, int> participantProgress,
      List<String> rewards,
      int maxParticipants,
      bool isPublic,
      String creatorId,
      List<String> tags,
      double completionRate});
}

/// @nodoc
class _$ReadingChallengeEntityCopyWithImpl<$Res,
        $Val extends ReadingChallengeEntity>
    implements $ReadingChallengeEntityCopyWith<$Res> {
  _$ReadingChallengeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingChallengeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? difficulty = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? targetValue = null,
    Object? targetUnit = null,
    Object? participants = null,
    Object? winners = null,
    Object? status = null,
    Object? participantProgress = null,
    Object? rewards = null,
    Object? maxParticipants = null,
    Object? isPublic = null,
    Object? creatorId = null,
    Object? tags = null,
    Object? completionRate = null,
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
              as ChallengeType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as ChallengeDifficulty,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      targetValue: null == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int,
      targetUnit: null == targetUnit
          ? _value.targetUnit
          : targetUnit // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      winners: null == winners
          ? _value.winners
          : winners // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChallengeStatus,
      participantProgress: null == participantProgress
          ? _value.participantProgress
          : participantProgress // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      completionRate: null == completionRate
          ? _value.completionRate
          : completionRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingChallengeEntityImplCopyWith<$Res>
    implements $ReadingChallengeEntityCopyWith<$Res> {
  factory _$$ReadingChallengeEntityImplCopyWith(
          _$ReadingChallengeEntityImpl value,
          $Res Function(_$ReadingChallengeEntityImpl) then) =
      __$$ReadingChallengeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      ChallengeType type,
      ChallengeDifficulty difficulty,
      DateTime startDate,
      DateTime endDate,
      int targetValue,
      String targetUnit,
      List<String> participants,
      List<String> winners,
      ChallengeStatus status,
      Map<String, int> participantProgress,
      List<String> rewards,
      int maxParticipants,
      bool isPublic,
      String creatorId,
      List<String> tags,
      double completionRate});
}

/// @nodoc
class __$$ReadingChallengeEntityImplCopyWithImpl<$Res>
    extends _$ReadingChallengeEntityCopyWithImpl<$Res,
        _$ReadingChallengeEntityImpl>
    implements _$$ReadingChallengeEntityImplCopyWith<$Res> {
  __$$ReadingChallengeEntityImplCopyWithImpl(
      _$ReadingChallengeEntityImpl _value,
      $Res Function(_$ReadingChallengeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingChallengeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? difficulty = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? targetValue = null,
    Object? targetUnit = null,
    Object? participants = null,
    Object? winners = null,
    Object? status = null,
    Object? participantProgress = null,
    Object? rewards = null,
    Object? maxParticipants = null,
    Object? isPublic = null,
    Object? creatorId = null,
    Object? tags = null,
    Object? completionRate = null,
  }) {
    return _then(_$ReadingChallengeEntityImpl(
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
              as ChallengeType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as ChallengeDifficulty,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      targetValue: null == targetValue
          ? _value.targetValue
          : targetValue // ignore: cast_nullable_to_non_nullable
              as int,
      targetUnit: null == targetUnit
          ? _value.targetUnit
          : targetUnit // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      winners: null == winners
          ? _value._winners
          : winners // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChallengeStatus,
      participantProgress: null == participantProgress
          ? _value._participantProgress
          : participantProgress // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      completionRate: null == completionRate
          ? _value.completionRate
          : completionRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingChallengeEntityImpl implements _ReadingChallengeEntity {
  const _$ReadingChallengeEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.difficulty,
      required this.startDate,
      required this.endDate,
      required this.targetValue,
      required this.targetUnit,
      required final List<String> participants,
      required final List<String> winners,
      required this.status,
      required final Map<String, int> participantProgress,
      required final List<String> rewards,
      required this.maxParticipants,
      required this.isPublic,
      required this.creatorId,
      required final List<String> tags,
      required this.completionRate})
      : _participants = participants,
        _winners = winners,
        _participantProgress = participantProgress,
        _rewards = rewards,
        _tags = tags;

  factory _$ReadingChallengeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingChallengeEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final ChallengeType type;
  @override
  final ChallengeDifficulty difficulty;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int targetValue;
  @override
  final String targetUnit;
  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<String> _winners;
  @override
  List<String> get winners {
    if (_winners is EqualUnmodifiableListView) return _winners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_winners);
  }

  @override
  final ChallengeStatus status;
  final Map<String, int> _participantProgress;
  @override
  Map<String, int> get participantProgress {
    if (_participantProgress is EqualUnmodifiableMapView)
      return _participantProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_participantProgress);
  }

  final List<String> _rewards;
  @override
  List<String> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  final int maxParticipants;
  @override
  final bool isPublic;
  @override
  final String creatorId;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final double completionRate;

  @override
  String toString() {
    return 'ReadingChallengeEntity(id: $id, title: $title, description: $description, type: $type, difficulty: $difficulty, startDate: $startDate, endDate: $endDate, targetValue: $targetValue, targetUnit: $targetUnit, participants: $participants, winners: $winners, status: $status, participantProgress: $participantProgress, rewards: $rewards, maxParticipants: $maxParticipants, isPublic: $isPublic, creatorId: $creatorId, tags: $tags, completionRate: $completionRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingChallengeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.targetUnit, targetUnit) ||
                other.targetUnit == targetUnit) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._winners, _winners) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._participantProgress, _participantProgress) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.completionRate, completionRate) ||
                other.completionRate == completionRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        type,
        difficulty,
        startDate,
        endDate,
        targetValue,
        targetUnit,
        const DeepCollectionEquality().hash(_participants),
        const DeepCollectionEquality().hash(_winners),
        status,
        const DeepCollectionEquality().hash(_participantProgress),
        const DeepCollectionEquality().hash(_rewards),
        maxParticipants,
        isPublic,
        creatorId,
        const DeepCollectionEquality().hash(_tags),
        completionRate
      ]);

  /// Create a copy of ReadingChallengeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingChallengeEntityImplCopyWith<_$ReadingChallengeEntityImpl>
      get copyWith => __$$ReadingChallengeEntityImplCopyWithImpl<
          _$ReadingChallengeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingChallengeEntityImplToJson(
      this,
    );
  }
}

abstract class _ReadingChallengeEntity implements ReadingChallengeEntity {
  const factory _ReadingChallengeEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final ChallengeType type,
      required final ChallengeDifficulty difficulty,
      required final DateTime startDate,
      required final DateTime endDate,
      required final int targetValue,
      required final String targetUnit,
      required final List<String> participants,
      required final List<String> winners,
      required final ChallengeStatus status,
      required final Map<String, int> participantProgress,
      required final List<String> rewards,
      required final int maxParticipants,
      required final bool isPublic,
      required final String creatorId,
      required final List<String> tags,
      required final double completionRate}) = _$ReadingChallengeEntityImpl;

  factory _ReadingChallengeEntity.fromJson(Map<String, dynamic> json) =
      _$ReadingChallengeEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  ChallengeType get type;
  @override
  ChallengeDifficulty get difficulty;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  int get targetValue;
  @override
  String get targetUnit;
  @override
  List<String> get participants;
  @override
  List<String> get winners;
  @override
  ChallengeStatus get status;
  @override
  Map<String, int> get participantProgress;
  @override
  List<String> get rewards;
  @override
  int get maxParticipants;
  @override
  bool get isPublic;
  @override
  String get creatorId;
  @override
  List<String> get tags;
  @override
  double get completionRate;

  /// Create a copy of ReadingChallengeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingChallengeEntityImplCopyWith<_$ReadingChallengeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReadingGroupEntity _$ReadingGroupEntityFromJson(Map<String, dynamic> json) {
  return _ReadingGroupEntity.fromJson(json);
}

/// @nodoc
mixin _$ReadingGroupEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  GroupType get type => throw _privateConstructorUsedError;
  GroupVisibility get visibility => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  List<String> get memberIds => throw _privateConstructorUsedError;
  List<String> get moderatorIds => throw _privateConstructorUsedError;
  List<String> get adminIds => throw _privateConstructorUsedError;
  int get maxMembers => throw _privateConstructorUsedError;
  List<String> get currentBooks => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  DateTime get lastActivity => throw _privateConstructorUsedError;
  int get totalDiscussions => throw _privateConstructorUsedError;
  int get totalMembers => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;
  List<String> get rules => throw _privateConstructorUsedError;
  GroupSettingsEntity get settings => throw _privateConstructorUsedError;

  /// Serializes this ReadingGroupEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingGroupEntityCopyWith<ReadingGroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingGroupEntityCopyWith<$Res> {
  factory $ReadingGroupEntityCopyWith(
          ReadingGroupEntity value, $Res Function(ReadingGroupEntity) then) =
      _$ReadingGroupEntityCopyWithImpl<$Res, ReadingGroupEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      GroupType type,
      GroupVisibility visibility,
      String creatorId,
      List<String> memberIds,
      List<String> moderatorIds,
      List<String> adminIds,
      int maxMembers,
      List<String> currentBooks,
      List<String> tags,
      DateTime dateCreated,
      DateTime lastActivity,
      int totalDiscussions,
      int totalMembers,
      bool isActive,
      String? coverImageUrl,
      List<String> rules,
      GroupSettingsEntity settings});

  $GroupSettingsEntityCopyWith<$Res> get settings;
}

/// @nodoc
class _$ReadingGroupEntityCopyWithImpl<$Res, $Val extends ReadingGroupEntity>
    implements $ReadingGroupEntityCopyWith<$Res> {
  _$ReadingGroupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? visibility = null,
    Object? creatorId = null,
    Object? memberIds = null,
    Object? moderatorIds = null,
    Object? adminIds = null,
    Object? maxMembers = null,
    Object? currentBooks = null,
    Object? tags = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? totalDiscussions = null,
    Object? totalMembers = null,
    Object? isActive = null,
    Object? coverImageUrl = freezed,
    Object? rules = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GroupType,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as GroupVisibility,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      memberIds: null == memberIds
          ? _value.memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderatorIds: null == moderatorIds
          ? _value.moderatorIds
          : moderatorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      adminIds: null == adminIds
          ? _value.adminIds
          : adminIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
      currentBooks: null == currentBooks
          ? _value.currentBooks
          : currentBooks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalDiscussions: null == totalDiscussions
          ? _value.totalDiscussions
          : totalDiscussions // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as GroupSettingsEntity,
    ) as $Val);
  }

  /// Create a copy of ReadingGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupSettingsEntityCopyWith<$Res> get settings {
    return $GroupSettingsEntityCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReadingGroupEntityImplCopyWith<$Res>
    implements $ReadingGroupEntityCopyWith<$Res> {
  factory _$$ReadingGroupEntityImplCopyWith(_$ReadingGroupEntityImpl value,
          $Res Function(_$ReadingGroupEntityImpl) then) =
      __$$ReadingGroupEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      GroupType type,
      GroupVisibility visibility,
      String creatorId,
      List<String> memberIds,
      List<String> moderatorIds,
      List<String> adminIds,
      int maxMembers,
      List<String> currentBooks,
      List<String> tags,
      DateTime dateCreated,
      DateTime lastActivity,
      int totalDiscussions,
      int totalMembers,
      bool isActive,
      String? coverImageUrl,
      List<String> rules,
      GroupSettingsEntity settings});

  @override
  $GroupSettingsEntityCopyWith<$Res> get settings;
}

/// @nodoc
class __$$ReadingGroupEntityImplCopyWithImpl<$Res>
    extends _$ReadingGroupEntityCopyWithImpl<$Res, _$ReadingGroupEntityImpl>
    implements _$$ReadingGroupEntityImplCopyWith<$Res> {
  __$$ReadingGroupEntityImplCopyWithImpl(_$ReadingGroupEntityImpl _value,
      $Res Function(_$ReadingGroupEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? visibility = null,
    Object? creatorId = null,
    Object? memberIds = null,
    Object? moderatorIds = null,
    Object? adminIds = null,
    Object? maxMembers = null,
    Object? currentBooks = null,
    Object? tags = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? totalDiscussions = null,
    Object? totalMembers = null,
    Object? isActive = null,
    Object? coverImageUrl = freezed,
    Object? rules = null,
    Object? settings = null,
  }) {
    return _then(_$ReadingGroupEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GroupType,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as GroupVisibility,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      memberIds: null == memberIds
          ? _value._memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderatorIds: null == moderatorIds
          ? _value._moderatorIds
          : moderatorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      adminIds: null == adminIds
          ? _value._adminIds
          : adminIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
      currentBooks: null == currentBooks
          ? _value._currentBooks
          : currentBooks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalDiscussions: null == totalDiscussions
          ? _value.totalDiscussions
          : totalDiscussions // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as GroupSettingsEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingGroupEntityImpl implements _ReadingGroupEntity {
  const _$ReadingGroupEntityImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      required this.visibility,
      required this.creatorId,
      required final List<String> memberIds,
      required final List<String> moderatorIds,
      required final List<String> adminIds,
      required this.maxMembers,
      required final List<String> currentBooks,
      required final List<String> tags,
      required this.dateCreated,
      required this.lastActivity,
      required this.totalDiscussions,
      required this.totalMembers,
      required this.isActive,
      required this.coverImageUrl,
      required final List<String> rules,
      required this.settings})
      : _memberIds = memberIds,
        _moderatorIds = moderatorIds,
        _adminIds = adminIds,
        _currentBooks = currentBooks,
        _tags = tags,
        _rules = rules;

  factory _$ReadingGroupEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingGroupEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final GroupType type;
  @override
  final GroupVisibility visibility;
  @override
  final String creatorId;
  final List<String> _memberIds;
  @override
  List<String> get memberIds {
    if (_memberIds is EqualUnmodifiableListView) return _memberIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIds);
  }

  final List<String> _moderatorIds;
  @override
  List<String> get moderatorIds {
    if (_moderatorIds is EqualUnmodifiableListView) return _moderatorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderatorIds);
  }

  final List<String> _adminIds;
  @override
  List<String> get adminIds {
    if (_adminIds is EqualUnmodifiableListView) return _adminIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adminIds);
  }

  @override
  final int maxMembers;
  final List<String> _currentBooks;
  @override
  List<String> get currentBooks {
    if (_currentBooks is EqualUnmodifiableListView) return _currentBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentBooks);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final DateTime dateCreated;
  @override
  final DateTime lastActivity;
  @override
  final int totalDiscussions;
  @override
  final int totalMembers;
  @override
  final bool isActive;
  @override
  final String? coverImageUrl;
  final List<String> _rules;
  @override
  List<String> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  @override
  final GroupSettingsEntity settings;

  @override
  String toString() {
    return 'ReadingGroupEntity(id: $id, name: $name, description: $description, type: $type, visibility: $visibility, creatorId: $creatorId, memberIds: $memberIds, moderatorIds: $moderatorIds, adminIds: $adminIds, maxMembers: $maxMembers, currentBooks: $currentBooks, tags: $tags, dateCreated: $dateCreated, lastActivity: $lastActivity, totalDiscussions: $totalDiscussions, totalMembers: $totalMembers, isActive: $isActive, coverImageUrl: $coverImageUrl, rules: $rules, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingGroupEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality()
                .equals(other._memberIds, _memberIds) &&
            const DeepCollectionEquality()
                .equals(other._moderatorIds, _moderatorIds) &&
            const DeepCollectionEquality().equals(other._adminIds, _adminIds) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers) &&
            const DeepCollectionEquality()
                .equals(other._currentBooks, _currentBooks) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.totalDiscussions, totalDiscussions) ||
                other.totalDiscussions == totalDiscussions) &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        type,
        visibility,
        creatorId,
        const DeepCollectionEquality().hash(_memberIds),
        const DeepCollectionEquality().hash(_moderatorIds),
        const DeepCollectionEquality().hash(_adminIds),
        maxMembers,
        const DeepCollectionEquality().hash(_currentBooks),
        const DeepCollectionEquality().hash(_tags),
        dateCreated,
        lastActivity,
        totalDiscussions,
        totalMembers,
        isActive,
        coverImageUrl,
        const DeepCollectionEquality().hash(_rules),
        settings
      ]);

  /// Create a copy of ReadingGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingGroupEntityImplCopyWith<_$ReadingGroupEntityImpl> get copyWith =>
      __$$ReadingGroupEntityImplCopyWithImpl<_$ReadingGroupEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingGroupEntityImplToJson(
      this,
    );
  }
}

abstract class _ReadingGroupEntity implements ReadingGroupEntity {
  const factory _ReadingGroupEntity(
      {required final String id,
      required final String name,
      required final String description,
      required final GroupType type,
      required final GroupVisibility visibility,
      required final String creatorId,
      required final List<String> memberIds,
      required final List<String> moderatorIds,
      required final List<String> adminIds,
      required final int maxMembers,
      required final List<String> currentBooks,
      required final List<String> tags,
      required final DateTime dateCreated,
      required final DateTime lastActivity,
      required final int totalDiscussions,
      required final int totalMembers,
      required final bool isActive,
      required final String? coverImageUrl,
      required final List<String> rules,
      required final GroupSettingsEntity settings}) = _$ReadingGroupEntityImpl;

  factory _ReadingGroupEntity.fromJson(Map<String, dynamic> json) =
      _$ReadingGroupEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  GroupType get type;
  @override
  GroupVisibility get visibility;
  @override
  String get creatorId;
  @override
  List<String> get memberIds;
  @override
  List<String> get moderatorIds;
  @override
  List<String> get adminIds;
  @override
  int get maxMembers;
  @override
  List<String> get currentBooks;
  @override
  List<String> get tags;
  @override
  DateTime get dateCreated;
  @override
  DateTime get lastActivity;
  @override
  int get totalDiscussions;
  @override
  int get totalMembers;
  @override
  bool get isActive;
  @override
  String? get coverImageUrl;
  @override
  List<String> get rules;
  @override
  GroupSettingsEntity get settings;

  /// Create a copy of ReadingGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingGroupEntityImplCopyWith<_$ReadingGroupEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupSettingsEntity _$GroupSettingsEntityFromJson(Map<String, dynamic> json) {
  return _GroupSettingsEntity.fromJson(json);
}

/// @nodoc
mixin _$GroupSettingsEntity {
  bool get allowMemberInvites => throw _privateConstructorUsedError;
  bool get requireApproval => throw _privateConstructorUsedError;
  bool get allowPublicDiscussions => throw _privateConstructorUsedError;
  bool get allowBookSuggestions => throw _privateConstructorUsedError;
  bool get allowMemberRemoval => throw _privateConstructorUsedError;
  bool get allowContentModeration => throw _privateConstructorUsedError;
  int get maxBooksPerMember => throw _privateConstructorUsedError;
  bool get autoArchiveCompleted => throw _privateConstructorUsedError;
  List<String> get restrictedTopics => throw _privateConstructorUsedError;

  /// Serializes this GroupSettingsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupSettingsEntityCopyWith<GroupSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSettingsEntityCopyWith<$Res> {
  factory $GroupSettingsEntityCopyWith(
          GroupSettingsEntity value, $Res Function(GroupSettingsEntity) then) =
      _$GroupSettingsEntityCopyWithImpl<$Res, GroupSettingsEntity>;
  @useResult
  $Res call(
      {bool allowMemberInvites,
      bool requireApproval,
      bool allowPublicDiscussions,
      bool allowBookSuggestions,
      bool allowMemberRemoval,
      bool allowContentModeration,
      int maxBooksPerMember,
      bool autoArchiveCompleted,
      List<String> restrictedTopics});
}

/// @nodoc
class _$GroupSettingsEntityCopyWithImpl<$Res, $Val extends GroupSettingsEntity>
    implements $GroupSettingsEntityCopyWith<$Res> {
  _$GroupSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowMemberInvites = null,
    Object? requireApproval = null,
    Object? allowPublicDiscussions = null,
    Object? allowBookSuggestions = null,
    Object? allowMemberRemoval = null,
    Object? allowContentModeration = null,
    Object? maxBooksPerMember = null,
    Object? autoArchiveCompleted = null,
    Object? restrictedTopics = null,
  }) {
    return _then(_value.copyWith(
      allowMemberInvites: null == allowMemberInvites
          ? _value.allowMemberInvites
          : allowMemberInvites // ignore: cast_nullable_to_non_nullable
              as bool,
      requireApproval: null == requireApproval
          ? _value.requireApproval
          : requireApproval // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPublicDiscussions: null == allowPublicDiscussions
          ? _value.allowPublicDiscussions
          : allowPublicDiscussions // ignore: cast_nullable_to_non_nullable
              as bool,
      allowBookSuggestions: null == allowBookSuggestions
          ? _value.allowBookSuggestions
          : allowBookSuggestions // ignore: cast_nullable_to_non_nullable
              as bool,
      allowMemberRemoval: null == allowMemberRemoval
          ? _value.allowMemberRemoval
          : allowMemberRemoval // ignore: cast_nullable_to_non_nullable
              as bool,
      allowContentModeration: null == allowContentModeration
          ? _value.allowContentModeration
          : allowContentModeration // ignore: cast_nullable_to_non_nullable
              as bool,
      maxBooksPerMember: null == maxBooksPerMember
          ? _value.maxBooksPerMember
          : maxBooksPerMember // ignore: cast_nullable_to_non_nullable
              as int,
      autoArchiveCompleted: null == autoArchiveCompleted
          ? _value.autoArchiveCompleted
          : autoArchiveCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      restrictedTopics: null == restrictedTopics
          ? _value.restrictedTopics
          : restrictedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupSettingsEntityImplCopyWith<$Res>
    implements $GroupSettingsEntityCopyWith<$Res> {
  factory _$$GroupSettingsEntityImplCopyWith(_$GroupSettingsEntityImpl value,
          $Res Function(_$GroupSettingsEntityImpl) then) =
      __$$GroupSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool allowMemberInvites,
      bool requireApproval,
      bool allowPublicDiscussions,
      bool allowBookSuggestions,
      bool allowMemberRemoval,
      bool allowContentModeration,
      int maxBooksPerMember,
      bool autoArchiveCompleted,
      List<String> restrictedTopics});
}

/// @nodoc
class __$$GroupSettingsEntityImplCopyWithImpl<$Res>
    extends _$GroupSettingsEntityCopyWithImpl<$Res, _$GroupSettingsEntityImpl>
    implements _$$GroupSettingsEntityImplCopyWith<$Res> {
  __$$GroupSettingsEntityImplCopyWithImpl(_$GroupSettingsEntityImpl _value,
      $Res Function(_$GroupSettingsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowMemberInvites = null,
    Object? requireApproval = null,
    Object? allowPublicDiscussions = null,
    Object? allowBookSuggestions = null,
    Object? allowMemberRemoval = null,
    Object? allowContentModeration = null,
    Object? maxBooksPerMember = null,
    Object? autoArchiveCompleted = null,
    Object? restrictedTopics = null,
  }) {
    return _then(_$GroupSettingsEntityImpl(
      allowMemberInvites: null == allowMemberInvites
          ? _value.allowMemberInvites
          : allowMemberInvites // ignore: cast_nullable_to_non_nullable
              as bool,
      requireApproval: null == requireApproval
          ? _value.requireApproval
          : requireApproval // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPublicDiscussions: null == allowPublicDiscussions
          ? _value.allowPublicDiscussions
          : allowPublicDiscussions // ignore: cast_nullable_to_non_nullable
              as bool,
      allowBookSuggestions: null == allowBookSuggestions
          ? _value.allowBookSuggestions
          : allowBookSuggestions // ignore: cast_nullable_to_non_nullable
              as bool,
      allowMemberRemoval: null == allowMemberRemoval
          ? _value.allowMemberRemoval
          : allowMemberRemoval // ignore: cast_nullable_to_non_nullable
              as bool,
      allowContentModeration: null == allowContentModeration
          ? _value.allowContentModeration
          : allowContentModeration // ignore: cast_nullable_to_non_nullable
              as bool,
      maxBooksPerMember: null == maxBooksPerMember
          ? _value.maxBooksPerMember
          : maxBooksPerMember // ignore: cast_nullable_to_non_nullable
              as int,
      autoArchiveCompleted: null == autoArchiveCompleted
          ? _value.autoArchiveCompleted
          : autoArchiveCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      restrictedTopics: null == restrictedTopics
          ? _value._restrictedTopics
          : restrictedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupSettingsEntityImpl implements _GroupSettingsEntity {
  const _$GroupSettingsEntityImpl(
      {required this.allowMemberInvites,
      required this.requireApproval,
      required this.allowPublicDiscussions,
      required this.allowBookSuggestions,
      required this.allowMemberRemoval,
      required this.allowContentModeration,
      required this.maxBooksPerMember,
      required this.autoArchiveCompleted,
      required final List<String> restrictedTopics})
      : _restrictedTopics = restrictedTopics;

  factory _$GroupSettingsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupSettingsEntityImplFromJson(json);

  @override
  final bool allowMemberInvites;
  @override
  final bool requireApproval;
  @override
  final bool allowPublicDiscussions;
  @override
  final bool allowBookSuggestions;
  @override
  final bool allowMemberRemoval;
  @override
  final bool allowContentModeration;
  @override
  final int maxBooksPerMember;
  @override
  final bool autoArchiveCompleted;
  final List<String> _restrictedTopics;
  @override
  List<String> get restrictedTopics {
    if (_restrictedTopics is EqualUnmodifiableListView)
      return _restrictedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restrictedTopics);
  }

  @override
  String toString() {
    return 'GroupSettingsEntity(allowMemberInvites: $allowMemberInvites, requireApproval: $requireApproval, allowPublicDiscussions: $allowPublicDiscussions, allowBookSuggestions: $allowBookSuggestions, allowMemberRemoval: $allowMemberRemoval, allowContentModeration: $allowContentModeration, maxBooksPerMember: $maxBooksPerMember, autoArchiveCompleted: $autoArchiveCompleted, restrictedTopics: $restrictedTopics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupSettingsEntityImpl &&
            (identical(other.allowMemberInvites, allowMemberInvites) ||
                other.allowMemberInvites == allowMemberInvites) &&
            (identical(other.requireApproval, requireApproval) ||
                other.requireApproval == requireApproval) &&
            (identical(other.allowPublicDiscussions, allowPublicDiscussions) ||
                other.allowPublicDiscussions == allowPublicDiscussions) &&
            (identical(other.allowBookSuggestions, allowBookSuggestions) ||
                other.allowBookSuggestions == allowBookSuggestions) &&
            (identical(other.allowMemberRemoval, allowMemberRemoval) ||
                other.allowMemberRemoval == allowMemberRemoval) &&
            (identical(other.allowContentModeration, allowContentModeration) ||
                other.allowContentModeration == allowContentModeration) &&
            (identical(other.maxBooksPerMember, maxBooksPerMember) ||
                other.maxBooksPerMember == maxBooksPerMember) &&
            (identical(other.autoArchiveCompleted, autoArchiveCompleted) ||
                other.autoArchiveCompleted == autoArchiveCompleted) &&
            const DeepCollectionEquality()
                .equals(other._restrictedTopics, _restrictedTopics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowMemberInvites,
      requireApproval,
      allowPublicDiscussions,
      allowBookSuggestions,
      allowMemberRemoval,
      allowContentModeration,
      maxBooksPerMember,
      autoArchiveCompleted,
      const DeepCollectionEquality().hash(_restrictedTopics));

  /// Create a copy of GroupSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupSettingsEntityImplCopyWith<_$GroupSettingsEntityImpl> get copyWith =>
      __$$GroupSettingsEntityImplCopyWithImpl<_$GroupSettingsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupSettingsEntityImplToJson(
      this,
    );
  }
}

abstract class _GroupSettingsEntity implements GroupSettingsEntity {
  const factory _GroupSettingsEntity(
          {required final bool allowMemberInvites,
          required final bool requireApproval,
          required final bool allowPublicDiscussions,
          required final bool allowBookSuggestions,
          required final bool allowMemberRemoval,
          required final bool allowContentModeration,
          required final int maxBooksPerMember,
          required final bool autoArchiveCompleted,
          required final List<String> restrictedTopics}) =
      _$GroupSettingsEntityImpl;

  factory _GroupSettingsEntity.fromJson(Map<String, dynamic> json) =
      _$GroupSettingsEntityImpl.fromJson;

  @override
  bool get allowMemberInvites;
  @override
  bool get requireApproval;
  @override
  bool get allowPublicDiscussions;
  @override
  bool get allowBookSuggestions;
  @override
  bool get allowMemberRemoval;
  @override
  bool get allowContentModeration;
  @override
  int get maxBooksPerMember;
  @override
  bool get autoArchiveCompleted;
  @override
  List<String> get restrictedTopics;

  /// Create a copy of GroupSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupSettingsEntityImplCopyWith<_$GroupSettingsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialEventEntity _$SocialEventEntityFromJson(Map<String, dynamic> json) {
  return _SocialEventEntity.fromJson(json);
}

/// @nodoc
mixin _$SocialEventEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  EventType get type => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  List<String> get organizers => throw _privateConstructorUsedError;
  EventStatus get status => throw _privateConstructorUsedError;
  int get maxParticipants => throw _privateConstructorUsedError;
  List<String> get books => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get isVirtual => throw _privateConstructorUsedError;
  String? get meetingLink => throw _privateConstructorUsedError;
  String? get meetingPassword => throw _privateConstructorUsedError;
  List<String> get agenda => throw _privateConstructorUsedError;
  List<String> get materials => throw _privateConstructorUsedError;

  /// Serializes this SocialEventEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialEventEntityCopyWith<SocialEventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialEventEntityCopyWith<$Res> {
  factory $SocialEventEntityCopyWith(
          SocialEventEntity value, $Res Function(SocialEventEntity) then) =
      _$SocialEventEntityCopyWithImpl<$Res, SocialEventEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      EventType type,
      DateTime startDate,
      DateTime endDate,
      String location,
      List<String> participants,
      List<String> organizers,
      EventStatus status,
      int maxParticipants,
      List<String> books,
      String? coverImageUrl,
      List<String> tags,
      bool isVirtual,
      String? meetingLink,
      String? meetingPassword,
      List<String> agenda,
      List<String> materials});
}

/// @nodoc
class _$SocialEventEntityCopyWithImpl<$Res, $Val extends SocialEventEntity>
    implements $SocialEventEntityCopyWith<$Res> {
  _$SocialEventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = null,
    Object? participants = null,
    Object? organizers = null,
    Object? status = null,
    Object? maxParticipants = null,
    Object? books = null,
    Object? coverImageUrl = freezed,
    Object? tags = null,
    Object? isVirtual = null,
    Object? meetingLink = freezed,
    Object? meetingPassword = freezed,
    Object? agenda = null,
    Object? materials = null,
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
              as EventType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      organizers: null == organizers
          ? _value.organizers
          : organizers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isVirtual: null == isVirtual
          ? _value.isVirtual
          : isVirtual // ignore: cast_nullable_to_non_nullable
              as bool,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingPassword: freezed == meetingPassword
          ? _value.meetingPassword
          : meetingPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      agenda: null == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as List<String>,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialEventEntityImplCopyWith<$Res>
    implements $SocialEventEntityCopyWith<$Res> {
  factory _$$SocialEventEntityImplCopyWith(_$SocialEventEntityImpl value,
          $Res Function(_$SocialEventEntityImpl) then) =
      __$$SocialEventEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      EventType type,
      DateTime startDate,
      DateTime endDate,
      String location,
      List<String> participants,
      List<String> organizers,
      EventStatus status,
      int maxParticipants,
      List<String> books,
      String? coverImageUrl,
      List<String> tags,
      bool isVirtual,
      String? meetingLink,
      String? meetingPassword,
      List<String> agenda,
      List<String> materials});
}

/// @nodoc
class __$$SocialEventEntityImplCopyWithImpl<$Res>
    extends _$SocialEventEntityCopyWithImpl<$Res, _$SocialEventEntityImpl>
    implements _$$SocialEventEntityImplCopyWith<$Res> {
  __$$SocialEventEntityImplCopyWithImpl(_$SocialEventEntityImpl _value,
      $Res Function(_$SocialEventEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = null,
    Object? participants = null,
    Object? organizers = null,
    Object? status = null,
    Object? maxParticipants = null,
    Object? books = null,
    Object? coverImageUrl = freezed,
    Object? tags = null,
    Object? isVirtual = null,
    Object? meetingLink = freezed,
    Object? meetingPassword = freezed,
    Object? agenda = null,
    Object? materials = null,
  }) {
    return _then(_$SocialEventEntityImpl(
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
              as EventType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      organizers: null == organizers
          ? _value._organizers
          : organizers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isVirtual: null == isVirtual
          ? _value.isVirtual
          : isVirtual // ignore: cast_nullable_to_non_nullable
              as bool,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingPassword: freezed == meetingPassword
          ? _value.meetingPassword
          : meetingPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      agenda: null == agenda
          ? _value._agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as List<String>,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialEventEntityImpl implements _SocialEventEntity {
  const _$SocialEventEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.startDate,
      required this.endDate,
      required this.location,
      required final List<String> participants,
      required final List<String> organizers,
      required this.status,
      required this.maxParticipants,
      required final List<String> books,
      required this.coverImageUrl,
      required final List<String> tags,
      required this.isVirtual,
      required this.meetingLink,
      required this.meetingPassword,
      required final List<String> agenda,
      required final List<String> materials})
      : _participants = participants,
        _organizers = organizers,
        _books = books,
        _tags = tags,
        _agenda = agenda,
        _materials = materials;

  factory _$SocialEventEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialEventEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final EventType type;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String location;
  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<String> _organizers;
  @override
  List<String> get organizers {
    if (_organizers is EqualUnmodifiableListView) return _organizers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizers);
  }

  @override
  final EventStatus status;
  @override
  final int maxParticipants;
  final List<String> _books;
  @override
  List<String> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final String? coverImageUrl;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final bool isVirtual;
  @override
  final String? meetingLink;
  @override
  final String? meetingPassword;
  final List<String> _agenda;
  @override
  List<String> get agenda {
    if (_agenda is EqualUnmodifiableListView) return _agenda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agenda);
  }

  final List<String> _materials;
  @override
  List<String> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  String toString() {
    return 'SocialEventEntity(id: $id, title: $title, description: $description, type: $type, startDate: $startDate, endDate: $endDate, location: $location, participants: $participants, organizers: $organizers, status: $status, maxParticipants: $maxParticipants, books: $books, coverImageUrl: $coverImageUrl, tags: $tags, isVirtual: $isVirtual, meetingLink: $meetingLink, meetingPassword: $meetingPassword, agenda: $agenda, materials: $materials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialEventEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._organizers, _organizers) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isVirtual, isVirtual) ||
                other.isVirtual == isVirtual) &&
            (identical(other.meetingLink, meetingLink) ||
                other.meetingLink == meetingLink) &&
            (identical(other.meetingPassword, meetingPassword) ||
                other.meetingPassword == meetingPassword) &&
            const DeepCollectionEquality().equals(other._agenda, _agenda) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        type,
        startDate,
        endDate,
        location,
        const DeepCollectionEquality().hash(_participants),
        const DeepCollectionEquality().hash(_organizers),
        status,
        maxParticipants,
        const DeepCollectionEquality().hash(_books),
        coverImageUrl,
        const DeepCollectionEquality().hash(_tags),
        isVirtual,
        meetingLink,
        meetingPassword,
        const DeepCollectionEquality().hash(_agenda),
        const DeepCollectionEquality().hash(_materials)
      ]);

  /// Create a copy of SocialEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialEventEntityImplCopyWith<_$SocialEventEntityImpl> get copyWith =>
      __$$SocialEventEntityImplCopyWithImpl<_$SocialEventEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialEventEntityImplToJson(
      this,
    );
  }
}

abstract class _SocialEventEntity implements SocialEventEntity {
  const factory _SocialEventEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final EventType type,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String location,
      required final List<String> participants,
      required final List<String> organizers,
      required final EventStatus status,
      required final int maxParticipants,
      required final List<String> books,
      required final String? coverImageUrl,
      required final List<String> tags,
      required final bool isVirtual,
      required final String? meetingLink,
      required final String? meetingPassword,
      required final List<String> agenda,
      required final List<String> materials}) = _$SocialEventEntityImpl;

  factory _SocialEventEntity.fromJson(Map<String, dynamic> json) =
      _$SocialEventEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  EventType get type;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get location;
  @override
  List<String> get participants;
  @override
  List<String> get organizers;
  @override
  EventStatus get status;
  @override
  int get maxParticipants;
  @override
  List<String> get books;
  @override
  String? get coverImageUrl;
  @override
  List<String> get tags;
  @override
  bool get isVirtual;
  @override
  String? get meetingLink;
  @override
  String? get meetingPassword;
  @override
  List<String> get agenda;
  @override
  List<String> get materials;

  /// Create a copy of SocialEventEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialEventEntityImplCopyWith<_$SocialEventEntityImpl> get copyWith =>
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
  bool get isSocial => throw _privateConstructorUsedError;
  List<String> get sharedWith => throw _privateConstructorUsedError;
  DateTime? get dateShared => throw _privateConstructorUsedError;

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
      String category,
      bool isSocial,
      List<String> sharedWith,
      DateTime? dateShared});
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
    Object? isSocial = null,
    Object? sharedWith = null,
    Object? dateShared = freezed,
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
      isSocial: null == isSocial
          ? _value.isSocial
          : isSocial // ignore: cast_nullable_to_non_nullable
              as bool,
      sharedWith: null == sharedWith
          ? _value.sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateShared: freezed == dateShared
          ? _value.dateShared
          : dateShared // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      String category,
      bool isSocial,
      List<String> sharedWith,
      DateTime? dateShared});
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
    Object? isSocial = null,
    Object? sharedWith = null,
    Object? dateShared = freezed,
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
      isSocial: null == isSocial
          ? _value.isSocial
          : isSocial // ignore: cast_nullable_to_non_nullable
              as bool,
      sharedWith: null == sharedWith
          ? _value._sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateShared: freezed == dateShared
          ? _value.dateShared
          : dateShared // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      required this.category,
      required this.isSocial,
      required final List<String> sharedWith,
      required this.dateShared})
      : _requirements = requirements,
        _sharedWith = sharedWith;

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
  final bool isSocial;
  final List<String> _sharedWith;
  @override
  List<String> get sharedWith {
    if (_sharedWith is EqualUnmodifiableListView) return _sharedWith;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedWith);
  }

  @override
  final DateTime? dateShared;

  @override
  String toString() {
    return 'AchievementEntity(id: $id, title: $title, description: $description, type: $type, level: $level, progress: $progress, isUnlocked: $isUnlocked, unlockDate: $unlockDate, iconPath: $iconPath, requirements: $requirements, rarity: $rarity, points: $points, category: $category, isSocial: $isSocial, sharedWith: $sharedWith, dateShared: $dateShared)';
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
                other.category == category) &&
            (identical(other.isSocial, isSocial) ||
                other.isSocial == isSocial) &&
            const DeepCollectionEquality()
                .equals(other._sharedWith, _sharedWith) &&
            (identical(other.dateShared, dateShared) ||
                other.dateShared == dateShared));
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
      category,
      isSocial,
      const DeepCollectionEquality().hash(_sharedWith),
      dateShared);

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
      required final String category,
      required final bool isSocial,
      required final List<String> sharedWith,
      required final DateTime? dateShared}) = _$AchievementEntityImpl;

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
  @override
  bool get isSocial;
  @override
  List<String> get sharedWith;
  @override
  DateTime? get dateShared;

  /// Create a copy of AchievementEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementEntityImplCopyWith<_$AchievementEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardEntity _$LeaderboardEntityFromJson(Map<String, dynamic> json) {
  return _LeaderboardEntity.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  LeaderboardType get type => throw _privateConstructorUsedError;
  LeaderboardPeriod get period => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<LeaderboardEntryEntity> get entries =>
      throw _privateConstructorUsedError;
  int get totalParticipants => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  String? get challengeId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  Map<String, double> get weights => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardEntityCopyWith<LeaderboardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEntityCopyWith<$Res> {
  factory $LeaderboardEntityCopyWith(
          LeaderboardEntity value, $Res Function(LeaderboardEntity) then) =
      _$LeaderboardEntityCopyWithImpl<$Res, LeaderboardEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      LeaderboardType type,
      LeaderboardPeriod period,
      DateTime startDate,
      DateTime endDate,
      List<LeaderboardEntryEntity> entries,
      int totalParticipants,
      String? groupId,
      String? challengeId,
      bool isActive,
      List<String> categories,
      Map<String, double> weights});
}

/// @nodoc
class _$LeaderboardEntityCopyWithImpl<$Res, $Val extends LeaderboardEntity>
    implements $LeaderboardEntityCopyWith<$Res> {
  _$LeaderboardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? period = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? entries = null,
    Object? totalParticipants = null,
    Object? groupId = freezed,
    Object? challengeId = freezed,
    Object? isActive = null,
    Object? categories = null,
    Object? weights = null,
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
              as LeaderboardType,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as LeaderboardPeriod,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardEntryEntity>,
      totalParticipants: null == totalParticipants
          ? _value.totalParticipants
          : totalParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      challengeId: freezed == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weights: null == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardEntityImplCopyWith<$Res>
    implements $LeaderboardEntityCopyWith<$Res> {
  factory _$$LeaderboardEntityImplCopyWith(_$LeaderboardEntityImpl value,
          $Res Function(_$LeaderboardEntityImpl) then) =
      __$$LeaderboardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      LeaderboardType type,
      LeaderboardPeriod period,
      DateTime startDate,
      DateTime endDate,
      List<LeaderboardEntryEntity> entries,
      int totalParticipants,
      String? groupId,
      String? challengeId,
      bool isActive,
      List<String> categories,
      Map<String, double> weights});
}

/// @nodoc
class __$$LeaderboardEntityImplCopyWithImpl<$Res>
    extends _$LeaderboardEntityCopyWithImpl<$Res, _$LeaderboardEntityImpl>
    implements _$$LeaderboardEntityImplCopyWith<$Res> {
  __$$LeaderboardEntityImplCopyWithImpl(_$LeaderboardEntityImpl _value,
      $Res Function(_$LeaderboardEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? period = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? entries = null,
    Object? totalParticipants = null,
    Object? groupId = freezed,
    Object? challengeId = freezed,
    Object? isActive = null,
    Object? categories = null,
    Object? weights = null,
  }) {
    return _then(_$LeaderboardEntityImpl(
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
              as LeaderboardType,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as LeaderboardPeriod,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardEntryEntity>,
      totalParticipants: null == totalParticipants
          ? _value.totalParticipants
          : totalParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      challengeId: freezed == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weights: null == weights
          ? _value._weights
          : weights // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardEntityImpl implements _LeaderboardEntity {
  const _$LeaderboardEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.period,
      required this.startDate,
      required this.endDate,
      required final List<LeaderboardEntryEntity> entries,
      required this.totalParticipants,
      required this.groupId,
      required this.challengeId,
      required this.isActive,
      required final List<String> categories,
      required final Map<String, double> weights})
      : _entries = entries,
        _categories = categories,
        _weights = weights;

  factory _$LeaderboardEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final LeaderboardType type;
  @override
  final LeaderboardPeriod period;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final List<LeaderboardEntryEntity> _entries;
  @override
  List<LeaderboardEntryEntity> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  final int totalParticipants;
  @override
  final String? groupId;
  @override
  final String? challengeId;
  @override
  final bool isActive;
  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final Map<String, double> _weights;
  @override
  Map<String, double> get weights {
    if (_weights is EqualUnmodifiableMapView) return _weights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weights);
  }

  @override
  String toString() {
    return 'LeaderboardEntity(id: $id, title: $title, description: $description, type: $type, period: $period, startDate: $startDate, endDate: $endDate, entries: $entries, totalParticipants: $totalParticipants, groupId: $groupId, challengeId: $challengeId, isActive: $isActive, categories: $categories, weights: $weights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            (identical(other.totalParticipants, totalParticipants) ||
                other.totalParticipants == totalParticipants) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._weights, _weights));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      period,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_entries),
      totalParticipants,
      groupId,
      challengeId,
      isActive,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_weights));

  /// Create a copy of LeaderboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardEntityImplCopyWith<_$LeaderboardEntityImpl> get copyWith =>
      __$$LeaderboardEntityImplCopyWithImpl<_$LeaderboardEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardEntityImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardEntity implements LeaderboardEntity {
  const factory _LeaderboardEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final LeaderboardType type,
      required final LeaderboardPeriod period,
      required final DateTime startDate,
      required final DateTime endDate,
      required final List<LeaderboardEntryEntity> entries,
      required final int totalParticipants,
      required final String? groupId,
      required final String? challengeId,
      required final bool isActive,
      required final List<String> categories,
      required final Map<String, double> weights}) = _$LeaderboardEntityImpl;

  factory _LeaderboardEntity.fromJson(Map<String, dynamic> json) =
      _$LeaderboardEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  LeaderboardType get type;
  @override
  LeaderboardPeriod get period;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  List<LeaderboardEntryEntity> get entries;
  @override
  int get totalParticipants;
  @override
  String? get groupId;
  @override
  String? get challengeId;
  @override
  bool get isActive;
  @override
  List<String> get categories;
  @override
  Map<String, double> get weights;

  /// Create a copy of LeaderboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardEntityImplCopyWith<_$LeaderboardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardEntryEntity _$LeaderboardEntryEntityFromJson(
    Map<String, dynamic> json) {
  return _LeaderboardEntryEntity.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardEntryEntity {
  String get userId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  Map<String, double> get categoryScores => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  int get previousRank => throw _privateConstructorUsedError;
  double get rankChange => throw _privateConstructorUsedError;
  List<String> get achievements => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardEntryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardEntryEntityCopyWith<LeaderboardEntryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEntryEntityCopyWith<$Res> {
  factory $LeaderboardEntryEntityCopyWith(LeaderboardEntryEntity value,
          $Res Function(LeaderboardEntryEntity) then) =
      _$LeaderboardEntryEntityCopyWithImpl<$Res, LeaderboardEntryEntity>;
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? avatarUrl,
      int rank,
      double score,
      Map<String, double> categoryScores,
      DateTime lastUpdated,
      int previousRank,
      double rankChange,
      List<String> achievements,
      bool isCurrentUser});
}

/// @nodoc
class _$LeaderboardEntryEntityCopyWithImpl<$Res,
        $Val extends LeaderboardEntryEntity>
    implements $LeaderboardEntryEntityCopyWith<$Res> {
  _$LeaderboardEntryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? avatarUrl = freezed,
    Object? rank = null,
    Object? score = null,
    Object? categoryScores = null,
    Object? lastUpdated = null,
    Object? previousRank = null,
    Object? rankChange = null,
    Object? achievements = null,
    Object? isCurrentUser = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      categoryScores: null == categoryScores
          ? _value.categoryScores
          : categoryScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      previousRank: null == previousRank
          ? _value.previousRank
          : previousRank // ignore: cast_nullable_to_non_nullable
              as int,
      rankChange: null == rankChange
          ? _value.rankChange
          : rankChange // ignore: cast_nullable_to_non_nullable
              as double,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardEntryEntityImplCopyWith<$Res>
    implements $LeaderboardEntryEntityCopyWith<$Res> {
  factory _$$LeaderboardEntryEntityImplCopyWith(
          _$LeaderboardEntryEntityImpl value,
          $Res Function(_$LeaderboardEntryEntityImpl) then) =
      __$$LeaderboardEntryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? avatarUrl,
      int rank,
      double score,
      Map<String, double> categoryScores,
      DateTime lastUpdated,
      int previousRank,
      double rankChange,
      List<String> achievements,
      bool isCurrentUser});
}

/// @nodoc
class __$$LeaderboardEntryEntityImplCopyWithImpl<$Res>
    extends _$LeaderboardEntryEntityCopyWithImpl<$Res,
        _$LeaderboardEntryEntityImpl>
    implements _$$LeaderboardEntryEntityImplCopyWith<$Res> {
  __$$LeaderboardEntryEntityImplCopyWithImpl(
      _$LeaderboardEntryEntityImpl _value,
      $Res Function(_$LeaderboardEntryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? avatarUrl = freezed,
    Object? rank = null,
    Object? score = null,
    Object? categoryScores = null,
    Object? lastUpdated = null,
    Object? previousRank = null,
    Object? rankChange = null,
    Object? achievements = null,
    Object? isCurrentUser = null,
  }) {
    return _then(_$LeaderboardEntryEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      categoryScores: null == categoryScores
          ? _value._categoryScores
          : categoryScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      previousRank: null == previousRank
          ? _value.previousRank
          : previousRank // ignore: cast_nullable_to_non_nullable
              as int,
      rankChange: null == rankChange
          ? _value.rankChange
          : rankChange // ignore: cast_nullable_to_non_nullable
              as double,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardEntryEntityImpl implements _LeaderboardEntryEntity {
  const _$LeaderboardEntryEntityImpl(
      {required this.userId,
      required this.displayName,
      required this.avatarUrl,
      required this.rank,
      required this.score,
      required final Map<String, double> categoryScores,
      required this.lastUpdated,
      required this.previousRank,
      required this.rankChange,
      required final List<String> achievements,
      required this.isCurrentUser})
      : _categoryScores = categoryScores,
        _achievements = achievements;

  factory _$LeaderboardEntryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardEntryEntityImplFromJson(json);

  @override
  final String userId;
  @override
  final String displayName;
  @override
  final String? avatarUrl;
  @override
  final int rank;
  @override
  final double score;
  final Map<String, double> _categoryScores;
  @override
  Map<String, double> get categoryScores {
    if (_categoryScores is EqualUnmodifiableMapView) return _categoryScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryScores);
  }

  @override
  final DateTime lastUpdated;
  @override
  final int previousRank;
  @override
  final double rankChange;
  final List<String> _achievements;
  @override
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  final bool isCurrentUser;

  @override
  String toString() {
    return 'LeaderboardEntryEntity(userId: $userId, displayName: $displayName, avatarUrl: $avatarUrl, rank: $rank, score: $score, categoryScores: $categoryScores, lastUpdated: $lastUpdated, previousRank: $previousRank, rankChange: $rankChange, achievements: $achievements, isCurrentUser: $isCurrentUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardEntryEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._categoryScores, _categoryScores) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.previousRank, previousRank) ||
                other.previousRank == previousRank) &&
            (identical(other.rankChange, rankChange) ||
                other.rankChange == rankChange) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                other.isCurrentUser == isCurrentUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      displayName,
      avatarUrl,
      rank,
      score,
      const DeepCollectionEquality().hash(_categoryScores),
      lastUpdated,
      previousRank,
      rankChange,
      const DeepCollectionEquality().hash(_achievements),
      isCurrentUser);

  /// Create a copy of LeaderboardEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardEntryEntityImplCopyWith<_$LeaderboardEntryEntityImpl>
      get copyWith => __$$LeaderboardEntryEntityImplCopyWithImpl<
          _$LeaderboardEntryEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardEntryEntityImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardEntryEntity implements LeaderboardEntryEntity {
  const factory _LeaderboardEntryEntity(
      {required final String userId,
      required final String displayName,
      required final String? avatarUrl,
      required final int rank,
      required final double score,
      required final Map<String, double> categoryScores,
      required final DateTime lastUpdated,
      required final int previousRank,
      required final double rankChange,
      required final List<String> achievements,
      required final bool isCurrentUser}) = _$LeaderboardEntryEntityImpl;

  factory _LeaderboardEntryEntity.fromJson(Map<String, dynamic> json) =
      _$LeaderboardEntryEntityImpl.fromJson;

  @override
  String get userId;
  @override
  String get displayName;
  @override
  String? get avatarUrl;
  @override
  int get rank;
  @override
  double get score;
  @override
  Map<String, double> get categoryScores;
  @override
  DateTime get lastUpdated;
  @override
  int get previousRank;
  @override
  double get rankChange;
  @override
  List<String> get achievements;
  @override
  bool get isCurrentUser;

  /// Create a copy of LeaderboardEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardEntryEntityImplCopyWith<_$LeaderboardEntryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SocialActivityEntity _$SocialActivityEntityFromJson(Map<String, dynamic> json) {
  return _SocialActivityEntity.fromJson(json);
}

/// @nodoc
mixin _$SocialActivityEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  ActivityType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  List<String> get likedBy => throw _privateConstructorUsedError;
  List<String> get commentedBy => throw _privateConstructorUsedError;
  List<String> get sharedBy => throw _privateConstructorUsedError;
  String? get bookId => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  String? get challengeId => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get engagementScore => throw _privateConstructorUsedError;

  /// Serializes this SocialActivityEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialActivityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialActivityEntityCopyWith<SocialActivityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialActivityEntityCopyWith<$Res> {
  factory $SocialActivityEntityCopyWith(SocialActivityEntity value,
          $Res Function(SocialActivityEntity) then) =
      _$SocialActivityEntityCopyWithImpl<$Res, SocialActivityEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String displayName,
      String? avatarUrl,
      ActivityType type,
      String title,
      String description,
      Map<String, dynamic> data,
      DateTime dateCreated,
      List<String> likedBy,
      List<String> commentedBy,
      List<String> sharedBy,
      String? bookId,
      String? groupId,
      String? challengeId,
      bool isPublic,
      List<String> tags,
      int engagementScore});
}

/// @nodoc
class _$SocialActivityEntityCopyWithImpl<$Res,
        $Val extends SocialActivityEntity>
    implements $SocialActivityEntityCopyWith<$Res> {
  _$SocialActivityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialActivityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? displayName = null,
    Object? avatarUrl = freezed,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? data = null,
    Object? dateCreated = null,
    Object? likedBy = null,
    Object? commentedBy = null,
    Object? sharedBy = null,
    Object? bookId = freezed,
    Object? groupId = freezed,
    Object? challengeId = freezed,
    Object? isPublic = null,
    Object? tags = null,
    Object? engagementScore = null,
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
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likedBy: null == likedBy
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentedBy: null == commentedBy
          ? _value.commentedBy
          : commentedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sharedBy: null == sharedBy
          ? _value.sharedBy
          : sharedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      challengeId: freezed == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      engagementScore: null == engagementScore
          ? _value.engagementScore
          : engagementScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialActivityEntityImplCopyWith<$Res>
    implements $SocialActivityEntityCopyWith<$Res> {
  factory _$$SocialActivityEntityImplCopyWith(_$SocialActivityEntityImpl value,
          $Res Function(_$SocialActivityEntityImpl) then) =
      __$$SocialActivityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String displayName,
      String? avatarUrl,
      ActivityType type,
      String title,
      String description,
      Map<String, dynamic> data,
      DateTime dateCreated,
      List<String> likedBy,
      List<String> commentedBy,
      List<String> sharedBy,
      String? bookId,
      String? groupId,
      String? challengeId,
      bool isPublic,
      List<String> tags,
      int engagementScore});
}

/// @nodoc
class __$$SocialActivityEntityImplCopyWithImpl<$Res>
    extends _$SocialActivityEntityCopyWithImpl<$Res, _$SocialActivityEntityImpl>
    implements _$$SocialActivityEntityImplCopyWith<$Res> {
  __$$SocialActivityEntityImplCopyWithImpl(_$SocialActivityEntityImpl _value,
      $Res Function(_$SocialActivityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialActivityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? displayName = null,
    Object? avatarUrl = freezed,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? data = null,
    Object? dateCreated = null,
    Object? likedBy = null,
    Object? commentedBy = null,
    Object? sharedBy = null,
    Object? bookId = freezed,
    Object? groupId = freezed,
    Object? challengeId = freezed,
    Object? isPublic = null,
    Object? tags = null,
    Object? engagementScore = null,
  }) {
    return _then(_$SocialActivityEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likedBy: null == likedBy
          ? _value._likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentedBy: null == commentedBy
          ? _value._commentedBy
          : commentedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sharedBy: null == sharedBy
          ? _value._sharedBy
          : sharedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      challengeId: freezed == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      engagementScore: null == engagementScore
          ? _value.engagementScore
          : engagementScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialActivityEntityImpl implements _SocialActivityEntity {
  const _$SocialActivityEntityImpl(
      {required this.id,
      required this.userId,
      required this.displayName,
      required this.avatarUrl,
      required this.type,
      required this.title,
      required this.description,
      required final Map<String, dynamic> data,
      required this.dateCreated,
      required final List<String> likedBy,
      required final List<String> commentedBy,
      required final List<String> sharedBy,
      required this.bookId,
      required this.groupId,
      required this.challengeId,
      required this.isPublic,
      required final List<String> tags,
      required this.engagementScore})
      : _data = data,
        _likedBy = likedBy,
        _commentedBy = commentedBy,
        _sharedBy = sharedBy,
        _tags = tags;

  factory _$SocialActivityEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialActivityEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String displayName;
  @override
  final String? avatarUrl;
  @override
  final ActivityType type;
  @override
  final String title;
  @override
  final String description;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime dateCreated;
  final List<String> _likedBy;
  @override
  List<String> get likedBy {
    if (_likedBy is EqualUnmodifiableListView) return _likedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedBy);
  }

  final List<String> _commentedBy;
  @override
  List<String> get commentedBy {
    if (_commentedBy is EqualUnmodifiableListView) return _commentedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentedBy);
  }

  final List<String> _sharedBy;
  @override
  List<String> get sharedBy {
    if (_sharedBy is EqualUnmodifiableListView) return _sharedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedBy);
  }

  @override
  final String? bookId;
  @override
  final String? groupId;
  @override
  final String? challengeId;
  @override
  final bool isPublic;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int engagementScore;

  @override
  String toString() {
    return 'SocialActivityEntity(id: $id, userId: $userId, displayName: $displayName, avatarUrl: $avatarUrl, type: $type, title: $title, description: $description, data: $data, dateCreated: $dateCreated, likedBy: $likedBy, commentedBy: $commentedBy, sharedBy: $sharedBy, bookId: $bookId, groupId: $groupId, challengeId: $challengeId, isPublic: $isPublic, tags: $tags, engagementScore: $engagementScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialActivityEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            const DeepCollectionEquality().equals(other._likedBy, _likedBy) &&
            const DeepCollectionEquality()
                .equals(other._commentedBy, _commentedBy) &&
            const DeepCollectionEquality().equals(other._sharedBy, _sharedBy) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.engagementScore, engagementScore) ||
                other.engagementScore == engagementScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      displayName,
      avatarUrl,
      type,
      title,
      description,
      const DeepCollectionEquality().hash(_data),
      dateCreated,
      const DeepCollectionEquality().hash(_likedBy),
      const DeepCollectionEquality().hash(_commentedBy),
      const DeepCollectionEquality().hash(_sharedBy),
      bookId,
      groupId,
      challengeId,
      isPublic,
      const DeepCollectionEquality().hash(_tags),
      engagementScore);

  /// Create a copy of SocialActivityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialActivityEntityImplCopyWith<_$SocialActivityEntityImpl>
      get copyWith =>
          __$$SocialActivityEntityImplCopyWithImpl<_$SocialActivityEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialActivityEntityImplToJson(
      this,
    );
  }
}

abstract class _SocialActivityEntity implements SocialActivityEntity {
  const factory _SocialActivityEntity(
      {required final String id,
      required final String userId,
      required final String displayName,
      required final String? avatarUrl,
      required final ActivityType type,
      required final String title,
      required final String description,
      required final Map<String, dynamic> data,
      required final DateTime dateCreated,
      required final List<String> likedBy,
      required final List<String> commentedBy,
      required final List<String> sharedBy,
      required final String? bookId,
      required final String? groupId,
      required final String? challengeId,
      required final bool isPublic,
      required final List<String> tags,
      required final int engagementScore}) = _$SocialActivityEntityImpl;

  factory _SocialActivityEntity.fromJson(Map<String, dynamic> json) =
      _$SocialActivityEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get displayName;
  @override
  String? get avatarUrl;
  @override
  ActivityType get type;
  @override
  String get title;
  @override
  String get description;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get dateCreated;
  @override
  List<String> get likedBy;
  @override
  List<String> get commentedBy;
  @override
  List<String> get sharedBy;
  @override
  String? get bookId;
  @override
  String? get groupId;
  @override
  String? get challengeId;
  @override
  bool get isPublic;
  @override
  List<String> get tags;
  @override
  int get engagementScore;

  /// Create a copy of SocialActivityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialActivityEntityImplCopyWith<_$SocialActivityEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
