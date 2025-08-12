import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_entity_simple.freezed.dart';
part 'meeting_entity_simple.g.dart';

/// Core business entity for group meetings
@freezed
class MeetingEntity with _$MeetingEntity {
  const factory MeetingEntity({
    /// Meeting ID
    required String id,
    
    /// Reading group ID
    required String groupId,
    
    /// Meeting title
    required String title,
    
    /// Meeting description
    required String description,
    
    /// Meeting type
    required MeetingType type,
    
    /// Meeting date and time
    required DateTime meetingDateTime,
    
    /// Meeting duration in minutes
    required int durationMinutes,
    
    /// Meeting host ID
    required String hostId,
    
    /// Meeting participants
    required List<String> participants,
    
    /// Meeting status
    required MeetingStatus status,
    
    /// Meeting platform
    required MeetingPlatform platform,
    
    /// Meeting link/URL
    String? meetingLink,
    
    /// Meeting password (if required)
    String? meetingPassword,
    
    /// Meeting recording URL
    String? recordingUrl,
    
    /// Meeting notes
    String? notes,
    
    /// Meeting materials
    required List<String> materials,
    
    /// Meeting agenda
    // required List<AgendaItemEntity> agenda,
    
    /// Meeting reminders
    // required List<MeetingReminderEntity> reminders,
    
    /// Meeting creation date
    required DateTime dateCreated,
    
    /// Meeting last updated date
    required DateTime dateUpdated,
  }) = _MeetingEntity;

  factory MeetingEntity.fromJson(Map<String, dynamic> json) => _$MeetingEntityFromJson(json);
}

/// Meeting type enumeration
enum MeetingType {
  bookDiscussion,
  readingCheckIn,
  authorInterview,
  writingWorkshop,
  social,
}

/// Meeting status enumeration
enum MeetingStatus {
  scheduled,
  inProgress,
  completed,
  cancelled,
  postponed,
}

/// Meeting platform enumeration
enum MeetingPlatform {
  zoom,
  googleMeet,
  teams,
  skype,
  discord,
  inPerson,
}

/// Agenda item entity
@freezed
class AgendaItemEntity with _$AgendaItemEntity {
  const factory AgendaItemEntity({
    /// Item ID
    required String id,
    
    /// Item title
    required String title,
    
    /// Item description
    required String description,
    
    /// Duration in minutes
    required int durationMinutes,
    
    /// Item order
    required int order,
    
    /// Item type
    required AgendaItemType type,
    
    /// Item status
    required AgendaItemStatus status,
    
    /// Assigned presenter
    String? presenterId,
    
    /// Notes
    String? notes,
  }) = _AgendaItemEntity;
}

/// Agenda item type
enum AgendaItemType {
  introduction,
  discussion,
  presentation,
  breakTime,
  qa,
  conclusion,
}

/// Agenda item status
enum AgendaItemStatus {
  pending,
  inProgress,
  completed,
  skipped,
}

/// Meeting reminder entity
@freezed
class MeetingReminderEntity with _$MeetingReminderEntity {
  const factory MeetingReminderEntity({
    /// Reminder ID
    required String id,
    
    /// Reminder type
    required ReminderType type,
    
    /// Reminder time before meeting
    required Duration timeBeforeMeeting,
    
    /// Reminder message
    required String message,
    
    /// Whether reminder is enabled
    required bool isEnabled,
    
    /// Reminder status
    required ReminderStatus status,
    
    /// Sent date
    DateTime? sentDate,
  }) = _MeetingReminderEntity;
}

/// Reminder type
enum ReminderType {
  email,
  push,
  sms,
  inApp,
}

/// Reminder status
enum ReminderStatus {
  pending,
  sent,
  failed,
  cancelled,
}
