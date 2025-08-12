// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadingGroup _$ReadingGroupFromJson(Map<String, dynamic> json) {
  return _ReadingGroup.fromJson(json);
}

/// @nodoc
mixin _$ReadingGroup {
  /// Unique identifier for the reading group
  String get id => throw _privateConstructorUsedError;

  /// Name of the reading group
  String get name => throw _privateConstructorUsedError;

  /// Description of the reading group
  String get description => throw _privateConstructorUsedError;

  /// URL to the group's cover image
  String? get coverImageUrl => throw _privateConstructorUsedError;

  /// Group's primary genre/focus
  String get primaryGenre => throw _privateConstructorUsedError;

  /// Group's tags/categories
  List<String> get tags => throw _privateConstructorUsedError;

  /// Group's privacy level
  GroupPrivacy get privacy => throw _privateConstructorUsedError;

  /// Group's maximum member limit (null for unlimited)
  int? get maxMembers => throw _privateConstructorUsedError;

  /// Current number of members
  int get memberCount => throw _privateConstructorUsedError;

  /// Group's reading pace (books per month)
  double get readingPace => throw _privateConstructorUsedError;

  /// Group's current book selection
  GroupBookSelection get currentBook => throw _privateConstructorUsedError;

  /// Group's reading schedule
  ReadingSchedule get readingSchedule => throw _privateConstructorUsedError;

  /// Group's discussion topics
  List<DiscussionTopic> get discussionTopics =>
      throw _privateConstructorUsedError;

  /// Group's rules and guidelines
  List<String> get rules => throw _privateConstructorUsedError;

  /// Group's achievements and milestones
  List<GroupAchievement> get achievements => throw _privateConstructorUsedError;

  /// Group's moderators
  List<String> get moderators => throw _privateConstructorUsedError;

  /// Group's members
  List<GroupMember> get members => throw _privateConstructorUsedError;

  /// Group's pending join requests
  List<JoinRequest> get pendingRequests => throw _privateConstructorUsedError;

  /// Date when the group was created
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Date when the group was last updated
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Whether the group is active
  bool get isActive => throw _privateConstructorUsedError;

  /// Group's status (open, closed, archived)
  GroupStatus get status => throw _privateConstructorUsedError;

  /// Group's language preference
  String get language => throw _privateConstructorUsedError;

  /// Group's timezone
  String? get timezone => throw _privateConstructorUsedError;

  /// Group's meeting schedule (if applicable)
  MeetingSchedule? get meetingSchedule => throw _privateConstructorUsedError;

  /// Group's favorite genres
  List<String> get favoriteGenres => throw _privateConstructorUsedError;

  /// Serializes this ReadingGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingGroupCopyWith<ReadingGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingGroupCopyWith<$Res> {
  factory $ReadingGroupCopyWith(
          ReadingGroup value, $Res Function(ReadingGroup) then) =
      _$ReadingGroupCopyWithImpl<$Res, ReadingGroup>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? coverImageUrl,
      String primaryGenre,
      List<String> tags,
      GroupPrivacy privacy,
      int? maxMembers,
      int memberCount,
      double readingPace,
      GroupBookSelection currentBook,
      ReadingSchedule readingSchedule,
      List<DiscussionTopic> discussionTopics,
      List<String> rules,
      List<GroupAchievement> achievements,
      List<String> moderators,
      List<GroupMember> members,
      List<JoinRequest> pendingRequests,
      DateTime dateCreated,
      DateTime dateUpdated,
      bool isActive,
      GroupStatus status,
      String language,
      String? timezone,
      MeetingSchedule? meetingSchedule,
      List<String> favoriteGenres});

  $GroupBookSelectionCopyWith<$Res> get currentBook;
  $ReadingScheduleCopyWith<$Res> get readingSchedule;
  $MeetingScheduleCopyWith<$Res>? get meetingSchedule;
}

/// @nodoc
class _$ReadingGroupCopyWithImpl<$Res, $Val extends ReadingGroup>
    implements $ReadingGroupCopyWith<$Res> {
  _$ReadingGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? coverImageUrl = freezed,
    Object? primaryGenre = null,
    Object? tags = null,
    Object? privacy = null,
    Object? maxMembers = freezed,
    Object? memberCount = null,
    Object? readingPace = null,
    Object? currentBook = null,
    Object? readingSchedule = null,
    Object? discussionTopics = null,
    Object? rules = null,
    Object? achievements = null,
    Object? moderators = null,
    Object? members = null,
    Object? pendingRequests = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? isActive = null,
    Object? status = null,
    Object? language = null,
    Object? timezone = freezed,
    Object? meetingSchedule = freezed,
    Object? favoriteGenres = null,
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
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryGenre: null == primaryGenre
          ? _value.primaryGenre
          : primaryGenre // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as GroupPrivacy,
      maxMembers: freezed == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      readingPace: null == readingPace
          ? _value.readingPace
          : readingPace // ignore: cast_nullable_to_non_nullable
              as double,
      currentBook: null == currentBook
          ? _value.currentBook
          : currentBook // ignore: cast_nullable_to_non_nullable
              as GroupBookSelection,
      readingSchedule: null == readingSchedule
          ? _value.readingSchedule
          : readingSchedule // ignore: cast_nullable_to_non_nullable
              as ReadingSchedule,
      discussionTopics: null == discussionTopics
          ? _value.discussionTopics
          : discussionTopics // ignore: cast_nullable_to_non_nullable
              as List<DiscussionTopic>,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<GroupAchievement>,
      moderators: null == moderators
          ? _value.moderators
          : moderators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<GroupMember>,
      pendingRequests: null == pendingRequests
          ? _value.pendingRequests
          : pendingRequests // ignore: cast_nullable_to_non_nullable
              as List<JoinRequest>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GroupStatus,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingSchedule: freezed == meetingSchedule
          ? _value.meetingSchedule
          : meetingSchedule // ignore: cast_nullable_to_non_nullable
              as MeetingSchedule?,
      favoriteGenres: null == favoriteGenres
          ? _value.favoriteGenres
          : favoriteGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of ReadingGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupBookSelectionCopyWith<$Res> get currentBook {
    return $GroupBookSelectionCopyWith<$Res>(_value.currentBook, (value) {
      return _then(_value.copyWith(currentBook: value) as $Val);
    });
  }

  /// Create a copy of ReadingGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadingScheduleCopyWith<$Res> get readingSchedule {
    return $ReadingScheduleCopyWith<$Res>(_value.readingSchedule, (value) {
      return _then(_value.copyWith(readingSchedule: value) as $Val);
    });
  }

  /// Create a copy of ReadingGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingScheduleCopyWith<$Res>? get meetingSchedule {
    if (_value.meetingSchedule == null) {
      return null;
    }

    return $MeetingScheduleCopyWith<$Res>(_value.meetingSchedule!, (value) {
      return _then(_value.copyWith(meetingSchedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReadingGroupImplCopyWith<$Res>
    implements $ReadingGroupCopyWith<$Res> {
  factory _$$ReadingGroupImplCopyWith(
          _$ReadingGroupImpl value, $Res Function(_$ReadingGroupImpl) then) =
      __$$ReadingGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? coverImageUrl,
      String primaryGenre,
      List<String> tags,
      GroupPrivacy privacy,
      int? maxMembers,
      int memberCount,
      double readingPace,
      GroupBookSelection currentBook,
      ReadingSchedule readingSchedule,
      List<DiscussionTopic> discussionTopics,
      List<String> rules,
      List<GroupAchievement> achievements,
      List<String> moderators,
      List<GroupMember> members,
      List<JoinRequest> pendingRequests,
      DateTime dateCreated,
      DateTime dateUpdated,
      bool isActive,
      GroupStatus status,
      String language,
      String? timezone,
      MeetingSchedule? meetingSchedule,
      List<String> favoriteGenres});

  @override
  $GroupBookSelectionCopyWith<$Res> get currentBook;
  @override
  $ReadingScheduleCopyWith<$Res> get readingSchedule;
  @override
  $MeetingScheduleCopyWith<$Res>? get meetingSchedule;
}

/// @nodoc
class __$$ReadingGroupImplCopyWithImpl<$Res>
    extends _$ReadingGroupCopyWithImpl<$Res, _$ReadingGroupImpl>
    implements _$$ReadingGroupImplCopyWith<$Res> {
  __$$ReadingGroupImplCopyWithImpl(
      _$ReadingGroupImpl _value, $Res Function(_$ReadingGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? coverImageUrl = freezed,
    Object? primaryGenre = null,
    Object? tags = null,
    Object? privacy = null,
    Object? maxMembers = freezed,
    Object? memberCount = null,
    Object? readingPace = null,
    Object? currentBook = null,
    Object? readingSchedule = null,
    Object? discussionTopics = null,
    Object? rules = null,
    Object? achievements = null,
    Object? moderators = null,
    Object? members = null,
    Object? pendingRequests = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? isActive = null,
    Object? status = null,
    Object? language = null,
    Object? timezone = freezed,
    Object? meetingSchedule = freezed,
    Object? favoriteGenres = null,
  }) {
    return _then(_$ReadingGroupImpl(
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
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryGenre: null == primaryGenre
          ? _value.primaryGenre
          : primaryGenre // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as GroupPrivacy,
      maxMembers: freezed == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      readingPace: null == readingPace
          ? _value.readingPace
          : readingPace // ignore: cast_nullable_to_non_nullable
              as double,
      currentBook: null == currentBook
          ? _value.currentBook
          : currentBook // ignore: cast_nullable_to_non_nullable
              as GroupBookSelection,
      readingSchedule: null == readingSchedule
          ? _value.readingSchedule
          : readingSchedule // ignore: cast_nullable_to_non_nullable
              as ReadingSchedule,
      discussionTopics: null == discussionTopics
          ? _value._discussionTopics
          : discussionTopics // ignore: cast_nullable_to_non_nullable
              as List<DiscussionTopic>,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<GroupAchievement>,
      moderators: null == moderators
          ? _value._moderators
          : moderators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<GroupMember>,
      pendingRequests: null == pendingRequests
          ? _value._pendingRequests
          : pendingRequests // ignore: cast_nullable_to_non_nullable
              as List<JoinRequest>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GroupStatus,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingSchedule: freezed == meetingSchedule
          ? _value.meetingSchedule
          : meetingSchedule // ignore: cast_nullable_to_non_nullable
              as MeetingSchedule?,
      favoriteGenres: null == favoriteGenres
          ? _value._favoriteGenres
          : favoriteGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingGroupImpl implements _ReadingGroup {
  const _$ReadingGroupImpl(
      {required this.id,
      required this.name,
      required this.description,
      this.coverImageUrl,
      required this.primaryGenre,
      required final List<String> tags,
      required this.privacy,
      this.maxMembers,
      required this.memberCount,
      required this.readingPace,
      required this.currentBook,
      required this.readingSchedule,
      required final List<DiscussionTopic> discussionTopics,
      required final List<String> rules,
      required final List<GroupAchievement> achievements,
      required final List<String> moderators,
      required final List<GroupMember> members,
      required final List<JoinRequest> pendingRequests,
      required this.dateCreated,
      required this.dateUpdated,
      required this.isActive,
      required this.status,
      required this.language,
      this.timezone,
      this.meetingSchedule,
      final List<String> favoriteGenres = const []})
      : _tags = tags,
        _discussionTopics = discussionTopics,
        _rules = rules,
        _achievements = achievements,
        _moderators = moderators,
        _members = members,
        _pendingRequests = pendingRequests,
        _favoriteGenres = favoriteGenres;

  factory _$ReadingGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingGroupImplFromJson(json);

  /// Unique identifier for the reading group
  @override
  final String id;

  /// Name of the reading group
  @override
  final String name;

  /// Description of the reading group
  @override
  final String description;

  /// URL to the group's cover image
  @override
  final String? coverImageUrl;

  /// Group's primary genre/focus
  @override
  final String primaryGenre;

  /// Group's tags/categories
  final List<String> _tags;

  /// Group's tags/categories
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Group's privacy level
  @override
  final GroupPrivacy privacy;

  /// Group's maximum member limit (null for unlimited)
  @override
  final int? maxMembers;

  /// Current number of members
  @override
  final int memberCount;

  /// Group's reading pace (books per month)
  @override
  final double readingPace;

  /// Group's current book selection
  @override
  final GroupBookSelection currentBook;

  /// Group's reading schedule
  @override
  final ReadingSchedule readingSchedule;

  /// Group's discussion topics
  final List<DiscussionTopic> _discussionTopics;

  /// Group's discussion topics
  @override
  List<DiscussionTopic> get discussionTopics {
    if (_discussionTopics is EqualUnmodifiableListView)
      return _discussionTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discussionTopics);
  }

  /// Group's rules and guidelines
  final List<String> _rules;

  /// Group's rules and guidelines
  @override
  List<String> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  /// Group's achievements and milestones
  final List<GroupAchievement> _achievements;

  /// Group's achievements and milestones
  @override
  List<GroupAchievement> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  /// Group's moderators
  final List<String> _moderators;

  /// Group's moderators
  @override
  List<String> get moderators {
    if (_moderators is EqualUnmodifiableListView) return _moderators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderators);
  }

  /// Group's members
  final List<GroupMember> _members;

  /// Group's members
  @override
  List<GroupMember> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  /// Group's pending join requests
  final List<JoinRequest> _pendingRequests;

  /// Group's pending join requests
  @override
  List<JoinRequest> get pendingRequests {
    if (_pendingRequests is EqualUnmodifiableListView) return _pendingRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingRequests);
  }

  /// Date when the group was created
  @override
  final DateTime dateCreated;

  /// Date when the group was last updated
  @override
  final DateTime dateUpdated;

  /// Whether the group is active
  @override
  final bool isActive;

  /// Group's status (open, closed, archived)
  @override
  final GroupStatus status;

  /// Group's language preference
  @override
  final String language;

  /// Group's timezone
  @override
  final String? timezone;

  /// Group's meeting schedule (if applicable)
  @override
  final MeetingSchedule? meetingSchedule;

  /// Group's favorite genres
  final List<String> _favoriteGenres;

  /// Group's favorite genres
  @override
  @JsonKey()
  List<String> get favoriteGenres {
    if (_favoriteGenres is EqualUnmodifiableListView) return _favoriteGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteGenres);
  }

  @override
  String toString() {
    return 'ReadingGroup(id: $id, name: $name, description: $description, coverImageUrl: $coverImageUrl, primaryGenre: $primaryGenre, tags: $tags, privacy: $privacy, maxMembers: $maxMembers, memberCount: $memberCount, readingPace: $readingPace, currentBook: $currentBook, readingSchedule: $readingSchedule, discussionTopics: $discussionTopics, rules: $rules, achievements: $achievements, moderators: $moderators, members: $members, pendingRequests: $pendingRequests, dateCreated: $dateCreated, dateUpdated: $dateUpdated, isActive: $isActive, status: $status, language: $language, timezone: $timezone, meetingSchedule: $meetingSchedule, favoriteGenres: $favoriteGenres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.primaryGenre, primaryGenre) ||
                other.primaryGenre == primaryGenre) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.readingPace, readingPace) ||
                other.readingPace == readingPace) &&
            (identical(other.currentBook, currentBook) ||
                other.currentBook == currentBook) &&
            (identical(other.readingSchedule, readingSchedule) ||
                other.readingSchedule == readingSchedule) &&
            const DeepCollectionEquality()
                .equals(other._discussionTopics, _discussionTopics) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            const DeepCollectionEquality()
                .equals(other._moderators, _moderators) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._pendingRequests, _pendingRequests) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.meetingSchedule, meetingSchedule) ||
                other.meetingSchedule == meetingSchedule) &&
            const DeepCollectionEquality()
                .equals(other._favoriteGenres, _favoriteGenres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        coverImageUrl,
        primaryGenre,
        const DeepCollectionEquality().hash(_tags),
        privacy,
        maxMembers,
        memberCount,
        readingPace,
        currentBook,
        readingSchedule,
        const DeepCollectionEquality().hash(_discussionTopics),
        const DeepCollectionEquality().hash(_rules),
        const DeepCollectionEquality().hash(_achievements),
        const DeepCollectionEquality().hash(_moderators),
        const DeepCollectionEquality().hash(_members),
        const DeepCollectionEquality().hash(_pendingRequests),
        dateCreated,
        dateUpdated,
        isActive,
        status,
        language,
        timezone,
        meetingSchedule,
        const DeepCollectionEquality().hash(_favoriteGenres)
      ]);

  /// Create a copy of ReadingGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingGroupImplCopyWith<_$ReadingGroupImpl> get copyWith =>
      __$$ReadingGroupImplCopyWithImpl<_$ReadingGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingGroupImplToJson(
      this,
    );
  }
}

