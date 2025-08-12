// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collaborative_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollaborativeListEntity _$CollaborativeListEntityFromJson(
    Map<String, dynamic> json) {
  return _CollaborativeListEntity.fromJson(json);
}

/// @nodoc
mixin _$CollaborativeListEntity {
  /// List ID
  String get id => throw _privateConstructorUsedError;

  /// List name
  String get name => throw _privateConstructorUsedError;

  /// List description
  String get description => throw _privateConstructorUsedError;

  /// List creator ID
  String get creatorId => throw _privateConstructorUsedError;

  /// List type
  CollaborativeListType get type => throw _privateConstructorUsedError;

  /// List visibility
  ListVisibility get visibility => throw _privateConstructorUsedError;

  /// List members (user IDs)
  List<String> get memberIds => throw _privateConstructorUsedError;

  /// List moderators (user IDs)
  List<String> get moderatorIds => throw _privateConstructorUsedError;

  /// List books
  List<CollaborativeBookEntity> get books => throw _privateConstructorUsedError;

  /// List tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// List creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// List last updated date
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// List settings
  CollaborativeListSettings get settings => throw _privateConstructorUsedError;

  /// List statistics
  CollaborativeListStats get stats => throw _privateConstructorUsedError;

  /// Serializes this CollaborativeListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaborativeListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaborativeListEntityCopyWith<CollaborativeListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaborativeListEntityCopyWith<$Res> {
  factory $CollaborativeListEntityCopyWith(CollaborativeListEntity value,
          $Res Function(CollaborativeListEntity) then) =
      _$CollaborativeListEntityCopyWithImpl<$Res, CollaborativeListEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String creatorId,
      CollaborativeListType type,
      ListVisibility visibility,
      List<String> memberIds,
      List<String> moderatorIds,
      List<CollaborativeBookEntity> books,
      List<String> tags,
      DateTime dateCreated,
      DateTime dateUpdated,
      CollaborativeListSettings settings,
      CollaborativeListStats stats});

  $CollaborativeListSettingsCopyWith<$Res> get settings;
  $CollaborativeListStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$CollaborativeListEntityCopyWithImpl<$Res,
        $Val extends CollaborativeListEntity>
    implements $CollaborativeListEntityCopyWith<$Res> {
  _$CollaborativeListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaborativeListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? creatorId = null,
    Object? type = null,
    Object? visibility = null,
    Object? memberIds = null,
    Object? moderatorIds = null,
    Object? books = null,
    Object? tags = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? settings = null,
    Object? stats = null,
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CollaborativeListType,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ListVisibility,
      memberIds: null == memberIds
          ? _value.memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderatorIds: null == moderatorIds
          ? _value.moderatorIds
          : moderatorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<CollaborativeBookEntity>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as CollaborativeListSettings,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as CollaborativeListStats,
    ) as $Val);
  }

  /// Create a copy of CollaborativeListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollaborativeListSettingsCopyWith<$Res> get settings {
    return $CollaborativeListSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of CollaborativeListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollaborativeListStatsCopyWith<$Res> get stats {
    return $CollaborativeListStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollaborativeListEntityImplCopyWith<$Res>
    implements $CollaborativeListEntityCopyWith<$Res> {
  factory _$$CollaborativeListEntityImplCopyWith(
          _$CollaborativeListEntityImpl value,
          $Res Function(_$CollaborativeListEntityImpl) then) =
      __$$CollaborativeListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String creatorId,
      CollaborativeListType type,
      ListVisibility visibility,
      List<String> memberIds,
      List<String> moderatorIds,
      List<CollaborativeBookEntity> books,
      List<String> tags,
      DateTime dateCreated,
      DateTime dateUpdated,
      CollaborativeListSettings settings,
      CollaborativeListStats stats});

  @override
  $CollaborativeListSettingsCopyWith<$Res> get settings;
  @override
  $CollaborativeListStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$CollaborativeListEntityImplCopyWithImpl<$Res>
    extends _$CollaborativeListEntityCopyWithImpl<$Res,
        _$CollaborativeListEntityImpl>
    implements _$$CollaborativeListEntityImplCopyWith<$Res> {
  __$$CollaborativeListEntityImplCopyWithImpl(
      _$CollaborativeListEntityImpl _value,
      $Res Function(_$CollaborativeListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollaborativeListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? creatorId = null,
    Object? type = null,
    Object? visibility = null,
    Object? memberIds = null,
    Object? moderatorIds = null,
    Object? books = null,
    Object? tags = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? settings = null,
    Object? stats = null,
  }) {
    return _then(_$CollaborativeListEntityImpl(
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CollaborativeListType,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ListVisibility,
      memberIds: null == memberIds
          ? _value._memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderatorIds: null == moderatorIds
          ? _value._moderatorIds
          : moderatorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<CollaborativeBookEntity>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as CollaborativeListSettings,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as CollaborativeListStats,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaborativeListEntityImpl implements _CollaborativeListEntity {
  const _$CollaborativeListEntityImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.creatorId,
      required this.type,
      required this.visibility,
      required final List<String> memberIds,
      required final List<String> moderatorIds,
      required final List<CollaborativeBookEntity> books,
      required final List<String> tags,
      required this.dateCreated,
      required this.dateUpdated,
      required this.settings,
      required this.stats})
      : _memberIds = memberIds,
        _moderatorIds = moderatorIds,
        _books = books,
        _tags = tags;

  factory _$CollaborativeListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaborativeListEntityImplFromJson(json);

  /// List ID
  @override
  final String id;

  /// List name
  @override
  final String name;

  /// List description
  @override
  final String description;

  /// List creator ID
  @override
  final String creatorId;

  /// List type
  @override
  final CollaborativeListType type;

  /// List visibility
  @override
  final ListVisibility visibility;

  /// List members (user IDs)
  final List<String> _memberIds;

  /// List members (user IDs)
  @override
  List<String> get memberIds {
    if (_memberIds is EqualUnmodifiableListView) return _memberIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberIds);
  }

  /// List moderators (user IDs)
  final List<String> _moderatorIds;

  /// List moderators (user IDs)
  @override
  List<String> get moderatorIds {
    if (_moderatorIds is EqualUnmodifiableListView) return _moderatorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderatorIds);
  }

  /// List books
  final List<CollaborativeBookEntity> _books;

  /// List books
  @override
  List<CollaborativeBookEntity> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  /// List tags
  final List<String> _tags;

  /// List tags
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// List creation date
  @override
  final DateTime dateCreated;

  /// List last updated date
  @override
  final DateTime dateUpdated;

  /// List settings
  @override
  final CollaborativeListSettings settings;

  /// List statistics
  @override
  final CollaborativeListStats stats;

  @override
  String toString() {
    return 'CollaborativeListEntity(id: $id, name: $name, description: $description, creatorId: $creatorId, type: $type, visibility: $visibility, memberIds: $memberIds, moderatorIds: $moderatorIds, books: $books, tags: $tags, dateCreated: $dateCreated, dateUpdated: $dateUpdated, settings: $settings, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaborativeListEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            const DeepCollectionEquality()
                .equals(other._memberIds, _memberIds) &&
            const DeepCollectionEquality()
                .equals(other._moderatorIds, _moderatorIds) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      creatorId,
      type,
      visibility,
      const DeepCollectionEquality().hash(_memberIds),
      const DeepCollectionEquality().hash(_moderatorIds),
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_tags),
      dateCreated,
      dateUpdated,
      settings,
      stats);

  /// Create a copy of CollaborativeListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaborativeListEntityImplCopyWith<_$CollaborativeListEntityImpl>
      get copyWith => __$$CollaborativeListEntityImplCopyWithImpl<
          _$CollaborativeListEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaborativeListEntityImplToJson(
      this,
    );
  }
}

