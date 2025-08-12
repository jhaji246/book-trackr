// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_reminder_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingReminderEntityImpl _$$MeetingReminderEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingReminderEntityImpl(
      id: json['id'] as String,
      meetingId: json['meetingId'] as String,
      userId: json['userId'] as String,
      type: $enumDecode(_$ReminderTypeEnumMap, json['type']),
      minutesBeforeMeeting: (json['minutesBeforeMeeting'] as num).toInt(),
      isSent: json['isSent'] as bool? ?? false,
      sentAt: json['sentAt'] == null
          ? null
          : DateTime.parse(json['sentAt'] as String),
      isActive: json['isActive'] as bool? ?? true,
      customMessage: json['customMessage'] as String?,
    );

Map<String, dynamic> _$$MeetingReminderEntityImplToJson(
        _$MeetingReminderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meetingId': instance.meetingId,
      'userId': instance.userId,
      'type': _$ReminderTypeEnumMap[instance.type]!,
      'minutesBeforeMeeting': instance.minutesBeforeMeeting,
      'isSent': instance.isSent,
      'sentAt': instance.sentAt?.toIso8601String(),
      'isActive': instance.isActive,
      'customMessage': instance.customMessage,
    };

const _$ReminderTypeEnumMap = {
  ReminderType.oneDay: 'oneDay',
  ReminderType.oneHour: 'oneHour',
  ReminderType.fifteenMinutes: 'fifteenMinutes',
  ReminderType.fiveMinutes: 'fiveMinutes',
  ReminderType.custom: 'custom',
};