abstract class _ReadingGroup implements ReadingGroup {
  const factory _ReadingGroup(
      {required final String id,
      required final String name,
      required final String description,
      final String? coverImageUrl,
      required final String primaryGenre,
      required final List<String> tags,
      required final GroupPrivacy privacy,
      final int? maxMembers,
      required final int memberCount,
      required final double readingPace,
      required final GroupBookSelection currentBook,
      required final ReadingSchedule readingSchedule,
      required final List<DiscussionTopic> discussionTopics,
      required final List<String> rules,
      required final List<GroupAchievement> achievements,
      required final List<String> moderators,
      required final List<GroupMember> members,
      required final List<JoinRequest> pendingRequests,
      required final DateTime dateCreated,
      required final DateTime dateUpdated,
      required final bool isActive,
      required final GroupStatus status,
      required final String language,
      final String? timezone,
      final MeetingSchedule? meetingSchedule,
      final List<String> favoriteGenres}) = _$ReadingGroupImpl;

  factory _ReadingGroup.fromJson(Map<String, dynamic> json) =
      _$ReadingGroupImpl.fromJson;

  /// Unique identifier for the reading group
  @override
  String get id;

  /// Name of the reading group
  @override
  String get name;

  /// Description of the reading group
  @override
  String get description;

  /// URL to the group's cover image
  @override
  String? get coverImageUrl;

  /// Group's primary genre/focus
  @override
  String get primaryGenre;

  /// Group's tags/categories
  @override
  List<String> get tags;

  /// Group's privacy level
  @override
  GroupPrivacy get privacy;

  /// Group's maximum member limit (null for unlimited)
  @override
  int? get maxMembers;

  /// Current number of members
  @override
  int get memberCount;

  /// Group's reading pace (books per month)
  @override
  double get readingPace;

  /// Group's current book selection
  @override
  GroupBookSelection get currentBook;

  /// Group's reading schedule
  @override
  ReadingSchedule get readingSchedule;

  /// Group's discussion topics
  @override
  List<DiscussionTopic> get discussionTopics;

  /// Group's rules and guidelines
  @override
  List<String> get rules;

  /// Group's achievements and milestones
  @override
  List<GroupAchievement> get achievements;

  /// Group's moderators
  @override
  List<String> get moderators;

  /// Group's members
  @override
  List<GroupMember> get members;

  /// Group's pending join requests
  @override
  List<JoinRequest> get pendingRequests;

  /// Date when the group was created
  @override
  DateTime get dateCreated;

  /// Date when the group was last updated
  @override
  DateTime get dateUpdated;

  /// Whether the group is active
  @override
  bool get isActive;

  /// Group's status (open, closed, archived)
  @override
  GroupStatus get status;

  /// Group's language preference
  @override
  String get language;

  /// Group's timezone
  @override
  String? get timezone;

  /// Group's meeting schedule (if applicable)
  @override
  MeetingSchedule? get meetingSchedule;

  /// Group's favorite genres
  @override
  List<String> get favoriteGenres;

  /// Create a copy of ReadingGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingGroupImplCopyWith<_$ReadingGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupBookSelection _$GroupBookSelectionFromJson(Map<String, dynamic> json) {
  return _GroupBookSelection.fromJson(json);
}

/// @nodoc
mixin _$GroupBookSelection {
  /// Book ID
  String get bookId => throw _privateConstructorUsedError;

  /// Book title
  String get title => throw _privateConstructorUsedError;

  /// Book author
  String get author => throw _privateConstructorUsedError;

  /// Book cover URL
  String? get coverUrl => throw _privateConstructorUsedError;

  /// Start date for reading
  DateTime get startDate => throw _privateConstructorUsedError;

  /// End date for reading
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Discussion schedule
  List<DiscussionSession> get discussionSessions =>
      throw _privateConstructorUsedError;

  /// Reading milestones
  List<ReadingMilestone> get milestones => throw _privateConstructorUsedError;

  /// Group's average rating
  double? get averageRating => throw _privateConstructorUsedError;

  /// Number of members who finished the book
  int get membersFinished => throw _privateConstructorUsedError;

  /// Total number of members reading
  int get totalMembersReading => throw _privateConstructorUsedError;

  /// Serializes this GroupBookSelection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupBookSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupBookSelectionCopyWith<GroupBookSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupBookSelectionCopyWith<$Res> {
  factory $GroupBookSelectionCopyWith(
          GroupBookSelection value, $Res Function(GroupBookSelection) then) =
      _$GroupBookSelectionCopyWithImpl<$Res, GroupBookSelection>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String? coverUrl,
      DateTime startDate,
      DateTime endDate,
      List<DiscussionSession> discussionSessions,
      List<ReadingMilestone> milestones,
      double? averageRating,
      int membersFinished,
      int totalMembersReading});
}

/// @nodoc
class _$GroupBookSelectionCopyWithImpl<$Res, $Val extends GroupBookSelection>
    implements $GroupBookSelectionCopyWith<$Res> {
  _$GroupBookSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupBookSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? coverUrl = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? discussionSessions = null,
    Object? milestones = null,
    Object? averageRating = freezed,
    Object? membersFinished = null,
    Object? totalMembersReading = null,
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
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      discussionSessions: null == discussionSessions
          ? _value.discussionSessions
          : discussionSessions // ignore: cast_nullable_to_non_nullable
              as List<DiscussionSession>,
      milestones: null == milestones
          ? _value.milestones
          : milestones // ignore: cast_nullable_to_non_nullable
              as List<ReadingMilestone>,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      membersFinished: null == membersFinished
          ? _value.membersFinished
          : membersFinished // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembersReading: null == totalMembersReading
          ? _value.totalMembersReading
          : totalMembersReading // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupBookSelectionImplCopyWith<$Res>
    implements $GroupBookSelectionCopyWith<$Res> {
  factory _$$GroupBookSelectionImplCopyWith(_$GroupBookSelectionImpl value,
          $Res Function(_$GroupBookSelectionImpl) then) =
      __$$GroupBookSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String? coverUrl,
      DateTime startDate,
      DateTime endDate,
      List<DiscussionSession> discussionSessions,
      List<ReadingMilestone> milestones,
      double? averageRating,
      int membersFinished,
      int totalMembersReading});
}

/// @nodoc
class __$$GroupBookSelectionImplCopyWithImpl<$Res>
    extends _$GroupBookSelectionCopyWithImpl<$Res, _$GroupBookSelectionImpl>
    implements _$$GroupBookSelectionImplCopyWith<$Res> {
  __$$GroupBookSelectionImplCopyWithImpl(_$GroupBookSelectionImpl _value,
      $Res Function(_$GroupBookSelectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupBookSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? coverUrl = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? discussionSessions = null,
    Object? milestones = null,
    Object? averageRating = freezed,
    Object? membersFinished = null,
    Object? totalMembersReading = null,
  }) {
    return _then(_$GroupBookSelectionImpl(
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
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      discussionSessions: null == discussionSessions
          ? _value._discussionSessions
          : discussionSessions // ignore: cast_nullable_to_non_nullable
              as List<DiscussionSession>,
      milestones: null == milestones
          ? _value._milestones
          : milestones // ignore: cast_nullable_to_non_nullable
              as List<ReadingMilestone>,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      membersFinished: null == membersFinished
          ? _value.membersFinished
          : membersFinished // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembersReading: null == totalMembersReading
          ? _value.totalMembersReading
          : totalMembersReading // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupBookSelectionImpl implements _GroupBookSelection {
  const _$GroupBookSelectionImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      this.coverUrl,
      required this.startDate,
      required this.endDate,
      required final List<DiscussionSession> discussionSessions,
      required final List<ReadingMilestone> milestones,
      this.averageRating,
      required this.membersFinished,
      required this.totalMembersReading})
      : _discussionSessions = discussionSessions,
        _milestones = milestones;

  factory _$GroupBookSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupBookSelectionImplFromJson(json);

  /// Book ID
  @override
  final String bookId;

  /// Book title
  @override
  final String title;

  /// Book author
  @override
  final String author;

  /// Book cover URL
  @override
  final String? coverUrl;

  /// Start date for reading
  @override
  final DateTime startDate;

  /// End date for reading
  @override
  final DateTime endDate;

  /// Discussion schedule
  final List<DiscussionSession> _discussionSessions;

  /// Discussion schedule
  @override
  List<DiscussionSession> get discussionSessions {
    if (_discussionSessions is EqualUnmodifiableListView)
      return _discussionSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discussionSessions);
  }

  /// Reading milestones
  final List<ReadingMilestone> _milestones;

  /// Reading milestones
  @override
  List<ReadingMilestone> get milestones {
    if (_milestones is EqualUnmodifiableListView) return _milestones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_milestones);
  }

  /// Group's average rating
  @override
  final double? averageRating;

  /// Number of members who finished the book
  @override
  final int membersFinished;

  /// Total number of members reading
  @override
  final int totalMembersReading;

  @override
  String toString() {
    return 'GroupBookSelection(bookId: $bookId, title: $title, author: $author, coverUrl: $coverUrl, startDate: $startDate, endDate: $endDate, discussionSessions: $discussionSessions, milestones: $milestones, averageRating: $averageRating, membersFinished: $membersFinished, totalMembersReading: $totalMembersReading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupBookSelectionImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._discussionSessions, _discussionSessions) &&
            const DeepCollectionEquality()
                .equals(other._milestones, _milestones) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.membersFinished, membersFinished) ||
                other.membersFinished == membersFinished) &&
            (identical(other.totalMembersReading, totalMembersReading) ||
                other.totalMembersReading == totalMembersReading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      coverUrl,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_discussionSessions),
      const DeepCollectionEquality().hash(_milestones),
      averageRating,
      membersFinished,
      totalMembersReading);

  /// Create a copy of GroupBookSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupBookSelectionImplCopyWith<_$GroupBookSelectionImpl> get copyWith =>
      __$$GroupBookSelectionImplCopyWithImpl<_$GroupBookSelectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupBookSelectionImplToJson(
      this,
    );
  }
}

