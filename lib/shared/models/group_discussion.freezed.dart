// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_discussion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupDiscussion _$GroupDiscussionFromJson(Map<String, dynamic> json) {
  return _GroupDiscussion.fromJson(json);
}

/// @nodoc
mixin _$GroupDiscussion {
  /// Unique identifier for the discussion
  String get id => throw _privateConstructorUsedError;

  /// ID of the reading group this discussion belongs to
  String get groupId => throw _privateConstructorUsedError;

  /// Discussion title
  String get title => throw _privateConstructorUsedError;

  /// Discussion content/description
  String get content => throw _privateConstructorUsedError;

  /// Discussion category
  DiscussionCategory get category => throw _privateConstructorUsedError;

  /// Discussion creator ID
  String get creatorId => throw _privateConstructorUsedError;

  /// Discussion creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Last activity date
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Number of replies/messages
  int get replyCount => throw _privateConstructorUsedError;

  /// Number of views
  int get viewCount => throw _privateConstructorUsedError;

  /// Discussion tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// Whether discussion is pinned
  bool get isPinned => throw _privateConstructorUsedError;

  /// Whether discussion is locked
  bool get isLocked => throw _privateConstructorUsedError;

  /// Whether discussion is featured
  bool get isFeatured => throw _privateConstructorUsedError;

  /// Discussion status
  DiscussionStatus get status => throw _privateConstructorUsedError;

  /// Associated book ID (if book-specific discussion)
  String? get bookId => throw _privateConstructorUsedError;

  /// Associated chapter/page (if chapter-specific)
  String? get chapterReference => throw _privateConstructorUsedError;

  /// Spoiler warning level
  SpoilerLevel get spoilerLevel => throw _privateConstructorUsedError;

  /// Discussion participants
  List<String> get participants => throw _privateConstructorUsedError;

  /// Discussion moderators
  List<String> get moderators => throw _privateConstructorUsedError;

  /// Discussion rules/guidelines
  List<String> get rules => throw _privateConstructorUsedError;

  /// Discussion achievements/badges
  List<DiscussionBadge> get badges => throw _privateConstructorUsedError;

  /// Serializes this GroupDiscussion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupDiscussionCopyWith<GroupDiscussion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDiscussionCopyWith<$Res> {
  factory $GroupDiscussionCopyWith(
          GroupDiscussion value, $Res Function(GroupDiscussion) then) =
      _$GroupDiscussionCopyWithImpl<$Res, GroupDiscussion>;
  @useResult
  $Res call(
      {String id,
      String groupId,
      String title,
      String content,
      DiscussionCategory category,
      String creatorId,
      DateTime dateCreated,
      DateTime lastActivity,
      int replyCount,
      int viewCount,
      List<String> tags,
      bool isPinned,
      bool isLocked,
      bool isFeatured,
      DiscussionStatus status,
      String? bookId,
      String? chapterReference,
      SpoilerLevel spoilerLevel,
      List<String> participants,
      List<String> moderators,
      List<String> rules,
      List<DiscussionBadge> badges});
}

/// @nodoc
class _$GroupDiscussionCopyWithImpl<$Res, $Val extends GroupDiscussion>
    implements $GroupDiscussionCopyWith<$Res> {
  _$GroupDiscussionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? title = null,
    Object? content = null,
    Object? category = null,
    Object? creatorId = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? replyCount = null,
    Object? viewCount = null,
    Object? tags = null,
    Object? isPinned = null,
    Object? isLocked = null,
    Object? isFeatured = null,
    Object? status = null,
    Object? bookId = freezed,
    Object? chapterReference = freezed,
    Object? spoilerLevel = null,
    Object? participants = null,
    Object? moderators = null,
    Object? rules = null,
    Object? badges = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DiscussionCategory,
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
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
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
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiscussionStatus,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterReference: freezed == chapterReference
          ? _value.chapterReference
          : chapterReference // ignore: cast_nullable_to_non_nullable
              as String?,
      spoilerLevel: null == spoilerLevel
          ? _value.spoilerLevel
          : spoilerLevel // ignore: cast_nullable_to_non_nullable
              as SpoilerLevel,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderators: null == moderators
          ? _value.moderators
          : moderators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<DiscussionBadge>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupDiscussionImplCopyWith<$Res>
    implements $GroupDiscussionCopyWith<$Res> {
  factory _$$GroupDiscussionImplCopyWith(_$GroupDiscussionImpl value,
          $Res Function(_$GroupDiscussionImpl) then) =
      __$$GroupDiscussionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String groupId,
      String title,
      String content,
      DiscussionCategory category,
      String creatorId,
      DateTime dateCreated,
      DateTime lastActivity,
      int replyCount,
      int viewCount,
      List<String> tags,
      bool isPinned,
      bool isLocked,
      bool isFeatured,
      DiscussionStatus status,
      String? bookId,
      String? chapterReference,
      SpoilerLevel spoilerLevel,
      List<String> participants,
      List<String> moderators,
      List<String> rules,
      List<DiscussionBadge> badges});
}

/// @nodoc
class __$$GroupDiscussionImplCopyWithImpl<$Res>
    extends _$GroupDiscussionCopyWithImpl<$Res, _$GroupDiscussionImpl>
    implements _$$GroupDiscussionImplCopyWith<$Res> {
  __$$GroupDiscussionImplCopyWithImpl(
      _$GroupDiscussionImpl _value, $Res Function(_$GroupDiscussionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? title = null,
    Object? content = null,
    Object? category = null,
    Object? creatorId = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? replyCount = null,
    Object? viewCount = null,
    Object? tags = null,
    Object? isPinned = null,
    Object? isLocked = null,
    Object? isFeatured = null,
    Object? status = null,
    Object? bookId = freezed,
    Object? chapterReference = freezed,
    Object? spoilerLevel = null,
    Object? participants = null,
    Object? moderators = null,
    Object? rules = null,
    Object? badges = null,
  }) {
    return _then(_$GroupDiscussionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DiscussionCategory,
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
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
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
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiscussionStatus,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterReference: freezed == chapterReference
          ? _value.chapterReference
          : chapterReference // ignore: cast_nullable_to_non_nullable
              as String?,
      spoilerLevel: null == spoilerLevel
          ? _value.spoilerLevel
          : spoilerLevel // ignore: cast_nullable_to_non_nullable
              as SpoilerLevel,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderators: null == moderators
          ? _value._moderators
          : moderators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<DiscussionBadge>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupDiscussionImpl implements _GroupDiscussion {
  const _$GroupDiscussionImpl(
      {required this.id,
      required this.groupId,
      required this.title,
      required this.content,
      required this.category,
      required this.creatorId,
      required this.dateCreated,
      required this.lastActivity,
      required this.replyCount,
      required this.viewCount,
      required final List<String> tags,
      required this.isPinned,
      required this.isLocked,
      required this.isFeatured,
      required this.status,
      this.bookId,
      this.chapterReference,
      required this.spoilerLevel,
      required final List<String> participants,
      required final List<String> moderators,
      required final List<String> rules,
      required final List<DiscussionBadge> badges})
      : _tags = tags,
        _participants = participants,
        _moderators = moderators,
        _rules = rules,
        _badges = badges;

  factory _$GroupDiscussionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDiscussionImplFromJson(json);

  /// Unique identifier for the discussion
  @override
  final String id;

  /// ID of the reading group this discussion belongs to
  @override
  final String groupId;

  /// Discussion title
  @override
  final String title;

  /// Discussion content/description
  @override
  final String content;

  /// Discussion category
  @override
  final DiscussionCategory category;

  /// Discussion creator ID
  @override
  final String creatorId;

  /// Discussion creation date
  @override
  final DateTime dateCreated;

  /// Last activity date
  @override
  final DateTime lastActivity;

  /// Number of replies/messages
  @override
  final int replyCount;

  /// Number of views
  @override
  final int viewCount;

  /// Discussion tags
  final List<String> _tags;

  /// Discussion tags
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Whether discussion is pinned
  @override
  final bool isPinned;

  /// Whether discussion is locked
  @override
  final bool isLocked;

  /// Whether discussion is featured
  @override
  final bool isFeatured;

  /// Discussion status
  @override
  final DiscussionStatus status;

  /// Associated book ID (if book-specific discussion)
  @override
  final String? bookId;

  /// Associated chapter/page (if chapter-specific)
  @override
  final String? chapterReference;

  /// Spoiler warning level
  @override
  final SpoilerLevel spoilerLevel;

  /// Discussion participants
  final List<String> _participants;

  /// Discussion participants
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  /// Discussion moderators
  final List<String> _moderators;

  /// Discussion moderators
  @override
  List<String> get moderators {
    if (_moderators is EqualUnmodifiableListView) return _moderators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderators);
  }

  /// Discussion rules/guidelines
  final List<String> _rules;

  /// Discussion rules/guidelines
  @override
  List<String> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  /// Discussion achievements/badges
  final List<DiscussionBadge> _badges;

  /// Discussion achievements/badges
  @override
  List<DiscussionBadge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  String toString() {
    return 'GroupDiscussion(id: $id, groupId: $groupId, title: $title, content: $content, category: $category, creatorId: $creatorId, dateCreated: $dateCreated, lastActivity: $lastActivity, replyCount: $replyCount, viewCount: $viewCount, tags: $tags, isPinned: $isPinned, isLocked: $isLocked, isFeatured: $isFeatured, status: $status, bookId: $bookId, chapterReference: $chapterReference, spoilerLevel: $spoilerLevel, participants: $participants, moderators: $moderators, rules: $rules, badges: $badges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDiscussionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.chapterReference, chapterReference) ||
                other.chapterReference == chapterReference) &&
            (identical(other.spoilerLevel, spoilerLevel) ||
                other.spoilerLevel == spoilerLevel) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._moderators, _moderators) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality().equals(other._badges, _badges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        groupId,
        title,
        content,
        category,
        creatorId,
        dateCreated,
        lastActivity,
        replyCount,
        viewCount,
        const DeepCollectionEquality().hash(_tags),
        isPinned,
        isLocked,
        isFeatured,
        status,
        bookId,
        chapterReference,
        spoilerLevel,
        const DeepCollectionEquality().hash(_participants),
        const DeepCollectionEquality().hash(_moderators),
        const DeepCollectionEquality().hash(_rules),
        const DeepCollectionEquality().hash(_badges)
      ]);

  /// Create a copy of GroupDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDiscussionImplCopyWith<_$GroupDiscussionImpl> get copyWith =>
      __$$GroupDiscussionImplCopyWithImpl<_$GroupDiscussionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupDiscussionImplToJson(
      this,
    );
  }
}

