// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingModel _$MeetingModelFromJson(Map<String, dynamic> json) {
  return _MeetingModel.fromJson(json);
}

/// @nodoc
mixin _$MeetingModel {
  /// Meeting ID
  String get id => throw _privateConstructorUsedError;

  /// Reading group ID
  String get groupId => throw _privateConstructorUsedError;

  /// Meeting title
  String get title => throw _privateConstructorUsedError;

  /// Meeting description
  String get description => throw _privateConstructorUsedError;

  /// Meeting type
  String get type => throw _privateConstructorUsedError;

  /// Meeting date and time
  DateTime get meetingDateTime => throw _privateConstructorUsedError;

  /// Meeting duration in minutes
  int get durationMinutes => throw _privateConstructorUsedError;

  /// Meeting host ID
  String get hostId => throw _privateConstructorUsedError;

  /// Meeting participants
  List<String> get participants => throw _privateConstructorUsedError;

  /// Meeting status
  String get status => throw _privateConstructorUsedError;

  /// Meeting platform
  String get platform => throw _privateConstructorUsedError;

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
  List<AgendaItemModel> get agenda => throw _privateConstructorUsedError;

  /// Meeting reminders
  List<MeetingReminderModel> get reminders =>
      throw _privateConstructorUsedError;

  /// Meeting creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Meeting last updated date
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Serializes this MeetingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingModelCopyWith<MeetingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingModelCopyWith<$Res> {
  factory $MeetingModelCopyWith(
          MeetingModel value, $Res Function(MeetingModel) then) =
      _$MeetingModelCopyWithImpl<$Res, MeetingModel>;
  @useResult
  $Res call(
      {String id,
      String groupId,
      String title,
      String description,
      String type,
      DateTime meetingDateTime,
      int durationMinutes,
      String hostId,
      List<String> participants,
      String status,
      String platform,
      String? meetingLink,
      String? meetingPassword,
      String? recordingUrl,
      String? notes,
      List<String> materials,
      List<AgendaItemModel> agenda,
      List<MeetingReminderModel> reminders,
      DateTime dateCreated,
      DateTime dateUpdated});
}

/// @nodoc
class _$MeetingModelCopyWithImpl<$Res, $Val extends MeetingModel>
    implements $MeetingModelCopyWith<$Res> {
  _$MeetingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingModel
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
              as String,
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
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<AgendaItemModel>,
      reminders: null == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<MeetingReminderModel>,
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
abstract class _$$MeetingModelImplCopyWith<$Res>
    implements $MeetingModelCopyWith<$Res> {
  factory _$$MeetingModelImplCopyWith(
          _$MeetingModelImpl value, $Res Function(_$MeetingModelImpl) then) =
      __$$MeetingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String groupId,
      String title,
      String description,
      String type,
      DateTime meetingDateTime,
      int durationMinutes,
      String hostId,
      List<String> participants,
      String status,
      String platform,
      String? meetingLink,
      String? meetingPassword,
      String? recordingUrl,
      String? notes,
      List<String> materials,
      List<AgendaItemModel> agenda,
      List<MeetingReminderModel> reminders,
      DateTime dateCreated,
      DateTime dateUpdated});
}