abstract class _GroupBookSelection implements GroupBookSelection {
  const factory _GroupBookSelection(
      {required final String bookId,
      required final String title,
      required final String author,
      final String? coverUrl,
      required final DateTime startDate,
      required final DateTime endDate,
      required final List<DiscussionSession> discussionSessions,
      required final List<ReadingMilestone> milestones,
      final double? averageRating,
      required final int membersFinished,
      required final int totalMembersReading}) = _$GroupBookSelectionImpl;

  factory _GroupBookSelection.fromJson(Map<String, dynamic> json) =
      _$GroupBookSelectionImpl.fromJson;

  /// Book ID
  @override
  String get bookId;

  /// Book title
  @override
  String get title;

  /// Book author
  @override
  String get author;

  /// Book cover URL
  @override
  String? get coverUrl;

  /// Start date for reading
  @override
  DateTime get startDate;

  /// End date for reading
  @override
  DateTime get endDate;

  /// Discussion schedule
  @override
  List<DiscussionSession> get discussionSessions;

  /// Reading milestones
  @override
  List<ReadingMilestone> get milestones;

  /// Group's average rating
  @override
  double? get averageRating;

  /// Number of members who finished the book
  @override
  int get membersFinished;

  /// Total number of members reading
  @override
  int get totalMembersReading;

  /// Create a copy of GroupBookSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupBookSelectionImplCopyWith<_$GroupBookSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingSchedule _$ReadingScheduleFromJson(Map<String, dynamic> json) {
  return ReadingSchedule.fromJson(json);
}

/// @nodoc
mixin _$ReadingSchedule {
  /// How often the group reads books
  ReadingFrequency get frequency => throw _privateConstructorUsedError;

  /// Number of books per period
  int get booksPerPeriod => throw _privateConstructorUsedError;

  /// Group's reading goals
  List<ReadingGoal> get goals => throw _privateConstructorUsedError;

  /// Upcoming book selections
  List<UpcomingBook> get upcomingBooks => throw _privateConstructorUsedError;

  /// Reading challenges
  List<ReadingChallenge> get challenges => throw _privateConstructorUsedError;

  /// Serializes this ReadingSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingScheduleCopyWith<ReadingSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingScheduleCopyWith<$Res> {
  factory $ReadingScheduleCopyWith(
          ReadingSchedule value, $Res Function(ReadingSchedule) then) =
      _$ReadingScheduleCopyWithImpl<$Res, ReadingSchedule>;
  @useResult
  $Res call(
      {ReadingFrequency frequency,
      int booksPerPeriod,
      List<ReadingGoal> goals,
      List<UpcomingBook> upcomingBooks,
      List<ReadingChallenge> challenges});
}

/// @nodoc
class _$ReadingScheduleCopyWithImpl<$Res, $Val extends ReadingSchedule>
    implements $ReadingScheduleCopyWith<$Res> {
  _$ReadingScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = null,
    Object? booksPerPeriod = null,
    Object? goals = null,
    Object? upcomingBooks = null,
    Object? challenges = null,
  }) {
    return _then(_value.copyWith(
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as ReadingFrequency,
      booksPerPeriod: null == booksPerPeriod
          ? _value.booksPerPeriod
          : booksPerPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<ReadingGoal>,
      upcomingBooks: null == upcomingBooks
          ? _value.upcomingBooks
          : upcomingBooks // ignore: cast_nullable_to_non_nullable
              as List<UpcomingBook>,
      challenges: null == challenges
          ? _value.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<ReadingChallenge>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingScheduleImplCopyWith<$Res>
    implements $ReadingScheduleCopyWith<$Res> {
  factory _$$ReadingScheduleImplCopyWith(_$ReadingScheduleImpl value,
          $Res Function(_$ReadingScheduleImpl) then) =
      __$$ReadingScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReadingFrequency frequency,
      int booksPerPeriod,
      List<ReadingGoal> goals,
      List<UpcomingBook> upcomingBooks,
      List<ReadingChallenge> challenges});
}

/// @nodoc
class __$$ReadingScheduleImplCopyWithImpl<$Res>
    extends _$ReadingScheduleCopyWithImpl<$Res, _$ReadingScheduleImpl>
    implements _$$ReadingScheduleImplCopyWith<$Res> {
  __$$ReadingScheduleImplCopyWithImpl(
      _$ReadingScheduleImpl _value, $Res Function(_$ReadingScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = null,
    Object? booksPerPeriod = null,
    Object? goals = null,
    Object? upcomingBooks = null,
    Object? challenges = null,
  }) {
    return _then(_$ReadingScheduleImpl(
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as ReadingFrequency,
      booksPerPeriod: null == booksPerPeriod
          ? _value.booksPerPeriod
          : booksPerPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<ReadingGoal>,
      upcomingBooks: null == upcomingBooks
          ? _value._upcomingBooks
          : upcomingBooks // ignore: cast_nullable_to_non_nullable
              as List<UpcomingBook>,
      challenges: null == challenges
          ? _value._challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<ReadingChallenge>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingScheduleImpl implements ReadingSchedule {
  const _$ReadingScheduleImpl(
      {required this.frequency,
      required this.booksPerPeriod,
      required final List<ReadingGoal> goals,
      required final List<UpcomingBook> upcomingBooks,
      required final List<ReadingChallenge> challenges})
      : _goals = goals,
        _upcomingBooks = upcomingBooks,
        _challenges = challenges;

  factory _$ReadingScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingScheduleImplFromJson(json);

  /// How often the group reads books
  @override
  final ReadingFrequency frequency;

  /// Number of books per period
  @override
  final int booksPerPeriod;

  /// Group's reading goals
  final List<ReadingGoal> _goals;

  /// Group's reading goals
  @override
  List<ReadingGoal> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  /// Upcoming book selections
  final List<UpcomingBook> _upcomingBooks;

  /// Upcoming book selections
  @override
  List<UpcomingBook> get upcomingBooks {
    if (_upcomingBooks is EqualUnmodifiableListView) return _upcomingBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingBooks);
  }

  /// Reading challenges
  final List<ReadingChallenge> _challenges;

  /// Reading challenges
  @override
  List<ReadingChallenge> get challenges {
    if (_challenges is EqualUnmodifiableListView) return _challenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challenges);
  }

  @override
  String toString() {
    return 'ReadingSchedule(frequency: $frequency, booksPerPeriod: $booksPerPeriod, goals: $goals, upcomingBooks: $upcomingBooks, challenges: $challenges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingScheduleImpl &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.booksPerPeriod, booksPerPeriod) ||
                other.booksPerPeriod == booksPerPeriod) &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            const DeepCollectionEquality()
                .equals(other._upcomingBooks, _upcomingBooks) &&
            const DeepCollectionEquality()
                .equals(other._challenges, _challenges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      frequency,
      booksPerPeriod,
      const DeepCollectionEquality().hash(_goals),
      const DeepCollectionEquality().hash(_upcomingBooks),
      const DeepCollectionEquality().hash(_challenges));

  /// Create a copy of ReadingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingScheduleImplCopyWith<_$ReadingScheduleImpl> get copyWith =>
      __$$ReadingScheduleImplCopyWithImpl<_$ReadingScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingScheduleImplToJson(
      this,
    );
  }
}

abstract class ReadingSchedule implements ReadingSchedule {
  const factory ReadingSchedule(
          {required final ReadingFrequency frequency,
          required final int booksPerPeriod,
          required final List<ReadingGoal> goals,
          required final List<UpcomingBook> upcomingBooks,
          required final List<ReadingChallenge> challenges}) =
      _$ReadingScheduleImpl;

  factory ReadingSchedule.fromJson(Map<String, dynamic> json) =
      _$ReadingScheduleImpl.fromJson;

  /// How often the group reads books
  @override
  ReadingFrequency get frequency;

  /// Number of books per period
  @override
  int get booksPerPeriod;

  /// Group's reading goals
  @override
  List<ReadingGoal> get goals;

  /// Upcoming book selections
  @override
  List<UpcomingBook> get upcomingBooks;

  /// Reading challenges
  @override
  List<ReadingChallenge> get challenges;

  /// Create a copy of ReadingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingScheduleImplCopyWith<_$ReadingScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingGoal _$ReadingGoalFromJson(Map<String, dynamic> json) {
  return _ReadingGoal.fromJson(json);
}

/// @nodoc
mixin _$ReadingGoal {
  /// Goal ID
  String get id => throw _privateConstructorUsedError;

  /// Goal description
  String get description => throw _privateConstructorUsedError;

  /// Goal target
  int get target => throw _privateConstructorUsedError;

  /// Goal progress
  int get progress => throw _privateConstructorUsedError;

  /// Goal deadline
  DateTime get deadline => throw _privateConstructorUsedError;

  /// Whether the goal is achieved
  bool get isAchieved => throw _privateConstructorUsedError;

  /// Serializes this ReadingGoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingGoalCopyWith<ReadingGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingGoalCopyWith<$Res> {
  factory $ReadingGoalCopyWith(
          ReadingGoal value, $Res Function(ReadingGoal) then) =
      _$ReadingGoalCopyWithImpl<$Res, ReadingGoal>;
  @useResult
  $Res call(
      {String id,
      String description,
      int target,
      int progress,
      DateTime deadline,
      bool isAchieved});
}

/// @nodoc
class _$ReadingGoalCopyWithImpl<$Res, $Val extends ReadingGoal>
    implements $ReadingGoalCopyWith<$Res> {
  _$ReadingGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? target = null,
    Object? progress = null,
    Object? deadline = null,
    Object? isAchieved = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAchieved: null == isAchieved
          ? _value.isAchieved
          : isAchieved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingGoalImplCopyWith<$Res>
    implements $ReadingGoalCopyWith<$Res> {
  factory _$$ReadingGoalImplCopyWith(
          _$ReadingGoalImpl value, $Res Function(_$ReadingGoalImpl) then) =
      __$$ReadingGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String description,
      int target,
      int progress,
      DateTime deadline,
      bool isAchieved});
}

/// @nodoc
class __$$ReadingGoalImplCopyWithImpl<$Res>
    extends _$ReadingGoalCopyWithImpl<$Res, _$ReadingGoalImpl>
    implements _$$ReadingGoalImplCopyWith<$Res> {
  __$$ReadingGoalImplCopyWithImpl(
      _$ReadingGoalImpl _value, $Res Function(_$ReadingGoalImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? target = null,
    Object? progress = null,
    Object? deadline = null,
    Object? isAchieved = null,
  }) {
    return _then(_$ReadingGoalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAchieved: null == isAchieved
          ? _value.isAchieved
          : isAchieved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingGoalImpl implements _ReadingGoal {
  const _$ReadingGoalImpl(
      {required this.id,
      required this.description,
      required this.target,
      required this.progress,
      required this.deadline,
      required this.isAchieved});

  factory _$ReadingGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingGoalImplFromJson(json);

  /// Goal ID
  @override
  final String id;

  /// Goal description
  @override
  final String description;

  /// Goal target
  @override
  final int target;

  /// Goal progress
  @override
  final int progress;

  /// Goal deadline
  @override
  final DateTime deadline;

  /// Whether the goal is achieved
  @override
  final bool isAchieved;

  @override
  String toString() {
    return 'ReadingGoal(id: $id, description: $description, target: $target, progress: $progress, deadline: $deadline, isAchieved: $isAchieved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingGoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.isAchieved, isAchieved) ||
                other.isAchieved == isAchieved));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, description, target, progress, deadline, isAchieved);

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingGoalImplCopyWith<_$ReadingGoalImpl> get copyWith =>
      __$$ReadingGoalImplCopyWithImpl<_$ReadingGoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingGoalImplToJson(
      this,
    );
  }
}

abstract class _ReadingGoal implements ReadingGoal {
  const factory _ReadingGoal(
      {required final String id,
      required final String description,
      required final int target,
      required final int progress,
      required final DateTime deadline,
      required final bool isAchieved}) = _$ReadingGoalImpl;

  factory _ReadingGoal.fromJson(Map<String, dynamic> json) =
      _$ReadingGoalImpl.fromJson;

  /// Goal ID
  @override
  String get id;

  /// Goal description
  @override
  String get description;

  /// Goal target
  @override
  int get target;

  /// Goal progress
  @override
  int get progress;

  /// Goal deadline
  @override
  DateTime get deadline;

  /// Whether the goal is achieved
  @override
  bool get isAchieved;

  /// Create a copy of ReadingGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingGoalImplCopyWith<_$ReadingGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpcomingBook _$UpcomingBookFromJson(Map<String, dynamic> json) {
  return _UpcomingBook.fromJson(json);
}

/// @nodoc
mixin _$UpcomingBook {
  /// Book ID
  String get bookId => throw _privateConstructorUsedError;

  /// Book title
  String get title => throw _privateConstructorUsedError;

  /// Book author
  String get author => throw _privateConstructorUsedError;

  /// Book cover URL
  String? get coverUrl => throw _privateConstructorUsedError;

  /// Planned start date
  DateTime get plannedStartDate => throw _privateConstructorUsedError;

  /// Planned end date
  DateTime get plannedEndDate => throw _privateConstructorUsedError;

  /// Number of votes for this book
  int get votes => throw _privateConstructorUsedError;

  /// Members who voted for this book
  List<String> get voters => throw _privateConstructorUsedError;

  /// Serializes this UpcomingBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpcomingBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpcomingBookCopyWith<UpcomingBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingBookCopyWith<$Res> {
  factory $UpcomingBookCopyWith(
          UpcomingBook value, $Res Function(UpcomingBook) then) =
      _$UpcomingBookCopyWithImpl<$Res, UpcomingBook>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String? coverUrl,
      DateTime plannedStartDate,
      DateTime plannedEndDate,
      int votes,
      List<String> voters});
}

