// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_reading_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Current reading progress percentage
  double get currentProgress => throw _privateConstructorUsedError;

  /// Group's reading pace (pages per week)
  int get pagesPerWeek => throw _privateConstructorUsedError;

  /// Current week of reading
  int get currentWeek => throw _privateConstructorUsedError;

  /// Total weeks planned
  int get totalWeeks => throw _privateConstructorUsedError;

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
      int totalMembersReading,
      double currentProgress,
      int pagesPerWeek,
      int currentWeek,
      int totalWeeks});
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
    Object? currentProgress = null,
    Object? pagesPerWeek = null,
    Object? currentWeek = null,
    Object? totalWeeks = null,
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
      currentProgress: null == currentProgress
          ? _value.currentProgress
          : currentProgress // ignore: cast_nullable_to_non_nullable
              as double,
      pagesPerWeek: null == pagesPerWeek
          ? _value.pagesPerWeek
          : pagesPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      currentWeek: null == currentWeek
          ? _value.currentWeek
          : currentWeek // ignore: cast_nullable_to_non_nullable
              as int,
      totalWeeks: null == totalWeeks
          ? _value.totalWeeks
          : totalWeeks // ignore: cast_nullable_to_non_nullable
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
      int totalMembersReading,
      double currentProgress,
      int pagesPerWeek,
      int currentWeek,
      int totalWeeks});
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
    Object? currentProgress = null,
    Object? pagesPerWeek = null,
    Object? currentWeek = null,
    Object? totalWeeks = null,
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
      currentProgress: null == currentProgress
          ? _value.currentProgress
          : currentProgress // ignore: cast_nullable_to_non_nullable
              as double,
      pagesPerWeek: null == pagesPerWeek
          ? _value.pagesPerWeek
          : pagesPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      currentWeek: null == currentWeek
          ? _value.currentWeek
          : currentWeek // ignore: cast_nullable_to_non_nullable
              as int,
      totalWeeks: null == totalWeeks
          ? _value.totalWeeks
          : totalWeeks // ignore: cast_nullable_to_non_nullable
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
      required this.totalMembersReading,
      required this.currentProgress,
      required this.pagesPerWeek,
      required this.currentWeek,
      required this.totalWeeks})
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

  /// Current reading progress percentage
  @override
  final double currentProgress;

  /// Group's reading pace (pages per week)
  @override
  final int pagesPerWeek;

  /// Current week of reading
  @override
  final int currentWeek;

  /// Total weeks planned
  @override
  final int totalWeeks;

  @override
  String toString() {
    return 'GroupBookSelection(bookId: $bookId, title: $title, author: $author, coverUrl: $coverUrl, startDate: $startDate, endDate: $endDate, discussionSessions: $discussionSessions, milestones: $milestones, averageRating: $averageRating, membersFinished: $membersFinished, totalMembersReading: $totalMembersReading, currentProgress: $currentProgress, pagesPerWeek: $pagesPerWeek, currentWeek: $currentWeek, totalWeeks: $totalWeeks)';
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
                other.totalMembersReading == totalMembersReading) &&
            (identical(other.currentProgress, currentProgress) ||
                other.currentProgress == currentProgress) &&
            (identical(other.pagesPerWeek, pagesPerWeek) ||
                other.pagesPerWeek == pagesPerWeek) &&
            (identical(other.currentWeek, currentWeek) ||
                other.currentWeek == currentWeek) &&
            (identical(other.totalWeeks, totalWeeks) ||
                other.totalWeeks == totalWeeks));
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
      totalMembersReading,
      currentProgress,
      pagesPerWeek,
      currentWeek,
      totalWeeks);

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
      required final int totalMembersReading,
      required final double currentProgress,
      required final int pagesPerWeek,
      required final int currentWeek,
      required final int totalWeeks}) = _$GroupBookSelectionImpl;

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

  /// Current reading progress percentage
  @override
  double get currentProgress;

  /// Group's reading pace (pages per week)
  @override
  int get pagesPerWeek;

  /// Current week of reading
  @override
  int get currentWeek;

  /// Total weeks planned
  @override
  int get totalWeeks;

  /// Create a copy of GroupBookSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupBookSelectionImplCopyWith<_$GroupBookSelectionImpl> get copyWith =>
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

  /// Whether milestone is achieved by the group
  bool get isGroupAchieved => throw _privateConstructorUsedError;

  /// Achievement date
  DateTime? get groupAchievementDate => throw _privateConstructorUsedError;

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
      List<String> membersReached,
      bool isGroupAchieved,
      DateTime? groupAchievementDate});
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
    Object? isGroupAchieved = null,
    Object? groupAchievementDate = freezed,
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
      isGroupAchieved: null == isGroupAchieved
          ? _value.isGroupAchieved
          : isGroupAchieved // ignore: cast_nullable_to_non_nullable
              as bool,
      groupAchievementDate: freezed == groupAchievementDate
          ? _value.groupAchievementDate
          : groupAchievementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      List<String> membersReached,
      bool isGroupAchieved,
      DateTime? groupAchievementDate});
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
    Object? isGroupAchieved = null,
    Object? groupAchievementDate = freezed,
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
      isGroupAchieved: null == isGroupAchieved
          ? _value.isGroupAchieved
          : isGroupAchieved // ignore: cast_nullable_to_non_nullable
              as bool,
      groupAchievementDate: freezed == groupAchievementDate
          ? _value.groupAchievementDate
          : groupAchievementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      required final List<String> membersReached,
      required this.isGroupAchieved,
      this.groupAchievementDate})
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

  /// Whether milestone is achieved by the group
  @override
  final bool isGroupAchieved;

  /// Achievement date
  @override
  final DateTime? groupAchievementDate;

  @override
  String toString() {
    return 'ReadingMilestone(id: $id, name: $name, description: $description, target: $target, date: $date, type: $type, membersReached: $membersReached, isGroupAchieved: $isGroupAchieved, groupAchievementDate: $groupAchievementDate)';
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
                .equals(other._membersReached, _membersReached) &&
            (identical(other.isGroupAchieved, isGroupAchieved) ||
                other.isGroupAchieved == isGroupAchieved) &&
            (identical(other.groupAchievementDate, groupAchievementDate) ||
                other.groupAchievementDate == groupAchievementDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      target,
      date,
      type,
      const DeepCollectionEquality().hash(_membersReached),
      isGroupAchieved,
      groupAchievementDate);

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
      required final List<String> membersReached,
      required final bool isGroupAchieved,
      final DateTime? groupAchievementDate}) = _$ReadingMilestoneImpl;

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

  /// Whether milestone is achieved by the group
  @override
  bool get isGroupAchieved;

  /// Achievement date
  @override
  DateTime? get groupAchievementDate;

  /// Create a copy of ReadingMilestone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingMilestoneImplCopyWith<_$ReadingMilestoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscussionSession _$DiscussionSessionFromJson(Map<String, dynamic> json) {
  return DiscussionSession.fromJson(json);
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

  /// Session recording URL (if applicable)
  String? get recordingUrl => throw _privateConstructorUsedError;

  /// Session materials and resources
  List<String> get materials => throw _privateConstructorUsedError;

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
      bool isCompleted,
      String? recordingUrl,
      List<String> materials});
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
    Object? recordingUrl = freezed,
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
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      bool isCompleted,
      String? recordingUrl,
      List<String> materials});
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
    Object? recordingUrl = freezed,
    Object? materials = null,
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
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscussionSessionImpl implements DiscussionSession {
  const _$DiscussionSessionImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.sessionDateTime,
      required this.durationMinutes,
      required this.hostId,
      required final List<String> participants,
      this.notes,
      required this.isCompleted,
      this.recordingUrl,
      required final List<String> materials})
      : _participants = participants,
        _materials = materials;

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

  /// Session recording URL (if applicable)
  @override
  final String? recordingUrl;

  /// Session materials and resources
  final List<String> _materials;

  /// Session materials and resources
  @override
  List<String> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  String toString() {
    return 'DiscussionSession(id: $id, title: $title, description: $description, sessionDateTime: $sessionDateTime, durationMinutes: $durationMinutes, hostId: $hostId, participants: $participants, notes: $notes, isCompleted: $isCompleted, recordingUrl: $recordingUrl, materials: $materials)';
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
                other.isCompleted == isCompleted) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials));
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
      isCompleted,
      recordingUrl,
      const DeepCollectionEquality().hash(_materials));

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

