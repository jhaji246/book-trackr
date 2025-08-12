// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_scheduling.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupMeeting _$GroupMeetingFromJson(Map<String, dynamic> json) {
  return _GroupMeeting.fromJson(json);
}

/// @nodoc
mixin _$GroupMeeting {
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
  List<AgendaItem> get agenda => throw _privateConstructorUsedError;

  /// Meeting reminders
  List<MeetingReminder> get reminders => throw _privateConstructorUsedError;

  /// Meeting creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Meeting last updated date
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Serializes this GroupMeeting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupMeeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMeetingCopyWith<GroupMeeting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMeetingCopyWith<$Res> {
  factory $GroupMeetingCopyWith(
          GroupMeeting value, $Res Function(GroupMeeting) then) =
      _$GroupMeetingCopyWithImpl<$Res, GroupMeeting>;
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
      List<AgendaItem> agenda,
      List<MeetingReminder> reminders,
      DateTime dateCreated,
      DateTime dateUpdated});
}

/// @nodoc
class _$GroupMeetingCopyWithImpl<$Res, $Val extends GroupMeeting>
    implements $GroupMeetingCopyWith<$Res> {
  _$GroupMeetingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMeeting
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
    Object? agenda = null,
    Object? reminders = null,
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
      agenda: null == agenda
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as List<AgendaItem>,
      reminders: null == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<MeetingReminder>,
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
abstract class _$$GroupMeetingImplCopyWith<$Res>
    implements $GroupMeetingCopyWith<$Res> {
  factory _$$GroupMeetingImplCopyWith(
          _$GroupMeetingImpl value, $Res Function(_$GroupMeetingImpl) then) =
      __$$GroupMeetingImplCopyWithImpl<$Res>;
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
      List<AgendaItem> agenda,
      List<MeetingReminder> reminders,
      DateTime dateCreated,
      DateTime dateUpdated});
}

/// @nodoc
class __$$GroupMeetingImplCopyWithImpl<$Res>
    extends _$GroupMeetingCopyWithImpl<$Res, _$GroupMeetingImpl>
    implements _$$GroupMeetingImplCopyWith<$Res> {
  __$$GroupMeetingImplCopyWithImpl(
      _$GroupMeetingImpl _value, $Res Function(_$GroupMeetingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupMeeting
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
    Object? agenda = null,
    Object? reminders = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_$GroupMeetingImpl(
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
      agenda: null == agenda
          ? _value._agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as List<AgendaItem>,
      reminders: null == reminders
          ? _value._reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<MeetingReminder>,
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
class _$GroupMeetingImpl implements _GroupMeeting {
  const _$GroupMeetingImpl(
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
      required final List<AgendaItem> agenda,
      required final List<MeetingReminder> reminders,
      required this.dateCreated,
      required this.dateUpdated})
      : _participants = participants,
        _materials = materials,
        _agenda = agenda,
        _reminders = reminders;

  factory _$GroupMeetingImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupMeetingImplFromJson(json);

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
  final List<AgendaItem> _agenda;

  /// Meeting agenda
  @override
  List<AgendaItem> get agenda {
    if (_agenda is EqualUnmodifiableListView) return _agenda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agenda);
  }

  /// Meeting reminders
  final List<MeetingReminder> _reminders;

  /// Meeting reminders
  @override
  List<MeetingReminder> get reminders {
    if (_reminders is EqualUnmodifiableListView) return _reminders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reminders);
  }

  /// Meeting creation date
  @override
  final DateTime dateCreated;

  /// Meeting last updated date
  @override
  final DateTime dateUpdated;

  @override
  String toString() {
    return 'GroupMeeting(id: $id, groupId: $groupId, title: $title, description: $description, type: $type, meetingDateTime: $meetingDateTime, durationMinutes: $durationMinutes, hostId: $hostId, participants: $participants, status: $status, platform: $platform, meetingLink: $meetingLink, meetingPassword: $meetingPassword, recordingUrl: $recordingUrl, notes: $notes, materials: $materials, agenda: $agenda, reminders: $reminders, dateCreated: $dateCreated, dateUpdated: $dateUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMeetingImpl &&
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
            const DeepCollectionEquality().equals(other._agenda, _agenda) &&
            const DeepCollectionEquality()
                .equals(other._reminders, _reminders) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        const DeepCollectionEquality().hash(_agenda),
        const DeepCollectionEquality().hash(_reminders),
        dateCreated,
        dateUpdated
      ]);

  /// Create a copy of GroupMeeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMeetingImplCopyWith<_$GroupMeetingImpl> get copyWith =>
      __$$GroupMeetingImplCopyWithImpl<_$GroupMeetingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupMeetingImplToJson(
      this,
    );
  }
}

