// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collaborative_lists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollaborativeReadingList _$CollaborativeReadingListFromJson(
    Map<String, dynamic> json) {
  return _CollaborativeReadingList.fromJson(json);
}

/// @nodoc
mixin _$CollaborativeReadingList {
  /// List ID
  String get id => throw _privateConstructorUsedError;

  /// List name
  String get name => throw _privateConstructorUsedError;

  /// List description
  String get description => throw _privateConstructorUsedError;

  /// List creator ID
  String get creatorId => throw _privateConstructorUsedError;

  /// List collaborators
  List<Collaborator> get collaborators => throw _privateConstructorUsedError;

  /// List privacy level
  ListPrivacy get privacy => throw _privateConstructorUsedError;

  /// List books
  List<CollaborativeBookEntry> get books => throw _privateConstructorUsedError;

  /// List tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// List cover image URL
  String? get coverImageUrl => throw _privateConstructorUsedError;

  /// List theme color
  String get themeColor => throw _privateConstructorUsedError;

  /// List creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// List last updated date
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Whether list is active
  bool get isActive => throw _privateConstructorUsedError;

  /// List settings
  ListSettings get settings => throw _privateConstructorUsedError;

  /// List statistics
  ListStatistics get statistics => throw _privateConstructorUsedError;

  /// Serializes this CollaborativeReadingList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaborativeReadingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaborativeReadingListCopyWith<CollaborativeReadingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaborativeReadingListCopyWith<$Res> {
  factory $CollaborativeReadingListCopyWith(CollaborativeReadingList value,
          $Res Function(CollaborativeReadingList) then) =
      _$CollaborativeReadingListCopyWithImpl<$Res, CollaborativeReadingList>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String creatorId,
      List<Collaborator> collaborators,
      ListPrivacy privacy,
      List<CollaborativeBookEntry> books,
      List<String> tags,
      String? coverImageUrl,
      String themeColor,
      DateTime dateCreated,
      DateTime dateUpdated,
      bool isActive,
      ListSettings settings,
      ListStatistics statistics});

  $ListSettingsCopyWith<$Res> get settings;
  $ListStatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class _$CollaborativeReadingListCopyWithImpl<$Res,
        $Val extends CollaborativeReadingList>
    implements $CollaborativeReadingListCopyWith<$Res> {
  _$CollaborativeReadingListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaborativeReadingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? creatorId = null,
    Object? collaborators = null,
    Object? privacy = null,
    Object? books = null,
    Object? tags = null,
    Object? coverImageUrl = freezed,
    Object? themeColor = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? isActive = null,
    Object? settings = null,
    Object? statistics = null,
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
      collaborators: null == collaborators
          ? _value.collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<Collaborator>,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as ListPrivacy,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<CollaborativeBookEntry>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as String,
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
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ListSettings,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as ListStatistics,
    ) as $Val);
  }

  /// Create a copy of CollaborativeReadingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListSettingsCopyWith<$Res> get settings {
    return $ListSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of CollaborativeReadingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListStatisticsCopyWith<$Res> get statistics {
    return $ListStatisticsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollaborativeReadingListImplCopyWith<$Res>
    implements $CollaborativeReadingListCopyWith<$Res> {
  factory _$$CollaborativeReadingListImplCopyWith(
          _$CollaborativeReadingListImpl value,
          $Res Function(_$CollaborativeReadingListImpl) then) =
      __$$CollaborativeReadingListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String creatorId,
      List<Collaborator> collaborators,
      ListPrivacy privacy,
      List<CollaborativeBookEntry> books,
      List<String> tags,
      String? coverImageUrl,
      String themeColor,
      DateTime dateCreated,
      DateTime dateUpdated,
      bool isActive,
      ListSettings settings,
      ListStatistics statistics});

  @override
  $ListSettingsCopyWith<$Res> get settings;
  @override
  $ListStatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class __$$CollaborativeReadingListImplCopyWithImpl<$Res>
    extends _$CollaborativeReadingListCopyWithImpl<$Res,
        _$CollaborativeReadingListImpl>
    implements _$$CollaborativeReadingListImplCopyWith<$Res> {
  __$$CollaborativeReadingListImplCopyWithImpl(
      _$CollaborativeReadingListImpl _value,
      $Res Function(_$CollaborativeReadingListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollaborativeReadingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? creatorId = null,
    Object? collaborators = null,
    Object? privacy = null,
    Object? books = null,
    Object? tags = null,
    Object? coverImageUrl = freezed,
    Object? themeColor = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? isActive = null,
    Object? settings = null,
    Object? statistics = null,
  }) {
    return _then(_$CollaborativeReadingListImpl(
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
      collaborators: null == collaborators
          ? _value._collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<Collaborator>,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as ListPrivacy,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<CollaborativeBookEntry>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as String,
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
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as ListSettings,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as ListStatistics,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaborativeReadingListImpl implements _CollaborativeReadingList {
  const _$CollaborativeReadingListImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.creatorId,
      required final List<Collaborator> collaborators,
      required this.privacy,
      required final List<CollaborativeBookEntry> books,
      required final List<String> tags,
      this.coverImageUrl,
      required this.themeColor,
      required this.dateCreated,
      required this.dateUpdated,
      required this.isActive,
      required this.settings,
      required this.statistics})
      : _collaborators = collaborators,
        _books = books,
        _tags = tags;

  factory _$CollaborativeReadingListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaborativeReadingListImplFromJson(json);

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

  /// List collaborators
  final List<Collaborator> _collaborators;

  /// List collaborators
  @override
  List<Collaborator> get collaborators {
    if (_collaborators is EqualUnmodifiableListView) return _collaborators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collaborators);
  }

  /// List privacy level
  @override
  final ListPrivacy privacy;

  /// List books
  final List<CollaborativeBookEntry> _books;

  /// List books
  @override
  List<CollaborativeBookEntry> get books {
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

  /// List cover image URL
  @override
  final String? coverImageUrl;

  /// List theme color
  @override
  final String themeColor;

  /// List creation date
  @override
  final DateTime dateCreated;

  /// List last updated date
  @override
  final DateTime dateUpdated;

  /// Whether list is active
  @override
  final bool isActive;

  /// List settings
  @override
  final ListSettings settings;

  /// List statistics
  @override
  final ListStatistics statistics;

  @override
  String toString() {
    return 'CollaborativeReadingList(id: $id, name: $name, description: $description, creatorId: $creatorId, collaborators: $collaborators, privacy: $privacy, books: $books, tags: $tags, coverImageUrl: $coverImageUrl, themeColor: $themeColor, dateCreated: $dateCreated, dateUpdated: $dateUpdated, isActive: $isActive, settings: $settings, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaborativeReadingListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            const DeepCollectionEquality()
                .equals(other._collaborators, _collaborators) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      creatorId,
      const DeepCollectionEquality().hash(_collaborators),
      privacy,
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_tags),
      coverImageUrl,
      themeColor,
      dateCreated,
      dateUpdated,
      isActive,
      settings,
      statistics);

  /// Create a copy of CollaborativeReadingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaborativeReadingListImplCopyWith<_$CollaborativeReadingListImpl>
      get copyWith => __$$CollaborativeReadingListImplCopyWithImpl<
          _$CollaborativeReadingListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaborativeReadingListImplToJson(
      this,
    );
  }
}

abstract class _CollaborativeReadingList implements CollaborativeReadingList {
  const factory _CollaborativeReadingList(
          {required final String id,
          required final String name,
          required final String description,
          required final String creatorId,
          required final List<Collaborator> collaborators,
          required final ListPrivacy privacy,
          required final List<CollaborativeBookEntry> books,
          required final List<String> tags,
          final String? coverImageUrl,
          required final String themeColor,
          required final DateTime dateCreated,
          required final DateTime dateUpdated,
          required final bool isActive,
          required final ListSettings settings,
          required final ListStatistics statistics}) =
      _$CollaborativeReadingListImpl;

  factory _CollaborativeReadingList.fromJson(Map<String, dynamic> json) =
      _$CollaborativeReadingListImpl.fromJson;

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

  /// List collaborators
  @override
  List<Collaborator> get collaborators;

  /// List privacy level
  @override
  ListPrivacy get privacy;

  /// List books
  @override
  List<CollaborativeBookEntry> get books;

  /// List tags
  @override
  List<String> get tags;

  /// List cover image URL
  @override
  String? get coverImageUrl;

  /// List theme color
  @override
  String get themeColor;