abstract class DiscussionSession implements DiscussionSession {
  const factory DiscussionSession(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime sessionDateTime,
      required final int durationMinutes,
      required final String hostId,
      required final List<String> participants,
      final String? notes,
      required final bool isCompleted,
      final String? recordingUrl,
      required final List<String> materials}) = _$DiscussionSessionImpl;

  factory DiscussionSession.fromJson(Map<String, dynamic> json) =
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

  /// Session recording URL (if applicable)
  @override
  String? get recordingUrl;

  /// Session materials and resources
  @override
  List<String> get materials;

  /// Create a copy of DiscussionSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionSessionImplCopyWith<_$DiscussionSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberReadingProgress _$MemberReadingProgressFromJson(
    Map<String, dynamic> json) {
  return MemberReadingProgress.fromJson(json);
}

/// @nodoc
mixin _$MemberReadingProgress {
  /// User ID
  String get userId => throw _privateConstructorUsedError;

  /// User's display name
  String get displayName => throw _privateConstructorUsedError;

  /// User's profile picture URL
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// Current page number
  int get currentPage => throw _privateConstructorUsedError;

  /// Total pages in the book
  int get totalPages => throw _privateConstructorUsedError;

  /// Reading progress percentage
  double get progressPercentage => throw _privateConstructorUsedError;

  /// Reading status
  ReadingStatus get status => throw _privateConstructorUsedError;

  /// Last updated date
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Reading speed (pages per day)
  double get readingSpeed => throw _privateConstructorUsedError;

  /// Estimated completion date
  DateTime? get estimatedCompletion => throw _privateConstructorUsedError;

  /// Reading notes
  String? get notes => throw _privateConstructorUsedError;

  /// Whether user is on track with group pace
  bool get isOnTrack => throw _privateConstructorUsedError;

  /// Days ahead/behind schedule
  int get daysOffSchedule => throw _privateConstructorUsedError;

  /// Serializes this MemberReadingProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberReadingProgressCopyWith<MemberReadingProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberReadingProgressCopyWith<$Res> {
  factory $MemberReadingProgressCopyWith(MemberReadingProgress value,
          $Res Function(MemberReadingProgress) then) =
      _$MemberReadingProgressCopyWithImpl<$Res, MemberReadingProgress>;
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? profilePictureUrl,
      int currentPage,
      int totalPages,
      double progressPercentage,
      ReadingStatus status,
      DateTime lastUpdated,
      double readingSpeed,
      DateTime? estimatedCompletion,
      String? notes,
      bool isOnTrack,
      int daysOffSchedule});
}