abstract class _GroupDiscussion implements GroupDiscussion {
  const factory _GroupDiscussion(
      {required final String id,
      required final String groupId,
      required final String title,
      required final String content,
      required final DiscussionCategory category,
      required final String creatorId,
      required final DateTime dateCreated,
      required final DateTime lastActivity,
      required final int replyCount,
      required final int viewCount,
      required final List<String> tags,
      required final bool isPinned,
      required final bool isLocked,
      required final bool isFeatured,
      required final DiscussionStatus status,
      final String? bookId,
      final String? chapterReference,
      required final SpoilerLevel spoilerLevel,
      required final List<String> participants,
      required final List<String> moderators,
      required final List<String> rules,
      required final List<DiscussionBadge> badges}) = _$GroupDiscussionImpl;

  factory _GroupDiscussion.fromJson(Map<String, dynamic> json) =
      _$GroupDiscussionImpl.fromJson;

  /// Unique identifier for the discussion
  @override
  String get id;

  /// ID of the reading group this discussion belongs to
  @override
  String get groupId;

  /// Discussion title
  @override
  String get title;

  /// Discussion content/description
  @override
  String get content;

  /// Discussion category
  @override
  DiscussionCategory get category;

  /// Discussion creator ID
  @override
  String get creatorId;

  /// Discussion creation date
  @override
  DateTime get dateCreated;

  /// Last activity date
  @override
  DateTime get lastActivity;

  /// Number of replies/messages
  @override
  int get replyCount;

  /// Number of views
  @override
  int get viewCount;

  /// Discussion tags
  @override
  List<String> get tags;

  /// Whether discussion is pinned
  @override
  bool get isPinned;

  /// Whether discussion is locked
  @override
  bool get isLocked;

  /// Whether discussion is featured
  @override
  bool get isFeatured;

  /// Discussion status
  @override
  DiscussionStatus get status;

  /// Associated book ID (if book-specific discussion)
  @override
  String? get bookId;

  /// Associated chapter/page (if chapter-specific)
  @override
  String? get chapterReference;

  /// Spoiler warning level
  @override
  SpoilerLevel get spoilerLevel;

  /// Discussion participants
  @override
  List<String> get participants;

  /// Discussion moderators
  @override
  List<String> get moderators;

  /// Discussion rules/guidelines
  @override
  List<String> get rules;

  /// Discussion achievements/badges
  @override
  List<DiscussionBadge> get badges;

  /// Create a copy of GroupDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupDiscussionImplCopyWith<_$GroupDiscussionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscussionBadge _$DiscussionBadgeFromJson(Map<String, dynamic> json) {
  return _DiscussionBadge.fromJson(json);
}

/// @nodoc
mixin _$DiscussionBadge {
  /// Badge ID
  String get id => throw _privateConstructorUsedError;

  /// Badge name
  String get name => throw _privateConstructorUsedError;

  /// Badge description
  String get description => throw _privateConstructorUsedError;

  /// Badge icon
  String get icon => throw _privateConstructorUsedError;

  /// Badge category
  BadgeCategory get category => throw _privateConstructorUsedError;

  /// Badge rarity
  BadgeRarity get rarity => throw _privateConstructorUsedError;

  /// Date when badge was earned
  DateTime get dateEarned => throw _privateConstructorUsedError;

  /// Users who earned this badge
  List<String> get usersEarned => throw _privateConstructorUsedError;

  /// Serializes this DiscussionBadge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscussionBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscussionBadgeCopyWith<DiscussionBadge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionBadgeCopyWith<$Res> {
  factory $DiscussionBadgeCopyWith(
          DiscussionBadge value, $Res Function(DiscussionBadge) then) =
      _$DiscussionBadgeCopyWithImpl<$Res, DiscussionBadge>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String icon,
      BadgeCategory category,
      BadgeRarity rarity,
      DateTime dateEarned,
      List<String> usersEarned});
}

/// @nodoc
class _$DiscussionBadgeCopyWithImpl<$Res, $Val extends DiscussionBadge>
    implements $DiscussionBadgeCopyWith<$Res> {
  _$DiscussionBadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionBadge
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
    Object? usersEarned = null,
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
              as BadgeCategory,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as BadgeRarity,
      dateEarned: null == dateEarned
          ? _value.dateEarned
          : dateEarned // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usersEarned: null == usersEarned
          ? _value.usersEarned
          : usersEarned // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscussionBadgeImplCopyWith<$Res>
    implements $DiscussionBadgeCopyWith<$Res> {
  factory _$$DiscussionBadgeImplCopyWith(_$DiscussionBadgeImpl value,
          $Res Function(_$DiscussionBadgeImpl) then) =
      __$$DiscussionBadgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String icon,
      BadgeCategory category,
      BadgeRarity rarity,
      DateTime dateEarned,
      List<String> usersEarned});
}

/// @nodoc
class __$$DiscussionBadgeImplCopyWithImpl<$Res>
    extends _$DiscussionBadgeCopyWithImpl<$Res, _$DiscussionBadgeImpl>
    implements _$$DiscussionBadgeImplCopyWith<$Res> {
  __$$DiscussionBadgeImplCopyWithImpl(
      _$DiscussionBadgeImpl _value, $Res Function(_$DiscussionBadgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionBadge
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
    Object? usersEarned = null,
  }) {
    return _then(_$DiscussionBadgeImpl(
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
              as BadgeCategory,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as BadgeRarity,
      dateEarned: null == dateEarned
          ? _value.dateEarned
          : dateEarned // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usersEarned: null == usersEarned
          ? _value._usersEarned
          : usersEarned // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscussionBadgeImpl implements _DiscussionBadge {
  const _$DiscussionBadgeImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.icon,
      required this.category,
      required this.rarity,
      required this.dateEarned,
      required final List<String> usersEarned})
      : _usersEarned = usersEarned;

  factory _$DiscussionBadgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscussionBadgeImplFromJson(json);

  /// Badge ID
  @override
  final String id;

  /// Badge name
  @override
  final String name;

  /// Badge description
  @override
  final String description;

  /// Badge icon
  @override
  final String icon;

  /// Badge category
  @override
  final BadgeCategory category;

  /// Badge rarity
  @override
  final BadgeRarity rarity;

  /// Date when badge was earned
  @override
  final DateTime dateEarned;

  /// Users who earned this badge
  final List<String> _usersEarned;

  /// Users who earned this badge
  @override
  List<String> get usersEarned {
    if (_usersEarned is EqualUnmodifiableListView) return _usersEarned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersEarned);
  }

  @override
  String toString() {
    return 'DiscussionBadge(id: $id, name: $name, description: $description, icon: $icon, category: $category, rarity: $rarity, dateEarned: $dateEarned, usersEarned: $usersEarned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionBadgeImpl &&
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
                .equals(other._usersEarned, _usersEarned));
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
      const DeepCollectionEquality().hash(_usersEarned));

  /// Create a copy of DiscussionBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionBadgeImplCopyWith<_$DiscussionBadgeImpl> get copyWith =>
      __$$DiscussionBadgeImplCopyWithImpl<_$DiscussionBadgeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscussionBadgeImplToJson(
      this,
    );
  }
}

