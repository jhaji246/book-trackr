// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingModelImpl _$$MeetingModelImplFromJson(Map<String, dynamic> json) =>
    _$MeetingModelImpl(
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      meetingDateTime: DateTime.parse(json['meetingDateTime'] as String),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      hostId: json['hostId'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: json['status'] as String,
      platform: json['platform'] as String,
      meetingLink: json['meetingLink'] as String?,
      meetingPassword: json['meetingPassword'] as String?,
      recordingUrl: json['recordingUrl'] as String?,
      notes: json['notes'] as String?,
      materials:
          (json['materials'] as List<dynamic>).map((e) => e as String).toList(),
      agenda: (json['agenda'] as List<dynamic>)
          .map((e) => AgendaItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      reminders: (json['reminders'] as List<dynamic>)
          .map((e) => MeetingReminderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
    );

Map<String, dynamic> _$$MeetingModelImplToJson(_$MeetingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'meetingDateTime': instance.meetingDateTime.toIso8601String(),
      'durationMinutes': instance.durationMinutes,
      'hostId': instance.hostId,
      'participants': instance.participants,
      'status': instance.status,
      'platform': instance.platform,
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

_$AgendaItemModelImpl _$$AgendaItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AgendaItemModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      type: json['type'] as String,
      status: json['status'] as String,
      presenterId: json['presenterId'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$AgendaItemModelImplToJson(
        _$AgendaItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'durationMinutes': instance.durationMinutes,
      'order': instance.order,
      'type': instance.type,
      'status': instance.status,
      'presenterId': instance.presenterId,
      'notes': instance.notes,
    };

_$MeetingReminderModelImpl _$$MeetingReminderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingReminderModelImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      timeBeforeMeetingMinutes:
          (json['timeBeforeMeetingMinutes'] as num).toInt(),
      message: json['message'] as String,
      isEnabled: json['isEnabled'] as bool,
      status: json['status'] as String,
      sentDate: json['sentDate'] == null
          ? null
          : DateTime.parse(json['sentDate'] as String),
    );

Map<String, dynamic> _$$MeetingReminderModelImplToJson(
        _$MeetingReminderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'timeBeforeMeetingMinutes': instance.timeBeforeMeetingMinutes,
      'message': instance.message,
      'isEnabled': instance.isEnabled,
      'status': instance.status,
      'sentDate': instance.sentDate?.toIso8601String(),
    };