/// @nodoc
class _$UpcomingBookCopyWithImpl<$Res, $Val extends UpcomingBook>
    implements $UpcomingBookCopyWith<$Res> {
  _$UpcomingBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpcomingBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? coverUrl = freezed,
    Object? plannedStartDate = null,
    Object? plannedEndDate = null,
    Object? votes = null,
    Object? voters = null,
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
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedStartDate: null == plannedStartDate
          ? _value.plannedStartDate
          : plannedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      plannedEndDate: null == plannedEndDate
          ? _value.plannedEndDate
          : plannedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
      voters: null == voters
          ? _value.voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingBookImplCopyWith<$Res>
    implements $UpcomingBookCopyWith<$Res> {
  factory _$$UpcomingBookImplCopyWith(
          _$UpcomingBookImpl value, $Res Function(_$UpcomingBookImpl) then) =
      __$$UpcomingBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String? coverUrl,
      DateTime plannedStartDate,
      DateTime plannedEndDate,
      int votes,
      List<String> voters});
}

/// @nodoc
class __$$UpcomingBookImplCopyWithImpl<$Res>
    extends _$UpcomingBookCopyWithImpl<$Res, _$UpcomingBookImpl>
    implements _$$UpcomingBookImplCopyWith<$Res> {
  __$$UpcomingBookImplCopyWithImpl(
      _$UpcomingBookImpl _value, $Res Function(_$UpcomingBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpcomingBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? coverUrl = freezed,
    Object? plannedStartDate = null,
    Object? plannedEndDate = null,
    Object? votes = null,
    Object? voters = null,
  }) {
    return _then(_$UpcomingBookImpl(
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
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedStartDate: null == plannedStartDate
          ? _value.plannedStartDate
          : plannedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      plannedEndDate: null == plannedEndDate
          ? _value.plannedEndDate
          : plannedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
      voters: null == voters
          ? _value._voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingBookImpl implements _UpcomingBook {
  const _$UpcomingBookImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      this.coverUrl,
      required this.plannedStartDate,
      required this.plannedEndDate,
      required this.votes,
      required final List<String> voters})
      : _voters = voters;

  factory _$UpcomingBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingBookImplFromJson(json);

  /// Book ID
  @override
  final String bookId;

  /// Book title
  @override
  final String title;

  /// Book author
  @override
  final String author;

  /// Book cover URL
  @override
  final String? coverUrl;

  /// Planned start date
  @override
  final DateTime plannedStartDate;

  /// Planned end date
  @override
  final DateTime plannedEndDate;

  /// Number of votes for this book
  @override
  final int votes;

  /// Members who voted for this book
  final List<String> _voters;

  /// Members who voted for this book
  @override
  List<String> get voters {
    if (_voters is EqualUnmodifiableListView) return _voters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voters);
  }

  @override
  String toString() {
    return 'UpcomingBook(bookId: $bookId, title: $title, author: $author, coverUrl: $coverUrl, plannedStartDate: $plannedStartDate, plannedEndDate: $plannedEndDate, votes: $votes, voters: $voters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingBookImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.plannedStartDate, plannedStartDate) ||
                other.plannedStartDate == plannedStartDate) &&
            (identical(other.plannedEndDate, plannedEndDate) ||
                other.plannedEndDate == plannedEndDate) &&
            (identical(other.votes, votes) || other.votes == votes) &&
            const DeepCollectionEquality().equals(other._voters, _voters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      coverUrl,
      plannedStartDate,
      plannedEndDate,
      votes,
      const DeepCollectionEquality().hash(_voters));

  /// Create a copy of UpcomingBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingBookImplCopyWith<_$UpcomingBookImpl> get copyWith =>
      __$$UpcomingBookImplCopyWithImpl<_$UpcomingBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingBookImplToJson(
      this,
    );
  }
}

abstract class _UpcomingBook implements UpcomingBook {
  const factory _UpcomingBook(
      {required final String bookId,
      required final String title,
      required final String author,
      final String? coverUrl,
      required final DateTime plannedStartDate,
      required final DateTime plannedEndDate,
      required final int votes,
      required final List<String> voters}) = _$UpcomingBookImpl;

  factory _UpcomingBook.fromJson(Map<String, dynamic> json) =
      _$UpcomingBookImpl.fromJson;

  /// Book ID
  @override
  String get bookId;

  /// Book title
  @override
  String get title;

  /// Book author
  @override
  String get author;

  /// Book cover URL
  @override
  String? get coverUrl;

  /// Planned start date
  @override
  DateTime get plannedStartDate;

  /// Planned end date
  @override
  DateTime get plannedEndDate;

  /// Number of votes for this book
  @override
  int get votes;

  /// Members who voted for this book
  @override
  List<String> get voters;

  /// Create a copy of UpcomingBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpcomingBookImplCopyWith<_$UpcomingBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingChallenge _$ReadingChallengeFromJson(Map<String, dynamic> json) {
  return _ReadingChallenge.fromJson(json);
}

/// @nodoc
mixin _$ReadingChallenge {
  /// Challenge ID
  String get id => throw _privateConstructorUsedError;

  /// Challenge name
  String get name => throw _privateConstructorUsedError;

  /// Challenge description
  String get description => throw _privateConstructorUsedError;

  /// Challenge start date
  DateTime get startDate => throw _privateConstructorUsedError;

  /// Challenge end date
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Challenge rules
  List<String> get rules => throw _privateConstructorUsedError;

  /// Challenge participants
  List<ChallengeParticipant> get participants =>
      throw _privateConstructorUsedError;

  /// Challenge prizes/rewards
  List<String> get rewards => throw _privateConstructorUsedError;

  /// Serializes this ReadingChallenge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingChallengeCopyWith<ReadingChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingChallengeCopyWith<$Res> {
  factory $ReadingChallengeCopyWith(
          ReadingChallenge value, $Res Function(ReadingChallenge) then) =
      _$ReadingChallengeCopyWithImpl<$Res, ReadingChallenge>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      List<String> rules,
      List<ChallengeParticipant> participants,
      List<String> rewards});
}

/// @nodoc
class _$ReadingChallengeCopyWithImpl<$Res, $Val extends ReadingChallenge>
    implements $ReadingChallengeCopyWith<$Res> {
  _$ReadingChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? rules = null,
    Object? participants = null,
    Object? rewards = null,
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ChallengeParticipant>,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingChallengeImplCopyWith<$Res>
    implements $ReadingChallengeCopyWith<$Res> {
  factory _$$ReadingChallengeImplCopyWith(_$ReadingChallengeImpl value,
          $Res Function(_$ReadingChallengeImpl) then) =
      __$$ReadingChallengeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      List<String> rules,
      List<ChallengeParticipant> participants,
      List<String> rewards});
}