/// @nodoc
class _$MemberReadingProgressCopyWithImpl<$Res,
        $Val extends MemberReadingProgress>
    implements $MemberReadingProgressCopyWith<$Res> {
  _$MemberReadingProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? progressPercentage = null,
    Object? status = null,
    Object? lastUpdated = null,
    Object? readingSpeed = null,
    Object? estimatedCompletion = freezed,
    Object? notes = freezed,
    Object? isOnTrack = null,
    Object? daysOffSchedule = null,
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
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      progressPercentage: null == progressPercentage
          ? _value.progressPercentage
          : progressPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReadingStatus,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readingSpeed: null == readingSpeed
          ? _value.readingSpeed
          : readingSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedCompletion: freezed == estimatedCompletion
          ? _value.estimatedCompletion
          : estimatedCompletion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnTrack: null == isOnTrack
          ? _value.isOnTrack
          : isOnTrack // ignore: cast_nullable_to_non_nullable
              as bool,
      daysOffSchedule: null == daysOffSchedule
          ? _value.daysOffSchedule
          : daysOffSchedule // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberReadingProgressImplCopyWith<$Res>
    implements $MemberReadingProgressCopyWith<$Res> {
  factory _$$MemberReadingProgressImplCopyWith(
          _$MemberReadingProgressImpl value,
          $Res Function(_$MemberReadingProgressImpl) then) =
      __$$MemberReadingProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? profilePictureUrl,
      int currentPage,
      int totalPages,
      double progressPercentage,
      ReadingStatus status,
      DateTime lastUpdated,
      double readingSpeed,
      DateTime? estimatedCompletion,
      String? notes,
      bool isOnTrack,
      int daysOffSchedule});
}