abstract class _DiscussionBadge implements DiscussionBadge {
  const factory _DiscussionBadge(
      {required final String id,
      required final String name,
      required final String description,
      required final String icon,
      required final BadgeCategory category,
      required final BadgeRarity rarity,
      required final DateTime dateEarned,
      required final List<String> usersEarned}) = _$DiscussionBadgeImpl;

  factory _DiscussionBadge.fromJson(Map<String, dynamic> json) =
      _$DiscussionBadgeImpl.fromJson;

  /// Badge ID
  @override
  String get id;

  /// Badge name
  @override
  String get name;

  /// Badge description
  @override
  String get description;

  /// Badge icon
  @override
  String get icon;

  /// Badge category
  @override
  BadgeCategory get category;

  /// Badge rarity
  @override
  BadgeRarity get rarity;

  /// Date when badge was earned
  @override
  DateTime get dateEarned;

  /// Users who earned this badge
  @override
  List<String> get usersEarned;

  /// Create a copy of DiscussionBadge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionBadgeImplCopyWith<_$DiscussionBadgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscussionMessage _$DiscussionMessageFromJson(Map<String, dynamic> json) {
  return _DiscussionMessage.fromJson(json);
}

/// @nodoc
mixin _$DiscussionMessage {
  /// Unique identifier for the message
  String get id => throw _privateConstructorUsedError;

  /// ID of the discussion this message belongs to
  String get discussionId => throw _privateConstructorUsedError;

  /// ID of the reading group
  String get groupId => throw _privateConstructorUsedError;

  /// Message author ID
  String get authorId => throw _privateConstructorUsedError;

  /// Message content
  String get content => throw _privateConstructorUsedError;

  /// Message type
  MessageType get type => throw _privateConstructorUsedError;

  /// Message creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Message last edit date
  DateTime? get dateEdited => throw _privateConstructorUsedError;

  /// Whether message is edited
  bool get isEdited => throw _privateConstructorUsedError;

  /// Message status
  MessageStatus get status => throw _privateConstructorUsedError;

  /// Parent message ID (for replies)
  String? get parentMessageId => throw _privateConstructorUsedError;

  /// Message attachments
  List<MessageAttachment> get attachments => throw _privateConstructorUsedError;

  /// Message reactions
  List<MessageReaction> get reactions => throw _privateConstructorUsedError;

  /// Message metadata
  MessageMetadata get metadata => throw _privateConstructorUsedError;

  /// Whether message contains spoilers
  bool get hasSpoilers => throw _privateConstructorUsedError;

  /// Spoiler warning text
  String? get spoilerWarning => throw _privateConstructorUsedError;

  /// Message moderation notes
  String? get moderationNotes => throw _privateConstructorUsedError;

  /// Serializes this DiscussionMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscussionMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscussionMessageCopyWith<DiscussionMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionMessageCopyWith<$Res> {
  factory $DiscussionMessageCopyWith(
          DiscussionMessage value, $Res Function(DiscussionMessage) then) =
      _$DiscussionMessageCopyWithImpl<$Res, DiscussionMessage>;
  @useResult
  $Res call(
      {String id,
      String discussionId,
      String groupId,
      String authorId,
      String content,
      MessageType type,
      DateTime dateCreated,
      DateTime? dateEdited,
      bool isEdited,
      MessageStatus status,
      String? parentMessageId,
      List<MessageAttachment> attachments,
      List<MessageReaction> reactions,
      MessageMetadata metadata,
      bool hasSpoilers,
      String? spoilerWarning,
      String? moderationNotes});

  $MessageMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$DiscussionMessageCopyWithImpl<$Res, $Val extends DiscussionMessage>
    implements $DiscussionMessageCopyWith<$Res> {
  _$DiscussionMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discussionId = null,
    Object? groupId = null,
    Object? authorId = null,
    Object? content = null,
    Object? type = null,
    Object? dateCreated = null,
    Object? dateEdited = freezed,
    Object? isEdited = null,
    Object? status = null,
    Object? parentMessageId = freezed,
    Object? attachments = null,
    Object? reactions = null,
    Object? metadata = null,
    Object? hasSpoilers = null,
    Object? spoilerWarning = freezed,
    Object? moderationNotes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      discussionId: null == discussionId
          ? _value.discussionId
          : discussionId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateEdited: freezed == dateEdited
          ? _value.dateEdited
          : dateEdited // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      parentMessageId: freezed == parentMessageId
          ? _value.parentMessageId
          : parentMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<MessageAttachment>,
      reactions: null == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<MessageReaction>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetadata,
      hasSpoilers: null == hasSpoilers
          ? _value.hasSpoilers
          : hasSpoilers // ignore: cast_nullable_to_non_nullable
              as bool,
      spoilerWarning: freezed == spoilerWarning
          ? _value.spoilerWarning
          : spoilerWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      moderationNotes: freezed == moderationNotes
          ? _value.moderationNotes
          : moderationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of DiscussionMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageMetadataCopyWith<$Res> get metadata {
    return $MessageMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscussionMessageImplCopyWith<$Res>
    implements $DiscussionMessageCopyWith<$Res> {
  factory _$$DiscussionMessageImplCopyWith(_$DiscussionMessageImpl value,
          $Res Function(_$DiscussionMessageImpl) then) =
      __$$DiscussionMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String discussionId,
      String groupId,
      String authorId,
      String content,
      MessageType type,
      DateTime dateCreated,
      DateTime? dateEdited,
      bool isEdited,
      MessageStatus status,
      String? parentMessageId,
      List<MessageAttachment> attachments,
      List<MessageReaction> reactions,
      MessageMetadata metadata,
      bool hasSpoilers,
      String? spoilerWarning,
      String? moderationNotes});

  @override
  $MessageMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$DiscussionMessageImplCopyWithImpl<$Res>
    extends _$DiscussionMessageCopyWithImpl<$Res, _$DiscussionMessageImpl>
    implements _$$DiscussionMessageImplCopyWith<$Res> {
  __$$DiscussionMessageImplCopyWithImpl(_$DiscussionMessageImpl _value,
      $Res Function(_$DiscussionMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discussionId = null,
    Object? groupId = null,
    Object? authorId = null,
    Object? content = null,
    Object? type = null,
    Object? dateCreated = null,
    Object? dateEdited = freezed,
    Object? isEdited = null,
    Object? status = null,
    Object? parentMessageId = freezed,
    Object? attachments = null,
    Object? reactions = null,
    Object? metadata = null,
    Object? hasSpoilers = null,
    Object? spoilerWarning = freezed,
    Object? moderationNotes = freezed,
  }) {
    return _then(_$DiscussionMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      discussionId: null == discussionId
          ? _value.discussionId
          : discussionId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateEdited: freezed == dateEdited
          ? _value.dateEdited
          : dateEdited // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      parentMessageId: freezed == parentMessageId
          ? _value.parentMessageId
          : parentMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<MessageAttachment>,
      reactions: null == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<MessageReaction>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetadata,
      hasSpoilers: null == hasSpoilers
          ? _value.hasSpoilers
          : hasSpoilers // ignore: cast_nullable_to_non_nullable
              as bool,
      spoilerWarning: freezed == spoilerWarning
          ? _value.spoilerWarning
          : spoilerWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      moderationNotes: freezed == moderationNotes
          ? _value.moderationNotes
          : moderationNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscussionMessageImpl implements _DiscussionMessage {
  const _$DiscussionMessageImpl(
      {required this.id,
      required this.discussionId,
      required this.groupId,
      required this.authorId,
      required this.content,
      required this.type,
      required this.dateCreated,
      this.dateEdited,
      required this.isEdited,
      required this.status,
      this.parentMessageId,
      required final List<MessageAttachment> attachments,
      required final List<MessageReaction> reactions,
      required this.metadata,
      required this.hasSpoilers,
      this.spoilerWarning,
      this.moderationNotes})
      : _attachments = attachments,
        _reactions = reactions;

  factory _$DiscussionMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscussionMessageImplFromJson(json);

  /// Unique identifier for the message
  @override
  final String id;

  /// ID of the discussion this message belongs to
  @override
  final String discussionId;

  /// ID of the reading group
  @override
  final String groupId;

  /// Message author ID
  @override
  final String authorId;

  /// Message content
  @override
  final String content;

  /// Message type
  @override
  final MessageType type;

  /// Message creation date
  @override
  final DateTime dateCreated;

  /// Message last edit date
  @override
  final DateTime? dateEdited;

  /// Whether message is edited
  @override
  final bool isEdited;

  /// Message status
  @override
  final MessageStatus status;

  /// Parent message ID (for replies)
  @override
  final String? parentMessageId;

  /// Message attachments
  final List<MessageAttachment> _attachments;

  /// Message attachments
  @override
  List<MessageAttachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  /// Message reactions
  final List<MessageReaction> _reactions;

  /// Message reactions
  @override
  List<MessageReaction> get reactions {
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reactions);
  }

  /// Message metadata
  @override
  final MessageMetadata metadata;

  /// Whether message contains spoilers
  @override
  final bool hasSpoilers;

  /// Spoiler warning text
  @override
  final String? spoilerWarning;

  /// Message moderation notes
  @override
  final String? moderationNotes;

  @override
  String toString() {
    return 'DiscussionMessage(id: $id, discussionId: $discussionId, groupId: $groupId, authorId: $authorId, content: $content, type: $type, dateCreated: $dateCreated, dateEdited: $dateEdited, isEdited: $isEdited, status: $status, parentMessageId: $parentMessageId, attachments: $attachments, reactions: $reactions, metadata: $metadata, hasSpoilers: $hasSpoilers, spoilerWarning: $spoilerWarning, moderationNotes: $moderationNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discussionId, discussionId) ||
                other.discussionId == discussionId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateEdited, dateEdited) ||
                other.dateEdited == dateEdited) &&
            (identical(other.isEdited, isEdited) ||
                other.isEdited == isEdited) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.parentMessageId, parentMessageId) ||
                other.parentMessageId == parentMessageId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.hasSpoilers, hasSpoilers) ||
                other.hasSpoilers == hasSpoilers) &&
            (identical(other.spoilerWarning, spoilerWarning) ||
                other.spoilerWarning == spoilerWarning) &&
            (identical(other.moderationNotes, moderationNotes) ||
                other.moderationNotes == moderationNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      discussionId,
      groupId,
      authorId,
      content,
      type,
      dateCreated,
      dateEdited,
      isEdited,
      status,
      parentMessageId,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_reactions),
      metadata,
      hasSpoilers,
      spoilerWarning,
      moderationNotes);

  /// Create a copy of DiscussionMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionMessageImplCopyWith<_$DiscussionMessageImpl> get copyWith =>
      __$$DiscussionMessageImplCopyWithImpl<_$DiscussionMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscussionMessageImplToJson(
      this,
    );
  }
}

