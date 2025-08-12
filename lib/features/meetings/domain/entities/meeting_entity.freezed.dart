// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingEntity _$MeetingEntityFromJson(Map<String, dynamic> json) {
  return _MeetingEntity.fromJson(json);
}

/// @nodoc
mixin _$MeetingEntity {
  /// Meeting ID
  String get id => throw _privateConstructorUsedError;

  /// Reading group ID
  String get groupId => throw _privateConstructorUsedError;

  /// Meeting title
  String get title => throw _privateConstructorUsedError;

  /// Meeting description
  String get description => throw _privateConstructorUsedError;

  /// Meeting type
  MeetingType get type => throw _privateConstructorUsedError;

  /// Meeting date and time
  DateTime get meetingDateTime => throw _privateConstructorUsedError;

  /// Meeting duration in minutes
  int get durationMinutes => throw _privateConstructorUsedError;

  /// Meeting host ID
  String get hostId => throw _privateConstructorUsedError;

  /// Meeting participants
  List<String> get participants => throw _privateConstructorUsedError;

  /// Meeting status
  MeetingStatus get status => throw _privateConstructorUsedError;

  /// Meeting platform
  MeetingPlatform get platform => throw _privateConstructorUsedError;

  /// Meeting link/URL
  String? get meetingLink => throw _privateConstructorUsedError;

  /// Meeting password (if required)
  String? get meetingPassword => throw _privateConstructorUsedError;

  /// Meeting recording URL
  String? get recordingUrl => throw _privateConstructorUsedError;

  /// Meeting notes
  String? get notes => throw _privateConstructorUsedError;

  /// Meeting materials
  List<String> get materials => throw _privateConstructorUsedError;

  /// Meeting agenda
// required List<AgendaItemEntity> agenda,
  /// Meeting reminders
// required List<MeetingReminderEntity> reminders,
  /// Meeting creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Meeting last updated date
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Serializes this MeetingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingEntityCopyWith<MeetingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingEntityCopyWith<$Res> {
  factory $MeetingEntityCopyWith(
          MeetingEntity value, $Res Function(MeetingEntity) then) =
      _$MeetingEntityCopyWithImpl<$Res, MeetingEntity>;
  @useResult
  $Res call(
      {String id,
      String groupId,
      String title,
      String description,
      MeetingType type,
      DateTime meetingDateTime,
      int durationMinutes,
      String hostId,
      List<String> participants,
      MeetingStatus status,
      MeetingPlatform platform,
      String? meetingLink,
      String? meetingPassword,
      String? recordingUrl,
      String? notes,
      List<String> materials,
      DateTime dateCreated,
      DateTime dateUpdated});
}

/// @nodoc
class _$MeetingEntityCopyWithImpl<$Res, $Val extends MeetingEntity>
    implements $MeetingEntityCopyWith<$Res> {
  _$MeetingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? meetingDateTime = null,
    Object? durationMinutes = null,
    Object? hostId = null,
    Object? participants = null,
    Object? status = null,
    Object? platform = null,
    Object? meetingLink = freezed,
    Object? meetingPassword = freezed,
    Object? recordingUrl = freezed,
    Object? notes = freezed,
    Object? materials = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeetingType,
      meetingDateTime: null == meetingDateTime
          ? _value.meetingDateTime
          : meetingDateTime // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MeetingStatus,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as MeetingPlatform,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingPassword: freezed == meetingPassword
          ? _value.meetingPassword
          : meetingPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingEntityImplCopyWith<$Res>
    implements $MeetingEntityCopyWith<$Res> {
  factory _$$MeetingEntityImplCopyWith(
          _$MeetingEntityImpl value, $Res Function(_$MeetingEntityImpl) then) =
      __$$MeetingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String groupId,
      String title,
      String description,
      MeetingType type,
      DateTime meetingDateTime,
      int durationMinutes,
      String hostId,
      List<String> participants,
      MeetingStatus status,
      MeetingPlatform platform,
      String? meetingLink,
      String? meetingPassword,
      String? recordingUrl,
      String? notes,
      List<String> materials,
      DateTime dateCreated,
      DateTime dateUpdated});
}