abstract class _CollaborativeListEntity implements CollaborativeListEntity {
  const factory _CollaborativeListEntity(
          {required final String id,
          required final String name,
          required final String description,
          required final String creatorId,
          required final CollaborativeListType type,
          required final ListVisibility visibility,
          required final List<String> memberIds,
          required final List<String> moderatorIds,
          required final List<CollaborativeBookEntity> books,
          required final List<String> tags,
          required final DateTime dateCreated,
          required final DateTime dateUpdated,
          required final CollaborativeListSettings settings,
          required final CollaborativeListStats stats}) =
      _$CollaborativeListEntityImpl;

  factory _CollaborativeListEntity.fromJson(Map<String, dynamic> json) =
      _$CollaborativeListEntityImpl.fromJson;

  /// List ID
  @override
  String get id;

  /// List name
  @override
  String get name;

  /// List description
  @override
  String get description;

  /// List creator ID
  @override
  String get creatorId;

  /// List type
  @override
  CollaborativeListType get type;

  /// List visibility
  @override
  ListVisibility get visibility;

  /// List members (user IDs)
  @override
  List<String> get memberIds;

  /// List moderators (user IDs)
  @override
  List<String> get moderatorIds;

  /// List books
  @override
  List<CollaborativeBookEntity> get books;

  /// List tags
  @override
  List<String> get tags;

  /// List creation date
  @override
  DateTime get dateCreated;

  /// List last updated date
  @override
  DateTime get dateUpdated;

  /// List settings
  @override
  CollaborativeListSettings get settings;

  /// List statistics
  @override
  CollaborativeListStats get stats;

  /// Create a copy of CollaborativeListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaborativeListEntityImplCopyWith<_$CollaborativeListEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CollaborativeBookEntity _$CollaborativeBookEntityFromJson(
    Map<String, dynamic> json) {
  return _CollaborativeBookEntity.fromJson(json);
}

/// @nodoc
mixin _$CollaborativeBookEntity {
  /// Book ID
  String get bookId => throw _privateConstructorUsedError;

  /// Book title
  String get title => throw _privateConstructorUsedError;

  /// Book author
  String get author => throw _privateConstructorUsedError;

  /// Book cover URL
  String? get coverUrl => throw _privateConstructorUsedError;

  /// Added by user ID
  String get addedByUserId => throw _privateConstructorUsedError;

  /// Added date
  DateTime get addedDate => throw _privateConstructorUsedError;

  /// Book status in the list
  BookListStatus get status => throw _privateConstructorUsedError;

  /// User notes about the book
  String? get userNotes => throw _privateConstructorUsedError;

  /// Rating given by user
  double? get userRating => throw _privateConstructorUsedError;

  /// Reading progress
  ReadingProgressEntity? get readingProgress =>
      throw _privateConstructorUsedError;

  /// Discussion threads
  List<DiscussionThreadEntity> get discussionThreads =>
      throw _privateConstructorUsedError;

  /// Serializes this CollaborativeBookEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaborativeBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaborativeBookEntityCopyWith<CollaborativeBookEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaborativeBookEntityCopyWith<$Res> {
  factory $CollaborativeBookEntityCopyWith(CollaborativeBookEntity value,
          $Res Function(CollaborativeBookEntity) then) =
      _$CollaborativeBookEntityCopyWithImpl<$Res, CollaborativeBookEntity>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String? coverUrl,
      String addedByUserId,
      DateTime addedDate,
      BookListStatus status,
      String? userNotes,
      double? userRating,
      ReadingProgressEntity? readingProgress,
      List<DiscussionThreadEntity> discussionThreads});

  $ReadingProgressEntityCopyWith<$Res>? get readingProgress;
}

/// @nodoc
class _$CollaborativeBookEntityCopyWithImpl<$Res,
        $Val extends CollaborativeBookEntity>
    implements $CollaborativeBookEntityCopyWith<$Res> {
  _$CollaborativeBookEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaborativeBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? coverUrl = freezed,
    Object? addedByUserId = null,
    Object? addedDate = null,
    Object? status = null,
    Object? userNotes = freezed,
    Object? userRating = freezed,
    Object? readingProgress = freezed,
    Object? discussionThreads = null,
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
      addedByUserId: null == addedByUserId
          ? _value.addedByUserId
          : addedByUserId // ignore: cast_nullable_to_non_nullable
              as String,
      addedDate: null == addedDate
          ? _value.addedDate
          : addedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookListStatus,
      userNotes: freezed == userNotes
          ? _value.userNotes
          : userNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
      readingProgress: freezed == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as ReadingProgressEntity?,
      discussionThreads: null == discussionThreads
          ? _value.discussionThreads
          : discussionThreads // ignore: cast_nullable_to_non_nullable
              as List<DiscussionThreadEntity>,
    ) as $Val);
  }

  /// Create a copy of CollaborativeBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadingProgressEntityCopyWith<$Res>? get readingProgress {
    if (_value.readingProgress == null) {
      return null;
    }

    return $ReadingProgressEntityCopyWith<$Res>(_value.readingProgress!,
        (value) {
      return _then(_value.copyWith(readingProgress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollaborativeBookEntityImplCopyWith<$Res>
    implements $CollaborativeBookEntityCopyWith<$Res> {
  factory _$$CollaborativeBookEntityImplCopyWith(
          _$CollaborativeBookEntityImpl value,
          $Res Function(_$CollaborativeBookEntityImpl) then) =
      __$$CollaborativeBookEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String? coverUrl,
      String addedByUserId,
      DateTime addedDate,
      BookListStatus status,
      String? userNotes,
      double? userRating,
      ReadingProgressEntity? readingProgress,
      List<DiscussionThreadEntity> discussionThreads});

  @override
  $ReadingProgressEntityCopyWith<$Res>? get readingProgress;
}

/// @nodoc
class __$$CollaborativeBookEntityImplCopyWithImpl<$Res>
    extends _$CollaborativeBookEntityCopyWithImpl<$Res,
        _$CollaborativeBookEntityImpl>
    implements _$$CollaborativeBookEntityImplCopyWith<$Res> {
  __$$CollaborativeBookEntityImplCopyWithImpl(
      _$CollaborativeBookEntityImpl _value,
      $Res Function(_$CollaborativeBookEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollaborativeBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? coverUrl = freezed,
    Object? addedByUserId = null,
    Object? addedDate = null,
    Object? status = null,
    Object? userNotes = freezed,
    Object? userRating = freezed,
    Object? readingProgress = freezed,
    Object? discussionThreads = null,
  }) {
    return _then(_$CollaborativeBookEntityImpl(
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
      addedByUserId: null == addedByUserId
          ? _value.addedByUserId
          : addedByUserId // ignore: cast_nullable_to_non_nullable
              as String,
      addedDate: null == addedDate
          ? _value.addedDate
          : addedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookListStatus,
      userNotes: freezed == userNotes
          ? _value.userNotes
          : userNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
      readingProgress: freezed == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as ReadingProgressEntity?,
      discussionThreads: null == discussionThreads
          ? _value._discussionThreads
          : discussionThreads // ignore: cast_nullable_to_non_nullable
              as List<DiscussionThreadEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaborativeBookEntityImpl implements _CollaborativeBookEntity {
  const _$CollaborativeBookEntityImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      this.coverUrl,
      required this.addedByUserId,
      required this.addedDate,
      required this.status,
      this.userNotes,
      this.userRating,
      this.readingProgress,
      required final List<DiscussionThreadEntity> discussionThreads})
      : _discussionThreads = discussionThreads;

  factory _$CollaborativeBookEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaborativeBookEntityImplFromJson(json);

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

  /// Added by user ID
  @override
  final String addedByUserId;

  /// Added date
  @override
  final DateTime addedDate;

  /// Book status in the list
  @override
  final BookListStatus status;

  /// User notes about the book
  @override
  final String? userNotes;

  /// Rating given by user
  @override
  final double? userRating;

  /// Reading progress
  @override
  final ReadingProgressEntity? readingProgress;

  /// Discussion threads
  final List<DiscussionThreadEntity> _discussionThreads;

  /// Discussion threads
  @override
  List<DiscussionThreadEntity> get discussionThreads {
    if (_discussionThreads is EqualUnmodifiableListView)
      return _discussionThreads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discussionThreads);
  }

  @override
  String toString() {
    return 'CollaborativeBookEntity(bookId: $bookId, title: $title, author: $author, coverUrl: $coverUrl, addedByUserId: $addedByUserId, addedDate: $addedDate, status: $status, userNotes: $userNotes, userRating: $userRating, readingProgress: $readingProgress, discussionThreads: $discussionThreads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaborativeBookEntityImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.addedByUserId, addedByUserId) ||
                other.addedByUserId == addedByUserId) &&
            (identical(other.addedDate, addedDate) ||
                other.addedDate == addedDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userNotes, userNotes) ||
                other.userNotes == userNotes) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.readingProgress, readingProgress) ||
                other.readingProgress == readingProgress) &&
            const DeepCollectionEquality()
                .equals(other._discussionThreads, _discussionThreads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      coverUrl,
      addedByUserId,
      addedDate,
      status,
      userNotes,
      userRating,
      readingProgress,
      const DeepCollectionEquality().hash(_discussionThreads));

  /// Create a copy of CollaborativeBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaborativeBookEntityImplCopyWith<_$CollaborativeBookEntityImpl>
      get copyWith => __$$CollaborativeBookEntityImplCopyWithImpl<
          _$CollaborativeBookEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaborativeBookEntityImplToJson(
      this,
    );
  }
}

