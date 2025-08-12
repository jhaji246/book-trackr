// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_scheduling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupMeetingImpl _$$GroupMeetingImplFromJson(Map<String, dynamic> json) =>
    _$GroupMeetingImpl(
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$MeetingTypeEnumMap, json['type']),
      meetingDateTime: DateTime.parse(json['meetingDateTime'] as String),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      hostId: json['hostId'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: $enumDecode(_$MeetingStatusEnumMap, json['status']),
      platform: $enumDecode(_$MeetingPlatformEnumMap, json['platform']),
      meetingLink: json['meetingLink'] as String?,
      meetingPassword: json['meetingPassword'] as String?,
      recordingUrl: json['recordingUrl'] as String?,
      notes: json['notes'] as String?,
      materials:
          (json['materials'] as List<dynamic>).map((e) => e as String).toList(),
      agenda: (json['agenda'] as List<dynamic>)
          .map((e) => AgendaItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      reminders: (json['reminders'] as List<dynamic>)
          .map((e) => MeetingReminder.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
    );

Map<String, dynamic> _$$GroupMeetingImplToJson(_$GroupMeetingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'title': instance.title,
      'description': instance.description,
      'type': _$MeetingTypeEnumMap[instance.type]!,
      'meetingDateTime': instance.meetingDateTime.toIso8601String(),
      'durationMinutes': instance.durationMinutes,
      'hostId': instance.hostId,
      'participants': instance.participants,
      'status': _$MeetingStatusEnumMap[instance.status]!,
      'platform': _$MeetingPlatformEnumMap[instance.platform]!,
      'meetingLink': instance.meetingLink,
      'meetingPassword': instance.meetingPassword,
      'recordingUrl': instance.recordingUrl,
      'notes': instance.notes,
      'materials': instance.materials,
      'agenda': instance.agenda,
      'reminders': instance.reminders,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
    };

const _$MeetingTypeEnumMap = {
  MeetingType.bookDiscussion: 'bookDiscussion',
  MeetingType.readingCheck: 'readingCheck',
  MeetingType.social: 'social',
  MeetingType.planning: 'planning',
  MeetingType.authorDiscussion: 'authorDiscussion',
  MeetingType.genreDiscussion: 'genreDiscussion',
  MeetingType.challengeReview: 'challengeReview',
  MeetingType.milestoneCelebration: 'milestoneCelebration',
};

const _$MeetingStatusEnumMap = {
  MeetingStatus.scheduled: 'scheduled',
  MeetingStatus.inProgress: 'inProgress',
  MeetingStatus.completed: 'completed',
  MeetingStatus.cancelled: 'cancelled',
  MeetingStatus.postponed: 'postponed',
};

const _$MeetingPlatformEnumMap = {
  MeetingPlatform.zoom: 'zoom',
  MeetingPlatform.googleMeet: 'googleMeet',
  MeetingPlatform.teams: 'teams',
  MeetingPlatform.discord: 'discord',
  MeetingPlatform.skype: 'skype',
  MeetingPlatform.webex: 'webex',
  MeetingPlatform.other: 'other',
};

_$AgendaItemImpl _$$AgendaItemImplFromJson(Map<String, dynamic> json) =>
    _$AgendaItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      isCompleted: json['isCompleted'] as bool,
      notes: json['notes'] as String?,
      presenterId: json['presenterId'] as String?,
    );

Map<String, dynamic> _$$AgendaItemImplToJson(_$AgendaItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'durationMinutes': instance.durationMinutes,
      'order': instance.order,
      'isCompleted': instance.isCompleted,
      'notes': instance.notes,
      'presenterId': instance.presenterId,
    };

_$MeetingReminderImpl _$$MeetingReminderImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingReminderImpl(
      id: json['id'] as String,
      type: $enumDecode(_$ReminderTypeEnumMap, json['type']),
      message: json['message'] as String,
      sendTime: DateTime.parse(json['sendTime'] as String),
      isSent: json['isSent'] as bool,
      sentDate: json['sentDate'] == null
          ? null
          : DateTime.parse(json['sentDate'] as String),
    );

Map<String, dynamic> _$$MeetingReminderImplToJson(
        _$MeetingReminderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ReminderTypeEnumMap[instance.type]!,
      'message': instance.message,
      'sendTime': instance.sendTime.toIso8601String(),
      'isSent': instance.isSent,
      'sentDate': instance.sentDate?.toIso8601String(),
    };

const _$ReminderTypeEnumMap = {
  ReminderType.dayBefore: 'dayBefore',
  ReminderType.hourBefore: 'hourBefore',
  ReminderType.fifteenMinutes: 'fifteenMinutes',
  ReminderType.custom: 'custom',
};

_$MeetingParticipantImpl _$$MeetingParticipantImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingParticipantImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      role: $enumDecode(_$ParticipantRoleEnumMap, json['role']),
      hasJoined: json['hasJoined'] as bool,
      joinTime: json['joinTime'] == null
          ? null
          : DateTime.parse(json['joinTime'] as String),
      leaveTime: json['leaveTime'] == null
          ? null
          : DateTime.parse(json['leaveTime'] as String),
      status: $enumDecode(_$ParticipantStatusEnumMap, json['status']),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$MeetingParticipantImplToJson(
        _$MeetingParticipantImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'profilePictureUrl': instance.profilePictureUrl,
      'role': _$ParticipantRoleEnumMap[instance.role]!,
      'hasJoined': instance.hasJoined,
      'joinTime': instance.joinTime?.toIso8601String(),
      'leaveTime': instance.leaveTime?.toIso8601String(),
      'status': _$ParticipantStatusEnumMap[instance.status]!,
      'notes': instance.notes,
    };

const _$ParticipantRoleEnumMap = {
  ParticipantRole.host: 'host',
  ParticipantRole.coHost: 'coHost',
  ParticipantRole.presenter: 'presenter',
  ParticipantRole.participant: 'participant',
  ParticipantRole.observer: 'observer',
};

const _$ParticipantStatusEnumMap = {
  ParticipantStatus.invited: 'invited',
  ParticipantStatus.confirmed: 'confirmed',
  ParticipantStatus.declined: 'declined',
  ParticipantStatus.tentative: 'tentative',
  ParticipantStatus.joined: 'joined',
  ParticipantStatus.left: 'left',
  ParticipantStatus.noShow: 'noShow',
};

_$MeetingInvitationImpl _$$MeetingInvitationImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingInvitationImpl(
      id: json['id'] as String,
      meetingId: json['meetingId'] as String,
      invitedUserId: json['invitedUserId'] as String,
      status: $enumDecode(_$InvitationStatusEnumMap, json['status']),
      invitationDate: DateTime.parse(json['invitationDate'] as String),
      responseDate: json['responseDate'] == null
          ? null
          : DateTime.parse(json['responseDate'] as String),
      responseNotes: json['responseNotes'] as String?,
      isSent: json['isSent'] as bool,
      sentDate: json['sentDate'] == null
          ? null
          : DateTime.parse(json['sentDate'] as String),
    );

Map<String, dynamic> _$$MeetingInvitationImplToJson(
        _$MeetingInvitationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meetingId': instance.meetingId,
      'invitedUserId': instance.invitedUserId,
      'status': _$InvitationStatusEnumMap[instance.status]!,
      'invitationDate': instance.invitationDate.toIso8601String(),
      'responseDate': instance.responseDate?.toIso8601String(),
      'responseNotes': instance.responseNotes,
      'isSent': instance.isSent,
      'sentDate': instance.sentDate?.toIso8601String(),
    };

const _$InvitationStatusEnumMap = {
  InvitationStatus.pending: 'pending',
  InvitationStatus.accepted: 'accepted',
  InvitationStatus.declined: 'declined',
  InvitationStatus.tentative: 'tentative',
  InvitationStatus.expired: 'expired',
};
