// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingEntityImpl _$$MeetingEntityImplFromJson(Map<String, dynamic> json) =>
    _$MeetingEntityImpl(
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
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
    );

Map<String, dynamic> _$$MeetingEntityImplToJson(_$MeetingEntityImpl instance) =>
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
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
    };

const _$MeetingTypeEnumMap = {
  MeetingType.bookDiscussion: 'bookDiscussion',
  MeetingType.readingCheckIn: 'readingCheckIn',
  MeetingType.authorInterview: 'authorInterview',
  MeetingType.writingWorkshop: 'writingWorkshop',
  MeetingType.social: 'social',
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
  MeetingPlatform.skype: 'skype',
  MeetingPlatform.discord: 'discord',
  MeetingPlatform.inPerson: 'inPerson',
};