abstract class _DiscussionMessage implements DiscussionMessage {
  const factory _DiscussionMessage(
      {required final String id,
      required final String discussionId,
      required final String groupId,
      required final String authorId,
      required final String content,
      required final MessageType type,
      required final DateTime dateCreated,
      final DateTime? dateEdited,
      required final bool isEdited,
      required final MessageStatus status,
      final String? parentMessageId,
      required final List<MessageAttachment> attachments,
      required final List<MessageReaction> reactions,
      required final MessageMetadata metadata,
      required final bool hasSpoilers,
      final String? spoilerWarning,
      final String? moderationNotes}) = _$DiscussionMessageImpl;

  factory _DiscussionMessage.fromJson(Map<String, dynamic> json) =
      _$DiscussionMessageImpl.fromJson;

  /// Unique identifier for the message
  @override
  String get id;

  /// ID of the discussion this message belongs to
  @override
  String get discussionId;

  /// ID of the reading group
  @override
  String get groupId;

  /// Message author ID
  @override
  String get authorId;

  /// Message content
  @override
  String get content;

  /// Message type
  @override
  MessageType get type;

  /// Message creation date
  @override
  DateTime get dateCreated;

  /// Message last edit date
  @override
  DateTime? get dateEdited;

  /// Whether message is edited
  @override
  bool get isEdited;

  /// Message status
  @override
  MessageStatus get status;

  /// Parent message ID (for replies)
  @override
  String? get parentMessageId;

  /// Message attachments
  @override
  List<MessageAttachment> get attachments;

  /// Message reactions
  @override
  List<MessageReaction> get reactions;

  /// Message metadata
  @override
  MessageMetadata get metadata;

  /// Whether message contains spoilers
  @override
  bool get hasSpoilers;

  /// Spoiler warning text
  @override
  String? get spoilerWarning;

  /// Message moderation notes
  @override
  String? get moderationNotes;

  /// Create a copy of DiscussionMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionMessageImplCopyWith<_$DiscussionMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageAttachment _$MessageAttachmentFromJson(Map<String, dynamic> json) {
  return _MessageAttachment.fromJson(json);
}