/// @nodoc
class __$$MeetingEntityImplCopyWithImpl<$Res>
    extends _$MeetingEntityCopyWithImpl<$Res, _$MeetingEntityImpl>
    implements _$$MeetingEntityImplCopyWith<$Res> {
  __$$MeetingEntityImplCopyWithImpl(
      _$MeetingEntityImpl _value, $Res Function(_$MeetingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? meetingDateTime = null,
    Object? durationMinutes = null,
    Object? hostId = null,
    Object? participants = null,
    Object? status = null,
    Object? platform = null,
    Object? meetingLink = freezed,
    Object? meetingPassword = freezed,
    Object? recordingUrl = freezed,
    Object? notes = freezed,
    Object? materials = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_$MeetingEntityImpl(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeetingType,
      meetingDateTime: null == meetingDateTime
          ? _value.meetingDateTime
          : meetingDateTime // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MeetingStatus,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as MeetingPlatform,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingPassword: freezed == meetingPassword
          ? _value.meetingPassword
          : meetingPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingEntityImpl implements _MeetingEntity {
  const _$MeetingEntityImpl(
      {required this.id,
      required this.groupId,
      required this.title,
      required this.description,
      required this.type,
      required this.meetingDateTime,
      required this.durationMinutes,
      required this.hostId,
      required final List<String> participants,
      required this.status,
      required this.platform,
      this.meetingLink,
      this.meetingPassword,
      this.recordingUrl,
      this.notes,
      required final List<String> materials,
      required this.dateCreated,
      required this.dateUpdated})
      : _participants = participants,
        _materials = materials;

  factory _$MeetingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingEntityImplFromJson(json);

  /// Meeting ID
  @override
  final String id;

  /// Reading group ID
  @override
  final String groupId;

  /// Meeting title
  @override
  final String title;

  /// Meeting description
  @override
  final String description;

  /// Meeting type
  @override
  final MeetingType type;

  /// Meeting date and time
  @override
  final DateTime meetingDateTime;

  /// Meeting duration in minutes
  @override
  final int durationMinutes;

  /// Meeting host ID
  @override
  final String hostId;

  /// Meeting participants
  final List<String> _participants;

  /// Meeting participants
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  /// Meeting status
  @override
  final MeetingStatus status;

  /// Meeting platform
  @override
  final MeetingPlatform platform;

  /// Meeting link/URL
  @override
  final String? meetingLink;

  /// Meeting password (if required)
  @override
  final String? meetingPassword;

  /// Meeting recording URL
  @override
  final String? recordingUrl;

  /// Meeting notes
  @override
  final String? notes;

  /// Meeting materials
  final List<String> _materials;

  /// Meeting materials
  @override
  List<String> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  /// Meeting agenda
// required List<AgendaItemEntity> agenda,
  /// Meeting reminders
// required List<MeetingReminderEntity> reminders,
  /// Meeting creation date
  @override
  final DateTime dateCreated;

  /// Meeting last updated date
  @override
  final DateTime dateUpdated;

  @override
  String toString() {
    return 'MeetingEntity(id: $id, groupId: $groupId, title: $title, description: $description, type: $type, meetingDateTime: $meetingDateTime, durationMinutes: $durationMinutes, hostId: $hostId, participants: $participants, status: $status, platform: $platform, meetingLink: $meetingLink, meetingPassword: $meetingPassword, recordingUrl: $recordingUrl, notes: $notes, materials: $materials, dateCreated: $dateCreated, dateUpdated: $dateUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.meetingDateTime, meetingDateTime) ||
                other.meetingDateTime == meetingDateTime) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.meetingLink, meetingLink) ||
                other.meetingLink == meetingLink) &&
            (identical(other.meetingPassword, meetingPassword) ||
                other.meetingPassword == meetingPassword) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      groupId,
      title,
      description,
      type,
      meetingDateTime,
      durationMinutes,
      hostId,
      const DeepCollectionEquality().hash(_participants),
      status,
      platform,
      meetingLink,
      meetingPassword,
      recordingUrl,
      notes,
      const DeepCollectionEquality().hash(_materials),
      dateCreated,
      dateUpdated);

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingEntityImplCopyWith<_$MeetingEntityImpl> get copyWith =>
      __$$MeetingEntityImplCopyWithImpl<_$MeetingEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingEntityImplToJson(
      this,
    );
  }
}

abstract class _MeetingEntity implements MeetingEntity {
  const factory _MeetingEntity(
      {required final String id,
      required final String groupId,
      required final String title,
      required final String description,
      required final MeetingType type,
      required final DateTime meetingDateTime,
      required final int durationMinutes,
      required final String hostId,
      required final List<String> participants,
      required final MeetingStatus status,
      required final MeetingPlatform platform,
      final String? meetingLink,
      final String? meetingPassword,
      final String? recordingUrl,
      final String? notes,
      required final List<String> materials,
      required final DateTime dateCreated,
      required final DateTime dateUpdated}) = _$MeetingEntityImpl;

  factory _MeetingEntity.fromJson(Map<String, dynamic> json) =
      _$MeetingEntityImpl.fromJson;

  /// Meeting ID
  @override
  String get id;

  /// Reading group ID
  @override
  String get groupId;

  /// Meeting title
  @override
  String get title;

  /// Meeting description
  @override
  String get description;

  /// Meeting type
  @override
  MeetingType get type;

  /// Meeting date and time
  @override
  DateTime get meetingDateTime;

  /// Meeting duration in minutes
  @override
  int get durationMinutes;

  /// Meeting host ID
  @override
  String get hostId;

  /// Meeting participants
  @override
  List<String> get participants;

  /// Meeting status
  @override
  MeetingStatus get status;

  /// Meeting platform
  @override
  MeetingPlatform get platform;

  /// Meeting link/URL
  @override
  String? get meetingLink;

  /// Meeting password (if required)
  @override
  String? get meetingPassword;

  /// Meeting recording URL
  @override
  String? get recordingUrl;

  /// Meeting notes
  @override
  String? get notes;

  /// Meeting materials
  @override
  List<String> get materials;

  /// Meeting agenda
// required List<AgendaItemEntity> agenda,
  /// Meeting reminders
// required List<MeetingReminderEntity> reminders,
  /// Meeting creation date
  @override
  DateTime get dateCreated;

  /// Meeting last updated date
  @override
  DateTime get dateUpdated;

  /// Create a copy of MeetingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingEntityImplCopyWith<_$MeetingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