/// @nodoc
class __$$MemberReadingProgressImplCopyWithImpl<$Res>
    extends _$MemberReadingProgressCopyWithImpl<$Res,
        _$MemberReadingProgressImpl>
    implements _$$MemberReadingProgressImplCopyWith<$Res> {
  __$$MemberReadingProgressImplCopyWithImpl(_$MemberReadingProgressImpl _value,
      $Res Function(_$MemberReadingProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? progressPercentage = null,
    Object? status = null,
    Object? lastUpdated = null,
    Object? readingSpeed = null,
    Object? estimatedCompletion = freezed,
    Object? notes = freezed,
    Object? isOnTrack = null,
    Object? daysOffSchedule = null,
  }) {
    return _then(_$MemberReadingProgressImpl(
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
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      progressPercentage: null == progressPercentage
          ? _value.progressPercentage
          : progressPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReadingStatus,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readingSpeed: null == readingSpeed
          ? _value.readingSpeed
          : readingSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedCompletion: freezed == estimatedCompletion
          ? _value.estimatedCompletion
          : estimatedCompletion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnTrack: null == isOnTrack
          ? _value.isOnTrack
          : isOnTrack // ignore: cast_nullable_to_non_nullable
              as bool,
      daysOffSchedule: null == daysOffSchedule
          ? _value.daysOffSchedule
          : daysOffSchedule // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberReadingProgressImpl implements MemberReadingProgress {
  const _$MemberReadingProgressImpl(
      {required this.userId,
      required this.displayName,
      this.profilePictureUrl,
      required this.currentPage,
      required this.totalPages,
      required this.progressPercentage,
      required this.status,
      required this.lastUpdated,
      required this.readingSpeed,
      this.estimatedCompletion,
      this.notes,
      required this.isOnTrack,
      required this.daysOffSchedule});

  factory _$MemberReadingProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberReadingProgressImplFromJson(json);

  /// User ID
  @override
  final String userId;

  /// User's display name
  @override
  final String displayName;

  /// User's profile picture URL
  @override
  final String? profilePictureUrl;

  /// Current page number
  @override
  final int currentPage;

  /// Total pages in the book
  @override
  final int totalPages;

  /// Reading progress percentage
  @override
  final double progressPercentage;

  /// Reading status
  @override
  final ReadingStatus status;

  /// Last updated date
  @override
  final DateTime lastUpdated;

  /// Reading speed (pages per day)
  @override
  final double readingSpeed;

  /// Estimated completion date
  @override
  final DateTime? estimatedCompletion;

  /// Reading notes
  @override
  final String? notes;

  /// Whether user is on track with group pace
  @override
  final bool isOnTrack;

  /// Days ahead/behind schedule
  @override
  final int daysOffSchedule;

  @override
  String toString() {
    return 'MemberReadingProgress(userId: $userId, displayName: $displayName, profilePictureUrl: $profilePictureUrl, currentPage: $currentPage, totalPages: $totalPages, progressPercentage: $progressPercentage, status: $status, lastUpdated: $lastUpdated, readingSpeed: $readingSpeed, estimatedCompletion: $estimatedCompletion, notes: $notes, isOnTrack: $isOnTrack, daysOffSchedule: $daysOffSchedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberReadingProgressImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.readingSpeed, readingSpeed) ||
                other.readingSpeed == readingSpeed) &&
            (identical(other.estimatedCompletion, estimatedCompletion) ||
                other.estimatedCompletion == estimatedCompletion) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.isOnTrack, isOnTrack) ||
                other.isOnTrack == isOnTrack) &&
            (identical(other.daysOffSchedule, daysOffSchedule) ||
                other.daysOffSchedule == daysOffSchedule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      displayName,
      profilePictureUrl,
      currentPage,
      totalPages,
      progressPercentage,
      status,
      lastUpdated,
      readingSpeed,
      estimatedCompletion,
      notes,
      isOnTrack,
      daysOffSchedule);

  /// Create a copy of MemberReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberReadingProgressImplCopyWith<_$MemberReadingProgressImpl>
      get copyWith => __$$MemberReadingProgressImplCopyWithImpl<
          _$MemberReadingProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberReadingProgressImplToJson(
      this,
    );
  }
}

