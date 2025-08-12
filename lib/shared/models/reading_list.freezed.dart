// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadingList _$ReadingListFromJson(Map<String, dynamic> json) {
  return _ReadingList.fromJson(json);
}

/// @nodoc
mixin _$ReadingList {
  /// Unique identifier for the reading list
  String get id => throw _privateConstructorUsedError;

  /// Name of the reading list
  String get name => throw _privateConstructorUsedError;

  /// Description of the reading list
  String get description => throw _privateConstructorUsedError;

  /// Color theme for the reading list (hex color)
  String get color => throw _privateConstructorUsedError;

  /// Icon for the reading list
  String get icon => throw _privateConstructorUsedError;

  /// Whether the list is public or private
  bool get isPublic => throw _privateConstructorUsedError;

  /// Date when the list was created
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Date when the list was last modified
  DateTime get dateModified => throw _privateConstructorUsedError;

  /// List of book IDs in this reading list
  List<String> get bookIds => throw _privateConstructorUsedError;

  /// User ID who created this list
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this ReadingList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingListCopyWith<ReadingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingListCopyWith<$Res> {
  factory $ReadingListCopyWith(
          ReadingList value, $Res Function(ReadingList) then) =
      _$ReadingListCopyWithImpl<$Res, ReadingList>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String color,
      String icon,
      bool isPublic,
      DateTime dateCreated,
      DateTime dateModified,
      List<String> bookIds,
      String userId});
}

/// @nodoc
class _$ReadingListCopyWithImpl<$Res, $Val extends ReadingList>
    implements $ReadingListCopyWith<$Res> {
  _$ReadingListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? color = null,
    Object? icon = null,
    Object? isPublic = null,
    Object? dateCreated = null,
    Object? dateModified = null,
    Object? bookIds = null,
    Object? userId = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: null == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookIds: null == bookIds
          ? _value.bookIds
          : bookIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingListImplCopyWith<$Res>
    implements $ReadingListCopyWith<$Res> {
  factory _$$ReadingListImplCopyWith(
          _$ReadingListImpl value, $Res Function(_$ReadingListImpl) then) =
      __$$ReadingListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String color,
      String icon,
      bool isPublic,
      DateTime dateCreated,
      DateTime dateModified,
      List<String> bookIds,
      String userId});
}

/// @nodoc
class __$$ReadingListImplCopyWithImpl<$Res>
    extends _$ReadingListCopyWithImpl<$Res, _$ReadingListImpl>
    implements _$$ReadingListImplCopyWith<$Res> {
  __$$ReadingListImplCopyWithImpl(
      _$ReadingListImpl _value, $Res Function(_$ReadingListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? color = null,
    Object? icon = null,
    Object? isPublic = null,
    Object? dateCreated = null,
    Object? dateModified = null,
    Object? bookIds = null,
    Object? userId = null,
  }) {
    return _then(_$ReadingListImpl(
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: null == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookIds: null == bookIds
          ? _value._bookIds
          : bookIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingListImpl implements _ReadingList {
  const _$ReadingListImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.color,
      required this.icon,
      required this.isPublic,
      required this.dateCreated,
      required this.dateModified,
      required final List<String> bookIds,
      required this.userId})
      : _bookIds = bookIds;

  factory _$ReadingListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingListImplFromJson(json);

  /// Unique identifier for the reading list
  @override
  final String id;

  /// Name of the reading list
  @override
  final String name;

  /// Description of the reading list
  @override
  final String description;

  /// Color theme for the reading list (hex color)
  @override
  final String color;

  /// Icon for the reading list
  @override
  final String icon;

  /// Whether the list is public or private
  @override
  final bool isPublic;

  /// Date when the list was created
  @override
  final DateTime dateCreated;

  /// Date when the list was last modified
  @override
  final DateTime dateModified;

  /// List of book IDs in this reading list
  final List<String> _bookIds;

  /// List of book IDs in this reading list
  @override
  List<String> get bookIds {
    if (_bookIds is EqualUnmodifiableListView) return _bookIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookIds);
  }

  /// User ID who created this list
  @override
  final String userId;

  @override
  String toString() {
    return 'ReadingList(id: $id, name: $name, description: $description, color: $color, icon: $icon, isPublic: $isPublic, dateCreated: $dateCreated, dateModified: $dateModified, bookIds: $bookIds, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            const DeepCollectionEquality().equals(other._bookIds, _bookIds) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      color,
      icon,
      isPublic,
      dateCreated,
      dateModified,
      const DeepCollectionEquality().hash(_bookIds),
      userId);

  /// Create a copy of ReadingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingListImplCopyWith<_$ReadingListImpl> get copyWith =>
      __$$ReadingListImplCopyWithImpl<_$ReadingListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingListImplToJson(
      this,
    );
  }
}

abstract class _ReadingList implements ReadingList {
  const factory _ReadingList(
      {required final String id,
      required final String name,
      required final String description,
      required final String color,
      required final String icon,
      required final bool isPublic,
      required final DateTime dateCreated,
      required final DateTime dateModified,
      required final List<String> bookIds,
      required final String userId}) = _$ReadingListImpl;

  factory _ReadingList.fromJson(Map<String, dynamic> json) =
      _$ReadingListImpl.fromJson;

  /// Unique identifier for the reading list
  @override
  String get id;

  /// Name of the reading list
  @override
  String get name;

  /// Description of the reading list
  @override
  String get description;

  /// Color theme for the reading list (hex color)
  @override
  String get color;

  /// Icon for the reading list
  @override
  String get icon;

  /// Whether the list is public or private
  @override
  bool get isPublic;

  /// Date when the list was created
  @override
  DateTime get dateCreated;

  /// Date when the list was last modified
  @override
  DateTime get dateModified;

  /// List of book IDs in this reading list
  @override
  List<String> get bookIds;

  /// User ID who created this list
  @override
  String get userId;

  /// Create a copy of ReadingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingListImplCopyWith<_$ReadingListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