/// @nodoc
mixin _$MessageAttachment {
  /// Attachment ID
  String get id => throw _privateConstructorUsedError;

  /// Attachment type
  AttachmentType get type => throw _privateConstructorUsedError;

  /// Attachment URL
  String get url => throw _privateConstructorUsedError;

  /// Attachment filename
  String get filename => throw _privateConstructorUsedError;

  /// Attachment size in bytes
  int get sizeBytes => throw _privateConstructorUsedError;

  /// Attachment MIME type
  String get mimeType => throw _privateConstructorUsedError;

  /// Attachment thumbnail URL
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Attachment metadata
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this MessageAttachment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageAttachmentCopyWith<MessageAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAttachmentCopyWith<$Res> {
  factory $MessageAttachmentCopyWith(
          MessageAttachment value, $Res Function(MessageAttachment) then) =
      _$MessageAttachmentCopyWithImpl<$Res, MessageAttachment>;
  @useResult
  $Res call(
      {String id,
      AttachmentType type,
      String url,
      String filename,
      int sizeBytes,
      String mimeType,
      String? thumbnailUrl,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$MessageAttachmentCopyWithImpl<$Res, $Val extends MessageAttachment>
    implements $MessageAttachmentCopyWith<$Res> {
  _$MessageAttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
    Object? filename = null,
    Object? sizeBytes = null,
    Object? mimeType = null,
    Object? thumbnailUrl = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttachmentType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      sizeBytes: null == sizeBytes
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageAttachmentImplCopyWith<$Res>
    implements $MessageAttachmentCopyWith<$Res> {
  factory _$$MessageAttachmentImplCopyWith(_$MessageAttachmentImpl value,
          $Res Function(_$MessageAttachmentImpl) then) =
      __$$MessageAttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AttachmentType type,
      String url,
      String filename,
      int sizeBytes,
      String mimeType,
      String? thumbnailUrl,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$MessageAttachmentImplCopyWithImpl<$Res>
    extends _$MessageAttachmentCopyWithImpl<$Res, _$MessageAttachmentImpl>
    implements _$$MessageAttachmentImplCopyWith<$Res> {
  __$$MessageAttachmentImplCopyWithImpl(_$MessageAttachmentImpl _value,
      $Res Function(_$MessageAttachmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
    Object? filename = null,
    Object? sizeBytes = null,
    Object? mimeType = null,
    Object? thumbnailUrl = freezed,
    Object? metadata = null,
  }) {
    return _then(_$MessageAttachmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttachmentType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      sizeBytes: null == sizeBytes
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageAttachmentImpl implements _MessageAttachment {
  const _$MessageAttachmentImpl(
      {required this.id,
      required this.type,
      required this.url,
      required this.filename,
      required this.sizeBytes,
      required this.mimeType,
      this.thumbnailUrl,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata;

  factory _$MessageAttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageAttachmentImplFromJson(json);

  /// Attachment ID
  @override
  final String id;

  /// Attachment type
  @override
  final AttachmentType type;

  /// Attachment URL
  @override
  final String url;

  /// Attachment filename
  @override
  final String filename;

  /// Attachment size in bytes
  @override
  final int sizeBytes;

  /// Attachment MIME type
  @override
  final String mimeType;

  /// Attachment thumbnail URL
  @override
  final String? thumbnailUrl;

  /// Attachment metadata
  final Map<String, dynamic> _metadata;

  /// Attachment metadata
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'MessageAttachment(id: $id, type: $type, url: $url, filename: $filename, sizeBytes: $sizeBytes, mimeType: $mimeType, thumbnailUrl: $thumbnailUrl, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAttachmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      url,
      filename,
      sizeBytes,
      mimeType,
      thumbnailUrl,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of MessageAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAttachmentImplCopyWith<_$MessageAttachmentImpl> get copyWith =>
      __$$MessageAttachmentImplCopyWithImpl<_$MessageAttachmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAttachmentImplToJson(
      this,
    );
  }
}

abstract class _MessageAttachment implements MessageAttachment {
  const factory _MessageAttachment(
      {required final String id,
      required final AttachmentType type,
      required final String url,
      required final String filename,
      required final int sizeBytes,
      required final String mimeType,
      final String? thumbnailUrl,
      required final Map<String, dynamic> metadata}) = _$MessageAttachmentImpl;

  factory _MessageAttachment.fromJson(Map<String, dynamic> json) =
      _$MessageAttachmentImpl.fromJson;

  /// Attachment ID
  @override
  String get id;

  /// Attachment type
  @override
  AttachmentType get type;

  /// Attachment URL
  @override
  String get url;

  /// Attachment filename
  @override
  String get filename;

  /// Attachment size in bytes
  @override
  int get sizeBytes;

  /// Attachment MIME type
  @override
  String get mimeType;

  /// Attachment thumbnail URL
  @override
  String? get thumbnailUrl;

  /// Attachment metadata
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of MessageAttachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageAttachmentImplCopyWith<_$MessageAttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageReaction _$MessageReactionFromJson(Map<String, dynamic> json) {
  return _MessageReaction.fromJson(json);
}

/// @nodoc
mixin _$MessageReaction {
  /// Reaction ID
  String get id => throw _privateConstructorUsedError;

  /// Reaction type
  ReactionType get type => throw _privateConstructorUsedError;

  /// User ID who reacted
  String get userId => throw _privateConstructorUsedError;

  /// Reaction count
  int get count => throw _privateConstructorUsedError;

  /// Users who reacted
  List<String> get users => throw _privateConstructorUsedError;

  /// Reaction date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Serializes this MessageReaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageReaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageReactionCopyWith<MessageReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageReactionCopyWith<$Res> {
  factory $MessageReactionCopyWith(
          MessageReaction value, $Res Function(MessageReaction) then) =
      _$MessageReactionCopyWithImpl<$Res, MessageReaction>;
  @useResult
  $Res call(
      {String id,
      ReactionType type,
      String userId,
      int count,
      List<String> users,
      DateTime dateCreated});
}

/// @nodoc
class _$MessageReactionCopyWithImpl<$Res, $Val extends MessageReaction>
    implements $MessageReactionCopyWith<$Res> {
  _$MessageReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageReaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? userId = null,
    Object? count = null,
    Object? users = null,
    Object? dateCreated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageReactionImplCopyWith<$Res>
    implements $MessageReactionCopyWith<$Res> {
  factory _$$MessageReactionImplCopyWith(_$MessageReactionImpl value,
          $Res Function(_$MessageReactionImpl) then) =
      __$$MessageReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ReactionType type,
      String userId,
      int count,
      List<String> users,
      DateTime dateCreated});
}

/// @nodoc
class __$$MessageReactionImplCopyWithImpl<$Res>
    extends _$MessageReactionCopyWithImpl<$Res, _$MessageReactionImpl>
    implements _$$MessageReactionImplCopyWith<$Res> {
  __$$MessageReactionImplCopyWithImpl(
      _$MessageReactionImpl _value, $Res Function(_$MessageReactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageReaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? userId = null,
    Object? count = null,
    Object? users = null,
    Object? dateCreated = null,
  }) {
    return _then(_$MessageReactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageReactionImpl implements _MessageReaction {
  const _$MessageReactionImpl(
      {required this.id,
      required this.type,
      required this.userId,
      required this.count,
      required final List<String> users,
      required this.dateCreated})
      : _users = users;

  factory _$MessageReactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageReactionImplFromJson(json);

  /// Reaction ID
  @override
  final String id;

  /// Reaction type
  @override
  final ReactionType type;

  /// User ID who reacted
  @override
  final String userId;

  /// Reaction count
  @override
  final int count;

  /// Users who reacted
  final List<String> _users;

  /// Users who reacted
  @override
  List<String> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Reaction date
  @override
  final DateTime dateCreated;

  @override
  String toString() {
    return 'MessageReaction(id: $id, type: $type, userId: $userId, count: $count, users: $users, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, userId, count,
      const DeepCollectionEquality().hash(_users), dateCreated);

  /// Create a copy of MessageReaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReactionImplCopyWith<_$MessageReactionImpl> get copyWith =>
      __$$MessageReactionImplCopyWithImpl<_$MessageReactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageReactionImplToJson(
      this,
    );
  }
}

abstract class _MessageReaction implements MessageReaction {
  const factory _MessageReaction(
      {required final String id,
      required final ReactionType type,
      required final String userId,
      required final int count,
      required final List<String> users,
      required final DateTime dateCreated}) = _$MessageReactionImpl;

  factory _MessageReaction.fromJson(Map<String, dynamic> json) =
      _$MessageReactionImpl.fromJson;

  /// Reaction ID
  @override
  String get id;

  /// Reaction type
  @override
  ReactionType get type;

  /// User ID who reacted
  @override
  String get userId;

  /// Reaction count
  @override
  int get count;

  /// Users who reacted
  @override
  List<String> get users;

  /// Reaction date
  @override
  DateTime get dateCreated;

  /// Create a copy of MessageReaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReactionImplCopyWith<_$MessageReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageMetadata _$MessageMetadataFromJson(Map<String, dynamic> json) {
  return _MessageMetadata.fromJson(json);
}

/// @nodoc
mixin _$MessageMetadata {
  /// Whether message is pinned
  bool get isPinned => throw _privateConstructorUsedError;

  /// Whether message is featured
  bool get isFeatured => throw _privateConstructorUsedError;

  /// Message view count
  int get viewCount => throw _privateConstructorUsedError;

  /// Message reply count
  int get replyCount => throw _privateConstructorUsedError;

  /// Message share count
  int get shareCount => throw _privateConstructorUsedError;

  /// Message bookmark count
  int get bookmarkCount => throw _privateConstructorUsedError;

  /// Message quality score
  double get qualityScore => throw _privateConstructorUsedError;

  /// Message helpfulness score
  double get helpfulnessScore => throw _privateConstructorUsedError;

  /// Message tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// Message language
  String get language => throw _privateConstructorUsedError;

  /// Message sentiment
  Sentiment get sentiment => throw _privateConstructorUsedError;

  /// Serializes this MessageMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageMetadataCopyWith<MessageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageMetadataCopyWith<$Res> {
  factory $MessageMetadataCopyWith(
          MessageMetadata value, $Res Function(MessageMetadata) then) =
      _$MessageMetadataCopyWithImpl<$Res, MessageMetadata>;
  @useResult
  $Res call(
      {bool isPinned,
      bool isFeatured,
      int viewCount,
      int replyCount,
      int shareCount,
      int bookmarkCount,
      double qualityScore,
      double helpfulnessScore,
      List<String> tags,
      String language,
      Sentiment sentiment});
}

/// @nodoc
class _$MessageMetadataCopyWithImpl<$Res, $Val extends MessageMetadata>
    implements $MessageMetadataCopyWith<$Res> {
  _$MessageMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPinned = null,
    Object? isFeatured = null,
    Object? viewCount = null,
    Object? replyCount = null,
    Object? shareCount = null,
    Object? bookmarkCount = null,
    Object? qualityScore = null,
    Object? helpfulnessScore = null,
    Object? tags = null,
    Object? language = null,
    Object? sentiment = null,
  }) {
    return _then(_value.copyWith(
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCount: null == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookmarkCount: null == bookmarkCount
          ? _value.bookmarkCount
          : bookmarkCount // ignore: cast_nullable_to_non_nullable
              as int,
      qualityScore: null == qualityScore
          ? _value.qualityScore
          : qualityScore // ignore: cast_nullable_to_non_nullable
              as double,
      helpfulnessScore: null == helpfulnessScore
          ? _value.helpfulnessScore
          : helpfulnessScore // ignore: cast_nullable_to_non_nullable
              as double,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as Sentiment,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageMetadataImplCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$MessageMetadataImplCopyWith(_$MessageMetadataImpl value,
          $Res Function(_$MessageMetadataImpl) then) =
      __$$MessageMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPinned,
      bool isFeatured,
      int viewCount,
      int replyCount,
      int shareCount,
      int bookmarkCount,
      double qualityScore,
      double helpfulnessScore,
      List<String> tags,
      String language,
      Sentiment sentiment});
}

/// @nodoc
class __$$MessageMetadataImplCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res, _$MessageMetadataImpl>
    implements _$$MessageMetadataImplCopyWith<$Res> {
  __$$MessageMetadataImplCopyWithImpl(
      _$MessageMetadataImpl _value, $Res Function(_$MessageMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPinned = null,
    Object? isFeatured = null,
    Object? viewCount = null,
    Object? replyCount = null,
    Object? shareCount = null,
    Object? bookmarkCount = null,
    Object? qualityScore = null,
    Object? helpfulnessScore = null,
    Object? tags = null,
    Object? language = null,
    Object? sentiment = null,
  }) {
    return _then(_$MessageMetadataImpl(
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCount: null == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookmarkCount: null == bookmarkCount
          ? _value.bookmarkCount
          : bookmarkCount // ignore: cast_nullable_to_non_nullable
              as int,
      qualityScore: null == qualityScore
          ? _value.qualityScore
          : qualityScore // ignore: cast_nullable_to_non_nullable
              as double,
      helpfulnessScore: null == helpfulnessScore
          ? _value.helpfulnessScore
          : helpfulnessScore // ignore: cast_nullable_to_non_nullable
              as double,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      sentiment: null == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as Sentiment,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageMetadataImpl implements _MessageMetadata {
  const _$MessageMetadataImpl(
      {required this.isPinned,
      required this.isFeatured,
      required this.viewCount,
      required this.replyCount,
      required this.shareCount,
      required this.bookmarkCount,
      required this.qualityScore,
      required this.helpfulnessScore,
      required final List<String> tags,
      required this.language,
      required this.sentiment})
      : _tags = tags;

  factory _$MessageMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageMetadataImplFromJson(json);

  /// Whether message is pinned
  @override
  final bool isPinned;

  /// Whether message is featured
  @override
  final bool isFeatured;

  /// Message view count
  @override
  final int viewCount;

  /// Message reply count
  @override
  final int replyCount;

  /// Message share count
  @override
  final int shareCount;

  /// Message bookmark count
  @override
  final int bookmarkCount;

  /// Message quality score
  @override
  final double qualityScore;

  /// Message helpfulness score
  @override
  final double helpfulnessScore;

  /// Message tags
  final List<String> _tags;

  /// Message tags
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Message language
  @override
  final String language;

  /// Message sentiment
  @override
  final Sentiment sentiment;

  @override
  String toString() {
    return 'MessageMetadata(isPinned: $isPinned, isFeatured: $isFeatured, viewCount: $viewCount, replyCount: $replyCount, shareCount: $shareCount, bookmarkCount: $bookmarkCount, qualityScore: $qualityScore, helpfulnessScore: $helpfulnessScore, tags: $tags, language: $language, sentiment: $sentiment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageMetadataImpl &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.shareCount, shareCount) ||
                other.shareCount == shareCount) &&
            (identical(other.bookmarkCount, bookmarkCount) ||
                other.bookmarkCount == bookmarkCount) &&
            (identical(other.qualityScore, qualityScore) ||
                other.qualityScore == qualityScore) &&
            (identical(other.helpfulnessScore, helpfulnessScore) ||
                other.helpfulnessScore == helpfulnessScore) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPinned,
      isFeatured,
      viewCount,
      replyCount,
      shareCount,
      bookmarkCount,
      qualityScore,
      helpfulnessScore,
      const DeepCollectionEquality().hash(_tags),
      language,
      sentiment);

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageMetadataImplCopyWith<_$MessageMetadataImpl> get copyWith =>
      __$$MessageMetadataImplCopyWithImpl<_$MessageMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageMetadataImplToJson(
      this,
    );
  }
}

abstract class _MessageMetadata implements MessageMetadata {
  const factory _MessageMetadata(
      {required final bool isPinned,
      required final bool isFeatured,
      required final int viewCount,
      required final int replyCount,
      required final int shareCount,
      required final int bookmarkCount,
      required final double qualityScore,
      required final double helpfulnessScore,
      required final List<String> tags,
      required final String language,
      required final Sentiment sentiment}) = _$MessageMetadataImpl;

  factory _MessageMetadata.fromJson(Map<String, dynamic> json) =
      _$MessageMetadataImpl.fromJson;

  /// Whether message is pinned
  @override
  bool get isPinned;

  /// Whether message is featured
  @override
  bool get isFeatured;

  /// Message view count
  @override
  int get viewCount;

  /// Message reply count
  @override
  int get replyCount;

  /// Message share count
  @override
  int get shareCount;

  /// Message bookmark count
  @override
  int get bookmarkCount;

  /// Message quality score
  @override
  double get qualityScore;

  /// Message helpfulness score
  @override
  double get helpfulnessScore;

  /// Message tags
  @override
  List<String> get tags;

  /// Message language
  @override
  String get language;

  /// Message sentiment
  @override
  Sentiment get sentiment;

  /// Create a copy of MessageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageMetadataImplCopyWith<_$MessageMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupChatRoom _$GroupChatRoomFromJson(Map<String, dynamic> json) {
  return _GroupChatRoom.fromJson(json);
}

/// @nodoc
mixin _$GroupChatRoom {
  /// Chat room ID
  String get id => throw _privateConstructorUsedError;

  /// Reading group ID
  String get groupId => throw _privateConstructorUsedError;

  /// Chat room name
  String get name => throw _privateConstructorUsedError;

  /// Chat room description
  String get description => throw _privateConstructorUsedError;

  /// Chat room type
  ChatRoomType get type => throw _privateConstructorUsedError;

  /// Chat room privacy
  ChatRoomPrivacy get privacy => throw _privateConstructorUsedError;

  /// Maximum participants
  int? get maxParticipants => throw _privateConstructorUsedError;

  /// Current participants
  List<String> get participants => throw _privateConstructorUsedError;

  /// Chat room moderators
  List<String> get moderators => throw _privateConstructorUsedError;

  /// Chat room rules
  List<String> get rules => throw _privateConstructorUsedError;

  /// Whether chat room is active
  bool get isActive => throw _privateConstructorUsedError;

  /// Chat room creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Last activity date
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Chat room status
  ChatRoomStatus get status => throw _privateConstructorUsedError;

  /// Associated discussion ID (if discussion-based)
  String? get discussionId => throw _privateConstructorUsedError;

  /// Associated book ID (if book-specific)
  String? get bookId => throw _privateConstructorUsedError;

  /// Chat room settings
  ChatRoomSettings get settings => throw _privateConstructorUsedError;

  /// Serializes this GroupChatRoom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupChatRoomCopyWith<GroupChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatRoomCopyWith<$Res> {
  factory $GroupChatRoomCopyWith(
          GroupChatRoom value, $Res Function(GroupChatRoom) then) =
      _$GroupChatRoomCopyWithImpl<$Res, GroupChatRoom>;
  @useResult
  $Res call(
      {String id,
      String groupId,
      String name,
      String description,
      ChatRoomType type,
      ChatRoomPrivacy privacy,
      int? maxParticipants,
      List<String> participants,
      List<String> moderators,
      List<String> rules,
      bool isActive,
      DateTime dateCreated,
      DateTime lastActivity,
      ChatRoomStatus status,
      String? discussionId,
      String? bookId,
      ChatRoomSettings settings});

  $ChatRoomSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$GroupChatRoomCopyWithImpl<$Res, $Val extends GroupChatRoom>
    implements $GroupChatRoomCopyWith<$Res> {
  _$GroupChatRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? privacy = null,
    Object? maxParticipants = freezed,
    Object? participants = null,
    Object? moderators = null,
    Object? rules = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? status = null,
    Object? discussionId = freezed,
    Object? bookId = freezed,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
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
              as ChatRoomType,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as ChatRoomPrivacy,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderators: null == moderators
          ? _value.moderators
          : moderators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatRoomStatus,
      discussionId: freezed == discussionId
          ? _value.discussionId
          : discussionId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ChatRoomSettings,
    ) as $Val);
  }

  /// Create a copy of GroupChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatRoomSettingsCopyWith<$Res> get settings {
    return $ChatRoomSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupChatRoomImplCopyWith<$Res>
    implements $GroupChatRoomCopyWith<$Res> {
  factory _$$GroupChatRoomImplCopyWith(
          _$GroupChatRoomImpl value, $Res Function(_$GroupChatRoomImpl) then) =
      __$$GroupChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String groupId,
      String name,
      String description,
      ChatRoomType type,
      ChatRoomPrivacy privacy,
      int? maxParticipants,
      List<String> participants,
      List<String> moderators,
      List<String> rules,
      bool isActive,
      DateTime dateCreated,
      DateTime lastActivity,
      ChatRoomStatus status,
      String? discussionId,
      String? bookId,
      ChatRoomSettings settings});

  @override
  $ChatRoomSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$GroupChatRoomImplCopyWithImpl<$Res>
    extends _$GroupChatRoomCopyWithImpl<$Res, _$GroupChatRoomImpl>
    implements _$$GroupChatRoomImplCopyWith<$Res> {
  __$$GroupChatRoomImplCopyWithImpl(
      _$GroupChatRoomImpl _value, $Res Function(_$GroupChatRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? privacy = null,
    Object? maxParticipants = freezed,
    Object? participants = null,
    Object? moderators = null,
    Object? rules = null,
    Object? isActive = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? status = null,
    Object? discussionId = freezed,
    Object? bookId = freezed,
    Object? settings = null,
  }) {
    return _then(_$GroupChatRoomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
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
              as ChatRoomType,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as ChatRoomPrivacy,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderators: null == moderators
          ? _value._moderators
          : moderators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatRoomStatus,
      discussionId: freezed == discussionId
          ? _value.discussionId
          : discussionId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ChatRoomSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupChatRoomImpl implements _GroupChatRoom {
  const _$GroupChatRoomImpl(
      {required this.id,
      required this.groupId,
      required this.name,
      required this.description,
      required this.type,
      required this.privacy,
      this.maxParticipants,
      required final List<String> participants,
      required final List<String> moderators,
      required final List<String> rules,
      required this.isActive,
      required this.dateCreated,
      required this.lastActivity,
      required this.status,
      this.discussionId,
      this.bookId,
      required this.settings})
      : _participants = participants,
        _moderators = moderators,
        _rules = rules;

  factory _$GroupChatRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupChatRoomImplFromJson(json);

  /// Chat room ID
  @override
  final String id;

  /// Reading group ID
  @override
  final String groupId;

  /// Chat room name
  @override
  final String name;

  /// Chat room description
  @override
  final String description;

  /// Chat room type
  @override
  final ChatRoomType type;

  /// Chat room privacy
  @override
  final ChatRoomPrivacy privacy;

  /// Maximum participants
  @override
  final int? maxParticipants;

  /// Current participants
  final List<String> _participants;

  /// Current participants
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  /// Chat room moderators
  final List<String> _moderators;

  /// Chat room moderators
  @override
  List<String> get moderators {
    if (_moderators is EqualUnmodifiableListView) return _moderators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderators);
  }

  /// Chat room rules
  final List<String> _rules;

  /// Chat room rules
  @override
  List<String> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  /// Whether chat room is active
  @override
  final bool isActive;

  /// Chat room creation date
  @override
  final DateTime dateCreated;

  /// Last activity date
  @override
  final DateTime lastActivity;

  /// Chat room status
  @override
  final ChatRoomStatus status;

  /// Associated discussion ID (if discussion-based)
  @override
  final String? discussionId;

  /// Associated book ID (if book-specific)
  @override
  final String? bookId;

  /// Chat room settings
  @override
  final ChatRoomSettings settings;

  @override
  String toString() {
    return 'GroupChatRoom(id: $id, groupId: $groupId, name: $name, description: $description, type: $type, privacy: $privacy, maxParticipants: $maxParticipants, participants: $participants, moderators: $moderators, rules: $rules, isActive: $isActive, dateCreated: $dateCreated, lastActivity: $lastActivity, status: $status, discussionId: $discussionId, bookId: $bookId, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupChatRoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._moderators, _moderators) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.discussionId, discussionId) ||
                other.discussionId == discussionId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      groupId,
      name,
      description,
      type,
      privacy,
      maxParticipants,
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_moderators),
      const DeepCollectionEquality().hash(_rules),
      isActive,
      dateCreated,
      lastActivity,
      status,
      discussionId,
      bookId,
      settings);

  /// Create a copy of GroupChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupChatRoomImplCopyWith<_$GroupChatRoomImpl> get copyWith =>
      __$$GroupChatRoomImplCopyWithImpl<_$GroupChatRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupChatRoomImplToJson(
      this,
    );
  }
}

abstract class _GroupChatRoom implements GroupChatRoom {
  const factory _GroupChatRoom(
      {required final String id,
      required final String groupId,
      required final String name,
      required final String description,
      required final ChatRoomType type,
      required final ChatRoomPrivacy privacy,
      final int? maxParticipants,
      required final List<String> participants,
      required final List<String> moderators,
      required final List<String> rules,
      required final bool isActive,
      required final DateTime dateCreated,
      required final DateTime lastActivity,
      required final ChatRoomStatus status,
      final String? discussionId,
      final String? bookId,
      required final ChatRoomSettings settings}) = _$GroupChatRoomImpl;

  factory _GroupChatRoom.fromJson(Map<String, dynamic> json) =
      _$GroupChatRoomImpl.fromJson;

  /// Chat room ID
  @override
  String get id;

  /// Reading group ID
  @override
  String get groupId;

  /// Chat room name
  @override
  String get name;

  /// Chat room description
  @override
  String get description;

  /// Chat room type
  @override
  ChatRoomType get type;

  /// Chat room privacy
  @override
  ChatRoomPrivacy get privacy;

  /// Maximum participants
  @override
  int? get maxParticipants;

  /// Current participants
  @override
  List<String> get participants;

  /// Chat room moderators
  @override
  List<String> get moderators;

  /// Chat room rules
  @override
  List<String> get rules;

  /// Whether chat room is active
  @override
  bool get isActive;

  /// Chat room creation date
  @override
  DateTime get dateCreated;

  /// Last activity date
  @override
  DateTime get lastActivity;

  /// Chat room status
  @override
  ChatRoomStatus get status;

  /// Associated discussion ID (if discussion-based)
  @override
  String? get discussionId;

  /// Associated book ID (if book-specific)
  @override
  String? get bookId;

  /// Chat room settings
  @override
  ChatRoomSettings get settings;

  /// Create a copy of GroupChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupChatRoomImplCopyWith<_$GroupChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoomSettings _$ChatRoomSettingsFromJson(Map<String, dynamic> json) {
  return _ChatRoomSettings.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomSettings {
  /// Whether file sharing is allowed
  bool get allowFileSharing => throw _privateConstructorUsedError;

  /// Whether images are allowed
  bool get allowImages => throw _privateConstructorUsedError;

  /// Whether links are allowed
  bool get allowLinks => throw _privateConstructorUsedError;

  /// Whether spoilers are allowed
  bool get allowSpoilers => throw _privateConstructorUsedError;

  /// Whether reactions are enabled
  bool get enableReactions => throw _privateConstructorUsedError;

  /// Whether editing is allowed
  bool get allowEditing => throw _privateConstructorUsedError;

  /// Whether deletion is allowed
  bool get allowDeletion => throw _privateConstructorUsedError;

  /// Message retention days
  int get messageRetentionDays => throw _privateConstructorUsedError;

  /// Whether moderation is required
  bool get requireModeration => throw _privateConstructorUsedError;

  /// Whether profanity filter is enabled
  bool get enableProfanityFilter => throw _privateConstructorUsedError;

  /// Whether auto-moderation is enabled
  bool get enableAutoModeration => throw _privateConstructorUsedError;

  /// Serializes this ChatRoomSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRoomSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoomSettingsCopyWith<ChatRoomSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomSettingsCopyWith<$Res> {
  factory $ChatRoomSettingsCopyWith(
          ChatRoomSettings value, $Res Function(ChatRoomSettings) then) =
      _$ChatRoomSettingsCopyWithImpl<$Res, ChatRoomSettings>;
  @useResult
  $Res call(
      {bool allowFileSharing,
      bool allowImages,
      bool allowLinks,
      bool allowSpoilers,
      bool enableReactions,
      bool allowEditing,
      bool allowDeletion,
      int messageRetentionDays,
      bool requireModeration,
      bool enableProfanityFilter,
      bool enableAutoModeration});
}

/// @nodoc
class _$ChatRoomSettingsCopyWithImpl<$Res, $Val extends ChatRoomSettings>
    implements $ChatRoomSettingsCopyWith<$Res> {
  _$ChatRoomSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoomSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowFileSharing = null,
    Object? allowImages = null,
    Object? allowLinks = null,
    Object? allowSpoilers = null,
    Object? enableReactions = null,
    Object? allowEditing = null,
    Object? allowDeletion = null,
    Object? messageRetentionDays = null,
    Object? requireModeration = null,
    Object? enableProfanityFilter = null,
    Object? enableAutoModeration = null,
  }) {
    return _then(_value.copyWith(
      allowFileSharing: null == allowFileSharing
          ? _value.allowFileSharing
          : allowFileSharing // ignore: cast_nullable_to_non_nullable
              as bool,
      allowImages: null == allowImages
          ? _value.allowImages
          : allowImages // ignore: cast_nullable_to_non_nullable
              as bool,
      allowLinks: null == allowLinks
          ? _value.allowLinks
          : allowLinks // ignore: cast_nullable_to_non_nullable
              as bool,
      allowSpoilers: null == allowSpoilers
          ? _value.allowSpoilers
          : allowSpoilers // ignore: cast_nullable_to_non_nullable
              as bool,
      enableReactions: null == enableReactions
          ? _value.enableReactions
          : enableReactions // ignore: cast_nullable_to_non_nullable
              as bool,
      allowEditing: null == allowEditing
          ? _value.allowEditing
          : allowEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      allowDeletion: null == allowDeletion
          ? _value.allowDeletion
          : allowDeletion // ignore: cast_nullable_to_non_nullable
              as bool,
      messageRetentionDays: null == messageRetentionDays
          ? _value.messageRetentionDays
          : messageRetentionDays // ignore: cast_nullable_to_non_nullable
              as int,
      requireModeration: null == requireModeration
          ? _value.requireModeration
          : requireModeration // ignore: cast_nullable_to_non_nullable
              as bool,
      enableProfanityFilter: null == enableProfanityFilter
          ? _value.enableProfanityFilter
          : enableProfanityFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      enableAutoModeration: null == enableAutoModeration
          ? _value.enableAutoModeration
          : enableAutoModeration // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoomSettingsImplCopyWith<$Res>
    implements $ChatRoomSettingsCopyWith<$Res> {
  factory _$$ChatRoomSettingsImplCopyWith(_$ChatRoomSettingsImpl value,
          $Res Function(_$ChatRoomSettingsImpl) then) =
      __$$ChatRoomSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool allowFileSharing,
      bool allowImages,
      bool allowLinks,
      bool allowSpoilers,
      bool enableReactions,
      bool allowEditing,
      bool allowDeletion,
      int messageRetentionDays,
      bool requireModeration,
      bool enableProfanityFilter,
      bool enableAutoModeration});
}

/// @nodoc
class __$$ChatRoomSettingsImplCopyWithImpl<$Res>
    extends _$ChatRoomSettingsCopyWithImpl<$Res, _$ChatRoomSettingsImpl>
    implements _$$ChatRoomSettingsImplCopyWith<$Res> {
  __$$ChatRoomSettingsImplCopyWithImpl(_$ChatRoomSettingsImpl _value,
      $Res Function(_$ChatRoomSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoomSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowFileSharing = null,
    Object? allowImages = null,
    Object? allowLinks = null,
    Object? allowSpoilers = null,
    Object? enableReactions = null,
    Object? allowEditing = null,
    Object? allowDeletion = null,
    Object? messageRetentionDays = null,
    Object? requireModeration = null,
    Object? enableProfanityFilter = null,
    Object? enableAutoModeration = null,
  }) {
    return _then(_$ChatRoomSettingsImpl(
      allowFileSharing: null == allowFileSharing
          ? _value.allowFileSharing
          : allowFileSharing // ignore: cast_nullable_to_non_nullable
              as bool,
      allowImages: null == allowImages
          ? _value.allowImages
          : allowImages // ignore: cast_nullable_to_non_nullable
              as bool,
      allowLinks: null == allowLinks
          ? _value.allowLinks
          : allowLinks // ignore: cast_nullable_to_non_nullable
              as bool,
      allowSpoilers: null == allowSpoilers
          ? _value.allowSpoilers
          : allowSpoilers // ignore: cast_nullable_to_non_nullable
              as bool,
      enableReactions: null == enableReactions
          ? _value.enableReactions
          : enableReactions // ignore: cast_nullable_to_non_nullable
              as bool,
      allowEditing: null == allowEditing
          ? _value.allowEditing
          : allowEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      allowDeletion: null == allowDeletion
          ? _value.allowDeletion
          : allowDeletion // ignore: cast_nullable_to_non_nullable
              as bool,
      messageRetentionDays: null == messageRetentionDays
          ? _value.messageRetentionDays
          : messageRetentionDays // ignore: cast_nullable_to_non_nullable
              as int,
      requireModeration: null == requireModeration
          ? _value.requireModeration
          : requireModeration // ignore: cast_nullable_to_non_nullable
              as bool,
      enableProfanityFilter: null == enableProfanityFilter
          ? _value.enableProfanityFilter
          : enableProfanityFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      enableAutoModeration: null == enableAutoModeration
          ? _value.enableAutoModeration
          : enableAutoModeration // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomSettingsImpl implements _ChatRoomSettings {
  const _$ChatRoomSettingsImpl(
      {required this.allowFileSharing,
      required this.allowImages,
      required this.allowLinks,
      required this.allowSpoilers,
      required this.enableReactions,
      required this.allowEditing,
      required this.allowDeletion,
      required this.messageRetentionDays,
      required this.requireModeration,
      required this.enableProfanityFilter,
      required this.enableAutoModeration});

  factory _$ChatRoomSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomSettingsImplFromJson(json);

  /// Whether file sharing is allowed
  @override
  final bool allowFileSharing;

  /// Whether images are allowed
  @override
  final bool allowImages;

  /// Whether links are allowed
  @override
  final bool allowLinks;

  /// Whether spoilers are allowed
  @override
  final bool allowSpoilers;

  /// Whether reactions are enabled
  @override
  final bool enableReactions;

  /// Whether editing is allowed
  @override
  final bool allowEditing;

  /// Whether deletion is allowed
  @override
  final bool allowDeletion;

  /// Message retention days
  @override
  final int messageRetentionDays;

  /// Whether moderation is required
  @override
  final bool requireModeration;

  /// Whether profanity filter is enabled
  @override
  final bool enableProfanityFilter;

  /// Whether auto-moderation is enabled
  @override
  final bool enableAutoModeration;

  @override
  String toString() {
    return 'ChatRoomSettings(allowFileSharing: $allowFileSharing, allowImages: $allowImages, allowLinks: $allowLinks, allowSpoilers: $allowSpoilers, enableReactions: $enableReactions, allowEditing: $allowEditing, allowDeletion: $allowDeletion, messageRetentionDays: $messageRetentionDays, requireModeration: $requireModeration, enableProfanityFilter: $enableProfanityFilter, enableAutoModeration: $enableAutoModeration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomSettingsImpl &&
            (identical(other.allowFileSharing, allowFileSharing) ||
                other.allowFileSharing == allowFileSharing) &&
            (identical(other.allowImages, allowImages) ||
                other.allowImages == allowImages) &&
            (identical(other.allowLinks, allowLinks) ||
                other.allowLinks == allowLinks) &&
            (identical(other.allowSpoilers, allowSpoilers) ||
                other.allowSpoilers == allowSpoilers) &&
            (identical(other.enableReactions, enableReactions) ||
                other.enableReactions == enableReactions) &&
            (identical(other.allowEditing, allowEditing) ||
                other.allowEditing == allowEditing) &&
            (identical(other.allowDeletion, allowDeletion) ||
                other.allowDeletion == allowDeletion) &&
            (identical(other.messageRetentionDays, messageRetentionDays) ||
                other.messageRetentionDays == messageRetentionDays) &&
            (identical(other.requireModeration, requireModeration) ||
                other.requireModeration == requireModeration) &&
            (identical(other.enableProfanityFilter, enableProfanityFilter) ||
                other.enableProfanityFilter == enableProfanityFilter) &&
            (identical(other.enableAutoModeration, enableAutoModeration) ||
                other.enableAutoModeration == enableAutoModeration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowFileSharing,
      allowImages,
      allowLinks,
      allowSpoilers,
      enableReactions,
      allowEditing,
      allowDeletion,
      messageRetentionDays,
      requireModeration,
      enableProfanityFilter,
      enableAutoModeration);

  /// Create a copy of ChatRoomSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomSettingsImplCopyWith<_$ChatRoomSettingsImpl> get copyWith =>
      __$$ChatRoomSettingsImplCopyWithImpl<_$ChatRoomSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomSettingsImplToJson(
      this,
    );
  }
}

abstract class _ChatRoomSettings implements ChatRoomSettings {
  const factory _ChatRoomSettings(
      {required final bool allowFileSharing,
      required final bool allowImages,
      required final bool allowLinks,
      required final bool allowSpoilers,
      required final bool enableReactions,
      required final bool allowEditing,
      required final bool allowDeletion,
      required final int messageRetentionDays,
      required final bool requireModeration,
      required final bool enableProfanityFilter,
      required final bool enableAutoModeration}) = _$ChatRoomSettingsImpl;

  factory _ChatRoomSettings.fromJson(Map<String, dynamic> json) =
      _$ChatRoomSettingsImpl.fromJson;

  /// Whether file sharing is allowed
  @override
  bool get allowFileSharing;

  /// Whether images are allowed
  @override
  bool get allowImages;

  /// Whether links are allowed
  @override
  bool get allowLinks;

  /// Whether spoilers are allowed
  @override
  bool get allowSpoilers;

  /// Whether reactions are enabled
  @override
  bool get enableReactions;

  /// Whether editing is allowed
  @override
  bool get allowEditing;

  /// Whether deletion is allowed
  @override
  bool get allowDeletion;

  /// Message retention days
  @override
  int get messageRetentionDays;

  /// Whether moderation is required
  @override
  bool get requireModeration;

  /// Whether profanity filter is enabled
  @override
  bool get enableProfanityFilter;

  /// Whether auto-moderation is enabled
  @override
  bool get enableAutoModeration;

  /// Create a copy of ChatRoomSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomSettingsImplCopyWith<_$ChatRoomSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