abstract class _GroupMeeting implements GroupMeeting {
  const factory _GroupMeeting(
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
      required final List<AgendaItem> agenda,
      required final List<MeetingReminder> reminders,
      required final DateTime dateCreated,
      required final DateTime dateUpdated}) = _$GroupMeetingImpl;

  factory _GroupMeeting.fromJson(Map<String, dynamic> json) =
      _$GroupMeetingImpl.fromJson;

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
  @override
  List<AgendaItem> get agenda;

  /// Meeting reminders
  @override
  List<MeetingReminder> get reminders;

  /// Meeting creation date
  @override
  DateTime get dateCreated;

  /// Meeting last updated date
  @override
  DateTime get dateUpdated;

  /// Create a copy of GroupMeeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMeetingImplCopyWith<_$GroupMeetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgendaItem _$AgendaItemFromJson(Map<String, dynamic> json) {
  return _AgendaItem.fromJson(json);
}

/// @nodoc
mixin _$AgendaItem {
  /// Agenda item ID
  String get id => throw _privateConstructorUsedError;

  /// Item title
  String get title => throw _privateConstructorUsedError;

  /// Item description
  String get description => throw _privateConstructorUsedError;

  /// Duration in minutes
  int get durationMinutes => throw _privateConstructorUsedError;

  /// Display order
  int get order => throw _privateConstructorUsedError;

  /// Whether item is completed
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Item notes
  String? get notes => throw _privateConstructorUsedError;

  /// Item presenter
  String? get presenterId => throw _privateConstructorUsedError;

  /// Serializes this AgendaItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgendaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgendaItemCopyWith<AgendaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaItemCopyWith<$Res> {
  factory $AgendaItemCopyWith(
          AgendaItem value, $Res Function(AgendaItem) then) =
      _$AgendaItemCopyWithImpl<$Res, AgendaItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int durationMinutes,
      int order,
      bool isCompleted,
      String? notes,
      String? presenterId});
}

/// @nodoc
class _$AgendaItemCopyWithImpl<$Res, $Val extends AgendaItem>
    implements $AgendaItemCopyWith<$Res> {
  _$AgendaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgendaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? durationMinutes = null,
    Object? order = null,
    Object? isCompleted = null,
    Object? notes = freezed,
    Object? presenterId = freezed,
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
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      presenterId: freezed == presenterId
          ? _value.presenterId
          : presenterId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaItemImplCopyWith<$Res>
    implements $AgendaItemCopyWith<$Res> {
  factory _$$AgendaItemImplCopyWith(
          _$AgendaItemImpl value, $Res Function(_$AgendaItemImpl) then) =
      __$$AgendaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int durationMinutes,
      int order,
      bool isCompleted,
      String? notes,
      String? presenterId});
}

