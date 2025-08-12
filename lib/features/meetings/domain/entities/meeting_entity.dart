import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_entity.freezed.dart';
part 'meeting_entity.g.dart';

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