abstract class _CollaborativeBookEntity implements CollaborativeBookEntity {
  const factory _CollaborativeBookEntity(
          {required final String bookId,
          required final String title,
          required final String author,
          final String? coverUrl,
          required final String addedByUserId,
          required final DateTime addedDate,
          required final BookListStatus status,
          final String? userNotes,
          final double? userRating,
          final ReadingProgressEntity? readingProgress,
          required final List<DiscussionThreadEntity> discussionThreads}) =
      _$CollaborativeBookEntityImpl;

  factory _CollaborativeBookEntity.fromJson(Map<String, dynamic> json) =
      _$CollaborativeBookEntityImpl.fromJson;

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

  /// Added by user ID
  @override
  String get addedByUserId;

  /// Added date
  @override
  DateTime get addedDate;

  /// Book status in the list
  @override
  BookListStatus get status;

  /// User notes about the book
  @override
  String? get userNotes;

  /// Rating given by user
  @override
  double? get userRating;

  /// Reading progress
  @override
  ReadingProgressEntity? get readingProgress;

  /// Discussion threads
  @override
  List<DiscussionThreadEntity> get discussionThreads;

  /// Create a copy of CollaborativeBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaborativeBookEntityImplCopyWith<_$CollaborativeBookEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReadingProgressEntity _$ReadingProgressEntityFromJson(
    Map<String, dynamic> json) {
  return _ReadingProgressEntity.fromJson(json);
}

/// @nodoc
mixin _$ReadingProgressEntity {
  /// User ID
  String get userId => throw _privateConstructorUsedError;

  /// Current page
  int get currentPage => throw _privateConstructorUsedError;

  /// Total pages
  int get totalPages => throw _privateConstructorUsedError;

  /// Progress percentage
  double get progressPercentage => throw _privateConstructorUsedError;

  /// Last updated date
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Reading notes
  String? get notes => throw _privateConstructorUsedError;

  /// Reading session duration
  Duration? get sessionDuration => throw _privateConstructorUsedError;

  /// Serializes this ReadingProgressEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingProgressEntityCopyWith<ReadingProgressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingProgressEntityCopyWith<$Res> {
  factory $ReadingProgressEntityCopyWith(ReadingProgressEntity value,
          $Res Function(ReadingProgressEntity) then) =
      _$ReadingProgressEntityCopyWithImpl<$Res, ReadingProgressEntity>;
  @useResult
  $Res call(
      {String userId,
      int currentPage,
      int totalPages,
      double progressPercentage,
      DateTime lastUpdated,
      String? notes,
      Duration? sessionDuration});
}

/// @nodoc
class _$ReadingProgressEntityCopyWithImpl<$Res,
        $Val extends ReadingProgressEntity>
    implements $ReadingProgressEntityCopyWith<$Res> {
  _$ReadingProgressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? progressPercentage = null,
    Object? lastUpdated = null,
    Object? notes = freezed,
    Object? sessionDuration = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionDuration: freezed == sessionDuration
          ? _value.sessionDuration
          : sessionDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingProgressEntityImplCopyWith<$Res>
    implements $ReadingProgressEntityCopyWith<$Res> {
  factory _$$ReadingProgressEntityImplCopyWith(
          _$ReadingProgressEntityImpl value,
          $Res Function(_$ReadingProgressEntityImpl) then) =
      __$$ReadingProgressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int currentPage,
      int totalPages,
      double progressPercentage,
      DateTime lastUpdated,
      String? notes,
      Duration? sessionDuration});
}