abstract class MemberReadingProgress implements MemberReadingProgress {
  const factory MemberReadingProgress(
      {required final String userId,
      required final String displayName,
      final String? profilePictureUrl,
      required final int currentPage,
      required final int totalPages,
      required final double progressPercentage,
      required final ReadingStatus status,
      required final DateTime lastUpdated,
      required final double readingSpeed,
      final DateTime? estimatedCompletion,
      final String? notes,
      required final bool isOnTrack,
      required final int daysOffSchedule}) = _$MemberReadingProgressImpl;

  factory MemberReadingProgress.fromJson(Map<String, dynamic> json) =
      _$MemberReadingProgressImpl.fromJson;

  /// User ID
  @override
  String get userId;

  /// User's display name
  @override
  String get displayName;

  /// User's profile picture URL
  @override
  String? get profilePictureUrl;

  /// Current page number
  @override
  int get currentPage;

  /// Total pages in the book
  @override
  int get totalPages;

  /// Reading progress percentage
  @override
  double get progressPercentage;

  /// Reading status
  @override
  ReadingStatus get status;

  /// Last updated date
  @override
  DateTime get lastUpdated;

  /// Reading speed (pages per day)
  @override
  double get readingSpeed;

  /// Estimated completion date
  @override
  DateTime? get estimatedCompletion;

  /// Reading notes
  @override
  String? get notes;

  /// Whether user is on track with group pace
  @override
  bool get isOnTrack;

  /// Days ahead/behind schedule
  @override
  int get daysOffSchedule;

  /// Create a copy of MemberReadingProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberReadingProgressImplCopyWith<_$MemberReadingProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupReadingChallenge _$GroupReadingChallengeFromJson(
    Map<String, dynamic> json) {
  return GroupReadingChallenge.fromJson(json);
}

/// @nodoc
mixin _$GroupReadingChallenge {
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

  /// Challenge type
  ChallengeType get type => throw _privateConstructorUsedError;

  /// Challenge difficulty
  ChallengeDifficulty get difficulty => throw _privateConstructorUsedError;

  /// Whether challenge is active
  bool get isActive => throw _privateConstructorUsedError;

  /// Challenge progress tracking
  ChallengeProgress get progress => throw _privateConstructorUsedError;

  /// Serializes this GroupReadingChallenge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupReadingChallengeCopyWith<GroupReadingChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupReadingChallengeCopyWith<$Res> {
  factory $GroupReadingChallengeCopyWith(GroupReadingChallenge value,
          $Res Function(GroupReadingChallenge) then) =
      _$GroupReadingChallengeCopyWithImpl<$Res, GroupReadingChallenge>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      List<String> rules,
      List<ChallengeParticipant> participants,
      List<String> rewards,
      ChallengeType type,
      ChallengeDifficulty difficulty,
      bool isActive,
      ChallengeProgress progress});

  $ChallengeProgressCopyWith<$Res> get progress;
}