/// @nodoc
class __$$AgendaItemImplCopyWithImpl<$Res>
    extends _$AgendaItemCopyWithImpl<$Res, _$AgendaItemImpl>
    implements _$$AgendaItemImplCopyWith<$Res> {
  __$$AgendaItemImplCopyWithImpl(
      _$AgendaItemImpl _value, $Res Function(_$AgendaItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgendaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? durationMinutes = null,
    Object? order = null,
    Object? isCompleted = null,
    Object? notes = freezed,
    Object? presenterId = freezed,
  }) {
    return _then(_$AgendaItemImpl(
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
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      presenterId: freezed == presenterId
          ? _value.presenterId
          : presenterId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgendaItemImpl implements _AgendaItem {
  const _$AgendaItemImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.durationMinutes,
      required this.order,
      required this.isCompleted,
      this.notes,
      this.presenterId});

  factory _$AgendaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaItemImplFromJson(json);

  /// Agenda item ID
  @override
  final String id;

  /// Item title
  @override
  final String title;

  /// Item description
  @override
  final String description;

  /// Duration in minutes
  @override
  final int durationMinutes;

  /// Display order
  @override
  final int order;

  /// Whether item is completed
  @override
  final bool isCompleted;

  /// Item notes
  @override
  final String? notes;

  /// Item presenter
  @override
  final String? presenterId;

  @override
  String toString() {
    return 'AgendaItem(id: $id, title: $title, description: $description, durationMinutes: $durationMinutes, order: $order, isCompleted: $isCompleted, notes: $notes, presenterId: $presenterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.presenterId, presenterId) ||
                other.presenterId == presenterId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      durationMinutes, order, isCompleted, notes, presenterId);

  /// Create a copy of AgendaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaItemImplCopyWith<_$AgendaItemImpl> get copyWith =>
      __$$AgendaItemImplCopyWithImpl<_$AgendaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaItemImplToJson(
      this,
    );
  }
}

abstract class _AgendaItem implements AgendaItem {
  const factory _AgendaItem(
      {required final String id,
      required final String title,
      required final String description,
      required final int durationMinutes,
      required final int order,
      required final bool isCompleted,
      final String? notes,
      final String? presenterId}) = _$AgendaItemImpl;

  factory _AgendaItem.fromJson(Map<String, dynamic> json) =
      _$AgendaItemImpl.fromJson;

  /// Agenda item ID
  @override
  String get id;

  /// Item title
  @override
  String get title;

  /// Item description
  @override
  String get description;

  /// Duration in minutes
  @override
  int get durationMinutes;

  /// Display order
  @override
  int get order;

  /// Whether item is completed
  @override
  bool get isCompleted;

  /// Item notes
  @override
  String? get notes;

  /// Item presenter
  @override
  String? get presenterId;

  /// Create a copy of AgendaItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgendaItemImplCopyWith<_$AgendaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingReminder _$MeetingReminderFromJson(Map<String, dynamic> json) {
  return _MeetingReminder.fromJson(json);
}

/// @nodoc
mixin _$MeetingReminder {
  /// Reminder ID
  String get id => throw _privateConstructorUsedError;

  /// Reminder type
  ReminderType get type => throw _privateConstructorUsedError;

  /// Reminder message
  String get message => throw _privateConstructorUsedError;

  /// When to send the reminder
  DateTime get sendTime => throw _privateConstructorUsedError;

  /// Whether reminder has been sent
  bool get isSent => throw _privateConstructorUsedError;

  /// Reminder sent date
  DateTime? get sentDate => throw _privateConstructorUsedError;

  /// Serializes this MeetingReminder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingReminder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingReminderCopyWith<MeetingReminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingReminderCopyWith<$Res> {
  factory $MeetingReminderCopyWith(
          MeetingReminder value, $Res Function(MeetingReminder) then) =
      _$MeetingReminderCopyWithImpl<$Res, MeetingReminder>;
  @useResult
  $Res call(
      {String id,
      ReminderType type,
      String message,
      DateTime sendTime,
      bool isSent,
      DateTime? sentDate});
}

/// @nodoc
class _$MeetingReminderCopyWithImpl<$Res, $Val extends MeetingReminder>
    implements $MeetingReminderCopyWith<$Res> {
  _$MeetingReminderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingReminder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? message = null,
    Object? sendTime = null,
    Object? isSent = null,
    Object? sentDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReminderType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sendTime: null == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingReminderImplCopyWith<$Res>
    implements $MeetingReminderCopyWith<$Res> {
  factory _$$MeetingReminderImplCopyWith(_$MeetingReminderImpl value,
          $Res Function(_$MeetingReminderImpl) then) =
      __$$MeetingReminderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ReminderType type,
      String message,
      DateTime sendTime,
      bool isSent,
      DateTime? sentDate});
}

