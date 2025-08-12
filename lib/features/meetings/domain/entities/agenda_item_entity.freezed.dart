// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agenda_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgendaItemEntity _$AgendaItemEntityFromJson(Map<String, dynamic> json) {
  return _AgendaItemEntity.fromJson(json);
}

/// @nodoc
mixin _$AgendaItemEntity {
  /// Unique identifier for the agenda item
  String get id => throw _privateConstructorUsedError;

  /// Title of the agenda item
  String get title => throw _privateConstructorUsedError;

  /// Description of the agenda item
  String get description => throw _privateConstructorUsedError;

  /// Duration of the agenda item in minutes
  int get durationMinutes => throw _privateConstructorUsedError;

  /// Order of the agenda item in the meeting
  int get order => throw _privateConstructorUsedError;

  /// Type of the agenda item
  AgendaItemType get type => throw _privateConstructorUsedError;

  /// Whether the agenda item is required or optional
  bool get isRequired => throw _privateConstructorUsedError;

  /// Presenter or person responsible for this item
  String? get presenterId => throw _privateConstructorUsedError;

  /// Additional notes for the agenda item
  String? get notes => throw _privateConstructorUsedError;

  /// Materials or resources needed for this item
  List<String>? get materials => throw _privateConstructorUsedError;

  /// Whether this item has been completed
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this AgendaItemEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgendaItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgendaItemEntityCopyWith<AgendaItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaItemEntityCopyWith<$Res> {
  factory $AgendaItemEntityCopyWith(
          AgendaItemEntity value, $Res Function(AgendaItemEntity) then) =
      _$AgendaItemEntityCopyWithImpl<$Res, AgendaItemEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int durationMinutes,
      int order,
      AgendaItemType type,
      bool isRequired,
      String? presenterId,
      String? notes,
      List<String>? materials,
      bool isCompleted});
}

/// @nodoc
class _$AgendaItemEntityCopyWithImpl<$Res, $Val extends AgendaItemEntity>
    implements $AgendaItemEntityCopyWith<$Res> {
  _$AgendaItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgendaItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? durationMinutes = null,
    Object? order = null,
    Object? type = null,
    Object? isRequired = null,
    Object? presenterId = freezed,
    Object? notes = freezed,
    Object? materials = freezed,
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
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AgendaItemType,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      presenterId: freezed == presenterId
          ? _value.presenterId
          : presenterId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      materials: freezed == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaItemEntityImplCopyWith<$Res>
    implements $AgendaItemEntityCopyWith<$Res> {
  factory _$$AgendaItemEntityImplCopyWith(_$AgendaItemEntityImpl value,
          $Res Function(_$AgendaItemEntityImpl) then) =
      __$$AgendaItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int durationMinutes,
      int order,
      AgendaItemType type,
      bool isRequired,
      String? presenterId,
      String? notes,
      List<String>? materials,
      bool isCompleted});
}

/// @nodoc
class __$$AgendaItemEntityImplCopyWithImpl<$Res>
    extends _$AgendaItemEntityCopyWithImpl<$Res, _$AgendaItemEntityImpl>
    implements _$$AgendaItemEntityImplCopyWith<$Res> {
  __$$AgendaItemEntityImplCopyWithImpl(_$AgendaItemEntityImpl _value,
      $Res Function(_$AgendaItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgendaItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? durationMinutes = null,
    Object? order = null,
    Object? type = null,
    Object? isRequired = null,
    Object? presenterId = freezed,
    Object? notes = freezed,
    Object? materials = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$AgendaItemEntityImpl(
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
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AgendaItemType,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      presenterId: freezed == presenterId
          ? _value.presenterId
          : presenterId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      materials: freezed == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaItemEntityImpl implements _AgendaItemEntity {
  const _$AgendaItemEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.durationMinutes,
      required this.order,
      required this.type,
      required this.isRequired,
      this.presenterId,
      this.notes,
      final List<String>? materials,
      this.isCompleted = false})
      : _materials = materials;

  factory _$AgendaItemEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaItemEntityImplFromJson(json);

  /// Unique identifier for the agenda item
  @override
  final String id;

  /// Title of the agenda item
  @override
  final String title;

  /// Description of the agenda item
  @override
  final String description;

  /// Duration of the agenda item in minutes
  @override
  final int durationMinutes;

  /// Order of the agenda item in the meeting
  @override
  final int order;

  /// Type of the agenda item
  @override
  final AgendaItemType type;

  /// Whether the agenda item is required or optional
  @override
  final bool isRequired;

  /// Presenter or person responsible for this item
  @override
  final String? presenterId;

  /// Additional notes for the agenda item
  @override
  final String? notes;

  /// Materials or resources needed for this item
  final List<String>? _materials;

  /// Materials or resources needed for this item
  @override
  List<String>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Whether this item has been completed
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'AgendaItemEntity(id: $id, title: $title, description: $description, durationMinutes: $durationMinutes, order: $order, type: $type, isRequired: $isRequired, presenterId: $presenterId, notes: $notes, materials: $materials, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.presenterId, presenterId) ||
                other.presenterId == presenterId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
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
      durationMinutes,
      order,
      type,
      isRequired,
      presenterId,
      notes,
      const DeepCollectionEquality().hash(_materials),
      isCompleted);

  /// Create a copy of AgendaItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaItemEntityImplCopyWith<_$AgendaItemEntityImpl> get copyWith =>
      __$$AgendaItemEntityImplCopyWithImpl<_$AgendaItemEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaItemEntityImplToJson(
      this,
    );
  }
}

abstract class _AgendaItemEntity implements AgendaItemEntity {
  const factory _AgendaItemEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final int durationMinutes,
      required final int order,
      required final AgendaItemType type,
      required final bool isRequired,
      final String? presenterId,
      final String? notes,
      final List<String>? materials,
      final bool isCompleted}) = _$AgendaItemEntityImpl;

  factory _AgendaItemEntity.fromJson(Map<String, dynamic> json) =
      _$AgendaItemEntityImpl.fromJson;

  /// Unique identifier for the agenda item
  @override
  String get id;

  /// Title of the agenda item
  @override
  String get title;

  /// Description of the agenda item
  @override
  String get description;

  /// Duration of the agenda item in minutes
  @override
  int get durationMinutes;

  /// Order of the agenda item in the meeting
  @override
  int get order;

  /// Type of the agenda item
  @override
  AgendaItemType get type;

  /// Whether the agenda item is required or optional
  @override
  bool get isRequired;

  /// Presenter or person responsible for this item
  @override
  String? get presenterId;

  /// Additional notes for the agenda item
  @override
  String? get notes;

  /// Materials or resources needed for this item
  @override
  List<String>? get materials;

  /// Whether this item has been completed
  @override
  bool get isCompleted;

  /// Create a copy of AgendaItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgendaItemEntityImplCopyWith<_$AgendaItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