/// @nodoc
class _$GroupReadingChallengeCopyWithImpl<$Res,
        $Val extends GroupReadingChallenge>
    implements $GroupReadingChallengeCopyWith<$Res> {
  _$GroupReadingChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupReadingChallenge
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
    Object? type = null,
    Object? difficulty = null,
    Object? isActive = null,
    Object? progress = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChallengeType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as ChallengeDifficulty,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as ChallengeProgress,
    ) as $Val);
  }

  /// Create a copy of GroupReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChallengeProgressCopyWith<$Res> get progress {
    return $ChallengeProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupReadingChallengeImplCopyWith<$Res>
    implements $GroupReadingChallengeCopyWith<$Res> {
  factory _$$GroupReadingChallengeImplCopyWith(
          _$GroupReadingChallengeImpl value,
          $Res Function(_$GroupReadingChallengeImpl) then) =
      __$$GroupReadingChallengeImplCopyWithImpl<$Res>;
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
      List<String> rewards,
      ChallengeType type,
      ChallengeDifficulty difficulty,
      bool isActive,
      ChallengeProgress progress});

  @override
  $ChallengeProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$GroupReadingChallengeImplCopyWithImpl<$Res>
    extends _$GroupReadingChallengeCopyWithImpl<$Res,
        _$GroupReadingChallengeImpl>
    implements _$$GroupReadingChallengeImplCopyWith<$Res> {
  __$$GroupReadingChallengeImplCopyWithImpl(_$GroupReadingChallengeImpl _value,
      $Res Function(_$GroupReadingChallengeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupReadingChallenge
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
    Object? type = null,
    Object? difficulty = null,
    Object? isActive = null,
    Object? progress = null,
  }) {
    return _then(_$GroupReadingChallengeImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChallengeType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as ChallengeDifficulty,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as ChallengeProgress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupReadingChallengeImpl implements GroupReadingChallenge {
  const _$GroupReadingChallengeImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required final List<String> rules,
      required final List<ChallengeParticipant> participants,
      required final List<String> rewards,
      required this.type,
      required this.difficulty,
      required this.isActive,
      required this.progress})
      : _rules = rules,
        _participants = participants,
        _rewards = rewards;

  factory _$GroupReadingChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupReadingChallengeImplFromJson(json);

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

  /// Challenge type
  @override
  final ChallengeType type;

  /// Challenge difficulty
  @override
  final ChallengeDifficulty difficulty;

  /// Whether challenge is active
  @override
  final bool isActive;

  /// Challenge progress tracking
  @override
  final ChallengeProgress progress;

  @override
  String toString() {
    return 'GroupReadingChallenge(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, rules: $rules, participants: $participants, rewards: $rewards, type: $type, difficulty: $difficulty, isActive: $isActive, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupReadingChallengeImpl &&
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
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
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
      const DeepCollectionEquality().hash(_rewards),
      type,
      difficulty,
      isActive,
      progress);

  /// Create a copy of GroupReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupReadingChallengeImplCopyWith<_$GroupReadingChallengeImpl>
      get copyWith => __$$GroupReadingChallengeImplCopyWithImpl<
          _$GroupReadingChallengeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupReadingChallengeImplToJson(
      this,
    );
  }
}

abstract class GroupReadingChallenge implements GroupReadingChallenge {
  const factory GroupReadingChallenge(
      {required final String id,
      required final String name,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final List<String> rules,
      required final List<ChallengeParticipant> participants,
      required final List<String> rewards,
      required final ChallengeType type,
      required final ChallengeDifficulty difficulty,
      required final bool isActive,
      required final ChallengeProgress progress}) = _$GroupReadingChallengeImpl;

  factory GroupReadingChallenge.fromJson(Map<String, dynamic> json) =
      _$GroupReadingChallengeImpl.fromJson;

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

  /// Challenge type
  @override
  ChallengeType get type;

  /// Challenge difficulty
  @override
  ChallengeDifficulty get difficulty;

  /// Whether challenge is active
  @override
  bool get isActive;

  /// Challenge progress tracking
  @override
  ChallengeProgress get progress;

  /// Create a copy of GroupReadingChallenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupReadingChallengeImplCopyWith<_$GroupReadingChallengeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChallengeParticipant _$ChallengeParticipantFromJson(Map<String, dynamic> json) {
  return ChallengeParticipant.fromJson(json);
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

  /// Completion date
  DateTime? get completionDate => throw _privateConstructorUsedError;

  /// User's score/points
  int get score => throw _privateConstructorUsedError;

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
      bool isCompleted,
      DateTime? completionDate,
      int score});
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
    Object? completionDate = freezed,
    Object? score = null,
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
      completionDate: freezed == completionDate
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
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
      bool isCompleted,
      DateTime? completionDate,
      int score});
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
    Object? completionDate = freezed,
    Object? score = null,
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
      completionDate: freezed == completionDate
          ? _value.completionDate
          : completionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeParticipantImpl implements ChallengeParticipant {
  const _$ChallengeParticipantImpl(
      {required this.userId,
      required this.displayName,
      required this.progress,
      required this.rank,
      required this.isCompleted,
      this.completionDate,
      required this.score});

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

  /// Completion date
  @override
  final DateTime? completionDate;

  /// User's score/points
  @override
  final int score;

  @override
  String toString() {
    return 'ChallengeParticipant(userId: $userId, displayName: $displayName, progress: $progress, rank: $rank, isCompleted: $isCompleted, completionDate: $completionDate, score: $score)';
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
                other.isCompleted == isCompleted) &&
            (identical(other.completionDate, completionDate) ||
                other.completionDate == completionDate) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, displayName, progress,
      rank, isCompleted, completionDate, score);

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