/// @nodoc
class __$$MeetingReminderImplCopyWithImpl<$Res>
    extends _$MeetingReminderCopyWithImpl<$Res, _$MeetingReminderImpl>
    implements _$$MeetingReminderImplCopyWith<$Res> {
  __$$MeetingReminderImplCopyWithImpl(
      _$MeetingReminderImpl _value, $Res Function(_$MeetingReminderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingReminder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? message = null,
    Object? sendTime = null,
    Object? isSent = null,
    Object? sentDate = freezed,
  }) {
    return _then(_$MeetingReminderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReminderType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sendTime: null == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingReminderImpl implements _MeetingReminder {
  const _$MeetingReminderImpl(
      {required this.id,
      required this.type,
      required this.message,
      required this.sendTime,
      required this.isSent,
      this.sentDate});

  factory _$MeetingReminderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingReminderImplFromJson(json);

  /// Reminder ID
  @override
  final String id;

  /// Reminder type
  @override
  final ReminderType type;

  /// Reminder message
  @override
  final String message;

  /// When to send the reminder
  @override
  final DateTime sendTime;

  /// Whether reminder has been sent
  @override
  final bool isSent;

  /// Reminder sent date
  @override
  final DateTime? sentDate;

  @override
  String toString() {
    return 'MeetingReminder(id: $id, type: $type, message: $message, sendTime: $sendTime, isSent: $isSent, sentDate: $sentDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingReminderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sendTime, sendTime) ||
                other.sendTime == sendTime) &&
            (identical(other.isSent, isSent) || other.isSent == isSent) &&
            (identical(other.sentDate, sentDate) ||
                other.sentDate == sentDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, message, sendTime, isSent, sentDate);

  /// Create a copy of MeetingReminder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingReminderImplCopyWith<_$MeetingReminderImpl> get copyWith =>
      __$$MeetingReminderImplCopyWithImpl<_$MeetingReminderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingReminderImplToJson(
      this,
    );
  }
}

abstract class _MeetingReminder implements MeetingReminder {
  const factory _MeetingReminder(
      {required final String id,
      required final ReminderType type,
      required final String message,
      required final DateTime sendTime,
      required final bool isSent,
      final DateTime? sentDate}) = _$MeetingReminderImpl;

  factory _MeetingReminder.fromJson(Map<String, dynamic> json) =
      _$MeetingReminderImpl.fromJson;

  /// Reminder ID
  @override
  String get id;

  /// Reminder type
  @override
  ReminderType get type;

  /// Reminder message
  @override
  String get message;

  /// When to send the reminder
  @override
  DateTime get sendTime;

  /// Whether reminder has been sent
  @override
  bool get isSent;

  /// Reminder sent date
  @override
  DateTime? get sentDate;

  /// Create a copy of MeetingReminder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingReminderImplCopyWith<_$MeetingReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingParticipant _$MeetingParticipantFromJson(Map<String, dynamic> json) {
  return _MeetingParticipant.fromJson(json);
}

/// @nodoc
mixin _$MeetingParticipant {
  /// User ID
  String get userId => throw _privateConstructorUsedError;

  /// User's display name
  String get displayName => throw _privateConstructorUsedError;

  /// User's profile picture URL
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// Participant role
  ParticipantRole get role => throw _privateConstructorUsedError;

  /// Whether participant has joined
  bool get hasJoined => throw _privateConstructorUsedError;

  /// Join time
  DateTime? get joinTime => throw _privateConstructorUsedError;

  /// Leave time
  DateTime? get leaveTime => throw _privateConstructorUsedError;

  /// Participant status
  ParticipantStatus get status => throw _privateConstructorUsedError;

  /// Participant notes
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this MeetingParticipant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingParticipantCopyWith<MeetingParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingParticipantCopyWith<$Res> {
  factory $MeetingParticipantCopyWith(
          MeetingParticipant value, $Res Function(MeetingParticipant) then) =
      _$MeetingParticipantCopyWithImpl<$Res, MeetingParticipant>;
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? profilePictureUrl,
      ParticipantRole role,
      bool hasJoined,
      DateTime? joinTime,
      DateTime? leaveTime,
      ParticipantStatus status,
      String? notes});
}

/// @nodoc
class _$MeetingParticipantCopyWithImpl<$Res, $Val extends MeetingParticipant>
    implements $MeetingParticipantCopyWith<$Res> {
  _$MeetingParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? role = null,
    Object? hasJoined = null,
    Object? joinTime = freezed,
    Object? leaveTime = freezed,
    Object? status = null,
    Object? notes = freezed,
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
              as ParticipantRole,
      hasJoined: null == hasJoined
          ? _value.hasJoined
          : hasJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      joinTime: freezed == joinTime
          ? _value.joinTime
          : joinTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      leaveTime: freezed == leaveTime
          ? _value.leaveTime
          : leaveTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParticipantStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingParticipantImplCopyWith<$Res>
    implements $MeetingParticipantCopyWith<$Res> {
  factory _$$MeetingParticipantImplCopyWith(_$MeetingParticipantImpl value,
          $Res Function(_$MeetingParticipantImpl) then) =
      __$$MeetingParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? profilePictureUrl,
      ParticipantRole role,
      bool hasJoined,
      DateTime? joinTime,
      DateTime? leaveTime,
      ParticipantStatus status,
      String? notes});
}