/// @nodoc
class __$$ReadingChallengeImplCopyWithImpl<$Res>
    extends _$ReadingChallengeCopyWithImpl<$Res, _$ReadingChallengeImpl>
    implements _$$ReadingChallengeImplCopyWith<$Res> {
  __$$ReadingChallengeImplCopyWithImpl(_$ReadingChallengeImpl _value,
      $Res Function(_$ReadingChallengeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? rules = null,
    Object? participants = null,
    Object? rewards = null,
  }) {
    return _then(_$ReadingChallengeImpl(
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ChallengeParticipant>,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingChallengeImpl implements _ReadingChallenge {
  const _$ReadingChallengeImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required final List<String> rules,
      required final List<ChallengeParticipant> participants,
      required final List<String> rewards})
      : _rules = rules,
        _participants = participants,
        _rewards = rewards;

  factory _$ReadingChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingChallengeImplFromJson(json);

  /// Challenge ID
  @override
  final String id;

  /// Challenge name
  @override
  final String name;

  /// Challenge description
  @override
  final String description;

  /// Challenge start date
  @override
  final DateTime startDate;

  /// Challenge end date
  @override
  final DateTime endDate;

  /// Challenge rules
  final List<String> _rules;

  /// Challenge rules
  @override
  List<String> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  /// Challenge participants
  final List<ChallengeParticipant> _participants;

  /// Challenge participants
  @override
  List<ChallengeParticipant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  /// Challenge prizes/rewards
  final List<String> _rewards;

  /// Challenge prizes/rewards
  @override
  List<String> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  String toString() {
    return 'ReadingChallenge(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, rules: $rules, participants: $participants, rewards: $rewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingChallengeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_rules),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_rewards));

  /// Create a copy of ReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingChallengeImplCopyWith<_$ReadingChallengeImpl> get copyWith =>
      __$$ReadingChallengeImplCopyWithImpl<_$ReadingChallengeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingChallengeImplToJson(
      this,
    );
  }
}

abstract class _ReadingChallenge implements ReadingChallenge {
  const factory _ReadingChallenge(
      {required final String id,
      required final String name,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final List<String> rules,
      required final List<ChallengeParticipant> participants,
      required final List<String> rewards}) = _$ReadingChallengeImpl;

  factory _ReadingChallenge.fromJson(Map<String, dynamic> json) =
      _$ReadingChallengeImpl.fromJson;

  /// Challenge ID
  @override
  String get id;

  /// Challenge name
  @override
  String get name;

  /// Challenge description
  @override
  String get description;

  /// Challenge start date
  @override
  DateTime get startDate;

  /// Challenge end date
  @override
  DateTime get endDate;

  /// Challenge rules
  @override
  List<String> get rules;

  /// Challenge participants
  @override
  List<ChallengeParticipant> get participants;

  /// Challenge prizes/rewards
  @override
  List<String> get rewards;

  /// Create a copy of ReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingChallengeImplCopyWith<_$ReadingChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChallengeParticipant _$ChallengeParticipantFromJson(Map<String, dynamic> json) {
  return _ChallengeParticipant.fromJson(json);
}

/// @nodoc
mixin _$ChallengeParticipant {
  /// User ID
  String get userId => throw _privateConstructorUsedError;

  /// User's display name
  String get displayName => throw _privateConstructorUsedError;

  /// User's progress
  int get progress => throw _privateConstructorUsedError;

  /// User's rank
  int get rank => throw _privateConstructorUsedError;

  /// Whether user completed the challenge
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this ChallengeParticipant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChallengeParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengeParticipantCopyWith<ChallengeParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeParticipantCopyWith<$Res> {
  factory $ChallengeParticipantCopyWith(ChallengeParticipant value,
          $Res Function(ChallengeParticipant) then) =
      _$ChallengeParticipantCopyWithImpl<$Res, ChallengeParticipant>;
  @useResult
  $Res call(
      {String userId,
      String displayName,
      int progress,
      int rank,
      bool isCompleted});
}

/// @nodoc
class _$ChallengeParticipantCopyWithImpl<$Res,
        $Val extends ChallengeParticipant>
    implements $ChallengeParticipantCopyWith<$Res> {
  _$ChallengeParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChallengeParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? progress = null,
    Object? rank = null,
    Object? isCompleted = null,
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
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeParticipantImplCopyWith<$Res>
    implements $ChallengeParticipantCopyWith<$Res> {
  factory _$$ChallengeParticipantImplCopyWith(_$ChallengeParticipantImpl value,
          $Res Function(_$ChallengeParticipantImpl) then) =
      __$$ChallengeParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayName,
      int progress,
      int rank,
      bool isCompleted});
}

/// @nodoc
class __$$ChallengeParticipantImplCopyWithImpl<$Res>
    extends _$ChallengeParticipantCopyWithImpl<$Res, _$ChallengeParticipantImpl>
    implements _$$ChallengeParticipantImplCopyWith<$Res> {
  __$$ChallengeParticipantImplCopyWithImpl(_$ChallengeParticipantImpl _value,
      $Res Function(_$ChallengeParticipantImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChallengeParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? progress = null,
    Object? rank = null,
    Object? isCompleted = null,
  }) {
    return _then(_$ChallengeParticipantImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeParticipantImpl implements _ChallengeParticipant {
  const _$ChallengeParticipantImpl(
      {required this.userId,
      required this.displayName,
      required this.progress,
      required this.rank,
      required this.isCompleted});

  factory _$ChallengeParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeParticipantImplFromJson(json);

  /// User ID
  @override
  final String userId;

  /// User's display name
  @override
  final String displayName;

  /// User's progress
  @override
  final int progress;

  /// User's rank
  @override
  final int rank;

  /// Whether user completed the challenge
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'ChallengeParticipant(userId: $userId, displayName: $displayName, progress: $progress, rank: $rank, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeParticipantImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, displayName, progress, rank, isCompleted);

  /// Create a copy of ChallengeParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeParticipantImplCopyWith<_$ChallengeParticipantImpl>
      get copyWith =>
          __$$ChallengeParticipantImplCopyWithImpl<_$ChallengeParticipantImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeParticipantImplToJson(
      this,
    );
  }
}

abstract class _ChallengeParticipant implements ChallengeParticipant {
  const factory _ChallengeParticipant(
      {required final String userId,
      required final String displayName,
      required final int progress,
      required final int rank,
      required final bool isCompleted}) = _$ChallengeParticipantImpl;

  factory _ChallengeParticipant.fromJson(Map<String, dynamic> json) =
      _$ChallengeParticipantImpl.fromJson;

  /// User ID
  @override
  String get userId;

  /// User's display name
  @override
  String get displayName;

  /// User's progress
  @override
  int get progress;

  /// User's rank
  @override
  int get rank;

  /// Whether user completed the challenge
  @override
  bool get isCompleted;

  /// Create a copy of ChallengeParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeParticipantImplCopyWith<_$ChallengeParticipantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscussionTopic _$DiscussionTopicFromJson(Map<String, dynamic> json) {
  return _DiscussionTopic.fromJson(json);
}

/// @nodoc
mixin _$DiscussionTopic {
  /// Topic ID
  String get id => throw _privateConstructorUsedError;

  /// Topic title
  String get title => throw _privateConstructorUsedError;

  /// Topic description
  String get description => throw _privateConstructorUsedError;

  /// Topic creator ID
  String get creatorId => throw _privateConstructorUsedError;

  /// Topic creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Topic last activity date
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Number of replies
  int get replyCount => throw _privateConstructorUsedError;

  /// Topic tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// Whether topic is pinned
  bool get isPinned => throw _privateConstructorUsedError;

  /// Whether topic is locked
  bool get isLocked => throw _privateConstructorUsedError;

  /// Topic category
  TopicCategory get category => throw _privateConstructorUsedError;

  /// Serializes this DiscussionTopic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscussionTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscussionTopicCopyWith<DiscussionTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionTopicCopyWith<$Res> {
  factory $DiscussionTopicCopyWith(
          DiscussionTopic value, $Res Function(DiscussionTopic) then) =
      _$DiscussionTopicCopyWithImpl<$Res, DiscussionTopic>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String creatorId,
      DateTime dateCreated,
      DateTime lastActivity,
      int replyCount,
      List<String> tags,
      bool isPinned,
      bool isLocked,
      TopicCategory category});
}

/// @nodoc
class _$DiscussionTopicCopyWithImpl<$Res, $Val extends DiscussionTopic>
    implements $DiscussionTopicCopyWith<$Res> {
  _$DiscussionTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? creatorId = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? replyCount = null,
    Object? tags = null,
    Object? isPinned = null,
    Object? isLocked = null,
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TopicCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscussionTopicImplCopyWith<$Res>
    implements $DiscussionTopicCopyWith<$Res> {
  factory _$$DiscussionTopicImplCopyWith(_$DiscussionTopicImpl value,
          $Res Function(_$DiscussionTopicImpl) then) =
      __$$DiscussionTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String creatorId,
      DateTime dateCreated,
      DateTime lastActivity,
      int replyCount,
      List<String> tags,
      bool isPinned,
      bool isLocked,
      TopicCategory category});
}

/// @nodoc
class __$$DiscussionTopicImplCopyWithImpl<$Res>
    extends _$DiscussionTopicCopyWithImpl<$Res, _$DiscussionTopicImpl>
    implements _$$DiscussionTopicImplCopyWith<$Res> {
  __$$DiscussionTopicImplCopyWithImpl(
      _$DiscussionTopicImpl _value, $Res Function(_$DiscussionTopicImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? creatorId = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? replyCount = null,
    Object? tags = null,
    Object? isPinned = null,
    Object? isLocked = null,
    Object? category = null,
  }) {
    return _then(_$DiscussionTopicImpl(
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TopicCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscussionTopicImpl implements _DiscussionTopic {
  const _$DiscussionTopicImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.creatorId,
      required this.dateCreated,
      required this.lastActivity,
      required this.replyCount,
      required final List<String> tags,
      required this.isPinned,
      required this.isLocked,
      required this.category})
      : _tags = tags;

  factory _$DiscussionTopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscussionTopicImplFromJson(json);

  /// Topic ID
  @override
  final String id;

  /// Topic title
  @override
  final String title;

  /// Topic description
  @override
  final String description;

  /// Topic creator ID
  @override
  final String creatorId;

  /// Topic creation date
  @override
  final DateTime dateCreated;

  /// Topic last activity date
  @override
  final DateTime lastActivity;

  /// Number of replies
  @override
  final int replyCount;

  /// Topic tags
  final List<String> _tags;

  /// Topic tags
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Whether topic is pinned
  @override
  final bool isPinned;

  /// Whether topic is locked
  @override
  final bool isLocked;

  /// Topic category
  @override
  final TopicCategory category;

  @override
  String toString() {
    return 'DiscussionTopic(id: $id, title: $title, description: $description, creatorId: $creatorId, dateCreated: $dateCreated, lastActivity: $lastActivity, replyCount: $replyCount, tags: $tags, isPinned: $isPinned, isLocked: $isLocked, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionTopicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
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
      creatorId,
      dateCreated,
      lastActivity,
      replyCount,
      const DeepCollectionEquality().hash(_tags),
      isPinned,
      isLocked,
      category);

  /// Create a copy of DiscussionTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionTopicImplCopyWith<_$DiscussionTopicImpl> get copyWith =>
      __$$DiscussionTopicImplCopyWithImpl<_$DiscussionTopicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscussionTopicImplToJson(
      this,
    );
  }
}

abstract class _DiscussionTopic implements DiscussionTopic {
  const factory _DiscussionTopic(
      {required final String id,
      required final String title,
      required final String description,
      required final String creatorId,
      required final DateTime dateCreated,
      required final DateTime lastActivity,
      required final int replyCount,
      required final List<String> tags,
      required final bool isPinned,
      required final bool isLocked,
      required final TopicCategory category}) = _$DiscussionTopicImpl;

  factory _DiscussionTopic.fromJson(Map<String, dynamic> json) =
      _$DiscussionTopicImpl.fromJson;

  /// Topic ID
  @override
  String get id;

  /// Topic title
  @override
  String get title;

  /// Topic description
  @override
  String get description;

  /// Topic creator ID
  @override
  String get creatorId;

  /// Topic creation date
  @override
  DateTime get dateCreated;

  /// Topic last activity date
  @override
  DateTime get lastActivity;

  /// Number of replies
  @override
  int get replyCount;

  /// Topic tags
  @override
  List<String> get tags;

  /// Whether topic is pinned
  @override
  bool get isPinned;

  /// Whether topic is locked
  @override
  bool get isLocked;

  /// Topic category
  @override
  TopicCategory get category;

  /// Create a copy of DiscussionTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionTopicImplCopyWith<_$DiscussionTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscussionSession _$DiscussionSessionFromJson(Map<String, dynamic> json) {
  return _DiscussionSession.fromJson(json);
}

/// @nodoc
mixin _$DiscussionSession {
  /// Session ID
  String get id => throw _privateConstructorUsedError;

  /// Session title
  String get title => throw _privateConstructorUsedError;

  /// Session description
  String get description => throw _privateConstructorUsedError;

  /// Session date and time
  DateTime get sessionDateTime => throw _privateConstructorUsedError;

  /// Session duration in minutes
  int get durationMinutes => throw _privateConstructorUsedError;

  /// Session host ID
  String get hostId => throw _privateConstructorUsedError;

  /// Session participants
  List<String> get participants => throw _privateConstructorUsedError;

  /// Session notes
  String? get notes => throw _privateConstructorUsedError;

  /// Whether session is completed
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this DiscussionSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscussionSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscussionSessionCopyWith<DiscussionSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionSessionCopyWith<$Res> {
  factory $DiscussionSessionCopyWith(
          DiscussionSession value, $Res Function(DiscussionSession) then) =
      _$DiscussionSessionCopyWithImpl<$Res, DiscussionSession>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime sessionDateTime,
      int durationMinutes,
      String hostId,
      List<String> participants,
      String? notes,
      bool isCompleted});
}

/// @nodoc
class _$DiscussionSessionCopyWithImpl<$Res, $Val extends DiscussionSession>
    implements $DiscussionSessionCopyWith<$Res> {
  _$DiscussionSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? sessionDateTime = null,
    Object? durationMinutes = null,
    Object? hostId = null,
    Object? participants = null,
    Object? notes = freezed,
    Object? isCompleted = null,
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
      sessionDateTime: null == sessionDateTime
          ? _value.sessionDateTime
          : sessionDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      hostId: null == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscussionSessionImplCopyWith<$Res>
    implements $DiscussionSessionCopyWith<$Res> {
  factory _$$DiscussionSessionImplCopyWith(_$DiscussionSessionImpl value,
          $Res Function(_$DiscussionSessionImpl) then) =
      __$$DiscussionSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime sessionDateTime,
      int durationMinutes,
      String hostId,
      List<String> participants,
      String? notes,
      bool isCompleted});
}

/// @nodoc
class __$$DiscussionSessionImplCopyWithImpl<$Res>
    extends _$DiscussionSessionCopyWithImpl<$Res, _$DiscussionSessionImpl>
    implements _$$DiscussionSessionImplCopyWith<$Res> {
  __$$DiscussionSessionImplCopyWithImpl(_$DiscussionSessionImpl _value,
      $Res Function(_$DiscussionSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? sessionDateTime = null,
    Object? durationMinutes = null,
    Object? hostId = null,
    Object? participants = null,
    Object? notes = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$DiscussionSessionImpl(
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
      sessionDateTime: null == sessionDateTime
          ? _value.sessionDateTime
          : sessionDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      hostId: null == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscussionSessionImpl implements _DiscussionSession {
  const _$DiscussionSessionImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.sessionDateTime,
      required this.durationMinutes,
      required this.hostId,
      required final List<String> participants,
      this.notes,
      required this.isCompleted})
      : _participants = participants;

  factory _$DiscussionSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscussionSessionImplFromJson(json);

  /// Session ID
  @override
  final String id;

  /// Session title
  @override
  final String title;

  /// Session description
  @override
  final String description;

  /// Session date and time
  @override
  final DateTime sessionDateTime;

  /// Session duration in minutes
  @override
  final int durationMinutes;

  /// Session host ID
  @override
  final String hostId;

  /// Session participants
  final List<String> _participants;

  /// Session participants
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  /// Session notes
  @override
  final String? notes;

  /// Whether session is completed
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'DiscussionSession(id: $id, title: $title, description: $description, sessionDateTime: $sessionDateTime, durationMinutes: $durationMinutes, hostId: $hostId, participants: $participants, notes: $notes, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sessionDateTime, sessionDateTime) ||
                other.sessionDateTime == sessionDateTime) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      sessionDateTime,
      durationMinutes,
      hostId,
      const DeepCollectionEquality().hash(_participants),
      notes,
      isCompleted);

  /// Create a copy of DiscussionSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionSessionImplCopyWith<_$DiscussionSessionImpl> get copyWith =>
      __$$DiscussionSessionImplCopyWithImpl<_$DiscussionSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscussionSessionImplToJson(
      this,
    );
  }
}