/// @nodoc
class __$$ReadingProgressEntityImplCopyWithImpl<$Res>
    extends _$ReadingProgressEntityCopyWithImpl<$Res,
        _$ReadingProgressEntityImpl>
    implements _$$ReadingProgressEntityImplCopyWith<$Res> {
  __$$ReadingProgressEntityImplCopyWithImpl(_$ReadingProgressEntityImpl _value,
      $Res Function(_$ReadingProgressEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? progressPercentage = null,
    Object? lastUpdated = null,
    Object? notes = freezed,
    Object? sessionDuration = freezed,
  }) {
    return _then(_$ReadingProgressEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionDuration: freezed == sessionDuration
          ? _value.sessionDuration
          : sessionDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingProgressEntityImpl implements _ReadingProgressEntity {
  const _$ReadingProgressEntityImpl(
      {required this.userId,
      required this.currentPage,
      required this.totalPages,
      required this.progressPercentage,
      required this.lastUpdated,
      this.notes,
      this.sessionDuration});

  factory _$ReadingProgressEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingProgressEntityImplFromJson(json);

  /// User ID
  @override
  final String userId;

  /// Current page
  @override
  final int currentPage;

  /// Total pages
  @override
  final int totalPages;

  /// Progress percentage
  @override
  final double progressPercentage;

  /// Last updated date
  @override
  final DateTime lastUpdated;

  /// Reading notes
  @override
  final String? notes;

  /// Reading session duration
  @override
  final Duration? sessionDuration;

  @override
  String toString() {
    return 'ReadingProgressEntity(userId: $userId, currentPage: $currentPage, totalPages: $totalPages, progressPercentage: $progressPercentage, lastUpdated: $lastUpdated, notes: $notes, sessionDuration: $sessionDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingProgressEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.sessionDuration, sessionDuration) ||
                other.sessionDuration == sessionDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, currentPage, totalPages,
      progressPercentage, lastUpdated, notes, sessionDuration);

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingProgressEntityImplCopyWith<_$ReadingProgressEntityImpl>
      get copyWith => __$$ReadingProgressEntityImplCopyWithImpl<
          _$ReadingProgressEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingProgressEntityImplToJson(
      this,
    );
  }
}

abstract class _ReadingProgressEntity implements ReadingProgressEntity {
  const factory _ReadingProgressEntity(
      {required final String userId,
      required final int currentPage,
      required final int totalPages,
      required final double progressPercentage,
      required final DateTime lastUpdated,
      final String? notes,
      final Duration? sessionDuration}) = _$ReadingProgressEntityImpl;

  factory _ReadingProgressEntity.fromJson(Map<String, dynamic> json) =
      _$ReadingProgressEntityImpl.fromJson;

  /// User ID
  @override
  String get userId;

  /// Current page
  @override
  int get currentPage;

  /// Total pages
  @override
  int get totalPages;

  /// Progress percentage
  @override
  double get progressPercentage;

  /// Last updated date
  @override
  DateTime get lastUpdated;

  /// Reading notes
  @override
  String? get notes;

  /// Reading session duration
  @override
  Duration? get sessionDuration;

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingProgressEntityImplCopyWith<_$ReadingProgressEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscussionThreadEntity _$DiscussionThreadEntityFromJson(
    Map<String, dynamic> json) {
  return _DiscussionThreadEntity.fromJson(json);
}

/// @nodoc
mixin _$DiscussionThreadEntity {
  /// Thread ID
  String get id => throw _privateConstructorUsedError;

  /// Thread title
  String get title => throw _privateConstructorUsedError;

  /// Thread content
  String get content => throw _privateConstructorUsedError;

  /// Thread author ID
  String get authorId => throw _privateConstructorUsedError;

  /// Thread creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Thread last updated date
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Thread replies
  List<DiscussionReplyEntity> get replies => throw _privateConstructorUsedError;

  /// Thread likes
  List<String> get likedByUserIds => throw _privateConstructorUsedError;

  /// Thread tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this DiscussionThreadEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscussionThreadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscussionThreadEntityCopyWith<DiscussionThreadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionThreadEntityCopyWith<$Res> {
  factory $DiscussionThreadEntityCopyWith(DiscussionThreadEntity value,
          $Res Function(DiscussionThreadEntity) then) =
      _$DiscussionThreadEntityCopyWithImpl<$Res, DiscussionThreadEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String authorId,
      DateTime dateCreated,
      DateTime dateUpdated,
      List<DiscussionReplyEntity> replies,
      List<String> likedByUserIds,
      List<String> tags});
}

/// @nodoc
class _$DiscussionThreadEntityCopyWithImpl<$Res,
        $Val extends DiscussionThreadEntity>
    implements $DiscussionThreadEntityCopyWith<$Res> {
  _$DiscussionThreadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionThreadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? authorId = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? replies = null,
    Object? likedByUserIds = null,
    Object? tags = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<DiscussionReplyEntity>,
      likedByUserIds: null == likedByUserIds
          ? _value.likedByUserIds
          : likedByUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscussionThreadEntityImplCopyWith<$Res>
    implements $DiscussionThreadEntityCopyWith<$Res> {
  factory _$$DiscussionThreadEntityImplCopyWith(
          _$DiscussionThreadEntityImpl value,
          $Res Function(_$DiscussionThreadEntityImpl) then) =
      __$$DiscussionThreadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String authorId,
      DateTime dateCreated,
      DateTime dateUpdated,
      List<DiscussionReplyEntity> replies,
      List<String> likedByUserIds,
      List<String> tags});
}

/// @nodoc
class __$$DiscussionThreadEntityImplCopyWithImpl<$Res>
    extends _$DiscussionThreadEntityCopyWithImpl<$Res,
        _$DiscussionThreadEntityImpl>
    implements _$$DiscussionThreadEntityImplCopyWith<$Res> {
  __$$DiscussionThreadEntityImplCopyWithImpl(
      _$DiscussionThreadEntityImpl _value,
      $Res Function(_$DiscussionThreadEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionThreadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? authorId = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? replies = null,
    Object? likedByUserIds = null,
    Object? tags = null,
  }) {
    return _then(_$DiscussionThreadEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<DiscussionReplyEntity>,
      likedByUserIds: null == likedByUserIds
          ? _value._likedByUserIds
          : likedByUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscussionThreadEntityImpl implements _DiscussionThreadEntity {
  const _$DiscussionThreadEntityImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.authorId,
      required this.dateCreated,
      required this.dateUpdated,
      required final List<DiscussionReplyEntity> replies,
      required final List<String> likedByUserIds,
      required final List<String> tags})
      : _replies = replies,
        _likedByUserIds = likedByUserIds,
        _tags = tags;

  factory _$DiscussionThreadEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscussionThreadEntityImplFromJson(json);

  /// Thread ID
  @override
  final String id;

  /// Thread title
  @override
  final String title;

  /// Thread content
  @override
  final String content;

  /// Thread author ID
  @override
  final String authorId;

  /// Thread creation date
  @override
  final DateTime dateCreated;

  /// Thread last updated date
  @override
  final DateTime dateUpdated;

  /// Thread replies
  final List<DiscussionReplyEntity> _replies;

  /// Thread replies
  @override
  List<DiscussionReplyEntity> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  /// Thread likes
  final List<String> _likedByUserIds;

  /// Thread likes
  @override
  List<String> get likedByUserIds {
    if (_likedByUserIds is EqualUnmodifiableListView) return _likedByUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedByUserIds);
  }

  /// Thread tags
  final List<String> _tags;

  /// Thread tags
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'DiscussionThreadEntity(id: $id, title: $title, content: $content, authorId: $authorId, dateCreated: $dateCreated, dateUpdated: $dateUpdated, replies: $replies, likedByUserIds: $likedByUserIds, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionThreadEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            const DeepCollectionEquality()
                .equals(other._likedByUserIds, _likedByUserIds) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      authorId,
      dateCreated,
      dateUpdated,
      const DeepCollectionEquality().hash(_replies),
      const DeepCollectionEquality().hash(_likedByUserIds),
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of DiscussionThreadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionThreadEntityImplCopyWith<_$DiscussionThreadEntityImpl>
      get copyWith => __$$DiscussionThreadEntityImplCopyWithImpl<
          _$DiscussionThreadEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscussionThreadEntityImplToJson(
      this,
    );
  }
}

