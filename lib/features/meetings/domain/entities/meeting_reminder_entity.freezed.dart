// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_reminder_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingReminderEntity _$MeetingReminderEntityFromJson(
    Map<String, dynamic> json) {
  return _MeetingReminderEntity.fromJson(json);
}

/// @nodoc
mixin _$MeetingReminderEntity {
  /// Unique identifier for the reminder
  String get id => throw _privateConstructorUsedError;

  /// Meeting ID this reminder belongs to
  String get meetingId => throw _privateConstructorUsedError;

  /// User ID who should receive the reminder
  String get userId => throw _privateConstructorUsedError;

  /// Type of reminder
  ReminderType get type => throw _privateConstructorUsedError;

  /// When the reminder should be sent (relative to meeting time)
  int get minutesBeforeMeeting => throw _privateConstructorUsedError;

  /// Whether the reminder has been sent
  bool get isSent => throw _privateConstructorUsedError;

  /// When the reminder was sent
  DateTime? get sentAt => throw _privateConstructorUsedError;

  /// Whether the reminder is active
  bool get isActive => throw _privateConstructorUsedError;

  /// Custom message for the reminder
  String? get customMessage => throw _privateConstructorUsedError;

  /// Serializes this MeetingReminderEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingReminderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingReminderEntityCopyWith<MeetingReminderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingReminderEntityCopyWith<$Res> {
  factory $MeetingReminderEntityCopyWith(MeetingReminderEntity value,
          $Res Function(MeetingReminderEntity) then) =
      _$MeetingReminderEntityCopyWithImpl<$Res, MeetingReminderEntity>;
  @useResult
  $Res call(
      {String id,
      String meetingId,
      String userId,
      ReminderType type,
      int minutesBeforeMeeting,
      bool isSent,
      DateTime? sentAt,
      bool isActive,
      String? customMessage});
}

/// @nodoc
class _$MeetingReminderEntityCopyWithImpl<$Res,
        $Val extends MeetingReminderEntity>
    implements $MeetingReminderEntityCopyWith<$Res> {
  _$MeetingReminderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingReminderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? meetingId = null,
    Object? userId = null,
    Object? type = null,
    Object? minutesBeforeMeeting = null,
    Object? isSent = null,
    Object? sentAt = freezed,
    Object? isActive = null,
    Object? customMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReminderType,
      minutesBeforeMeeting: null == minutesBeforeMeeting
          ? _value.minutesBeforeMeeting
          : minutesBeforeMeeting // ignore: cast_nullable_to_non_nullable
              as int,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      customMessage: freezed == customMessage
          ? _value.customMessage
          : customMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingReminderEntityImplCopyWith<$Res>
    implements $MeetingReminderEntityCopyWith<$Res> {
  factory _$$MeetingReminderEntityImplCopyWith(
          _$MeetingReminderEntityImpl value,
          $Res Function(_$MeetingReminderEntityImpl) then) =
      __$$MeetingReminderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String meetingId,
      String userId,
      ReminderType type,
      int minutesBeforeMeeting,
      bool isSent,
      DateTime? sentAt,
      bool isActive,
      String? customMessage});
}

/// @nodoc
class __$$MeetingReminderEntityImplCopyWithImpl<$Res>
    extends _$MeetingReminderEntityCopyWithImpl<$Res,
        _$MeetingReminderEntityImpl>
    implements _$$MeetingReminderEntityImplCopyWith<$Res> {
  __$$MeetingReminderEntityImplCopyWithImpl(_$MeetingReminderEntityImpl _value,
      $Res Function(_$MeetingReminderEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingReminderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? meetingId = null,
    Object? userId = null,
    Object? type = null,
    Object? minutesBeforeMeeting = null,
    Object? isSent = null,
    Object? sentAt = freezed,
    Object? isActive = null,
    Object? customMessage = freezed,
  }) {
    return _then(_$MeetingReminderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReminderType,
      minutesBeforeMeeting: null == minutesBeforeMeeting
          ? _value.minutesBeforeMeeting
          : minutesBeforeMeeting // ignore: cast_nullable_to_non_nullable
              as int,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      customMessage: freezed == customMessage
          ? _value.customMessage
          : customMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingReminderEntityImpl implements _MeetingReminderEntity {
  const _$MeetingReminderEntityImpl(
      {required this.id,
      required this.meetingId,
      required this.userId,
      required this.type,
      required this.minutesBeforeMeeting,
      this.isSent = false,
      this.sentAt,
      this.isActive = true,
      this.customMessage});

  factory _$MeetingReminderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingReminderEntityImplFromJson(json);

  /// Unique identifier for the reminder
  @override
  final String id;

  /// Meeting ID this reminder belongs to
  @override
  final String meetingId;

  /// User ID who should receive the reminder
  @override
  final String userId;

  /// Type of reminder
  @override
  final ReminderType type;

  /// When the reminder should be sent (relative to meeting time)
  @override
  final int minutesBeforeMeeting;

  /// Whether the reminder has been sent
  @override
  @JsonKey()
  final bool isSent;

  /// When the reminder was sent
  @override
  final DateTime? sentAt;

  /// Whether the reminder is active
  @override
  @JsonKey()
  final bool isActive;

  /// Custom message for the reminder
  @override
  final String? customMessage;

  @override
  String toString() {
    return 'MeetingReminderEntity(id: $id, meetingId: $meetingId, userId: $userId, type: $type, minutesBeforeMeeting: $minutesBeforeMeeting, isSent: $isSent, sentAt: $sentAt, isActive: $isActive, customMessage: $customMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingReminderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.minutesBeforeMeeting, minutesBeforeMeeting) ||
                other.minutesBeforeMeeting == minutesBeforeMeeting) &&
            (identical(other.isSent, isSent) || other.isSent == isSent) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.customMessage, customMessage) ||
                other.customMessage == customMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, meetingId, userId, type,
      minutesBeforeMeeting, isSent, sentAt, isActive, customMessage);

  /// Create a copy of MeetingReminderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingReminderEntityImplCopyWith<_$MeetingReminderEntityImpl>
      get copyWith => __$$MeetingReminderEntityImplCopyWithImpl<
          _$MeetingReminderEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingReminderEntityImplToJson(
      this,
    );
  }
}

abstract class _MeetingReminderEntity implements MeetingReminderEntity {
  const factory _MeetingReminderEntity(
      {required final String id,
      required final String meetingId,
      required final String userId,
      required final ReminderType type,
      required final int minutesBeforeMeeting,
      final bool isSent,
      final DateTime? sentAt,
      final bool isActive,
      final String? customMessage}) = _$MeetingReminderEntityImpl;

  factory _MeetingReminderEntity.fromJson(Map<String, dynamic> json) =
      _$MeetingReminderEntityImpl.fromJson;

  /// Unique identifier for the reminder
  @override
  String get id;

  /// Meeting ID this reminder belongs to
  @override
  String get meetingId;

  /// User ID who should receive the reminder
  @override
  String get userId;

  /// Type of reminder
  @override
  ReminderType get type;

  /// When the reminder should be sent (relative to meeting time)
  @override
  int get minutesBeforeMeeting;

  /// Whether the reminder has been sent
  @override
  bool get isSent;

  /// When the reminder was sent
  @override
  DateTime? get sentAt;

  /// Whether the reminder is active
  @override
  bool get isActive;

  /// Custom message for the reminder
  @override
  String? get customMessage;

  /// Create a copy of MeetingReminderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingReminderEntityImplCopyWith<_$MeetingReminderEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