/// @nodoc
class __$$MeetingModelImplCopyWithImpl<$Res>
    extends _$MeetingModelCopyWithImpl<$Res, _$MeetingModelImpl>
    implements _$$MeetingModelImplCopyWith<$Res> {
  __$$MeetingModelImplCopyWithImpl(
      _$MeetingModelImpl _value, $Res Function(_$MeetingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingModel
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
    return _then(_$MeetingModelImpl(
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
              as String,
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
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<AgendaItemModel>,
      reminders: null == reminders
          ? _value._reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<MeetingReminderModel>,
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
class _$MeetingModelImpl implements _MeetingModel {
  const _$MeetingModelImpl(
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
      required final List<AgendaItemModel> agenda,
      required final List<MeetingReminderModel> reminders,
      required this.dateCreated,
      required this.dateUpdated})
      : _participants = participants,
        _materials = materials,
        _agenda = agenda,
        _reminders = reminders;

  factory _$MeetingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingModelImplFromJson(json);

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
  final String type;

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
  final String status;

  /// Meeting platform
  @override
  final String platform;

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
  final List<AgendaItemModel> _agenda;

  /// Meeting agenda
  @override
  List<AgendaItemModel> get agenda {
    if (_agenda is EqualUnmodifiableListView) return _agenda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agenda);
  }

  /// Meeting reminders
  final List<MeetingReminderModel> _reminders;

  /// Meeting reminders
  @override
  List<MeetingReminderModel> get reminders {
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
    return 'MeetingModel(id: $id, groupId: $groupId, title: $title, description: $description, type: $type, meetingDateTime: $meetingDateTime, durationMinutes: $durationMinutes, hostId: $hostId, participants: $participants, status: $status, platform: $platform, meetingLink: $meetingLink, meetingPassword: $meetingPassword, recordingUrl: $recordingUrl, notes: $notes, materials: $materials, agenda: $agenda, reminders: $reminders, dateCreated: $dateCreated, dateUpdated: $dateUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingModelImpl &&
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

  /// Create a copy of MeetingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingModelImplCopyWith<_$MeetingModelImpl> get copyWith =>
      __$$MeetingModelImplCopyWithImpl<_$MeetingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingModelImplToJson(
      this,
    );
  }
}

abstract class _MeetingModel implements MeetingModel {
  const factory _MeetingModel(
      {required final String id,
      required final String groupId,
      required final String title,
      required final String description,
      required final String type,
      required final DateTime meetingDateTime,
      required final int durationMinutes,
      required final String hostId,
      required final List<String> participants,
      required final String status,
      required final String platform,
      final String? meetingLink,
      final String? meetingPassword,
      final String? recordingUrl,
      final String? notes,
      required final List<String> materials,
      required final List<AgendaItemModel> agenda,
      required final List<MeetingReminderModel> reminders,
      required final DateTime dateCreated,
      required final DateTime dateUpdated}) = _$MeetingModelImpl;

  factory _MeetingModel.fromJson(Map<String, dynamic> json) =
      _$MeetingModelImpl.fromJson;

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
  String get type;

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
  String get status;

  /// Meeting platform
  @override
  String get platform;

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
  List<AgendaItemModel> get agenda;

  /// Meeting reminders
  @override
  List<MeetingReminderModel> get reminders;

  /// Meeting creation date
  @override
  DateTime get dateCreated;

  /// Meeting last updated date
  @override
  DateTime get dateUpdated;

  /// Create a copy of MeetingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingModelImplCopyWith<_$MeetingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgendaItemModel _$AgendaItemModelFromJson(Map<String, dynamic> json) {
  return _AgendaItemModel.fromJson(json);
}

/// @nodoc
mixin _$AgendaItemModel {
  /// Item ID
  String get id => throw _privateConstructorUsedError;

  /// Item title
  String get title => throw _privateConstructorUsedError;

  /// Item description
  String get description => throw _privateConstructorUsedError;

  /// Duration in minutes
  int get durationMinutes => throw _privateConstructorUsedError;

  /// Item order
  int get order => throw _privateConstructorUsedError;

  /// Item type
  String get type => throw _privateConstructorUsedError;

  /// Item status
  String get status => throw _privateConstructorUsedError;

  /// Assigned presenter
  String? get presenterId => throw _privateConstructorUsedError;

  /// Notes
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this AgendaItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgendaItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgendaItemModelCopyWith<AgendaItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaItemModelCopyWith<$Res> {
  factory $AgendaItemModelCopyWith(
          AgendaItemModel value, $Res Function(AgendaItemModel) then) =
      _$AgendaItemModelCopyWithImpl<$Res, AgendaItemModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int durationMinutes,
      int order,
      String type,
      String status,
      String? presenterId,
      String? notes});
}

/// @nodoc
class _$AgendaItemModelCopyWithImpl<$Res, $Val extends AgendaItemModel>
    implements $AgendaItemModelCopyWith<$Res> {
  _$AgendaItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgendaItemModel
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
    Object? status = null,
    Object? presenterId = freezed,
    Object? notes = freezed,
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
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      presenterId: freezed == presenterId
          ? _value.presenterId
          : presenterId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgendaItemModelImplCopyWith<$Res>
    implements $AgendaItemModelCopyWith<$Res> {
  factory _$$AgendaItemModelImplCopyWith(_$AgendaItemModelImpl value,
          $Res Function(_$AgendaItemModelImpl) then) =
      __$$AgendaItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int durationMinutes,
      int order,
      String type,
      String status,
      String? presenterId,
      String? notes});
}

/// @nodoc
class __$$AgendaItemModelImplCopyWithImpl<$Res>
    extends _$AgendaItemModelCopyWithImpl<$Res, _$AgendaItemModelImpl>
    implements _$$AgendaItemModelImplCopyWith<$Res> {
  __$$AgendaItemModelImplCopyWithImpl(
      _$AgendaItemModelImpl _value, $Res Function(_$AgendaItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgendaItemModel
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
    Object? status = null,
    Object? presenterId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$AgendaItemModelImpl(
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
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      presenterId: freezed == presenterId
          ? _value.presenterId
          : presenterId // ignore: cast_nullable_to_non_nullable
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
class _$AgendaItemModelImpl implements _AgendaItemModel {
  const _$AgendaItemModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.durationMinutes,
      required this.order,
      required this.type,
      required this.status,
      this.presenterId,
      this.notes});

  factory _$AgendaItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgendaItemModelImplFromJson(json);

  /// Item ID
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

  /// Item order
  @override
  final int order;

  /// Item type
  @override
  final String type;

  /// Item status
  @override
  final String status;

  /// Assigned presenter
  @override
  final String? presenterId;

  /// Notes
  @override
  final String? notes;

  @override
  String toString() {
    return 'AgendaItemModel(id: $id, title: $title, description: $description, durationMinutes: $durationMinutes, order: $order, type: $type, status: $status, presenterId: $presenterId, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.presenterId, presenterId) ||
                other.presenterId == presenterId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      durationMinutes, order, type, status, presenterId, notes);

  /// Create a copy of AgendaItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaItemModelImplCopyWith<_$AgendaItemModelImpl> get copyWith =>
      __$$AgendaItemModelImplCopyWithImpl<_$AgendaItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgendaItemModelImplToJson(
      this,
    );
  }
}

abstract class _AgendaItemModel implements AgendaItemModel {
  const factory _AgendaItemModel(
      {required final String id,
      required final String title,
      required final String description,
      required final int durationMinutes,
      required final int order,
      required final String type,
      required final String status,
      final String? presenterId,
      final String? notes}) = _$AgendaItemModelImpl;

  factory _AgendaItemModel.fromJson(Map<String, dynamic> json) =
      _$AgendaItemModelImpl.fromJson;

  /// Item ID
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

  /// Item order
  @override
  int get order;

  /// Item type
  @override
  String get type;

  /// Item status
  @override
  String get status;

  /// Assigned presenter
  @override
  String? get presenterId;

  /// Notes
  @override
  String? get notes;

  /// Create a copy of AgendaItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgendaItemModelImplCopyWith<_$AgendaItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingReminderModel _$MeetingReminderModelFromJson(Map<String, dynamic> json) {
  return _MeetingReminderModel.fromJson(json);
}

/// @nodoc
mixin _$MeetingReminderModel {
  /// Reminder ID
  String get id => throw _privateConstructorUsedError;

  /// Reminder type
  String get type => throw _privateConstructorUsedError;

  /// Reminder time before meeting in minutes
  int get timeBeforeMeetingMinutes => throw _privateConstructorUsedError;

  /// Reminder message
  String get message => throw _privateConstructorUsedError;

  /// Whether reminder is enabled
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Reminder status
  String get status => throw _privateConstructorUsedError;

  /// Sent date
  DateTime? get sentDate => throw _privateConstructorUsedError;

  /// Serializes this MeetingReminderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingReminderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingReminderModelCopyWith<MeetingReminderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingReminderModelCopyWith<$Res> {
  factory $MeetingReminderModelCopyWith(MeetingReminderModel value,
          $Res Function(MeetingReminderModel) then) =
      _$MeetingReminderModelCopyWithImpl<$Res, MeetingReminderModel>;
  @useResult
  $Res call(
      {String id,
      String type,
      int timeBeforeMeetingMinutes,
      String message,
      bool isEnabled,
      String status,
      DateTime? sentDate});
}

/// @nodoc
class _$MeetingReminderModelCopyWithImpl<$Res,
        $Val extends MeetingReminderModel>
    implements $MeetingReminderModelCopyWith<$Res> {
  _$MeetingReminderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingReminderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? timeBeforeMeetingMinutes = null,
    Object? message = null,
    Object? isEnabled = null,
    Object? status = null,
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
              as String,
      timeBeforeMeetingMinutes: null == timeBeforeMeetingMinutes
          ? _value.timeBeforeMeetingMinutes
          : timeBeforeMeetingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingReminderModelImplCopyWith<$Res>
    implements $MeetingReminderModelCopyWith<$Res> {
  factory _$$MeetingReminderModelImplCopyWith(_$MeetingReminderModelImpl value,
          $Res Function(_$MeetingReminderModelImpl) then) =
      __$$MeetingReminderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      int timeBeforeMeetingMinutes,
      String message,
      bool isEnabled,
      String status,
      DateTime? sentDate});
}

/// @nodoc
class __$$MeetingReminderModelImplCopyWithImpl<$Res>
    extends _$MeetingReminderModelCopyWithImpl<$Res, _$MeetingReminderModelImpl>
    implements _$$MeetingReminderModelImplCopyWith<$Res> {
  __$$MeetingReminderModelImplCopyWithImpl(_$MeetingReminderModelImpl _value,
      $Res Function(_$MeetingReminderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingReminderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? timeBeforeMeetingMinutes = null,
    Object? message = null,
    Object? isEnabled = null,
    Object? status = null,
    Object? sentDate = freezed,
  }) {
    return _then(_$MeetingReminderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timeBeforeMeetingMinutes: null == timeBeforeMeetingMinutes
          ? _value.timeBeforeMeetingMinutes
          : timeBeforeMeetingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingReminderModelImpl implements _MeetingReminderModel {
  const _$MeetingReminderModelImpl(
      {required this.id,
      required this.type,
      required this.timeBeforeMeetingMinutes,
      required this.message,
      required this.isEnabled,
      required this.status,
      this.sentDate});

  factory _$MeetingReminderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingReminderModelImplFromJson(json);

  /// Reminder ID
  @override
  final String id;

  /// Reminder type
  @override
  final String type;

  /// Reminder time before meeting in minutes
  @override
  final int timeBeforeMeetingMinutes;

  /// Reminder message
  @override
  final String message;

  /// Whether reminder is enabled
  @override
  final bool isEnabled;

  /// Reminder status
  @override
  final String status;

  /// Sent date
  @override
  final DateTime? sentDate;

  @override
  String toString() {
    return 'MeetingReminderModel(id: $id, type: $type, timeBeforeMeetingMinutes: $timeBeforeMeetingMinutes, message: $message, isEnabled: $isEnabled, status: $status, sentDate: $sentDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingReminderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(
                    other.timeBeforeMeetingMinutes, timeBeforeMeetingMinutes) ||
                other.timeBeforeMeetingMinutes == timeBeforeMeetingMinutes) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sentDate, sentDate) ||
                other.sentDate == sentDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type,
      timeBeforeMeetingMinutes, message, isEnabled, status, sentDate);

  /// Create a copy of MeetingReminderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingReminderModelImplCopyWith<_$MeetingReminderModelImpl>
      get copyWith =>
          __$$MeetingReminderModelImplCopyWithImpl<_$MeetingReminderModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingReminderModelImplToJson(
      this,
    );
  }
}

abstract class _MeetingReminderModel implements MeetingReminderModel {
  const factory _MeetingReminderModel(
      {required final String id,
      required final String type,
      required final int timeBeforeMeetingMinutes,
      required final String message,
      required final bool isEnabled,
      required final String status,
      final DateTime? sentDate}) = _$MeetingReminderModelImpl;

  factory _MeetingReminderModel.fromJson(Map<String, dynamic> json) =
      _$MeetingReminderModelImpl.fromJson;

  /// Reminder ID
  @override
  String get id;

  /// Reminder type
  @override
  String get type;

  /// Reminder time before meeting in minutes
  @override
  int get timeBeforeMeetingMinutes;

  /// Reminder message
  @override
  String get message;

  /// Whether reminder is enabled
  @override
  bool get isEnabled;

  /// Reminder status
  @override
  String get status;

  /// Sent date
  @override
  DateTime? get sentDate;

  /// Create a copy of MeetingReminderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingReminderModelImplCopyWith<_$MeetingReminderModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