  /// List creation date
  @override
  DateTime get dateCreated;

  /// List last updated date
  @override
  DateTime get dateUpdated;

  /// Whether list is active
  @override
  bool get isActive;

  /// List settings
  @override
  ListSettings get settings;

  /// List statistics
  @override
  ListStatistics get statistics;

  /// Create a copy of CollaborativeReadingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaborativeReadingListImplCopyWith<_$CollaborativeReadingListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Collaborator _$CollaboratorFromJson(Map<String, dynamic> json) {
  return _Collaborator.fromJson(json);
}

/// @nodoc
mixin _$Collaborator {
  /// User ID
  String get userId => throw _privateConstructorUsedError;

  /// User's display name
  String get displayName => throw _privateConstructorUsedError;

  /// User's profile picture URL
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// Collaborator role
  CollaboratorRole get role => throw _privateConstructorUsedError;

  /// Collaborator permissions
  CollaboratorPermissions get permissions => throw _privateConstructorUsedError;

  /// Date when user joined as collaborator
  DateTime get dateJoined => throw _privateConstructorUsedError;

  /// Whether collaborator is active
  bool get isActive => throw _privateConstructorUsedError;

  /// Collaborator's contribution count
  int get contributionCount => throw _privateConstructorUsedError;

  /// Last activity date
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Serializes this Collaborator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Collaborator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaboratorCopyWith<Collaborator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaboratorCopyWith<$Res> {
  factory $CollaboratorCopyWith(
          Collaborator value, $Res Function(Collaborator) then) =
      _$CollaboratorCopyWithImpl<$Res, Collaborator>;
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? profilePictureUrl,
      CollaboratorRole role,
      CollaboratorPermissions permissions,
      DateTime dateJoined,
      bool isActive,
      int contributionCount,
      DateTime lastActivity});

  $CollaboratorPermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class _$CollaboratorCopyWithImpl<$Res, $Val extends Collaborator>
    implements $CollaboratorCopyWith<$Res> {
  _$CollaboratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Collaborator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? role = null,
    Object? permissions = null,
    Object? dateJoined = null,
    Object? isActive = null,
    Object? contributionCount = null,
    Object? lastActivity = null,
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
              as CollaboratorRole,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as CollaboratorPermissions,
      dateJoined: null == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      contributionCount: null == contributionCount
          ? _value.contributionCount
          : contributionCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Collaborator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollaboratorPermissionsCopyWith<$Res> get permissions {
    return $CollaboratorPermissionsCopyWith<$Res>(_value.permissions, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollaboratorImplCopyWith<$Res>
    implements $CollaboratorCopyWith<$Res> {
  factory _$$CollaboratorImplCopyWith(
          _$CollaboratorImpl value, $Res Function(_$CollaboratorImpl) then) =
      __$$CollaboratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? profilePictureUrl,
      CollaboratorRole role,
      CollaboratorPermissions permissions,
      DateTime dateJoined,
      bool isActive,
      int contributionCount,
      DateTime lastActivity});

  @override
  $CollaboratorPermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class __$$CollaboratorImplCopyWithImpl<$Res>
    extends _$CollaboratorCopyWithImpl<$Res, _$CollaboratorImpl>
    implements _$$CollaboratorImplCopyWith<$Res> {
  __$$CollaboratorImplCopyWithImpl(
      _$CollaboratorImpl _value, $Res Function(_$CollaboratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Collaborator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? role = null,
    Object? permissions = null,
    Object? dateJoined = null,
    Object? isActive = null,
    Object? contributionCount = null,
    Object? lastActivity = null,
  }) {
    return _then(_$CollaboratorImpl(
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
              as CollaboratorRole,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as CollaboratorPermissions,
      dateJoined: null == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      contributionCount: null == contributionCount
          ? _value.contributionCount
          : contributionCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaboratorImpl implements _Collaborator {
  const _$CollaboratorImpl(
      {required this.userId,
      required this.displayName,
      this.profilePictureUrl,
      required this.role,
      required this.permissions,
      required this.dateJoined,
      required this.isActive,
      required this.contributionCount,
      required this.lastActivity});

  factory _$CollaboratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaboratorImplFromJson(json);

  /// User ID
  @override
  final String userId;

  /// User's display name
  @override
  final String displayName;

  /// User's profile picture URL
  @override
  final String? profilePictureUrl;

  /// Collaborator role
  @override
  final CollaboratorRole role;

  /// Collaborator permissions
  @override
  final CollaboratorPermissions permissions;

  /// Date when user joined as collaborator
  @override
  final DateTime dateJoined;

  /// Whether collaborator is active
  @override
  final bool isActive;

  /// Collaborator's contribution count
  @override
  final int contributionCount;

  /// Last activity date
  @override
  final DateTime lastActivity;

  @override
  String toString() {
    return 'Collaborator(userId: $userId, displayName: $displayName, profilePictureUrl: $profilePictureUrl, role: $role, permissions: $permissions, dateJoined: $dateJoined, isActive: $isActive, contributionCount: $contributionCount, lastActivity: $lastActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaboratorImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.contributionCount, contributionCount) ||
                other.contributionCount == contributionCount) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      displayName,
      profilePictureUrl,
      role,
      permissions,
      dateJoined,
      isActive,
      contributionCount,
      lastActivity);

  /// Create a copy of Collaborator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaboratorImplCopyWith<_$CollaboratorImpl> get copyWith =>
      __$$CollaboratorImplCopyWithImpl<_$CollaboratorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaboratorImplToJson(
      this,
    );
  }
}

abstract class _Collaborator implements Collaborator {
  const factory _Collaborator(
      {required final String userId,
      required final String displayName,
      final String? profilePictureUrl,
      required final CollaboratorRole role,
      required final CollaboratorPermissions permissions,
      required final DateTime dateJoined,
      required final bool isActive,
      required final int contributionCount,
      required final DateTime lastActivity}) = _$CollaboratorImpl;

  factory _Collaborator.fromJson(Map<String, dynamic> json) =
      _$CollaboratorImpl.fromJson;

  /// User ID
  @override
  String get userId;

  /// User's display name
  @override
  String get displayName;

  /// User's profile picture URL
  @override
  String? get profilePictureUrl;

  /// Collaborator role
  @override
  CollaboratorRole get role;

  /// Collaborator permissions
  @override
  CollaboratorPermissions get permissions;

  /// Date when user joined as collaborator
  @override
  DateTime get dateJoined;

  /// Whether collaborator is active
  @override
  bool get isActive;

  /// Collaborator's contribution count
  @override
  int get contributionCount;

  /// Last activity date
  @override
  DateTime get lastActivity;

  /// Create a copy of Collaborator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaboratorImplCopyWith<_$CollaboratorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollaboratorPermissions _$CollaboratorPermissionsFromJson(
    Map<String, dynamic> json) {
  return _CollaboratorPermissions.fromJson(json);
}

/// @nodoc
mixin _$CollaboratorPermissions {
  /// Can view list
  bool get canView => throw _privateConstructorUsedError;

  /// Can add books
  bool get canAddBooks => throw _privateConstructorUsedError;

  /// Can remove books
  bool get canRemoveBooks => throw _privateConstructorUsedError;

  /// Can edit book entries
  bool get canEditBooks => throw _privateConstructorUsedError;

  /// Can edit list details
  bool get canEditList => throw _privateConstructorUsedError;

  /// Can manage collaborators
  bool get canManageCollaborators => throw _privateConstructorUsedError;

  /// Can delete list
  bool get canDeleteList => throw _privateConstructorUsedError;

  /// Can share list
  bool get canShareList => throw _privateConstructorUsedError;

  /// Serializes this CollaboratorPermissions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaboratorPermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaboratorPermissionsCopyWith<CollaboratorPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaboratorPermissionsCopyWith<$Res> {
  factory $CollaboratorPermissionsCopyWith(CollaboratorPermissions value,
          $Res Function(CollaboratorPermissions) then) =
      _$CollaboratorPermissionsCopyWithImpl<$Res, CollaboratorPermissions>;
  @useResult
  $Res call(
      {bool canView,
      bool canAddBooks,
      bool canRemoveBooks,
      bool canEditBooks,
      bool canEditList,
      bool canManageCollaborators,
      bool canDeleteList,
      bool canShareList});
}

/// @nodoc
class _$CollaboratorPermissionsCopyWithImpl<$Res,
        $Val extends CollaboratorPermissions>
    implements $CollaboratorPermissionsCopyWith<$Res> {
  _$CollaboratorPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaboratorPermissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canView = null,
    Object? canAddBooks = null,
    Object? canRemoveBooks = null,
    Object? canEditBooks = null,
    Object? canEditList = null,
    Object? canManageCollaborators = null,
    Object? canDeleteList = null,
    Object? canShareList = null,
  }) {
    return _then(_value.copyWith(
      canView: null == canView
          ? _value.canView
          : canView // ignore: cast_nullable_to_non_nullable
              as bool,
      canAddBooks: null == canAddBooks
          ? _value.canAddBooks
          : canAddBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      canRemoveBooks: null == canRemoveBooks
          ? _value.canRemoveBooks
          : canRemoveBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      canEditBooks: null == canEditBooks
          ? _value.canEditBooks
          : canEditBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      canEditList: null == canEditList
          ? _value.canEditList
          : canEditList // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageCollaborators: null == canManageCollaborators
          ? _value.canManageCollaborators
          : canManageCollaborators // ignore: cast_nullable_to_non_nullable
              as bool,
      canDeleteList: null == canDeleteList
          ? _value.canDeleteList
          : canDeleteList // ignore: cast_nullable_to_non_nullable
              as bool,
      canShareList: null == canShareList
          ? _value.canShareList
          : canShareList // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollaboratorPermissionsImplCopyWith<$Res>
    implements $CollaboratorPermissionsCopyWith<$Res> {
  factory _$$CollaboratorPermissionsImplCopyWith(
          _$CollaboratorPermissionsImpl value,
          $Res Function(_$CollaboratorPermissionsImpl) then) =
      __$$CollaboratorPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool canView,
      bool canAddBooks,
      bool canRemoveBooks,
      bool canEditBooks,
      bool canEditList,
      bool canManageCollaborators,
      bool canDeleteList,
      bool canShareList});
}

/// @nodoc
class __$$CollaboratorPermissionsImplCopyWithImpl<$Res>
    extends _$CollaboratorPermissionsCopyWithImpl<$Res,
        _$CollaboratorPermissionsImpl>
    implements _$$CollaboratorPermissionsImplCopyWith<$Res> {
  __$$CollaboratorPermissionsImplCopyWithImpl(
      _$CollaboratorPermissionsImpl _value,
      $Res Function(_$CollaboratorPermissionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollaboratorPermissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canView = null,
    Object? canAddBooks = null,
    Object? canRemoveBooks = null,
    Object? canEditBooks = null,
    Object? canEditList = null,
    Object? canManageCollaborators = null,
    Object? canDeleteList = null,
    Object? canShareList = null,
  }) {
    return _then(_$CollaboratorPermissionsImpl(
      canView: null == canView
          ? _value.canView
          : canView // ignore: cast_nullable_to_non_nullable
              as bool,
      canAddBooks: null == canAddBooks
          ? _value.canAddBooks
          : canAddBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      canRemoveBooks: null == canRemoveBooks
          ? _value.canRemoveBooks
          : canRemoveBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      canEditBooks: null == canEditBooks
          ? _value.canEditBooks
          : canEditBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      canEditList: null == canEditList
          ? _value.canEditList
          : canEditList // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageCollaborators: null == canManageCollaborators
          ? _value.canManageCollaborators
          : canManageCollaborators // ignore: cast_nullable_to_non_nullable
              as bool,
      canDeleteList: null == canDeleteList
          ? _value.canDeleteList
          : canDeleteList // ignore: cast_nullable_to_non_nullable
              as bool,
      canShareList: null == canShareList
          ? _value.canShareList
          : canShareList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaboratorPermissionsImpl implements _CollaboratorPermissions {
  const _$CollaboratorPermissionsImpl(
      {required this.canView,
      required this.canAddBooks,
      required this.canRemoveBooks,
      required this.canEditBooks,
      required this.canEditList,
      required this.canManageCollaborators,
      required this.canDeleteList,
      required this.canShareList});

  factory _$CollaboratorPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaboratorPermissionsImplFromJson(json);

  /// Can view list
  @override
  final bool canView;

  /// Can add books
  @override
  final bool canAddBooks;

  /// Can remove books
  @override
  final bool canRemoveBooks;

  /// Can edit book entries
  @override
  final bool canEditBooks;

  /// Can edit list details
  @override
  final bool canEditList;

  /// Can manage collaborators
  @override
  final bool canManageCollaborators;

  /// Can delete list
  @override
  final bool canDeleteList;

  /// Can share list
  @override
  final bool canShareList;

  @override
  String toString() {
    return 'CollaboratorPermissions(canView: $canView, canAddBooks: $canAddBooks, canRemoveBooks: $canRemoveBooks, canEditBooks: $canEditBooks, canEditList: $canEditList, canManageCollaborators: $canManageCollaborators, canDeleteList: $canDeleteList, canShareList: $canShareList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaboratorPermissionsImpl &&
            (identical(other.canView, canView) || other.canView == canView) &&
            (identical(other.canAddBooks, canAddBooks) ||
                other.canAddBooks == canAddBooks) &&
            (identical(other.canRemoveBooks, canRemoveBooks) ||
                other.canRemoveBooks == canRemoveBooks) &&
            (identical(other.canEditBooks, canEditBooks) ||
                other.canEditBooks == canEditBooks) &&
            (identical(other.canEditList, canEditList) ||
                other.canEditList == canEditList) &&
            (identical(other.canManageCollaborators, canManageCollaborators) ||
                other.canManageCollaborators == canManageCollaborators) &&
            (identical(other.canDeleteList, canDeleteList) ||
                other.canDeleteList == canDeleteList) &&
            (identical(other.canShareList, canShareList) ||
                other.canShareList == canShareList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      canView,
      canAddBooks,
      canRemoveBooks,
      canEditBooks,
      canEditList,
      canManageCollaborators,
      canDeleteList,
      canShareList);

  /// Create a copy of CollaboratorPermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaboratorPermissionsImplCopyWith<_$CollaboratorPermissionsImpl>
      get copyWith => __$$CollaboratorPermissionsImplCopyWithImpl<
          _$CollaboratorPermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaboratorPermissionsImplToJson(
      this,
    );
  }
}

abstract class _CollaboratorPermissions implements CollaboratorPermissions {
  const factory _CollaboratorPermissions(
      {required final bool canView,
      required final bool canAddBooks,
      required final bool canRemoveBooks,
      required final bool canEditBooks,
      required final bool canEditList,
      required final bool canManageCollaborators,
      required final bool canDeleteList,
      required final bool canShareList}) = _$CollaboratorPermissionsImpl;

  factory _CollaboratorPermissions.fromJson(Map<String, dynamic> json) =
      _$CollaboratorPermissionsImpl.fromJson;

  /// Can view list
  @override
  bool get canView;

  /// Can add books
  @override
  bool get canAddBooks;

  /// Can remove books
  @override
  bool get canRemoveBooks;

  /// Can edit book entries
  @override
  bool get canEditBooks;

  /// Can edit list details
  @override
  bool get canEditList;

  /// Can manage collaborators
  @override
  bool get canManageCollaborators;

  /// Can delete list
  @override
  bool get canDeleteList;

  /// Can share list
  @override
  bool get canShareList;

  /// Create a copy of CollaboratorPermissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaboratorPermissionsImplCopyWith<_$CollaboratorPermissionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CollaborativeBookEntry _$CollaborativeBookEntryFromJson(
    Map<String, dynamic> json) {
  return _CollaborativeBookEntry.fromJson(json);
}

/// @nodoc
mixin _$CollaborativeBookEntry {
  /// Book ID
  String get bookId => throw _privateConstructorUsedError;

  /// Book title
  String get title => throw _privateConstructorUsedError;

  /// Book author
  String get author => throw _privateConstructorUsedError;

  /// Book cover URL
  String? get coverUrl => throw _privateConstructorUsedError;

  /// Book description
  String? get description => throw _privateConstructorUsedError;

  /// Book genre
  String? get genre => throw _privateConstructorUsedError;

  /// Book rating
  double? get rating => throw _privateConstructorUsedError;

  /// Book review
  String? get review => throw _privateConstructorUsedError;

  /// Book notes
  String? get notes => throw _privateConstructorUsedError;

  /// Book tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// Book status
  BookStatus get status => throw _privateConstructorUsedError;

  /// Book priority
  BookPriority get priority => throw _privateConstructorUsedError;

  /// Book order in list
  int get order => throw _privateConstructorUsedError;

  /// User who added the book
  String get addedBy => throw _privateConstructorUsedError;

  /// Date when book was added
  DateTime get dateAdded => throw _privateConstructorUsedError;

  /// Date when book was last updated
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Book recommendations
  List<String> get recommendations => throw _privateConstructorUsedError;

  /// Book discussions
  List<BookDiscussion> get discussions => throw _privateConstructorUsedError;

  /// Serializes this CollaborativeBookEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaborativeBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaborativeBookEntryCopyWith<CollaborativeBookEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaborativeBookEntryCopyWith<$Res> {
  factory $CollaborativeBookEntryCopyWith(CollaborativeBookEntry value,
          $Res Function(CollaborativeBookEntry) then) =
      _$CollaborativeBookEntryCopyWithImpl<$Res, CollaborativeBookEntry>;
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String? coverUrl,
      String? description,
      String? genre,
      double? rating,
      String? review,
      String? notes,
      List<String> tags,
      BookStatus status,
      BookPriority priority,
      int order,
      String addedBy,
      DateTime dateAdded,
      DateTime dateUpdated,
      List<String> recommendations,
      List<BookDiscussion> discussions});
}

/// @nodoc
class _$CollaborativeBookEntryCopyWithImpl<$Res,
        $Val extends CollaborativeBookEntry>
    implements $CollaborativeBookEntryCopyWith<$Res> {
  _$CollaborativeBookEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaborativeBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? coverUrl = freezed,
    Object? description = freezed,
    Object? genre = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? notes = freezed,
    Object? tags = null,
    Object? status = null,
    Object? priority = null,
    Object? order = null,
    Object? addedBy = null,
    Object? dateAdded = null,
    Object? dateUpdated = null,
    Object? recommendations = null,
    Object? discussions = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as BookPriority,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discussions: null == discussions
          ? _value.discussions
          : discussions // ignore: cast_nullable_to_non_nullable
              as List<BookDiscussion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollaborativeBookEntryImplCopyWith<$Res>
    implements $CollaborativeBookEntryCopyWith<$Res> {
  factory _$$CollaborativeBookEntryImplCopyWith(
          _$CollaborativeBookEntryImpl value,
          $Res Function(_$CollaborativeBookEntryImpl) then) =
      __$$CollaborativeBookEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookId,
      String title,
      String author,
      String? coverUrl,
      String? description,
      String? genre,
      double? rating,
      String? review,
      String? notes,
      List<String> tags,
      BookStatus status,
      BookPriority priority,
      int order,
      String addedBy,
      DateTime dateAdded,
      DateTime dateUpdated,
      List<String> recommendations,
      List<BookDiscussion> discussions});
}

/// @nodoc
class __$$CollaborativeBookEntryImplCopyWithImpl<$Res>
    extends _$CollaborativeBookEntryCopyWithImpl<$Res,
        _$CollaborativeBookEntryImpl>
    implements _$$CollaborativeBookEntryImplCopyWith<$Res> {
  __$$CollaborativeBookEntryImplCopyWithImpl(
      _$CollaborativeBookEntryImpl _value,
      $Res Function(_$CollaborativeBookEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollaborativeBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? title = null,
    Object? author = null,
    Object? coverUrl = freezed,
    Object? description = freezed,
    Object? genre = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? notes = freezed,
    Object? tags = null,
    Object? status = null,
    Object? priority = null,
    Object? order = null,
    Object? addedBy = null,
    Object? dateAdded = null,
    Object? dateUpdated = null,
    Object? recommendations = null,
    Object? discussions = null,
  }) {
    return _then(_$CollaborativeBookEntryImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as BookPriority,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discussions: null == discussions
          ? _value._discussions
          : discussions // ignore: cast_nullable_to_non_nullable
              as List<BookDiscussion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaborativeBookEntryImpl implements _CollaborativeBookEntry {
  const _$CollaborativeBookEntryImpl(
      {required this.bookId,
      required this.title,
      required this.author,
      this.coverUrl,
      this.description,
      this.genre,
      this.rating,
      this.review,
      this.notes,
      required final List<String> tags,
      required this.status,
      required this.priority,
      required this.order,
      required this.addedBy,
      required this.dateAdded,
      required this.dateUpdated,
      required final List<String> recommendations,
      required final List<BookDiscussion> discussions})
      : _tags = tags,
        _recommendations = recommendations,
        _discussions = discussions;

  factory _$CollaborativeBookEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaborativeBookEntryImplFromJson(json);

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

  /// Book description
  @override
  final String? description;

  /// Book genre
  @override
  final String? genre;

  /// Book rating
  @override
  final double? rating;

  /// Book review
  @override
  final String? review;

  /// Book notes
  @override
  final String? notes;

  /// Book tags
  final List<String> _tags;

  /// Book tags
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Book status
  @override
  final BookStatus status;

  /// Book priority
  @override
  final BookPriority priority;

  /// Book order in list
  @override
  final int order;

  /// User who added the book
  @override
  final String addedBy;

  /// Date when book was added
  @override
  final DateTime dateAdded;

  /// Date when book was last updated
  @override
  final DateTime dateUpdated;

  /// Book recommendations
  final List<String> _recommendations;

  /// Book recommendations
  @override
  List<String> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  /// Book discussions
  final List<BookDiscussion> _discussions;

  /// Book discussions
  @override
  List<BookDiscussion> get discussions {
    if (_discussions is EqualUnmodifiableListView) return _discussions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discussions);
  }

  @override
  String toString() {
    return 'CollaborativeBookEntry(bookId: $bookId, title: $title, author: $author, coverUrl: $coverUrl, description: $description, genre: $genre, rating: $rating, review: $review, notes: $notes, tags: $tags, status: $status, priority: $priority, order: $order, addedBy: $addedBy, dateAdded: $dateAdded, dateUpdated: $dateUpdated, recommendations: $recommendations, discussions: $discussions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaborativeBookEntryImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality()
                .equals(other._discussions, _discussions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookId,
      title,
      author,
      coverUrl,
      description,
      genre,
      rating,
      review,
      notes,
      const DeepCollectionEquality().hash(_tags),
      status,
      priority,
      order,
      addedBy,
      dateAdded,
      dateUpdated,
      const DeepCollectionEquality().hash(_recommendations),
      const DeepCollectionEquality().hash(_discussions));

  /// Create a copy of CollaborativeBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaborativeBookEntryImplCopyWith<_$CollaborativeBookEntryImpl>
      get copyWith => __$$CollaborativeBookEntryImplCopyWithImpl<
          _$CollaborativeBookEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaborativeBookEntryImplToJson(
      this,
    );
  }
}

abstract class _CollaborativeBookEntry implements CollaborativeBookEntry {
  const factory _CollaborativeBookEntry(
          {required final String bookId,
          required final String title,
          required final String author,
          final String? coverUrl,
          final String? description,
          final String? genre,
          final double? rating,
          final String? review,
          final String? notes,
          required final List<String> tags,
          required final BookStatus status,
          required final BookPriority priority,
          required final int order,
          required final String addedBy,
          required final DateTime dateAdded,
          required final DateTime dateUpdated,
          required final List<String> recommendations,
          required final List<BookDiscussion> discussions}) =
      _$CollaborativeBookEntryImpl;

  factory _CollaborativeBookEntry.fromJson(Map<String, dynamic> json) =
      _$CollaborativeBookEntryImpl.fromJson;

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

  /// Book description
  @override
  String? get description;

  /// Book genre
  @override
  String? get genre;

  /// Book rating
  @override
  double? get rating;

  /// Book review
  @override
  String? get review;

  /// Book notes
  @override
  String? get notes;

  /// Book tags
  @override
  List<String> get tags;

  /// Book status
  @override
  BookStatus get status;

  /// Book priority
  @override
  BookPriority get priority;

  /// Book order in list
  @override
  int get order;

  /// User who added the book
  @override
  String get addedBy;

  /// Date when book was added
  @override
  DateTime get dateAdded;

  /// Date when book was last updated
  @override
  DateTime get dateUpdated;

  /// Book recommendations
  @override
  List<String> get recommendations;

  /// Book discussions
  @override
  List<BookDiscussion> get discussions;

  /// Create a copy of CollaborativeBookEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaborativeBookEntryImplCopyWith<_$CollaborativeBookEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookDiscussion _$BookDiscussionFromJson(Map<String, dynamic> json) {
  return BookDiscussion.fromJson(json);
}

/// @nodoc
mixin _$BookDiscussion {
  /// Discussion ID
  String get id => throw _privateConstructorUsedError;

  /// Discussion title
  String get title => throw _privateConstructorUsedError;

  /// Discussion content
  String get content => throw _privateConstructorUsedError;

  /// Discussion creator ID
  String get creatorId => throw _privateConstructorUsedError;

  /// Discussion creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Discussion last updated date
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Discussion replies
  List<DiscussionReply> get replies => throw _privateConstructorUsedError;

  /// Discussion tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// Whether discussion is resolved
  bool get isResolved => throw _privateConstructorUsedError;

  /// Discussion resolution notes
  String? get resolutionNotes => throw _privateConstructorUsedError;

  /// Serializes this BookDiscussion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookDiscussionCopyWith<BookDiscussion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDiscussionCopyWith<$Res> {
  factory $BookDiscussionCopyWith(
          BookDiscussion value, $Res Function(BookDiscussion) then) =
      _$BookDiscussionCopyWithImpl<$Res, BookDiscussion>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String creatorId,
      DateTime dateCreated,
      DateTime dateUpdated,
      List<DiscussionReply> replies,
      List<String> tags,
      bool isResolved,
      String? resolutionNotes});
}

/// @nodoc
class _$BookDiscussionCopyWithImpl<$Res, $Val extends BookDiscussion>
    implements $BookDiscussionCopyWith<$Res> {
  _$BookDiscussionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? creatorId = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? replies = null,
    Object? tags = null,
    Object? isResolved = null,
    Object? resolutionNotes = freezed,
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
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
              as List<DiscussionReply>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isResolved: null == isResolved
          ? _value.isResolved
          : isResolved // ignore: cast_nullable_to_non_nullable
              as bool,
      resolutionNotes: freezed == resolutionNotes
          ? _value.resolutionNotes
          : resolutionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDiscussionImplCopyWith<$Res>
    implements $BookDiscussionCopyWith<$Res> {
  factory _$$BookDiscussionImplCopyWith(_$BookDiscussionImpl value,
          $Res Function(_$BookDiscussionImpl) then) =
      __$$BookDiscussionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String creatorId,
      DateTime dateCreated,
      DateTime dateUpdated,
      List<DiscussionReply> replies,
      List<String> tags,
      bool isResolved,
      String? resolutionNotes});
}

/// @nodoc
class __$$BookDiscussionImplCopyWithImpl<$Res>
    extends _$BookDiscussionCopyWithImpl<$Res, _$BookDiscussionImpl>
    implements _$$BookDiscussionImplCopyWith<$Res> {
  __$$BookDiscussionImplCopyWithImpl(
      _$BookDiscussionImpl _value, $Res Function(_$BookDiscussionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? creatorId = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? replies = null,
    Object? tags = null,
    Object? isResolved = null,
    Object? resolutionNotes = freezed,
  }) {
    return _then(_$BookDiscussionImpl(
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
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
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
              as List<DiscussionReply>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isResolved: null == isResolved
          ? _value.isResolved
          : isResolved // ignore: cast_nullable_to_non_nullable
              as bool,
      resolutionNotes: freezed == resolutionNotes
          ? _value.resolutionNotes
          : resolutionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDiscussionImpl implements BookDiscussion {
  const _$BookDiscussionImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.creatorId,
      required this.dateCreated,
      required this.dateUpdated,
      required final List<DiscussionReply> replies,
      required final List<String> tags,
      required this.isResolved,
      this.resolutionNotes})
      : _replies = replies,
        _tags = tags;

  factory _$BookDiscussionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDiscussionImplFromJson(json);

  /// Discussion ID
  @override
  final String id;

  /// Discussion title
  @override
  final String title;

  /// Discussion content
  @override
  final String content;

  /// Discussion creator ID
  @override
  final String creatorId;

  /// Discussion creation date
  @override
  final DateTime dateCreated;

  /// Discussion last updated date
  @override
  final DateTime dateUpdated;

  /// Discussion replies
  final List<DiscussionReply> _replies;

  /// Discussion replies
  @override
  List<DiscussionReply> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  /// Discussion tags
  final List<String> _tags;

  /// Discussion tags
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Whether discussion is resolved
  @override
  final bool isResolved;

  /// Discussion resolution notes
  @override
  final String? resolutionNotes;

  @override
  String toString() {
    return 'BookDiscussion(id: $id, title: $title, content: $content, creatorId: $creatorId, dateCreated: $dateCreated, dateUpdated: $dateUpdated, replies: $replies, tags: $tags, isResolved: $isResolved, resolutionNotes: $resolutionNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDiscussionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isResolved, isResolved) ||
                other.isResolved == isResolved) &&
            (identical(other.resolutionNotes, resolutionNotes) ||
                other.resolutionNotes == resolutionNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      creatorId,
      dateCreated,
      dateUpdated,
      const DeepCollectionEquality().hash(_replies),
      const DeepCollectionEquality().hash(_tags),
      isResolved,
      resolutionNotes);

  /// Create a copy of BookDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDiscussionImplCopyWith<_$BookDiscussionImpl> get copyWith =>
      __$$BookDiscussionImplCopyWithImpl<_$BookDiscussionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDiscussionImplToJson(
      this,
    );
  }
}

abstract class BookDiscussion implements BookDiscussion {
  const factory BookDiscussion(
      {required final String id,
      required final String title,
      required final String content,
      required final String creatorId,
      required final DateTime dateCreated,
      required final DateTime dateUpdated,
      required final List<DiscussionReply> replies,
      required final List<String> tags,
      required final bool isResolved,
      final String? resolutionNotes}) = _$BookDiscussionImpl;

  factory BookDiscussion.fromJson(Map<String, dynamic> json) =
      _$BookDiscussionImpl.fromJson;

  /// Discussion ID
  @override
  String get id;

  /// Discussion title
  @override
  String get title;

  /// Discussion content
  @override
  String get content;

  /// Discussion creator ID
  @override
  String get creatorId;

  /// Discussion creation date
  @override
  DateTime get dateCreated;

  /// Discussion last updated date
  @override
  DateTime get dateUpdated;

  /// Discussion replies
  @override
  List<DiscussionReply> get replies;

  /// Discussion tags
  @override
  List<String> get tags;

  /// Whether discussion is resolved
  @override
  bool get isResolved;

  /// Discussion resolution notes
  @override
  String? get resolutionNotes;

  /// Create a copy of BookDiscussion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookDiscussionImplCopyWith<_$BookDiscussionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscussionReply _$DiscussionReplyFromJson(Map<String, dynamic> json) {
  return DiscussionReply.fromJson(json);
}

/// @nodoc
mixin _$DiscussionReply {
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

  /// Whether reply is helpful
  bool get isHelpful => throw _privateConstructorUsedError;

  /// Reply helpful votes
  int get helpfulVotes => throw _privateConstructorUsedError;

  /// Reply tags
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this DiscussionReply to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscussionReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscussionReplyCopyWith<DiscussionReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionReplyCopyWith<$Res> {
  factory $DiscussionReplyCopyWith(
          DiscussionReply value, $Res Function(DiscussionReply) then) =
      _$DiscussionReplyCopyWithImpl<$Res, DiscussionReply>;
  @useResult
  $Res call(
      {String id,
      String content,
      String authorId,
      DateTime dateCreated,
      DateTime dateUpdated,
      bool isHelpful,
      int helpfulVotes,
      List<String> tags});
}

/// @nodoc
class _$DiscussionReplyCopyWithImpl<$Res, $Val extends DiscussionReply>
    implements $DiscussionReplyCopyWith<$Res> {
  _$DiscussionReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? authorId = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? isHelpful = null,
    Object? helpfulVotes = null,
    Object? tags = null,
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
      isHelpful: null == isHelpful
          ? _value.isHelpful
          : isHelpful // ignore: cast_nullable_to_non_nullable
              as bool,
      helpfulVotes: null == helpfulVotes
          ? _value.helpfulVotes
          : helpfulVotes // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscussionReplyImplCopyWith<$Res>
    implements $DiscussionReplyCopyWith<$Res> {
  factory _$$DiscussionReplyImplCopyWith(_$DiscussionReplyImpl value,
          $Res Function(_$DiscussionReplyImpl) then) =
      __$$DiscussionReplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      String authorId,
      DateTime dateCreated,
      DateTime dateUpdated,
      bool isHelpful,
      int helpfulVotes,
      List<String> tags});
}

/// @nodoc
class __$$DiscussionReplyImplCopyWithImpl<$Res>
    extends _$DiscussionReplyCopyWithImpl<$Res, _$DiscussionReplyImpl>
    implements _$$DiscussionReplyImplCopyWith<$Res> {
  __$$DiscussionReplyImplCopyWithImpl(
      _$DiscussionReplyImpl _value, $Res Function(_$DiscussionReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? authorId = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? isHelpful = null,
    Object? helpfulVotes = null,
    Object? tags = null,
  }) {
    return _then(_$DiscussionReplyImpl(
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
      isHelpful: null == isHelpful
          ? _value.isHelpful
          : isHelpful // ignore: cast_nullable_to_non_nullable
              as bool,
      helpfulVotes: null == helpfulVotes
          ? _value.helpfulVotes
          : helpfulVotes // ignore: cast_nullable_to_non_nullable
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
class _$DiscussionReplyImpl implements DiscussionReply {
  const _$DiscussionReplyImpl(
      {required this.id,
      required this.content,
      required this.authorId,
      required this.dateCreated,
      required this.dateUpdated,
      required this.isHelpful,
      required this.helpfulVotes,
      required final List<String> tags})
      : _tags = tags;

  factory _$DiscussionReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscussionReplyImplFromJson(json);

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

  /// Whether reply is helpful
  @override
  final bool isHelpful;

  /// Reply helpful votes
  @override
  final int helpfulVotes;

  /// Reply tags
  final List<String> _tags;

  /// Reply tags
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'DiscussionReply(id: $id, content: $content, authorId: $authorId, dateCreated: $dateCreated, dateUpdated: $dateUpdated, isHelpful: $isHelpful, helpfulVotes: $helpfulVotes, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionReplyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            (identical(other.isHelpful, isHelpful) ||
                other.isHelpful == isHelpful) &&
            (identical(other.helpfulVotes, helpfulVotes) ||
                other.helpfulVotes == helpfulVotes) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
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
      isHelpful,
      helpfulVotes,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of DiscussionReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionReplyImplCopyWith<_$DiscussionReplyImpl> get copyWith =>
      __$$DiscussionReplyImplCopyWithImpl<_$DiscussionReplyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscussionReplyImplToJson(
      this,
    );
  }
}

abstract class DiscussionReply implements DiscussionReply {
  const factory DiscussionReply(
      {required final String id,
      required final String content,
      required final String authorId,
      required final DateTime dateCreated,
      required final DateTime dateUpdated,
      required final bool isHelpful,
      required final int helpfulVotes,
      required final List<String> tags}) = _$DiscussionReplyImpl;

  factory DiscussionReply.fromJson(Map<String, dynamic> json) =
      _$DiscussionReplyImpl.fromJson;

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

  /// Whether reply is helpful
  @override
  bool get isHelpful;

  /// Reply helpful votes
  @override
  int get helpfulVotes;

  /// Reply tags
  @override
  List<String> get tags;

  /// Create a copy of DiscussionReply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionReplyImplCopyWith<_$DiscussionReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListSettings _$ListSettingsFromJson(Map<String, dynamic> json) {
  return ListSettings.fromJson(json);
}

/// @nodoc
mixin _$ListSettings {
  /// Whether list allows public comments
  bool get allowPublicComments => throw _privateConstructorUsedError;

  /// Whether list allows public ratings
  bool get allowPublicRatings => throw _privateConstructorUsedError;

  /// Whether list allows public reviews
  bool get allowPublicReviews => throw _privateConstructorUsedError;

  /// Whether list requires approval for new books
  bool get requireApproval => throw _privateConstructorUsedError;

  /// Whether list allows duplicate books
  bool get allowDuplicates => throw _privateConstructorUsedError;

  /// Maximum number of books allowed
  int? get maxBooks => throw _privateConstructorUsedError;

  /// Whether list shows collaborator names
  bool get showCollaboratorNames => throw _privateConstructorUsedError;

  /// Whether list shows book ratings
  bool get showBookRatings => throw _privateConstructorUsedError;

  /// Whether list shows book reviews
  bool get showBookReviews => throw _privateConstructorUsedError;

  /// List sorting preference
  ListSorting get sorting => throw _privateConstructorUsedError;

  /// List filtering preferences
  ListFiltering get filtering => throw _privateConstructorUsedError;

  /// Serializes this ListSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListSettingsCopyWith<ListSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSettingsCopyWith<$Res> {
  factory $ListSettingsCopyWith(
          ListSettings value, $Res Function(ListSettings) then) =
      _$ListSettingsCopyWithImpl<$Res, ListSettings>;
  @useResult
  $Res call(
      {bool allowPublicComments,
      bool allowPublicRatings,
      bool allowPublicReviews,
      bool requireApproval,
      bool allowDuplicates,
      int? maxBooks,
      bool showCollaboratorNames,
      bool showBookRatings,
      bool showBookReviews,
      ListSorting sorting,
      ListFiltering filtering});
}

/// @nodoc
class _$ListSettingsCopyWithImpl<$Res, $Val extends ListSettings>
    implements $ListSettingsCopyWith<$Res> {
  _$ListSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowPublicComments = null,
    Object? allowPublicRatings = null,
    Object? allowPublicReviews = null,
    Object? requireApproval = null,
    Object? allowDuplicates = null,
    Object? maxBooks = freezed,
    Object? showCollaboratorNames = null,
    Object? showBookRatings = null,
    Object? showBookReviews = null,
    Object? sorting = null,
    Object? filtering = null,
  }) {
    return _then(_value.copyWith(
      allowPublicComments: null == allowPublicComments
          ? _value.allowPublicComments
          : allowPublicComments // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPublicRatings: null == allowPublicRatings
          ? _value.allowPublicRatings
          : allowPublicRatings // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPublicReviews: null == allowPublicReviews
          ? _value.allowPublicReviews
          : allowPublicReviews // ignore: cast_nullable_to_non_nullable
              as bool,
      requireApproval: null == requireApproval
          ? _value.requireApproval
          : requireApproval // ignore: cast_nullable_to_non_nullable
              as bool,
      allowDuplicates: null == allowDuplicates
          ? _value.allowDuplicates
          : allowDuplicates // ignore: cast_nullable_to_non_nullable
              as bool,
      maxBooks: freezed == maxBooks
          ? _value.maxBooks
          : maxBooks // ignore: cast_nullable_to_non_nullable
              as int?,
      showCollaboratorNames: null == showCollaboratorNames
          ? _value.showCollaboratorNames
          : showCollaboratorNames // ignore: cast_nullable_to_non_nullable
              as bool,
      showBookRatings: null == showBookRatings
          ? _value.showBookRatings
          : showBookRatings // ignore: cast_nullable_to_non_nullable
              as bool,
      showBookReviews: null == showBookReviews
          ? _value.showBookReviews
          : showBookReviews // ignore: cast_nullable_to_non_nullable
              as bool,
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as ListSorting,
      filtering: null == filtering
          ? _value.filtering
          : filtering // ignore: cast_nullable_to_non_nullable
              as ListFiltering,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListSettingsImplCopyWith<$Res>
    implements $ListSettingsCopyWith<$Res> {
  factory _$$ListSettingsImplCopyWith(
          _$ListSettingsImpl value, $Res Function(_$ListSettingsImpl) then) =
      __$$ListSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool allowPublicComments,
      bool allowPublicRatings,
      bool allowPublicReviews,
      bool requireApproval,
      bool allowDuplicates,
      int? maxBooks,
      bool showCollaboratorNames,
      bool showBookRatings,
      bool showBookReviews,
      ListSorting sorting,
      ListFiltering filtering});
}

/// @nodoc
class __$$ListSettingsImplCopyWithImpl<$Res>
    extends _$ListSettingsCopyWithImpl<$Res, _$ListSettingsImpl>
    implements _$$ListSettingsImplCopyWith<$Res> {
  __$$ListSettingsImplCopyWithImpl(
      _$ListSettingsImpl _value, $Res Function(_$ListSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowPublicComments = null,
    Object? allowPublicRatings = null,
    Object? allowPublicReviews = null,
    Object? requireApproval = null,
    Object? allowDuplicates = null,
    Object? maxBooks = freezed,
    Object? showCollaboratorNames = null,
    Object? showBookRatings = null,
    Object? showBookReviews = null,
    Object? sorting = null,
    Object? filtering = null,
  }) {
    return _then(_$ListSettingsImpl(
      allowPublicComments: null == allowPublicComments
          ? _value.allowPublicComments
          : allowPublicComments // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPublicRatings: null == allowPublicRatings
          ? _value.allowPublicRatings
          : allowPublicRatings // ignore: cast_nullable_to_non_nullable
              as bool,
      allowPublicReviews: null == allowPublicReviews
          ? _value.allowPublicReviews
          : allowPublicReviews // ignore: cast_nullable_to_non_nullable
              as bool,
      requireApproval: null == requireApproval
          ? _value.requireApproval
          : requireApproval // ignore: cast_nullable_to_non_nullable
              as bool,
      allowDuplicates: null == allowDuplicates
          ? _value.allowDuplicates
          : allowDuplicates // ignore: cast_nullable_to_non_nullable
              as bool,
      maxBooks: freezed == maxBooks
          ? _value.maxBooks
          : maxBooks // ignore: cast_nullable_to_non_nullable
              as int?,
      showCollaboratorNames: null == showCollaboratorNames
          ? _value.showCollaboratorNames
          : showCollaboratorNames // ignore: cast_nullable_to_non_nullable
              as bool,
      showBookRatings: null == showBookRatings
          ? _value.showBookRatings
          : showBookRatings // ignore: cast_nullable_to_non_nullable
              as bool,
      showBookReviews: null == showBookReviews
          ? _value.showBookReviews
          : showBookReviews // ignore: cast_nullable_to_non_nullable
              as bool,
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as ListSorting,
      filtering: null == filtering
          ? _value.filtering
          : filtering // ignore: cast_nullable_to_non_nullable
              as ListFiltering,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListSettingsImpl implements ListSettings {
  const _$ListSettingsImpl(
      {required this.allowPublicComments,
      required this.allowPublicRatings,
      required this.allowPublicReviews,
      required this.requireApproval,
      required this.allowDuplicates,
      this.maxBooks,
      required this.showCollaboratorNames,
      required this.showBookRatings,
      required this.showBookReviews,
      required this.sorting,
      required this.filtering});

  factory _$ListSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListSettingsImplFromJson(json);

  /// Whether list allows public comments
  @override
  final bool allowPublicComments;

  /// Whether list allows public ratings
  @override
  final bool allowPublicRatings;

  /// Whether list allows public reviews
  @override
  final bool allowPublicReviews;

  /// Whether list requires approval for new books
  @override
  final bool requireApproval;

  /// Whether list allows duplicate books
  @override
  final bool allowDuplicates;

  /// Maximum number of books allowed
  @override
  final int? maxBooks;

  /// Whether list shows collaborator names
  @override
  final bool showCollaboratorNames;

  /// Whether list shows book ratings
  @override
  final bool showBookRatings;

  /// Whether list shows book reviews
  @override
  final bool showBookReviews;

  /// List sorting preference
  @override
  final ListSorting sorting;

  /// List filtering preferences
  @override
  final ListFiltering filtering;

  @override
  String toString() {
    return 'ListSettings(allowPublicComments: $allowPublicComments, allowPublicRatings: $allowPublicRatings, allowPublicReviews: $allowPublicReviews, requireApproval: $requireApproval, allowDuplicates: $allowDuplicates, maxBooks: $maxBooks, showCollaboratorNames: $showCollaboratorNames, showBookRatings: $showBookRatings, showBookReviews: $showBookReviews, sorting: $sorting, filtering: $filtering)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSettingsImpl &&
            (identical(other.allowPublicComments, allowPublicComments) ||
                other.allowPublicComments == allowPublicComments) &&
            (identical(other.allowPublicRatings, allowPublicRatings) ||
                other.allowPublicRatings == allowPublicRatings) &&
            (identical(other.allowPublicReviews, allowPublicReviews) ||
                other.allowPublicReviews == allowPublicReviews) &&
            (identical(other.requireApproval, requireApproval) ||
                other.requireApproval == requireApproval) &&
            (identical(other.allowDuplicates, allowDuplicates) ||
                other.allowDuplicates == allowDuplicates) &&
            (identical(other.maxBooks, maxBooks) ||
                other.maxBooks == maxBooks) &&
            (identical(other.showCollaboratorNames, showCollaboratorNames) ||
                other.showCollaboratorNames == showCollaboratorNames) &&
            (identical(other.showBookRatings, showBookRatings) ||
                other.showBookRatings == showBookRatings) &&
            (identical(other.showBookReviews, showBookReviews) ||
                other.showBookReviews == showBookReviews) &&
            (identical(other.sorting, sorting) || other.sorting == sorting) &&
            (identical(other.filtering, filtering) ||
                other.filtering == filtering));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowPublicComments,
      allowPublicRatings,
      allowPublicReviews,
      requireApproval,
      allowDuplicates,
      maxBooks,
      showCollaboratorNames,
      showBookRatings,
      showBookReviews,
      sorting,
      filtering);

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSettingsImplCopyWith<_$ListSettingsImpl> get copyWith =>
      __$$ListSettingsImplCopyWithImpl<_$ListSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListSettingsImplToJson(
      this,
    );
  }
}

abstract class ListSettings implements ListSettings {
  const factory ListSettings(
      {required final bool allowPublicComments,
      required final bool allowPublicRatings,
      required final bool allowPublicReviews,
      required final bool requireApproval,
      required final bool allowDuplicates,
      final int? maxBooks,
      required final bool showCollaboratorNames,
      required final bool showBookRatings,
      required final bool showBookReviews,
      required final ListSorting sorting,
      required final ListFiltering filtering}) = _$ListSettingsImpl;

  factory ListSettings.fromJson(Map<String, dynamic> json) =
      _$ListSettingsImpl.fromJson;

  /// Whether list allows public comments
  @override
  bool get allowPublicComments;

  /// Whether list allows public ratings
  @override
  bool get allowPublicRatings;

  /// Whether list allows public reviews
  @override
  bool get allowPublicReviews;

  /// Whether list requires approval for new books
  @override
  bool get requireApproval;

  /// Whether list allows duplicate books
  @override
  bool get allowDuplicates;

  /// Maximum number of books allowed
  @override
  int? get maxBooks;

  /// Whether list shows collaborator names
  @override
  bool get showCollaboratorNames;

  /// Whether list shows book ratings
  @override
  bool get showBookRatings;

  /// Whether list shows book reviews
  @override
  bool get showBookReviews;

  /// List sorting preference
  @override
  ListSorting get sorting;

  /// List filtering preferences
  @override
  ListFiltering get filtering;

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListSettingsImplCopyWith<_$ListSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListStatistics _$ListStatisticsFromJson(Map<String, dynamic> json) {
  return ListStatistics.fromJson(json);
}

/// @nodoc
mixin _$ListStatistics {
  /// Total number of books
  int get totalBooks => throw _privateConstructorUsedError;

  /// Number of books by status
  Map<BookStatus, int> get booksByStatus => throw _privateConstructorUsedError;

  /// Number of books by priority
  Map<BookPriority, int> get booksByPriority =>
      throw _privateConstructorUsedError;

  /// Average book rating
  double get averageRating => throw _privateConstructorUsedError;

  /// Total number of ratings
  int get totalRatings => throw _privateConstructorUsedError;

  /// Number of books with reviews
  int get booksWithReviews => throw _privateConstructorUsedError;

  /// Number of active collaborators
  int get activeCollaborators => throw _privateConstructorUsedError;

  /// List view count
  int get viewCount => throw _privateConstructorUsedError;

  /// List share count
  int get shareCount => throw _privateConstructorUsedError;

  /// List favorite count
  int get favoriteCount => throw _privateConstructorUsedError;

  /// Last activity date
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Serializes this ListStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListStatisticsCopyWith<ListStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStatisticsCopyWith<$Res> {
  factory $ListStatisticsCopyWith(
          ListStatistics value, $Res Function(ListStatistics) then) =
      _$ListStatisticsCopyWithImpl<$Res, ListStatistics>;
  @useResult
  $Res call(
      {int totalBooks,
      Map<BookStatus, int> booksByStatus,
      Map<BookPriority, int> booksByPriority,
      double averageRating,
      int totalRatings,
      int booksWithReviews,
      int activeCollaborators,
      int viewCount,
      int shareCount,
      int favoriteCount,
      DateTime lastActivity});
}

/// @nodoc
class _$ListStatisticsCopyWithImpl<$Res, $Val extends ListStatistics>
    implements $ListStatisticsCopyWith<$Res> {
  _$ListStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooks = null,
    Object? booksByStatus = null,
    Object? booksByPriority = null,
    Object? averageRating = null,
    Object? totalRatings = null,
    Object? booksWithReviews = null,
    Object? activeCollaborators = null,
    Object? viewCount = null,
    Object? shareCount = null,
    Object? favoriteCount = null,
    Object? lastActivity = null,
  }) {
    return _then(_value.copyWith(
      totalBooks: null == totalBooks
          ? _value.totalBooks
          : totalBooks // ignore: cast_nullable_to_non_nullable
              as int,
      booksByStatus: null == booksByStatus
          ? _value.booksByStatus
          : booksByStatus // ignore: cast_nullable_to_non_nullable
              as Map<BookStatus, int>,
      booksByPriority: null == booksByPriority
          ? _value.booksByPriority
          : booksByPriority // ignore: cast_nullable_to_non_nullable
              as Map<BookPriority, int>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      booksWithReviews: null == booksWithReviews
          ? _value.booksWithReviews
          : booksWithReviews // ignore: cast_nullable_to_non_nullable
              as int,
      activeCollaborators: null == activeCollaborators
          ? _value.activeCollaborators
          : activeCollaborators // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCount: null == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListStatisticsImplCopyWith<$Res>
    implements $ListStatisticsCopyWith<$Res> {
  factory _$$ListStatisticsImplCopyWith(_$ListStatisticsImpl value,
          $Res Function(_$ListStatisticsImpl) then) =
      __$$ListStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalBooks,
      Map<BookStatus, int> booksByStatus,
      Map<BookPriority, int> booksByPriority,
      double averageRating,
      int totalRatings,
      int booksWithReviews,
      int activeCollaborators,
      int viewCount,
      int shareCount,
      int favoriteCount,
      DateTime lastActivity});
}

/// @nodoc
class __$$ListStatisticsImplCopyWithImpl<$Res>
    extends _$ListStatisticsCopyWithImpl<$Res, _$ListStatisticsImpl>
    implements _$$ListStatisticsImplCopyWith<$Res> {
  __$$ListStatisticsImplCopyWithImpl(
      _$ListStatisticsImpl _value, $Res Function(_$ListStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooks = null,
    Object? booksByStatus = null,
    Object? booksByPriority = null,
    Object? averageRating = null,
    Object? totalRatings = null,
    Object? booksWithReviews = null,
    Object? activeCollaborators = null,
    Object? viewCount = null,
    Object? shareCount = null,
    Object? favoriteCount = null,
    Object? lastActivity = null,
  }) {
    return _then(_$ListStatisticsImpl(
      totalBooks: null == totalBooks
          ? _value.totalBooks
          : totalBooks // ignore: cast_nullable_to_non_nullable
              as int,
      booksByStatus: null == booksByStatus
          ? _value._booksByStatus
          : booksByStatus // ignore: cast_nullable_to_non_nullable
              as Map<BookStatus, int>,
      booksByPriority: null == booksByPriority
          ? _value._booksByPriority
          : booksByPriority // ignore: cast_nullable_to_non_nullable
              as Map<BookPriority, int>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      booksWithReviews: null == booksWithReviews
          ? _value.booksWithReviews
          : booksWithReviews // ignore: cast_nullable_to_non_nullable
              as int,
      activeCollaborators: null == activeCollaborators
          ? _value.activeCollaborators
          : activeCollaborators // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCount: null == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListStatisticsImpl implements ListStatistics {
  const _$ListStatisticsImpl(
      {required this.totalBooks,
      required final Map<BookStatus, int> booksByStatus,
      required final Map<BookPriority, int> booksByPriority,
      required this.averageRating,
      required this.totalRatings,
      required this.booksWithReviews,
      required this.activeCollaborators,
      required this.viewCount,
      required this.shareCount,
      required this.favoriteCount,
      required this.lastActivity})
      : _booksByStatus = booksByStatus,
        _booksByPriority = booksByPriority;

  factory _$ListStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListStatisticsImplFromJson(json);

  /// Total number of books
  @override
  final int totalBooks;

  /// Number of books by status
  final Map<BookStatus, int> _booksByStatus;

  /// Number of books by status
  @override
  Map<BookStatus, int> get booksByStatus {
    if (_booksByStatus is EqualUnmodifiableMapView) return _booksByStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_booksByStatus);
  }

  /// Number of books by priority
  final Map<BookPriority, int> _booksByPriority;

  /// Number of books by priority
  @override
  Map<BookPriority, int> get booksByPriority {
    if (_booksByPriority is EqualUnmodifiableMapView) return _booksByPriority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_booksByPriority);
  }

  /// Average book rating
  @override
  final double averageRating;

  /// Total number of ratings
  @override
  final int totalRatings;

  /// Number of books with reviews
  @override
  final int booksWithReviews;

  /// Number of active collaborators
  @override
  final int activeCollaborators;

  /// List view count
  @override
  final int viewCount;

  /// List share count
  @override
  final int shareCount;

  /// List favorite count
  @override
  final int favoriteCount;

  /// Last activity date
  @override
  final DateTime lastActivity;

  @override
  String toString() {
    return 'ListStatistics(totalBooks: $totalBooks, booksByStatus: $booksByStatus, booksByPriority: $booksByPriority, averageRating: $averageRating, totalRatings: $totalRatings, booksWithReviews: $booksWithReviews, activeCollaborators: $activeCollaborators, viewCount: $viewCount, shareCount: $shareCount, favoriteCount: $favoriteCount, lastActivity: $lastActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStatisticsImpl &&
            (identical(other.totalBooks, totalBooks) ||
                other.totalBooks == totalBooks) &&
            const DeepCollectionEquality()
                .equals(other._booksByStatus, _booksByStatus) &&
            const DeepCollectionEquality()
                .equals(other._booksByPriority, _booksByPriority) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalRatings, totalRatings) ||
                other.totalRatings == totalRatings) &&
            (identical(other.booksWithReviews, booksWithReviews) ||
                other.booksWithReviews == booksWithReviews) &&
            (identical(other.activeCollaborators, activeCollaborators) ||
                other.activeCollaborators == activeCollaborators) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.shareCount, shareCount) ||
                other.shareCount == shareCount) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalBooks,
      const DeepCollectionEquality().hash(_booksByStatus),
      const DeepCollectionEquality().hash(_booksByPriority),
      averageRating,
      totalRatings,
      booksWithReviews,
      activeCollaborators,
      viewCount,
      shareCount,
      favoriteCount,
      lastActivity);

  /// Create a copy of ListStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStatisticsImplCopyWith<_$ListStatisticsImpl> get copyWith =>
      __$$ListStatisticsImplCopyWithImpl<_$ListStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListStatisticsImplToJson(
      this,
    );
  }
}

abstract class ListStatistics implements ListStatistics {
  const factory ListStatistics(
      {required final int totalBooks,
      required final Map<BookStatus, int> booksByStatus,
      required final Map<BookPriority, int> booksByPriority,
      required final double averageRating,
      required final int totalRatings,
      required final int booksWithReviews,
      required final int activeCollaborators,
      required final int viewCount,
      required final int shareCount,
      required final int favoriteCount,
      required final DateTime lastActivity}) = _$ListStatisticsImpl;

  factory ListStatistics.fromJson(Map<String, dynamic> json) =
      _$ListStatisticsImpl.fromJson;

  /// Total number of books
  @override
  int get totalBooks;

  /// Number of books by status
  @override
  Map<BookStatus, int> get booksByStatus;

  /// Number of books by priority
  @override
  Map<BookPriority, int> get booksByPriority;

  /// Average book rating
  @override
  double get averageRating;

  /// Total number of ratings
  @override
  int get totalRatings;

  /// Number of books with reviews
  @override
  int get booksWithReviews;

  /// Number of active collaborators
  @override
  int get activeCollaborators;

  /// List view count
  @override
  int get viewCount;

  /// List share count
  @override
  int get shareCount;

  /// List favorite count
  @override
  int get favoriteCount;

  /// Last activity date
  @override
  DateTime get lastActivity;

  /// Create a copy of ListStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListStatisticsImplCopyWith<_$ListStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