/// @nodoc
class __$$MeetingParticipantImplCopyWithImpl<$Res>
    extends _$MeetingParticipantCopyWithImpl<$Res, _$MeetingParticipantImpl>
    implements _$$MeetingParticipantImplCopyWith<$Res> {
  __$$MeetingParticipantImplCopyWithImpl(_$MeetingParticipantImpl _value,
      $Res Function(_$MeetingParticipantImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? profilePictureUrl = freezed,
    Object? role = null,
    Object? hasJoined = null,
    Object? joinTime = freezed,
    Object? leaveTime = freezed,
    Object? status = null,
    Object? notes = freezed,
  }) {
    return _then(_$MeetingParticipantImpl(
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
              as ParticipantRole,
      hasJoined: null == hasJoined
          ? _value.hasJoined
          : hasJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      joinTime: freezed == joinTime
          ? _value.joinTime
          : joinTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      leaveTime: freezed == leaveTime
          ? _value.leaveTime
          : leaveTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ParticipantStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingParticipantImpl implements _MeetingParticipant {
  const _$MeetingParticipantImpl(
      {required this.userId,
      required this.displayName,
      this.profilePictureUrl,
      required this.role,
      required this.hasJoined,
      this.joinTime,
      this.leaveTime,
      required this.status,
      this.notes});

  factory _$MeetingParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingParticipantImplFromJson(json);

  /// User ID
  @override
  final String userId;

  /// User's display name
  @override
  final String displayName;

  /// User's profile picture URL
  @override
  final String? profilePictureUrl;

  /// Participant role
  @override
  final ParticipantRole role;

  /// Whether participant has joined
  @override
  final bool hasJoined;

  /// Join time
  @override
  final DateTime? joinTime;

  /// Leave time
  @override
  final DateTime? leaveTime;

  /// Participant status
  @override
  final ParticipantStatus status;

  /// Participant notes
  @override
  final String? notes;

  @override
  String toString() {
    return 'MeetingParticipant(userId: $userId, displayName: $displayName, profilePictureUrl: $profilePictureUrl, role: $role, hasJoined: $hasJoined, joinTime: $joinTime, leaveTime: $leaveTime, status: $status, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingParticipantImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.hasJoined, hasJoined) ||
                other.hasJoined == hasJoined) &&
            (identical(other.joinTime, joinTime) ||
                other.joinTime == joinTime) &&
            (identical(other.leaveTime, leaveTime) ||
                other.leaveTime == leaveTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, displayName,
      profilePictureUrl, role, hasJoined, joinTime, leaveTime, status, notes);

  /// Create a copy of MeetingParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingParticipantImplCopyWith<_$MeetingParticipantImpl> get copyWith =>
      __$$MeetingParticipantImplCopyWithImpl<_$MeetingParticipantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingParticipantImplToJson(
      this,
    );
  }
}

abstract class _MeetingParticipant implements MeetingParticipant {
  const factory _MeetingParticipant(
      {required final String userId,
      required final String displayName,
      final String? profilePictureUrl,
      required final ParticipantRole role,
      required final bool hasJoined,
      final DateTime? joinTime,
      final DateTime? leaveTime,
      required final ParticipantStatus status,
      final String? notes}) = _$MeetingParticipantImpl;

  factory _MeetingParticipant.fromJson(Map<String, dynamic> json) =
      _$MeetingParticipantImpl.fromJson;

  /// User ID
  @override
  String get userId;

  /// User's display name
  @override
  String get displayName;

  /// User's profile picture URL
  @override
  String? get profilePictureUrl;

  /// Participant role
  @override
  ParticipantRole get role;

  /// Whether participant has joined
  @override
  bool get hasJoined;

  /// Join time
  @override
  DateTime? get joinTime;

  /// Leave time
  @override
  DateTime? get leaveTime;

  /// Participant status
  @override
  ParticipantStatus get status;

  /// Participant notes
  @override
  String? get notes;

  /// Create a copy of MeetingParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingParticipantImplCopyWith<_$MeetingParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingInvitation _$MeetingInvitationFromJson(Map<String, dynamic> json) {
  return _MeetingInvitation.fromJson(json);
}

/// @nodoc
mixin _$MeetingInvitation {
  /// Invitation ID
  String get id => throw _privateConstructorUsedError;

  /// Meeting ID
  String get meetingId => throw _privateConstructorUsedError;

  /// Invited user ID
  String get invitedUserId => throw _privateConstructorUsedError;

  /// Invitation status
  InvitationStatus get status => throw _privateConstructorUsedError;

  /// Invitation date
  DateTime get invitationDate => throw _privateConstructorUsedError;

  /// Response date
  DateTime? get responseDate => throw _privateConstructorUsedError;

  /// Response notes
  String? get responseNotes => throw _privateConstructorUsedError;

  /// Whether invitation has been sent
  bool get isSent => throw _privateConstructorUsedError;

  /// Sent date
  DateTime? get sentDate => throw _privateConstructorUsedError;

  /// Serializes this MeetingInvitation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingInvitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingInvitationCopyWith<MeetingInvitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingInvitationCopyWith<$Res> {
  factory $MeetingInvitationCopyWith(
          MeetingInvitation value, $Res Function(MeetingInvitation) then) =
      _$MeetingInvitationCopyWithImpl<$Res, MeetingInvitation>;
  @useResult
  $Res call(
      {String id,
      String meetingId,
      String invitedUserId,
      InvitationStatus status,
      DateTime invitationDate,
      DateTime? responseDate,
      String? responseNotes,
      bool isSent,
      DateTime? sentDate});
}

/// @nodoc
class _$MeetingInvitationCopyWithImpl<$Res, $Val extends MeetingInvitation>
    implements $MeetingInvitationCopyWith<$Res> {
  _$MeetingInvitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingInvitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? meetingId = null,
    Object? invitedUserId = null,
    Object? status = null,
    Object? invitationDate = null,
    Object? responseDate = freezed,
    Object? responseNotes = freezed,
    Object? isSent = null,
    Object? sentDate = freezed,
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
      invitedUserId: null == invitedUserId
          ? _value.invitedUserId
          : invitedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvitationStatus,
      invitationDate: null == invitationDate
          ? _value.invitationDate
          : invitationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      responseDate: freezed == responseDate
          ? _value.responseDate
          : responseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseNotes: freezed == responseNotes
          ? _value.responseNotes
          : responseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingInvitationImplCopyWith<$Res>
    implements $MeetingInvitationCopyWith<$Res> {
  factory _$$MeetingInvitationImplCopyWith(_$MeetingInvitationImpl value,
          $Res Function(_$MeetingInvitationImpl) then) =
      __$$MeetingInvitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String meetingId,
      String invitedUserId,
      InvitationStatus status,
      DateTime invitationDate,
      DateTime? responseDate,
      String? responseNotes,
      bool isSent,
      DateTime? sentDate});
}

/// @nodoc
class __$$MeetingInvitationImplCopyWithImpl<$Res>
    extends _$MeetingInvitationCopyWithImpl<$Res, _$MeetingInvitationImpl>
    implements _$$MeetingInvitationImplCopyWith<$Res> {
  __$$MeetingInvitationImplCopyWithImpl(_$MeetingInvitationImpl _value,
      $Res Function(_$MeetingInvitationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingInvitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? meetingId = null,
    Object? invitedUserId = null,
    Object? status = null,
    Object? invitationDate = null,
    Object? responseDate = freezed,
    Object? responseNotes = freezed,
    Object? isSent = null,
    Object? sentDate = freezed,
  }) {
    return _then(_$MeetingInvitationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as String,
      invitedUserId: null == invitedUserId
          ? _value.invitedUserId
          : invitedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvitationStatus,
      invitationDate: null == invitationDate
          ? _value.invitationDate
          : invitationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      responseDate: freezed == responseDate
          ? _value.responseDate
          : responseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responseNotes: freezed == responseNotes
          ? _value.responseNotes
          : responseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingInvitationImpl implements _MeetingInvitation {
  const _$MeetingInvitationImpl(
      {required this.id,
      required this.meetingId,
      required this.invitedUserId,
      required this.status,
      required this.invitationDate,
      this.responseDate,
      this.responseNotes,
      required this.isSent,
      this.sentDate});

  factory _$MeetingInvitationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingInvitationImplFromJson(json);

  /// Invitation ID
  @override
  final String id;

  /// Meeting ID
  @override
  final String meetingId;

  /// Invited user ID
  @override
  final String invitedUserId;

  /// Invitation status
  @override
  final InvitationStatus status;

  /// Invitation date
  @override
  final DateTime invitationDate;

  /// Response date
  @override
  final DateTime? responseDate;

  /// Response notes
  @override
  final String? responseNotes;

  /// Whether invitation has been sent
  @override
  final bool isSent;

  /// Sent date
  @override
  final DateTime? sentDate;

  @override
  String toString() {
    return 'MeetingInvitation(id: $id, meetingId: $meetingId, invitedUserId: $invitedUserId, status: $status, invitationDate: $invitationDate, responseDate: $responseDate, responseNotes: $responseNotes, isSent: $isSent, sentDate: $sentDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingInvitationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId) &&
            (identical(other.invitedUserId, invitedUserId) ||
                other.invitedUserId == invitedUserId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.invitationDate, invitationDate) ||
                other.invitationDate == invitationDate) &&
            (identical(other.responseDate, responseDate) ||
                other.responseDate == responseDate) &&
            (identical(other.responseNotes, responseNotes) ||
                other.responseNotes == responseNotes) &&
            (identical(other.isSent, isSent) || other.isSent == isSent) &&
            (identical(other.sentDate, sentDate) ||
                other.sentDate == sentDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, meetingId, invitedUserId,
      status, invitationDate, responseDate, responseNotes, isSent, sentDate);

  /// Create a copy of MeetingInvitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingInvitationImplCopyWith<_$MeetingInvitationImpl> get copyWith =>
      __$$MeetingInvitationImplCopyWithImpl<_$MeetingInvitationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingInvitationImplToJson(
      this,
    );
  }
}

abstract class _MeetingInvitation implements MeetingInvitation {
  const factory _MeetingInvitation(
      {required final String id,
      required final String meetingId,
      required final String invitedUserId,
      required final InvitationStatus status,
      required final DateTime invitationDate,
      final DateTime? responseDate,
      final String? responseNotes,
      required final bool isSent,
      final DateTime? sentDate}) = _$MeetingInvitationImpl;

  factory _MeetingInvitation.fromJson(Map<String, dynamic> json) =
      _$MeetingInvitationImpl.fromJson;

  /// Invitation ID
  @override
  String get id;

  /// Meeting ID
  @override
  String get meetingId;

  /// Invited user ID
  @override
  String get invitedUserId;

  /// Invitation status
  @override
  InvitationStatus get status;

  /// Invitation date
  @override
  DateTime get invitationDate;

  /// Response date
  @override
  DateTime? get responseDate;

  /// Response notes
  @override
  String? get responseNotes;

  /// Whether invitation has been sent
  @override
  bool get isSent;

  /// Sent date
  @override
  DateTime? get sentDate;

  /// Create a copy of MeetingInvitation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingInvitationImplCopyWith<_$MeetingInvitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