abstract class _DiscussionSession implements DiscussionSession {
  const factory _DiscussionSession(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime sessionDateTime,
      required final int durationMinutes,
      required final String hostId,
      required final List<String> participants,
      final String? notes,
      required final bool isCompleted}) = _$DiscussionSessionImpl;

  factory _DiscussionSession.fromJson(Map<String, dynamic> json) =
      _$DiscussionSessionImpl.fromJson;

  /// Session ID
  @override
  String get id;

  /// Session title
  @override
  String get title;

  /// Session description
  @override
  String get description;

  /// Session date and time
  @override
  DateTime get sessionDateTime;

  /// Session duration in minutes
  @override
  int get durationMinutes;

  /// Session host ID
  @override
  String get hostId;

  /// Session participants
  @override
  List<String> get participants;

  /// Session notes
  @override
  String? get notes;

  /// Whether session is completed
  @override
  bool get isCompleted;

  /// Create a copy of DiscussionSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionSessionImplCopyWith<_$DiscussionSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingMilestone _$ReadingMilestoneFromJson(Map<String, dynamic> json) {
  return _ReadingMilestone.fromJson(json);
}

/// @nodoc
mixin _$ReadingMilestone {
  /// Milestone ID
  String get id => throw _privateConstructorUsedError;

  /// Milestone name
  String get name => throw _privateConstructorUsedError;

  /// Milestone description
  String get description => throw _privateConstructorUsedError;

  /// Milestone target (e.g., page number)
  int get target => throw _privateConstructorUsedError;

  /// Milestone date
  DateTime get date => throw _privateConstructorUsedError;

  /// Milestone type
  MilestoneType get type => throw _privateConstructorUsedError;

  /// Members who reached this milestone
  List<String> get membersReached => throw _privateConstructorUsedError;

  /// Serializes this ReadingMilestone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingMilestone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingMilestoneCopyWith<ReadingMilestone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingMilestoneCopyWith<$Res> {
  factory $ReadingMilestoneCopyWith(
          ReadingMilestone value, $Res Function(ReadingMilestone) then) =
      _$ReadingMilestoneCopyWithImpl<$Res, ReadingMilestone>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      int target,
      DateTime date,
      MilestoneType type,
      List<String> membersReached});
}

/// @nodoc
class _$ReadingMilestoneCopyWithImpl<$Res, $Val extends ReadingMilestone>
    implements $ReadingMilestoneCopyWith<$Res> {
  _$ReadingMilestoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingMilestone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? target = null,
    Object? date = null,
    Object? type = null,
    Object? membersReached = null,
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
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MilestoneType,
      membersReached: null == membersReached
          ? _value.membersReached
          : membersReached // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingMilestoneImplCopyWith<$Res>
    implements $ReadingMilestoneCopyWith<$Res> {
  factory _$$ReadingMilestoneImplCopyWith(_$ReadingMilestoneImpl value,
          $Res Function(_$ReadingMilestoneImpl) then) =
      __$$ReadingMilestoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      int target,
      DateTime date,
      MilestoneType type,
      List<String> membersReached});
}

/// @nodoc
class __$$ReadingMilestoneImplCopyWithImpl<$Res>
    extends _$ReadingMilestoneCopyWithImpl<$Res, _$ReadingMilestoneImpl>
    implements _$$ReadingMilestoneImplCopyWith<$Res> {
  __$$ReadingMilestoneImplCopyWithImpl(_$ReadingMilestoneImpl _value,
      $Res Function(_$ReadingMilestoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingMilestone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? target = null,
    Object? date = null,
    Object? type = null,
    Object? membersReached = null,
  }) {
    return _then(_$ReadingMilestoneImpl(
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
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MilestoneType,
      membersReached: null == membersReached
          ? _value._membersReached
          : membersReached // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingMilestoneImpl implements _ReadingMilestone {
  const _$ReadingMilestoneImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.target,
      required this.date,
      required this.type,
      required final List<String> membersReached})
      : _membersReached = membersReached;

  factory _$ReadingMilestoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingMilestoneImplFromJson(json);

  /// Milestone ID
  @override
  final String id;

  /// Milestone name
  @override
  final String name;

  /// Milestone description
  @override
  final String description;

  /// Milestone target (e.g., page number)
  @override
  final int target;

  /// Milestone date
  @override
  final DateTime date;

  /// Milestone type
  @override
  final MilestoneType type;

  /// Members who reached this milestone
  final List<String> _membersReached;

  /// Members who reached this milestone
  @override
  List<String> get membersReached {
    if (_membersReached is EqualUnmodifiableListView) return _membersReached;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersReached);
  }

  @override
  String toString() {
    return 'ReadingMilestone(id: $id, name: $name, description: $description, target: $target, date: $date, type: $type, membersReached: $membersReached)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingMilestoneImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._membersReached, _membersReached));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, target,
      date, type, const DeepCollectionEquality().hash(_membersReached));

  /// Create a copy of ReadingMilestone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingMilestoneImplCopyWith<_$ReadingMilestoneImpl> get copyWith =>
      __$$ReadingMilestoneImplCopyWithImpl<_$ReadingMilestoneImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingMilestoneImplToJson(
      this,
    );
  }
}

abstract class _ReadingMilestone implements ReadingMilestone {
  const factory _ReadingMilestone(
      {required final String id,
      required final String name,
      required final String description,
      required final int target,
      required final DateTime date,
      required final MilestoneType type,
      required final List<String> membersReached}) = _$ReadingMilestoneImpl;

  factory _ReadingMilestone.fromJson(Map<String, dynamic> json) =
      _$ReadingMilestoneImpl.fromJson;

  /// Milestone ID
  @override
  String get id;

  /// Milestone name
  @override
  String get name;

  /// Milestone description
  @override
  String get description;

  /// Milestone target (e.g., page number)
  @override
  int get target;

  /// Milestone date
  @override
  DateTime get date;

  /// Milestone type
  @override
  MilestoneType get type;

  /// Members who reached this milestone
  @override
  List<String> get membersReached;

  /// Create a copy of ReadingMilestone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingMilestoneImplCopyWith<_$ReadingMilestoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) {
  return _GroupMember.fromJson(json);
}

/// @nodoc
mixin _$GroupMember {
  /// User ID
  String get userId => throw _privateConstructorUsedError;

  /// User's display name
  String get displayName => throw _privateConstructorUsedError;

  /// User's profile picture URL
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// User's role in the group
  GroupRole get role => throw _privateConstructorUsedError;

  /// Date when user joined the group
  DateTime get dateJoined => throw _privateConstructorUsedError;

  /// Whether user is active
  bool get isActive => throw _privateConstructorUsedError;

  /// User's reading progress
  int get readingProgress => throw _privateConstructorUsedError;

  /// User's contribution score
  int get contributionScore => throw _privateConstructorUsedError;

  /// User's last activity date
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// User's reading statistics
  MemberReadingStats get readingStats => throw _privateConstructorUsedError;

  /// Serializes this GroupMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMemberCopyWith<GroupMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMemberCopyWith<$Res> {
  factory $GroupMemberCopyWith(
          GroupMember value, $Res Function(GroupMember) then) =
      _$GroupMemberCopyWithImpl<$Res, GroupMember>;
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? profilePictureUrl,
      GroupRole role,
      DateTime dateJoined,
      bool isActive,
      int readingProgress,
      int contributionScore,
      DateTime lastActivity,
      MemberReadingStats readingStats});

  $MemberReadingStatsCopyWith<$Res> get readingStats;
}