abstract class _DiscussionThreadEntity implements DiscussionThreadEntity {
  const factory _DiscussionThreadEntity(
      {required final String id,
      required final String title,
      required final String content,
      required final String authorId,
      required final DateTime dateCreated,
      required final DateTime dateUpdated,
      required final List<DiscussionReplyEntity> replies,
      required final List<String> likedByUserIds,
      required final List<String> tags}) = _$DiscussionThreadEntityImpl;

  factory _DiscussionThreadEntity.fromJson(Map<String, dynamic> json) =
      _$DiscussionThreadEntityImpl.fromJson;

  /// Thread ID
  @override
  String get id;

  /// Thread title
  @override
  String get title;

  /// Thread content
  @override
  String get content;

  /// Thread author ID
  @override
  String get authorId;

  /// Thread creation date
  @override
  DateTime get dateCreated;

  /// Thread last updated date
  @override
  DateTime get dateUpdated;

  /// Thread replies
  @override
  List<DiscussionReplyEntity> get replies;

  /// Thread likes
  @override
  List<String> get likedByUserIds;

  /// Thread tags
  @override
  List<String> get tags;

  /// Create a copy of DiscussionThreadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionThreadEntityImplCopyWith<_$DiscussionThreadEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscussionReplyEntity _$DiscussionReplyEntityFromJson(
    Map<String, dynamic> json) {
  return _DiscussionReplyEntity.fromJson(json);
}

/// @nodoc
mixin _$DiscussionReplyEntity {
  /// Reply ID
  String get id => throw _privateConstructorUsedError;

  /// Reply content
  String get content => throw _privateConstructorUsedError;

  /// Reply author ID
  String get authorId => throw _privateConstructorUsedError;

  /// Reply creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Reply last updated date
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Reply likes
  List<String> get likedByUserIds => throw _privateConstructorUsedError;

  /// Parent reply ID (for nested replies)
  String? get parentReplyId => throw _privateConstructorUsedError;

  /// Serializes this DiscussionReplyEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscussionReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscussionReplyEntityCopyWith<DiscussionReplyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionReplyEntityCopyWith<$Res> {
  factory $DiscussionReplyEntityCopyWith(DiscussionReplyEntity value,
          $Res Function(DiscussionReplyEntity) then) =
      _$DiscussionReplyEntityCopyWithImpl<$Res, DiscussionReplyEntity>;
  @useResult
  $Res call(
      {String id,
      String content,
      String authorId,
      DateTime dateCreated,
      DateTime dateUpdated,
      List<String> likedByUserIds,
      String? parentReplyId});
}

/// @nodoc
class _$DiscussionReplyEntityCopyWithImpl<$Res,
        $Val extends DiscussionReplyEntity>
    implements $DiscussionReplyEntityCopyWith<$Res> {
  _$DiscussionReplyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? authorId = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? likedByUserIds = null,
    Object? parentReplyId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likedByUserIds: null == likedByUserIds
          ? _value.likedByUserIds
          : likedByUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parentReplyId: freezed == parentReplyId
          ? _value.parentReplyId
          : parentReplyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscussionReplyEntityImplCopyWith<$Res>
    implements $DiscussionReplyEntityCopyWith<$Res> {
  factory _$$DiscussionReplyEntityImplCopyWith(
          _$DiscussionReplyEntityImpl value,
          $Res Function(_$DiscussionReplyEntityImpl) then) =
      __$$DiscussionReplyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      String authorId,
      DateTime dateCreated,
      DateTime dateUpdated,
      List<String> likedByUserIds,
      String? parentReplyId});
}