abstract class ChallengeParticipant implements ChallengeParticipant {
  const factory ChallengeParticipant(
      {required final String userId,
      required final String displayName,
      required final int progress,
      required final int rank,
      required final bool isCompleted,
      final DateTime? completionDate,
      required final int score}) = _$ChallengeParticipantImpl;

  factory ChallengeParticipant.fromJson(Map<String, dynamic> json) =
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

  /// Completion date
  @override
  DateTime? get completionDate;

  /// User's score/points
  @override
  int get score;

  /// Create a copy of ChallengeParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeParticipantImplCopyWith<_$ChallengeParticipantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChallengeProgress _$ChallengeProgressFromJson(Map<String, dynamic> json) {
  return ChallengeProgress.fromJson(json);
}

/// @nodoc
mixin _$ChallengeProgress {
  /// Total participants
  int get totalParticipants => throw _privateConstructorUsedError;

  /// Participants who completed
  int get participantsCompleted => throw _privateConstructorUsedError;

  /// Average progress percentage
  double get averageProgress => throw _privateConstructorUsedError;

  /// Challenge leaderboard
  List<ChallengeParticipant> get leaderboard =>
      throw _privateConstructorUsedError;

  /// Group's overall progress
  double get groupProgress => throw _privateConstructorUsedError;

  /// Days remaining
  int get daysRemaining => throw _privateConstructorUsedError;

  /// Whether challenge is on track
  bool get isOnTrack => throw _privateConstructorUsedError;

  /// Serializes this ChallengeProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengeProgressCopyWith<ChallengeProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeProgressCopyWith<$Res> {
  factory $ChallengeProgressCopyWith(
          ChallengeProgress value, $Res Function(ChallengeProgress) then) =
      _$ChallengeProgressCopyWithImpl<$Res, ChallengeProgress>;
  @useResult
  $Res call(
      {int totalParticipants,
      int participantsCompleted,
      double averageProgress,
      List<ChallengeParticipant> leaderboard,
      double groupProgress,
      int daysRemaining,
      bool isOnTrack});
}