/// @nodoc
class _$GroupMemberCopyWithImpl<$Res, $Val extends GroupMember>
    implements $GroupMemberCopyWith<$Res> {
  _$GroupMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? role = null,
    Object? dateJoined = null,
    Object? isActive = null,
    Object? readingProgress = null,
    Object? contributionScore = null,
    Object? lastActivity = null,
    Object? readingStats = null,
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
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as GroupRole,
      dateJoined: null == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      readingProgress: null == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as int,
      contributionScore: null == contributionScore
          ? _value.contributionScore
          : contributionScore // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readingStats: null == readingStats
          ? _value.readingStats
          : readingStats // ignore: cast_nullable_to_non_nullable
              as MemberReadingStats,
    ) as $Val);
  }

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberReadingStatsCopyWith<$Res> get readingStats {
    return $MemberReadingStatsCopyWith<$Res>(_value.readingStats, (value) {
      return _then(_value.copyWith(readingStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupMemberImplCopyWith<$Res>
    implements $GroupMemberCopyWith<$Res> {
  factory _$$GroupMemberImplCopyWith(
          _$GroupMemberImpl value, $Res Function(_$GroupMemberImpl) then) =
      __$$GroupMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? profilePictureUrl,
      GroupRole role,
      DateTime dateJoined,
      bool isActive,
      int readingProgress,
      int contributionScore,
      DateTime lastActivity,
      MemberReadingStats readingStats});

  @override
  $MemberReadingStatsCopyWith<$Res> get readingStats;
}

/// @nodoc
class __$$GroupMemberImplCopyWithImpl<$Res>
    extends _$GroupMemberCopyWithImpl<$Res, _$GroupMemberImpl>
    implements _$$GroupMemberImplCopyWith<$Res> {
  __$$GroupMemberImplCopyWithImpl(
      _$GroupMemberImpl _value, $Res Function(_$GroupMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? role = null,
    Object? dateJoined = null,
    Object? isActive = null,
    Object? readingProgress = null,
    Object? contributionScore = null,
    Object? lastActivity = null,
    Object? readingStats = null,
  }) {
    return _then(_$GroupMemberImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as GroupRole,
      dateJoined: null == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      readingProgress: null == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as int,
      contributionScore: null == contributionScore
          ? _value.contributionScore
          : contributionScore // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readingStats: null == readingStats
          ? _value.readingStats
          : readingStats // ignore: cast_nullable_to_non_nullable
              as MemberReadingStats,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupMemberImpl implements _GroupMember {
  const _$GroupMemberImpl(
      {required this.userId,
      required this.displayName,
      this.profilePictureUrl,
      required this.role,
      required this.dateJoined,
      required this.isActive,
      required this.readingProgress,
      required this.contributionScore,
      required this.lastActivity,
      required this.readingStats});

  factory _$GroupMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupMemberImplFromJson(json);

  /// User ID
  @override
  final String userId;

  /// User's display name
  @override
  final String displayName;

  /// User's profile picture URL
  @override
  final String? profilePictureUrl;

  /// User's role in the group
  @override
  final GroupRole role;

  /// Date when user joined the group
  @override
  final DateTime dateJoined;

  /// Whether user is active
  @override
  final bool isActive;

  /// User's reading progress
  @override
  final int readingProgress;

  /// User's contribution score
  @override
  final int contributionScore;

  /// User's last activity date
  @override
  final DateTime lastActivity;

  /// User's reading statistics
  @override
  final MemberReadingStats readingStats;

  @override
  String toString() {
    return 'GroupMember(userId: $userId, displayName: $displayName, profilePictureUrl: $profilePictureUrl, role: $role, dateJoined: $dateJoined, isActive: $isActive, readingProgress: $readingProgress, contributionScore: $contributionScore, lastActivity: $lastActivity, readingStats: $readingStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMemberImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.readingProgress, readingProgress) ||
                other.readingProgress == readingProgress) &&
            (identical(other.contributionScore, contributionScore) ||
                other.contributionScore == contributionScore) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.readingStats, readingStats) ||
                other.readingStats == readingStats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      displayName,
      profilePictureUrl,
      role,
      dateJoined,
      isActive,
      readingProgress,
      contributionScore,
      lastActivity,
      readingStats);

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMemberImplCopyWith<_$GroupMemberImpl> get copyWith =>
      __$$GroupMemberImplCopyWithImpl<_$GroupMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupMemberImplToJson(
      this,
    );
  }
}

abstract class _GroupMember implements GroupMember {
  const factory _GroupMember(
      {required final String userId,
      required final String displayName,
      final String? profilePictureUrl,
      required final GroupRole role,
      required final DateTime dateJoined,
      required final bool isActive,
      required final int readingProgress,
      required final int contributionScore,
      required final DateTime lastActivity,
      required final MemberReadingStats readingStats}) = _$GroupMemberImpl;

  factory _GroupMember.fromJson(Map<String, dynamic> json) =
      _$GroupMemberImpl.fromJson;

  /// User ID
  @override
  String get userId;

  /// User's display name
  @override
  String get displayName;

  /// User's profile picture URL
  @override
  String? get profilePictureUrl;

  /// User's role in the group
  @override
  GroupRole get role;

  /// Date when user joined the group
  @override
  DateTime get dateJoined;

  /// Whether user is active
  @override
  bool get isActive;

  /// User's reading progress
  @override
  int get readingProgress;

  /// User's contribution score
  @override
  int get contributionScore;

  /// User's last activity date
  @override
  DateTime get lastActivity;

  /// User's reading statistics
  @override
  MemberReadingStats get readingStats;

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMemberImplCopyWith<_$GroupMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberReadingStats _$MemberReadingStatsFromJson(Map<String, dynamic> json) {
  return _MemberReadingStats.fromJson(json);
}

/// @nodoc
mixin _$MemberReadingStats {
  /// Books completed with the group
  int get booksCompleted => throw _privateConstructorUsedError;

  /// Pages read with the group
  int get pagesRead => throw _privateConstructorUsedError;

  /// Discussion posts made
  int get discussionPosts => throw _privateConstructorUsedError;

  /// Reading challenges completed
  int get challengesCompleted => throw _privateConstructorUsedError;

  /// Attendance rate for discussions
  double get attendanceRate => throw _privateConstructorUsedError;

  /// Serializes this MemberReadingStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberReadingStatsCopyWith<MemberReadingStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberReadingStatsCopyWith<$Res> {
  factory $MemberReadingStatsCopyWith(
          MemberReadingStats value, $Res Function(MemberReadingStats) then) =
      _$MemberReadingStatsCopyWithImpl<$Res, MemberReadingStats>;
  @useResult
  $Res call(
      {int booksCompleted,
      int pagesRead,
      int discussionPosts,
      int challengesCompleted,
      double attendanceRate});
}

/// @nodoc
class _$MemberReadingStatsCopyWithImpl<$Res, $Val extends MemberReadingStats>
    implements $MemberReadingStatsCopyWith<$Res> {
  _$MemberReadingStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booksCompleted = null,
    Object? pagesRead = null,
    Object? discussionPosts = null,
    Object? challengesCompleted = null,
    Object? attendanceRate = null,
  }) {
    return _then(_value.copyWith(
      booksCompleted: null == booksCompleted
          ? _value.booksCompleted
          : booksCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      pagesRead: null == pagesRead
          ? _value.pagesRead
          : pagesRead // ignore: cast_nullable_to_non_nullable
              as int,
      discussionPosts: null == discussionPosts
          ? _value.discussionPosts
          : discussionPosts // ignore: cast_nullable_to_non_nullable
              as int,
      challengesCompleted: null == challengesCompleted
          ? _value.challengesCompleted
          : challengesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceRate: null == attendanceRate
          ? _value.attendanceRate
          : attendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberReadingStatsImplCopyWith<$Res>
    implements $MemberReadingStatsCopyWith<$Res> {
  factory _$$MemberReadingStatsImplCopyWith(_$MemberReadingStatsImpl value,
          $Res Function(_$MemberReadingStatsImpl) then) =
      __$$MemberReadingStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int booksCompleted,
      int pagesRead,
      int discussionPosts,
      int challengesCompleted,
      double attendanceRate});
}

/// @nodoc
class __$$MemberReadingStatsImplCopyWithImpl<$Res>
    extends _$MemberReadingStatsCopyWithImpl<$Res, _$MemberReadingStatsImpl>
    implements _$$MemberReadingStatsImplCopyWith<$Res> {
  __$$MemberReadingStatsImplCopyWithImpl(_$MemberReadingStatsImpl _value,
      $Res Function(_$MemberReadingStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booksCompleted = null,
    Object? pagesRead = null,
    Object? discussionPosts = null,
    Object? challengesCompleted = null,
    Object? attendanceRate = null,
  }) {
    return _then(_$MemberReadingStatsImpl(
      booksCompleted: null == booksCompleted
          ? _value.booksCompleted
          : booksCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      pagesRead: null == pagesRead
          ? _value.pagesRead
          : pagesRead // ignore: cast_nullable_to_non_nullable
              as int,
      discussionPosts: null == discussionPosts
          ? _value.discussionPosts
          : discussionPosts // ignore: cast_nullable_to_non_nullable
              as int,
      challengesCompleted: null == challengesCompleted
          ? _value.challengesCompleted
          : challengesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceRate: null == attendanceRate
          ? _value.attendanceRate
          : attendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberReadingStatsImpl implements _MemberReadingStats {
  const _$MemberReadingStatsImpl(
      {required this.booksCompleted,
      required this.pagesRead,
      required this.discussionPosts,
      required this.challengesCompleted,
      required this.attendanceRate});

  factory _$MemberReadingStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberReadingStatsImplFromJson(json);

  /// Books completed with the group
  @override
  final int booksCompleted;

  /// Pages read with the group
  @override
  final int pagesRead;

  /// Discussion posts made
  @override
  final int discussionPosts;

  /// Reading challenges completed
  @override
  final int challengesCompleted;

  /// Attendance rate for discussions
  @override
  final double attendanceRate;

  @override
  String toString() {
    return 'MemberReadingStats(booksCompleted: $booksCompleted, pagesRead: $pagesRead, discussionPosts: $discussionPosts, challengesCompleted: $challengesCompleted, attendanceRate: $attendanceRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberReadingStatsImpl &&
            (identical(other.booksCompleted, booksCompleted) ||
                other.booksCompleted == booksCompleted) &&
            (identical(other.pagesRead, pagesRead) ||
                other.pagesRead == pagesRead) &&
            (identical(other.discussionPosts, discussionPosts) ||
                other.discussionPosts == discussionPosts) &&
            (identical(other.challengesCompleted, challengesCompleted) ||
                other.challengesCompleted == challengesCompleted) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, booksCompleted, pagesRead,
      discussionPosts, challengesCompleted, attendanceRate);

  /// Create a copy of MemberReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberReadingStatsImplCopyWith<_$MemberReadingStatsImpl> get copyWith =>
      __$$MemberReadingStatsImplCopyWithImpl<_$MemberReadingStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberReadingStatsImplToJson(
      this,
    );
  }
}

abstract class _MemberReadingStats implements MemberReadingStats {
  const factory _MemberReadingStats(
      {required final int booksCompleted,
      required final int pagesRead,
      required final int discussionPosts,
      required final int challengesCompleted,
      required final double attendanceRate}) = _$MemberReadingStatsImpl;

  factory _MemberReadingStats.fromJson(Map<String, dynamic> json) =
      _$MemberReadingStatsImpl.fromJson;

  /// Books completed with the group
  @override
  int get booksCompleted;

  /// Pages read with the group
  @override
  int get pagesRead;

  /// Discussion posts made
  @override
  int get discussionPosts;

  /// Reading challenges completed
  @override
  int get challengesCompleted;

  /// Attendance rate for discussions
  @override
  double get attendanceRate;

  /// Create a copy of MemberReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberReadingStatsImplCopyWith<_$MemberReadingStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinRequest _$JoinRequestFromJson(Map<String, dynamic> json) {
  return _JoinRequest.fromJson(json);
}

/// @nodoc
mixin _$JoinRequest {
  /// Request ID
  String get id => throw _privateConstructorUsedError;

  /// User ID requesting to join
  String get userId => throw _privateConstructorUsedError;

  /// User's display name
  String get displayName => throw _privateConstructorUsedError;

  /// User's profile picture URL
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// User's message/request
  String? get message => throw _privateConstructorUsedError;

  /// Request date
  DateTime get requestDate => throw _privateConstructorUsedError;

  /// Request status
  RequestStatus get status => throw _privateConstructorUsedError;

  /// Moderator who processed the request
  String? get processedBy => throw _privateConstructorUsedError;

  /// Processing date
  DateTime? get processedDate => throw _privateConstructorUsedError;

  /// Processing notes
  String? get processingNotes => throw _privateConstructorUsedError;

  /// Serializes this JoinRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinRequestCopyWith<JoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestCopyWith<$Res> {
  factory $JoinRequestCopyWith(
          JoinRequest value, $Res Function(JoinRequest) then) =
      _$JoinRequestCopyWithImpl<$Res, JoinRequest>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String displayName,
      String? profilePictureUrl,
      String? message,
      DateTime requestDate,
      RequestStatus status,
      String? processedBy,
      DateTime? processedDate,
      String? processingNotes});
}

/// @nodoc
class _$JoinRequestCopyWithImpl<$Res, $Val extends JoinRequest>
    implements $JoinRequestCopyWith<$Res> {
  _$JoinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? message = freezed,
    Object? requestDate = null,
    Object? status = null,
    Object? processedBy = freezed,
    Object? processedDate = freezed,
    Object? processingNotes = freezed,
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
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      processedBy: freezed == processedBy
          ? _value.processedBy
          : processedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      processedDate: freezed == processedDate
          ? _value.processedDate
          : processedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processingNotes: freezed == processingNotes
          ? _value.processingNotes
          : processingNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinRequestImplCopyWith<$Res>
    implements $JoinRequestCopyWith<$Res> {
  factory _$$JoinRequestImplCopyWith(
          _$JoinRequestImpl value, $Res Function(_$JoinRequestImpl) then) =
      __$$JoinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String displayName,
      String? profilePictureUrl,
      String? message,
      DateTime requestDate,
      RequestStatus status,
      String? processedBy,
      DateTime? processedDate,
      String? processingNotes});
}

/// @nodoc
class __$$JoinRequestImplCopyWithImpl<$Res>
    extends _$JoinRequestCopyWithImpl<$Res, _$JoinRequestImpl>
    implements _$$JoinRequestImplCopyWith<$Res> {
  __$$JoinRequestImplCopyWithImpl(
      _$JoinRequestImpl _value, $Res Function(_$JoinRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? message = freezed,
    Object? requestDate = null,
    Object? status = null,
    Object? processedBy = freezed,
    Object? processedDate = freezed,
    Object? processingNotes = freezed,
  }) {
    return _then(_$JoinRequestImpl(
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
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      processedBy: freezed == processedBy
          ? _value.processedBy
          : processedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      processedDate: freezed == processedDate
          ? _value.processedDate
          : processedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processingNotes: freezed == processingNotes
          ? _value.processingNotes
          : processingNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinRequestImpl implements _JoinRequest {
  const _$JoinRequestImpl(
      {required this.id,
      required this.userId,
      required this.displayName,
      this.profilePictureUrl,
      this.message,
      required this.requestDate,
      required this.status,
      this.processedBy,
      this.processedDate,
      this.processingNotes});

  factory _$JoinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinRequestImplFromJson(json);

  /// Request ID
  @override
  final String id;

  /// User ID requesting to join
  @override
  final String userId;

  /// User's display name
  @override
  final String displayName;

  /// User's profile picture URL
  @override
  final String? profilePictureUrl;

  /// User's message/request
  @override
  final String? message;

  /// Request date
  @override
  final DateTime requestDate;

  /// Request status
  @override
  final RequestStatus status;

  /// Moderator who processed the request
  @override
  final String? processedBy;

  /// Processing date
  @override
  final DateTime? processedDate;

  /// Processing notes
  @override
  final String? processingNotes;

  @override
  String toString() {
    return 'JoinRequest(id: $id, userId: $userId, displayName: $displayName, profilePictureUrl: $profilePictureUrl, message: $message, requestDate: $requestDate, status: $status, processedBy: $processedBy, processedDate: $processedDate, processingNotes: $processingNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processedBy, processedBy) ||
                other.processedBy == processedBy) &&
            (identical(other.processedDate, processedDate) ||
                other.processedDate == processedDate) &&
            (identical(other.processingNotes, processingNotes) ||
                other.processingNotes == processingNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      displayName,
      profilePictureUrl,
      message,
      requestDate,
      status,
      processedBy,
      processedDate,
      processingNotes);

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRequestImplCopyWith<_$JoinRequestImpl> get copyWith =>
      __$$JoinRequestImplCopyWithImpl<_$JoinRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinRequestImplToJson(
      this,
    );
  }
}

abstract class _JoinRequest implements JoinRequest {
  const factory _JoinRequest(
      {required final String id,
      required final String userId,
      required final String displayName,
      final String? profilePictureUrl,
      final String? message,
      required final DateTime requestDate,
      required final RequestStatus status,
      final String? processedBy,
      final DateTime? processedDate,
      final String? processingNotes}) = _$JoinRequestImpl;

  factory _JoinRequest.fromJson(Map<String, dynamic> json) =
      _$JoinRequestImpl.fromJson;

  /// Request ID
  @override
  String get id;

  /// User ID requesting to join
  @override
  String get userId;

  /// User's display name
  @override
  String get displayName;

  /// User's profile picture URL
  @override
  String? get profilePictureUrl;

  /// User's message/request
  @override
  String? get message;

  /// Request date
  @override
  DateTime get requestDate;

  /// Request status
  @override
  RequestStatus get status;

  /// Moderator who processed the request
  @override
  String? get processedBy;

  /// Processing date
  @override
  DateTime? get processedDate;

  /// Processing notes
  @override
  String? get processingNotes;

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinRequestImplCopyWith<_$JoinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupAchievement _$GroupAchievementFromJson(Map<String, dynamic> json) {
  return _GroupAchievement.fromJson(json);
}

/// @nodoc
mixin _$GroupAchievement {
  /// Achievement ID
  String get id => throw _privateConstructorUsedError;

  /// Achievement name
  String get name => throw _privateConstructorUsedError;

  /// Achievement description
  String get description => throw _privateConstructorUsedError;

  /// Achievement icon
  String get icon => throw _privateConstructorUsedError;

  /// Achievement category
  AchievementCategory get category => throw _privateConstructorUsedError;

  /// Achievement rarity
  AchievementRarity get rarity => throw _privateConstructorUsedError;

  /// Date when achievement was earned
  DateTime get dateEarned => throw _privateConstructorUsedError;

  /// Members who earned this achievement
  List<String> get membersEarned => throw _privateConstructorUsedError;

  /// Serializes this GroupAchievement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupAchievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupAchievementCopyWith<GroupAchievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupAchievementCopyWith<$Res> {
  factory $GroupAchievementCopyWith(
          GroupAchievement value, $Res Function(GroupAchievement) then) =
      _$GroupAchievementCopyWithImpl<$Res, GroupAchievement>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String icon,
      AchievementCategory category,
      AchievementRarity rarity,
      DateTime dateEarned,
      List<String> membersEarned});
}

/// @nodoc
class _$GroupAchievementCopyWithImpl<$Res, $Val extends GroupAchievement>
    implements $GroupAchievementCopyWith<$Res> {
  _$GroupAchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupAchievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? category = null,
    Object? rarity = null,
    Object? dateEarned = null,
    Object? membersEarned = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AchievementCategory,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as AchievementRarity,
      dateEarned: null == dateEarned
          ? _value.dateEarned
          : dateEarned // ignore: cast_nullable_to_non_nullable
              as DateTime,
      membersEarned: null == membersEarned
          ? _value.membersEarned
          : membersEarned // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupAchievementImplCopyWith<$Res>
    implements $GroupAchievementCopyWith<$Res> {
  factory _$$GroupAchievementImplCopyWith(_$GroupAchievementImpl value,
          $Res Function(_$GroupAchievementImpl) then) =
      __$$GroupAchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String icon,
      AchievementCategory category,
      AchievementRarity rarity,
      DateTime dateEarned,
      List<String> membersEarned});
}

/// @nodoc
class __$$GroupAchievementImplCopyWithImpl<$Res>
    extends _$GroupAchievementCopyWithImpl<$Res, _$GroupAchievementImpl>
    implements _$$GroupAchievementImplCopyWith<$Res> {
  __$$GroupAchievementImplCopyWithImpl(_$GroupAchievementImpl _value,
      $Res Function(_$GroupAchievementImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupAchievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? category = null,
    Object? rarity = null,
    Object? dateEarned = null,
    Object? membersEarned = null,
  }) {
    return _then(_$GroupAchievementImpl(
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AchievementCategory,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as AchievementRarity,
      dateEarned: null == dateEarned
          ? _value.dateEarned
          : dateEarned // ignore: cast_nullable_to_non_nullable
              as DateTime,
      membersEarned: null == membersEarned
          ? _value._membersEarned
          : membersEarned // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupAchievementImpl implements _GroupAchievement {
  const _$GroupAchievementImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.icon,
      required this.category,
      required this.rarity,
      required this.dateEarned,
      required final List<String> membersEarned})
      : _membersEarned = membersEarned;

  factory _$GroupAchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupAchievementImplFromJson(json);

  /// Achievement ID
  @override
  final String id;

  /// Achievement name
  @override
  final String name;

  /// Achievement description
  @override
  final String description;

  /// Achievement icon
  @override
  final String icon;

  /// Achievement category
  @override
  final AchievementCategory category;

  /// Achievement rarity
  @override
  final AchievementRarity rarity;

  /// Date when achievement was earned
  @override
  final DateTime dateEarned;

  /// Members who earned this achievement
  final List<String> _membersEarned;

  /// Members who earned this achievement
  @override
  List<String> get membersEarned {
    if (_membersEarned is EqualUnmodifiableListView) return _membersEarned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersEarned);
  }

  @override
  String toString() {
    return 'GroupAchievement(id: $id, name: $name, description: $description, icon: $icon, category: $category, rarity: $rarity, dateEarned: $dateEarned, membersEarned: $membersEarned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupAchievementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.dateEarned, dateEarned) ||
                other.dateEarned == dateEarned) &&
            const DeepCollectionEquality()
                .equals(other._membersEarned, _membersEarned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      icon,
      category,
      rarity,
      dateEarned,
      const DeepCollectionEquality().hash(_membersEarned));

  /// Create a copy of GroupAchievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupAchievementImplCopyWith<_$GroupAchievementImpl> get copyWith =>
      __$$GroupAchievementImplCopyWithImpl<_$GroupAchievementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupAchievementImplToJson(
      this,
    );
  }
}

abstract class _GroupAchievement implements GroupAchievement {
  const factory _GroupAchievement(
      {required final String id,
      required final String name,
      required final String description,
      required final String icon,
      required final AchievementCategory category,
      required final AchievementRarity rarity,
      required final DateTime dateEarned,
      required final List<String> membersEarned}) = _$GroupAchievementImpl;

  factory _GroupAchievement.fromJson(Map<String, dynamic> json) =
      _$GroupAchievementImpl.fromJson;

  /// Achievement ID
  @override
  String get id;

  /// Achievement name
  @override
  String get name;

  /// Achievement description
  @override
  String get description;

  /// Achievement icon
  @override
  String get icon;

  /// Achievement category
  @override
  AchievementCategory get category;

  /// Achievement rarity
  @override
  AchievementRarity get rarity;

  /// Date when achievement was earned
  @override
  DateTime get dateEarned;

  /// Members who earned this achievement
  @override
  List<String> get membersEarned;

  /// Create a copy of GroupAchievement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupAchievementImplCopyWith<_$GroupAchievementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingSchedule _$MeetingScheduleFromJson(Map<String, dynamic> json) {
  return _MeetingSchedule.fromJson(json);
}

/// @nodoc
mixin _$MeetingSchedule {
  /// Meeting frequency
  MeetingFrequency get frequency => throw _privateConstructorUsedError;

  /// Meeting day of week
  int get dayOfWeek => throw _privateConstructorUsedError;

  /// Meeting time
  String get meetingTime => throw _privateConstructorUsedError;

  /// Meeting duration in minutes
  int get durationMinutes => throw _privateConstructorUsedError;

  /// Meeting platform (Zoom, Discord, etc.)
  String get platform => throw _privateConstructorUsedError;

  /// Meeting link
  String? get meetingLink => throw _privateConstructorUsedError;

  /// Meeting notes
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this MeetingSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingScheduleCopyWith<MeetingSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingScheduleCopyWith<$Res> {
  factory $MeetingScheduleCopyWith(
          MeetingSchedule value, $Res Function(MeetingSchedule) then) =
      _$MeetingScheduleCopyWithImpl<$Res, MeetingSchedule>;
  @useResult
  $Res call(
      {MeetingFrequency frequency,
      int dayOfWeek,
      String meetingTime,
      int durationMinutes,
      String platform,
      String? meetingLink,
      String? notes});
}

/// @nodoc
class _$MeetingScheduleCopyWithImpl<$Res, $Val extends MeetingSchedule>
    implements $MeetingScheduleCopyWith<$Res> {
  _$MeetingScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = null,
    Object? dayOfWeek = null,
    Object? meetingTime = null,
    Object? durationMinutes = null,
    Object? platform = null,
    Object? meetingLink = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as MeetingFrequency,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      meetingTime: null == meetingTime
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as String,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingScheduleImplCopyWith<$Res>
    implements $MeetingScheduleCopyWith<$Res> {
  factory _$$MeetingScheduleImplCopyWith(_$MeetingScheduleImpl value,
          $Res Function(_$MeetingScheduleImpl) then) =
      __$$MeetingScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MeetingFrequency frequency,
      int dayOfWeek,
      String meetingTime,
      int durationMinutes,
      String platform,
      String? meetingLink,
      String? notes});
}

/// @nodoc
class __$$MeetingScheduleImplCopyWithImpl<$Res>
    extends _$MeetingScheduleCopyWithImpl<$Res, _$MeetingScheduleImpl>
    implements _$$MeetingScheduleImplCopyWith<$Res> {
  __$$MeetingScheduleImplCopyWithImpl(
      _$MeetingScheduleImpl _value, $Res Function(_$MeetingScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = null,
    Object? dayOfWeek = null,
    Object? meetingTime = null,
    Object? durationMinutes = null,
    Object? platform = null,
    Object? meetingLink = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$MeetingScheduleImpl(
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as MeetingFrequency,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      meetingTime: null == meetingTime
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as String,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingScheduleImpl implements _MeetingSchedule {
  const _$MeetingScheduleImpl(
      {required this.frequency,
      required this.dayOfWeek,
      required this.meetingTime,
      required this.durationMinutes,
      required this.platform,
      this.meetingLink,
      this.notes});

  factory _$MeetingScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingScheduleImplFromJson(json);

  /// Meeting frequency
  @override
  final MeetingFrequency frequency;

  /// Meeting day of week
  @override
  final int dayOfWeek;

  /// Meeting time
  @override
  final String meetingTime;

  /// Meeting duration in minutes
  @override
  final int durationMinutes;

  /// Meeting platform (Zoom, Discord, etc.)
  @override
  final String platform;

  /// Meeting link
  @override
  final String? meetingLink;

  /// Meeting notes
  @override
  final String? notes;

  @override
  String toString() {
    return 'MeetingSchedule(frequency: $frequency, dayOfWeek: $dayOfWeek, meetingTime: $meetingTime, durationMinutes: $durationMinutes, platform: $platform, meetingLink: $meetingLink, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingScheduleImpl &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.meetingTime, meetingTime) ||
                other.meetingTime == meetingTime) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.meetingLink, meetingLink) ||
                other.meetingLink == meetingLink) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frequency, dayOfWeek,
      meetingTime, durationMinutes, platform, meetingLink, notes);

  /// Create a copy of MeetingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingScheduleImplCopyWith<_$MeetingScheduleImpl> get copyWith =>
      __$$MeetingScheduleImplCopyWithImpl<_$MeetingScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingScheduleImplToJson(
      this,
    );
  }
}

abstract class _MeetingSchedule implements MeetingSchedule {
  const factory _MeetingSchedule(
      {required final MeetingFrequency frequency,
      required final int dayOfWeek,
      required final String meetingTime,
      required final int durationMinutes,
      required final String platform,
      final String? meetingLink,
      final String? notes}) = _$MeetingScheduleImpl;

  factory _MeetingSchedule.fromJson(Map<String, dynamic> json) =
      _$MeetingScheduleImpl.fromJson;

  /// Meeting frequency
  @override
  MeetingFrequency get frequency;

  /// Meeting day of week
  @override
  int get dayOfWeek;

  /// Meeting time
  @override
  String get meetingTime;

  /// Meeting duration in minutes
  @override
  int get durationMinutes;

  /// Meeting platform (Zoom, Discord, etc.)
  @override
  String get platform;

  /// Meeting link
  @override
  String? get meetingLink;

  /// Meeting notes
  @override
  String? get notes;

  /// Create a copy of MeetingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingScheduleImplCopyWith<_$MeetingScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