/// @nodoc
class __$$DiscussionReplyEntityImplCopyWithImpl<$Res>
    extends _$DiscussionReplyEntityCopyWithImpl<$Res,
        _$DiscussionReplyEntityImpl>
    implements _$$DiscussionReplyEntityImplCopyWith<$Res> {
  __$$DiscussionReplyEntityImplCopyWithImpl(_$DiscussionReplyEntityImpl _value,
      $Res Function(_$DiscussionReplyEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? authorId = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? likedByUserIds = null,
    Object? parentReplyId = freezed,
  }) {
    return _then(_$DiscussionReplyEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likedByUserIds: null == likedByUserIds
          ? _value._likedByUserIds
          : likedByUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parentReplyId: freezed == parentReplyId
          ? _value.parentReplyId
          : parentReplyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscussionReplyEntityImpl implements _DiscussionReplyEntity {
  const _$DiscussionReplyEntityImpl(
      {required this.id,
      required this.content,
      required this.authorId,
      required this.dateCreated,
      required this.dateUpdated,
      required final List<String> likedByUserIds,
      this.parentReplyId})
      : _likedByUserIds = likedByUserIds;

  factory _$DiscussionReplyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscussionReplyEntityImplFromJson(json);

  /// Reply ID
  @override
  final String id;

  /// Reply content
  @override
  final String content;

  /// Reply author ID
  @override
  final String authorId;

  /// Reply creation date
  @override
  final DateTime dateCreated;

  /// Reply last updated date
  @override
  final DateTime dateUpdated;

  /// Reply likes
  final List<String> _likedByUserIds;

  /// Reply likes
  @override
  List<String> get likedByUserIds {
    if (_likedByUserIds is EqualUnmodifiableListView) return _likedByUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedByUserIds);
  }

  /// Parent reply ID (for nested replies)
  @override
  final String? parentReplyId;

  @override
  String toString() {
    return 'DiscussionReplyEntity(id: $id, content: $content, authorId: $authorId, dateCreated: $dateCreated, dateUpdated: $dateUpdated, likedByUserIds: $likedByUserIds, parentReplyId: $parentReplyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionReplyEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            const DeepCollectionEquality()
                .equals(other._likedByUserIds, _likedByUserIds) &&
            (identical(other.parentReplyId, parentReplyId) ||
                other.parentReplyId == parentReplyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      authorId,
      dateCreated,
      dateUpdated,
      const DeepCollectionEquality().hash(_likedByUserIds),
      parentReplyId);

  /// Create a copy of DiscussionReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionReplyEntityImplCopyWith<_$DiscussionReplyEntityImpl>
      get copyWith => __$$DiscussionReplyEntityImplCopyWithImpl<
          _$DiscussionReplyEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscussionReplyEntityImplToJson(
      this,
    );
  }
}

abstract class _DiscussionReplyEntity implements DiscussionReplyEntity {
  const factory _DiscussionReplyEntity(
      {required final String id,
      required final String content,
      required final String authorId,
      required final DateTime dateCreated,
      required final DateTime dateUpdated,
      required final List<String> likedByUserIds,
      final String? parentReplyId}) = _$DiscussionReplyEntityImpl;

  factory _DiscussionReplyEntity.fromJson(Map<String, dynamic> json) =
      _$DiscussionReplyEntityImpl.fromJson;

  /// Reply ID
  @override
  String get id;

  /// Reply content
  @override
  String get content;

  /// Reply author ID
  @override
  String get authorId;

  /// Reply creation date
  @override
  DateTime get dateCreated;

  /// Reply last updated date
  @override
  DateTime get dateUpdated;

  /// Reply likes
  @override
  List<String> get likedByUserIds;

  /// Parent reply ID (for nested replies)
  @override
  String? get parentReplyId;

  /// Create a copy of DiscussionReplyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionReplyEntityImplCopyWith<_$DiscussionReplyEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CollaborativeListSettings _$CollaborativeListSettingsFromJson(
    Map<String, dynamic> json) {
  return _CollaborativeListSettings.fromJson(json);
}

/// @nodoc
mixin _$CollaborativeListSettings {
  /// Allow members to add books
  bool get allowMembersToAddBooks => throw _privateConstructorUsedError;

  /// Allow members to remove books
  bool get allowMembersToRemoveBooks => throw _privateConstructorUsedError;

  /// Allow members to edit list
  bool get allowMembersToEditList => throw _privateConstructorUsedError;

  /// Allow public comments
  bool get allowPublicComments => throw _privateConstructorUsedError;

  /// Require approval for new members
  bool get requireApprovalForNewMembers => throw _privateConstructorUsedError;

  /// Maximum number of members
  int? get maxMembers => throw _privateConstructorUsedError;

  /// Auto-archive completed books
  bool get autoArchiveCompletedBooks => throw _privateConstructorUsedError;

  /// Send notifications for updates
  bool get sendNotificationsForUpdates => throw _privateConstructorUsedError;

  /// Serializes this CollaborativeListSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaborativeListSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaborativeListSettingsCopyWith<CollaborativeListSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaborativeListSettingsCopyWith<$Res> {
  factory $CollaborativeListSettingsCopyWith(CollaborativeListSettings value,
          $Res Function(CollaborativeListSettings) then) =
      _$CollaborativeListSettingsCopyWithImpl<$Res, CollaborativeListSettings>;
  @useResult
  $Res call(
      {bool allowMembersToAddBooks,
      bool allowMembersToRemoveBooks,
      bool allowMembersToEditList,
      bool allowPublicComments,
      bool requireApprovalForNewMembers,
      int? maxMembers,
      bool autoArchiveCompletedBooks,
      bool sendNotificationsForUpdates});
}

/// @nodoc
class _$CollaborativeListSettingsCopyWithImpl<$Res,
        $Val extends CollaborativeListSettings>
    implements $CollaborativeListSettingsCopyWith<$Res> {
  _$CollaborativeListSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaborativeListSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowMembersToAddBooks = null,
    Object? allowMembersToRemoveBooks = null,
    Object? allowMembersToEditList = null,
    Object? allowPublicComments = null,
    Object? requireApprovalForNewMembers = null,
    Object? maxMembers = freezed,
    Object? autoArchiveCompletedBooks = null,
    Object? sendNotificationsForUpdates = null,
  }) {
    return _then(_value.copyWith(
      allowMembersToAddBooks: null == allowMembersToAddBooks
          ? _value.allowMembersToAddBooks
          : allowMembersToAddBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      allowMembersToRemoveBooks: null == allowMembersToRemoveBooks
          ? _value.allowMembersToRemoveBooks
          : allowMembersToRemoveBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      allowMembersToEditList: null == allowMembersToEditList
          ? _value.allowMembersToEditList
          : allowMembersToEditList // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPublicComments: null == allowPublicComments
          ? _value.allowPublicComments
          : allowPublicComments // ignore: cast_nullable_to_non_nullable
              as bool,
      requireApprovalForNewMembers: null == requireApprovalForNewMembers
          ? _value.requireApprovalForNewMembers
          : requireApprovalForNewMembers // ignore: cast_nullable_to_non_nullable
              as bool,
      maxMembers: freezed == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      autoArchiveCompletedBooks: null == autoArchiveCompletedBooks
          ? _value.autoArchiveCompletedBooks
          : autoArchiveCompletedBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      sendNotificationsForUpdates: null == sendNotificationsForUpdates
          ? _value.sendNotificationsForUpdates
          : sendNotificationsForUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollaborativeListSettingsImplCopyWith<$Res>
    implements $CollaborativeListSettingsCopyWith<$Res> {
  factory _$$CollaborativeListSettingsImplCopyWith(
          _$CollaborativeListSettingsImpl value,
          $Res Function(_$CollaborativeListSettingsImpl) then) =
      __$$CollaborativeListSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool allowMembersToAddBooks,
      bool allowMembersToRemoveBooks,
      bool allowMembersToEditList,
      bool allowPublicComments,
      bool requireApprovalForNewMembers,
      int? maxMembers,
      bool autoArchiveCompletedBooks,
      bool sendNotificationsForUpdates});
}

/// @nodoc
class __$$CollaborativeListSettingsImplCopyWithImpl<$Res>
    extends _$CollaborativeListSettingsCopyWithImpl<$Res,
        _$CollaborativeListSettingsImpl>
    implements _$$CollaborativeListSettingsImplCopyWith<$Res> {
  __$$CollaborativeListSettingsImplCopyWithImpl(
      _$CollaborativeListSettingsImpl _value,
      $Res Function(_$CollaborativeListSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollaborativeListSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowMembersToAddBooks = null,
    Object? allowMembersToRemoveBooks = null,
    Object? allowMembersToEditList = null,
    Object? allowPublicComments = null,
    Object? requireApprovalForNewMembers = null,
    Object? maxMembers = freezed,
    Object? autoArchiveCompletedBooks = null,
    Object? sendNotificationsForUpdates = null,
  }) {
    return _then(_$CollaborativeListSettingsImpl(
      allowMembersToAddBooks: null == allowMembersToAddBooks
          ? _value.allowMembersToAddBooks
          : allowMembersToAddBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      allowMembersToRemoveBooks: null == allowMembersToRemoveBooks
          ? _value.allowMembersToRemoveBooks
          : allowMembersToRemoveBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      allowMembersToEditList: null == allowMembersToEditList
          ? _value.allowMembersToEditList
          : allowMembersToEditList // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPublicComments: null == allowPublicComments
          ? _value.allowPublicComments
          : allowPublicComments // ignore: cast_nullable_to_non_nullable
              as bool,
      requireApprovalForNewMembers: null == requireApprovalForNewMembers
          ? _value.requireApprovalForNewMembers
          : requireApprovalForNewMembers // ignore: cast_nullable_to_non_nullable
              as bool,
      maxMembers: freezed == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      autoArchiveCompletedBooks: null == autoArchiveCompletedBooks
          ? _value.autoArchiveCompletedBooks
          : autoArchiveCompletedBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      sendNotificationsForUpdates: null == sendNotificationsForUpdates
          ? _value.sendNotificationsForUpdates
          : sendNotificationsForUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaborativeListSettingsImpl implements _CollaborativeListSettings {
  const _$CollaborativeListSettingsImpl(
      {required this.allowMembersToAddBooks,
      required this.allowMembersToRemoveBooks,
      required this.allowMembersToEditList,
      required this.allowPublicComments,
      required this.requireApprovalForNewMembers,
      this.maxMembers,
      required this.autoArchiveCompletedBooks,
      required this.sendNotificationsForUpdates});

  factory _$CollaborativeListSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaborativeListSettingsImplFromJson(json);

  /// Allow members to add books
  @override
  final bool allowMembersToAddBooks;

  /// Allow members to remove books
  @override
  final bool allowMembersToRemoveBooks;

  /// Allow members to edit list
  @override
  final bool allowMembersToEditList;

  /// Allow public comments
  @override
  final bool allowPublicComments;

  /// Require approval for new members
  @override
  final bool requireApprovalForNewMembers;

  /// Maximum number of members
  @override
  final int? maxMembers;

  /// Auto-archive completed books
  @override
  final bool autoArchiveCompletedBooks;

  /// Send notifications for updates
  @override
  final bool sendNotificationsForUpdates;

  @override
  String toString() {
    return 'CollaborativeListSettings(allowMembersToAddBooks: $allowMembersToAddBooks, allowMembersToRemoveBooks: $allowMembersToRemoveBooks, allowMembersToEditList: $allowMembersToEditList, allowPublicComments: $allowPublicComments, requireApprovalForNewMembers: $requireApprovalForNewMembers, maxMembers: $maxMembers, autoArchiveCompletedBooks: $autoArchiveCompletedBooks, sendNotificationsForUpdates: $sendNotificationsForUpdates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaborativeListSettingsImpl &&
            (identical(other.allowMembersToAddBooks, allowMembersToAddBooks) ||
                other.allowMembersToAddBooks == allowMembersToAddBooks) &&
            (identical(other.allowMembersToRemoveBooks,
                    allowMembersToRemoveBooks) ||
                other.allowMembersToRemoveBooks == allowMembersToRemoveBooks) &&
            (identical(other.allowMembersToEditList, allowMembersToEditList) ||
                other.allowMembersToEditList == allowMembersToEditList) &&
            (identical(other.allowPublicComments, allowPublicComments) ||
                other.allowPublicComments == allowPublicComments) &&
            (identical(other.requireApprovalForNewMembers,
                    requireApprovalForNewMembers) ||
                other.requireApprovalForNewMembers ==
                    requireApprovalForNewMembers) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers) &&
            (identical(other.autoArchiveCompletedBooks,
                    autoArchiveCompletedBooks) ||
                other.autoArchiveCompletedBooks == autoArchiveCompletedBooks) &&
            (identical(other.sendNotificationsForUpdates,
                    sendNotificationsForUpdates) ||
                other.sendNotificationsForUpdates ==
                    sendNotificationsForUpdates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowMembersToAddBooks,
      allowMembersToRemoveBooks,
      allowMembersToEditList,
      allowPublicComments,
      requireApprovalForNewMembers,
      maxMembers,
      autoArchiveCompletedBooks,
      sendNotificationsForUpdates);

  /// Create a copy of CollaborativeListSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaborativeListSettingsImplCopyWith<_$CollaborativeListSettingsImpl>
      get copyWith => __$$CollaborativeListSettingsImplCopyWithImpl<
          _$CollaborativeListSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaborativeListSettingsImplToJson(
      this,
    );
  }
}

abstract class _CollaborativeListSettings implements CollaborativeListSettings {
  const factory _CollaborativeListSettings(
          {required final bool allowMembersToAddBooks,
          required final bool allowMembersToRemoveBooks,
          required final bool allowMembersToEditList,
          required final bool allowPublicComments,
          required final bool requireApprovalForNewMembers,
          final int? maxMembers,
          required final bool autoArchiveCompletedBooks,
          required final bool sendNotificationsForUpdates}) =
      _$CollaborativeListSettingsImpl;

  factory _CollaborativeListSettings.fromJson(Map<String, dynamic> json) =
      _$CollaborativeListSettingsImpl.fromJson;

  /// Allow members to add books
  @override
  bool get allowMembersToAddBooks;

  /// Allow members to remove books
  @override
  bool get allowMembersToRemoveBooks;

  /// Allow members to edit list
  @override
  bool get allowMembersToEditList;

  /// Allow public comments
  @override
  bool get allowPublicComments;

  /// Require approval for new members
  @override
  bool get requireApprovalForNewMembers;

  /// Maximum number of members
  @override
  int? get maxMembers;

  /// Auto-archive completed books
  @override
  bool get autoArchiveCompletedBooks;

  /// Send notifications for updates
  @override
  bool get sendNotificationsForUpdates;

  /// Create a copy of CollaborativeListSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaborativeListSettingsImplCopyWith<_$CollaborativeListSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CollaborativeListStats _$CollaborativeListStatsFromJson(
    Map<String, dynamic> json) {
  return _CollaborativeListStats.fromJson(json);
}

/// @nodoc
mixin _$CollaborativeListStats {
  /// Total books in list
  int get totalBooks => throw _privateConstructorUsedError;

  /// Completed books
  int get completedBooks => throw _privateConstructorUsedError;

  /// Currently reading
  int get currentlyReading => throw _privateConstructorUsedError;

  /// To read books
  int get toReadBooks => throw _privateConstructorUsedError;

  /// Total members
  int get totalMembers => throw _privateConstructorUsedError;

  /// Active members (last 30 days)
  int get activeMembers => throw _privateConstructorUsedError;

  /// Total discussion threads
  int get totalDiscussionThreads => throw _privateConstructorUsedError;

  /// Total replies
  int get totalReplies => throw _privateConstructorUsedError;

  /// Average rating
  double get averageRating => throw _privateConstructorUsedError;

  /// Most active member ID
  String? get mostActiveMemberId => throw _privateConstructorUsedError;

  /// Last activity date
  DateTime get lastActivityDate => throw _privateConstructorUsedError;

  /// Serializes this CollaborativeListStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaborativeListStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaborativeListStatsCopyWith<CollaborativeListStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaborativeListStatsCopyWith<$Res> {
  factory $CollaborativeListStatsCopyWith(CollaborativeListStats value,
          $Res Function(CollaborativeListStats) then) =
      _$CollaborativeListStatsCopyWithImpl<$Res, CollaborativeListStats>;
  @useResult
  $Res call(
      {int totalBooks,
      int completedBooks,
      int currentlyReading,
      int toReadBooks,
      int totalMembers,
      int activeMembers,
      int totalDiscussionThreads,
      int totalReplies,
      double averageRating,
      String? mostActiveMemberId,
      DateTime lastActivityDate});
}

/// @nodoc
class _$CollaborativeListStatsCopyWithImpl<$Res,
        $Val extends CollaborativeListStats>
    implements $CollaborativeListStatsCopyWith<$Res> {
  _$CollaborativeListStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaborativeListStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooks = null,
    Object? completedBooks = null,
    Object? currentlyReading = null,
    Object? toReadBooks = null,
    Object? totalMembers = null,
    Object? activeMembers = null,
    Object? totalDiscussionThreads = null,
    Object? totalReplies = null,
    Object? averageRating = null,
    Object? mostActiveMemberId = freezed,
    Object? lastActivityDate = null,
  }) {
    return _then(_value.copyWith(
      totalBooks: null == totalBooks
          ? _value.totalBooks
          : totalBooks // ignore: cast_nullable_to_non_nullable
              as int,
      completedBooks: null == completedBooks
          ? _value.completedBooks
          : completedBooks // ignore: cast_nullable_to_non_nullable
              as int,
      currentlyReading: null == currentlyReading
          ? _value.currentlyReading
          : currentlyReading // ignore: cast_nullable_to_non_nullable
              as int,
      toReadBooks: null == toReadBooks
          ? _value.toReadBooks
          : toReadBooks // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      activeMembers: null == activeMembers
          ? _value.activeMembers
          : activeMembers // ignore: cast_nullable_to_non_nullable
              as int,
      totalDiscussionThreads: null == totalDiscussionThreads
          ? _value.totalDiscussionThreads
          : totalDiscussionThreads // ignore: cast_nullable_to_non_nullable
              as int,
      totalReplies: null == totalReplies
          ? _value.totalReplies
          : totalReplies // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      mostActiveMemberId: freezed == mostActiveMemberId
          ? _value.mostActiveMemberId
          : mostActiveMemberId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivityDate: null == lastActivityDate
          ? _value.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollaborativeListStatsImplCopyWith<$Res>
    implements $CollaborativeListStatsCopyWith<$Res> {
  factory _$$CollaborativeListStatsImplCopyWith(
          _$CollaborativeListStatsImpl value,
          $Res Function(_$CollaborativeListStatsImpl) then) =
      __$$CollaborativeListStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalBooks,
      int completedBooks,
      int currentlyReading,
      int toReadBooks,
      int totalMembers,
      int activeMembers,
      int totalDiscussionThreads,
      int totalReplies,
      double averageRating,
      String? mostActiveMemberId,
      DateTime lastActivityDate});
}

/// @nodoc
class __$$CollaborativeListStatsImplCopyWithImpl<$Res>
    extends _$CollaborativeListStatsCopyWithImpl<$Res,
        _$CollaborativeListStatsImpl>
    implements _$$CollaborativeListStatsImplCopyWith<$Res> {
  __$$CollaborativeListStatsImplCopyWithImpl(
      _$CollaborativeListStatsImpl _value,
      $Res Function(_$CollaborativeListStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollaborativeListStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooks = null,
    Object? completedBooks = null,
    Object? currentlyReading = null,
    Object? toReadBooks = null,
    Object? totalMembers = null,
    Object? activeMembers = null,
    Object? totalDiscussionThreads = null,
    Object? totalReplies = null,
    Object? averageRating = null,
    Object? mostActiveMemberId = freezed,
    Object? lastActivityDate = null,
  }) {
    return _then(_$CollaborativeListStatsImpl(
      totalBooks: null == totalBooks
          ? _value.totalBooks
          : totalBooks // ignore: cast_nullable_to_non_nullable
              as int,
      completedBooks: null == completedBooks
          ? _value.completedBooks
          : completedBooks // ignore: cast_nullable_to_non_nullable
              as int,
      currentlyReading: null == currentlyReading
          ? _value.currentlyReading
          : currentlyReading // ignore: cast_nullable_to_non_nullable
              as int,
      toReadBooks: null == toReadBooks
          ? _value.toReadBooks
          : toReadBooks // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      activeMembers: null == activeMembers
          ? _value.activeMembers
          : activeMembers // ignore: cast_nullable_to_non_nullable
              as int,
      totalDiscussionThreads: null == totalDiscussionThreads
          ? _value.totalDiscussionThreads
          : totalDiscussionThreads // ignore: cast_nullable_to_non_nullable
              as int,
      totalReplies: null == totalReplies
          ? _value.totalReplies
          : totalReplies // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      mostActiveMemberId: freezed == mostActiveMemberId
          ? _value.mostActiveMemberId
          : mostActiveMemberId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivityDate: null == lastActivityDate
          ? _value.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaborativeListStatsImpl implements _CollaborativeListStats {
  const _$CollaborativeListStatsImpl(
      {required this.totalBooks,
      required this.completedBooks,
      required this.currentlyReading,
      required this.toReadBooks,
      required this.totalMembers,
      required this.activeMembers,
      required this.totalDiscussionThreads,
      required this.totalReplies,
      required this.averageRating,
      this.mostActiveMemberId,
      required this.lastActivityDate});

  factory _$CollaborativeListStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaborativeListStatsImplFromJson(json);

  /// Total books in list
  @override
  final int totalBooks;

  /// Completed books
  @override
  final int completedBooks;

  /// Currently reading
  @override
  final int currentlyReading;

  /// To read books
  @override
  final int toReadBooks;

  /// Total members
  @override
  final int totalMembers;

  /// Active members (last 30 days)
  @override
  final int activeMembers;

  /// Total discussion threads
  @override
  final int totalDiscussionThreads;

  /// Total replies
  @override
  final int totalReplies;

  /// Average rating
  @override
  final double averageRating;

  /// Most active member ID
  @override
  final String? mostActiveMemberId;

  /// Last activity date
  @override
  final DateTime lastActivityDate;

  @override
  String toString() {
    return 'CollaborativeListStats(totalBooks: $totalBooks, completedBooks: $completedBooks, currentlyReading: $currentlyReading, toReadBooks: $toReadBooks, totalMembers: $totalMembers, activeMembers: $activeMembers, totalDiscussionThreads: $totalDiscussionThreads, totalReplies: $totalReplies, averageRating: $averageRating, mostActiveMemberId: $mostActiveMemberId, lastActivityDate: $lastActivityDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaborativeListStatsImpl &&
            (identical(other.totalBooks, totalBooks) ||
                other.totalBooks == totalBooks) &&
            (identical(other.completedBooks, completedBooks) ||
                other.completedBooks == completedBooks) &&
            (identical(other.currentlyReading, currentlyReading) ||
                other.currentlyReading == currentlyReading) &&
            (identical(other.toReadBooks, toReadBooks) ||
                other.toReadBooks == toReadBooks) &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            (identical(other.activeMembers, activeMembers) ||
                other.activeMembers == activeMembers) &&
            (identical(other.totalDiscussionThreads, totalDiscussionThreads) ||
                other.totalDiscussionThreads == totalDiscussionThreads) &&
            (identical(other.totalReplies, totalReplies) ||
                other.totalReplies == totalReplies) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.mostActiveMemberId, mostActiveMemberId) ||
                other.mostActiveMemberId == mostActiveMemberId) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                other.lastActivityDate == lastActivityDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalBooks,
      completedBooks,
      currentlyReading,
      toReadBooks,
      totalMembers,
      activeMembers,
      totalDiscussionThreads,
      totalReplies,
      averageRating,
      mostActiveMemberId,
      lastActivityDate);

  /// Create a copy of CollaborativeListStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaborativeListStatsImplCopyWith<_$CollaborativeListStatsImpl>
      get copyWith => __$$CollaborativeListStatsImplCopyWithImpl<
          _$CollaborativeListStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaborativeListStatsImplToJson(
      this,
    );
  }
}

abstract class _CollaborativeListStats implements CollaborativeListStats {
  const factory _CollaborativeListStats(
      {required final int totalBooks,
      required final int completedBooks,
      required final int currentlyReading,
      required final int toReadBooks,
      required final int totalMembers,
      required final int activeMembers,
      required final int totalDiscussionThreads,
      required final int totalReplies,
      required final double averageRating,
      final String? mostActiveMemberId,
      required final DateTime lastActivityDate}) = _$CollaborativeListStatsImpl;

  factory _CollaborativeListStats.fromJson(Map<String, dynamic> json) =
      _$CollaborativeListStatsImpl.fromJson;

  /// Total books in list
  @override
  int get totalBooks;

  /// Completed books
  @override
  int get completedBooks;

  /// Currently reading
  @override
  int get currentlyReading;

  /// To read books
  @override
  int get toReadBooks;

  /// Total members
  @override
  int get totalMembers;

  /// Active members (last 30 days)
  @override
  int get activeMembers;

  /// Total discussion threads
  @override
  int get totalDiscussionThreads;

  /// Total replies
  @override
  int get totalReplies;

  /// Average rating
  @override
  double get averageRating;

  /// Most active member ID
  @override
  String? get mostActiveMemberId;

  /// Last activity date
  @override
  DateTime get lastActivityDate;

  /// Create a copy of CollaborativeListStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaborativeListStatsImplCopyWith<_$CollaborativeListStatsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