/// @nodoc
class _$ChallengeProgressCopyWithImpl<$Res, $Val extends ChallengeProgress>
    implements $ChallengeProgressCopyWith<$Res> {
  _$ChallengeProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalParticipants = null,
    Object? participantsCompleted = null,
    Object? averageProgress = null,
    Object? leaderboard = null,
    Object? groupProgress = null,
    Object? daysRemaining = null,
    Object? isOnTrack = null,
  }) {
    return _then(_value.copyWith(
      totalParticipants: null == totalParticipants
          ? _value.totalParticipants
          : totalParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      participantsCompleted: null == participantsCompleted
          ? _value.participantsCompleted
          : participantsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      averageProgress: null == averageProgress
          ? _value.averageProgress
          : averageProgress // ignore: cast_nullable_to_non_nullable
              as double,
      leaderboard: null == leaderboard
          ? _value.leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as List<ChallengeParticipant>,
      groupProgress: null == groupProgress
          ? _value.groupProgress
          : groupProgress // ignore: cast_nullable_to_non_nullable
              as double,
      daysRemaining: null == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      isOnTrack: null == isOnTrack
          ? _value.isOnTrack
          : isOnTrack // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeProgressImplCopyWith<$Res>
    implements $ChallengeProgressCopyWith<$Res> {
  factory _$$ChallengeProgressImplCopyWith(_$ChallengeProgressImpl value,
          $Res Function(_$ChallengeProgressImpl) then) =
      __$$ChallengeProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalParticipants,
      int participantsCompleted,
      double averageProgress,
      List<ChallengeParticipant> leaderboard,
      double groupProgress,
      int daysRemaining,
      bool isOnTrack});
}

/// @nodoc
class __$$ChallengeProgressImplCopyWithImpl<$Res>
    extends _$ChallengeProgressCopyWithImpl<$Res, _$ChallengeProgressImpl>
    implements _$$ChallengeProgressImplCopyWith<$Res> {
  __$$ChallengeProgressImplCopyWithImpl(_$ChallengeProgressImpl _value,
      $Res Function(_$ChallengeProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalParticipants = null,
    Object? participantsCompleted = null,
    Object? averageProgress = null,
    Object? leaderboard = null,
    Object? groupProgress = null,
    Object? daysRemaining = null,
    Object? isOnTrack = null,
  }) {
    return _then(_$ChallengeProgressImpl(
      totalParticipants: null == totalParticipants
          ? _value.totalParticipants
          : totalParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      participantsCompleted: null == participantsCompleted
          ? _value.participantsCompleted
          : participantsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      averageProgress: null == averageProgress
          ? _value.averageProgress
          : averageProgress // ignore: cast_nullable_to_non_nullable
              as double,
      leaderboard: null == leaderboard
          ? _value._leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as List<ChallengeParticipant>,
      groupProgress: null == groupProgress
          ? _value.groupProgress
          : groupProgress // ignore: cast_nullable_to_non_nullable
              as double,
      daysRemaining: null == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      isOnTrack: null == isOnTrack
          ? _value.isOnTrack
          : isOnTrack // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeProgressImpl implements ChallengeProgress {
  const _$ChallengeProgressImpl(
      {required this.totalParticipants,
      required this.participantsCompleted,
      required this.averageProgress,
      required final List<ChallengeParticipant> leaderboard,
      required this.groupProgress,
      required this.daysRemaining,
      required this.isOnTrack})
      : _leaderboard = leaderboard;

  factory _$ChallengeProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeProgressImplFromJson(json);

  /// Total participants
  @override
  final int totalParticipants;

  /// Participants who completed
  @override
  final int participantsCompleted;

  /// Average progress percentage
  @override
  final double averageProgress;

  /// Challenge leaderboard
  final List<ChallengeParticipant> _leaderboard;

  /// Challenge leaderboard
  @override
  List<ChallengeParticipant> get leaderboard {
    if (_leaderboard is EqualUnmodifiableListView) return _leaderboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaderboard);
  }

  /// Group's overall progress
  @override
  final double groupProgress;

  /// Days remaining
  @override
  final int daysRemaining;

  /// Whether challenge is on track
  @override
  final bool isOnTrack;

  @override
  String toString() {
    return 'ChallengeProgress(totalParticipants: $totalParticipants, participantsCompleted: $participantsCompleted, averageProgress: $averageProgress, leaderboard: $leaderboard, groupProgress: $groupProgress, daysRemaining: $daysRemaining, isOnTrack: $isOnTrack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeProgressImpl &&
            (identical(other.totalParticipants, totalParticipants) ||
                other.totalParticipants == totalParticipants) &&
            (identical(other.participantsCompleted, participantsCompleted) ||
                other.participantsCompleted == participantsCompleted) &&
            (identical(other.averageProgress, averageProgress) ||
                other.averageProgress == averageProgress) &&
            const DeepCollectionEquality()
                .equals(other._leaderboard, _leaderboard) &&
            (identical(other.groupProgress, groupProgress) ||
                other.groupProgress == groupProgress) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
            (identical(other.isOnTrack, isOnTrack) ||
                other.isOnTrack == isOnTrack));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalParticipants,
      participantsCompleted,
      averageProgress,
      const DeepCollectionEquality().hash(_leaderboard),
      groupProgress,
      daysRemaining,
      isOnTrack);

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeProgressImplCopyWith<_$ChallengeProgressImpl> get copyWith =>
      __$$ChallengeProgressImplCopyWithImpl<_$ChallengeProgressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeProgressImplToJson(
      this,
    );
  }
}

abstract class ChallengeProgress implements ChallengeProgress {
  const factory ChallengeProgress(
      {required final int totalParticipants,
      required final int participantsCompleted,
      required final double averageProgress,
      required final List<ChallengeParticipant> leaderboard,
      required final double groupProgress,
      required final int daysRemaining,
      required final bool isOnTrack}) = _$ChallengeProgressImpl;

  factory ChallengeProgress.fromJson(Map<String, dynamic> json) =
      _$ChallengeProgressImpl.fromJson;

  /// Total participants
  @override
  int get totalParticipants;

  /// Participants who completed
  @override
  int get participantsCompleted;

  /// Average progress percentage
  @override
  double get averageProgress;

  /// Challenge leaderboard
  @override
  List<ChallengeParticipant> get leaderboard;

  /// Group's overall progress
  @override
  double get groupProgress;

  /// Days remaining
  @override
  int get daysRemaining;

  /// Whether challenge is on track
  @override
  bool get isOnTrack;

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeProgressImplCopyWith<_$ChallengeProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
