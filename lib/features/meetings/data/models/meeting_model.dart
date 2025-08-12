import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/meeting_entity.dart';

part 'meeting_model.freezed.dart';
part 'meeting_model.g.dart';

/// Data model for meetings, used for JSON serialization
@freezed
class MeetingModel with _$MeetingModel {
  const factory MeetingModel({
    /// Meeting ID
    required String id,
    
    /// Reading group ID
    required String groupId,
    
    /// Meeting title
    required String title,
    
    /// Meeting description
    required String description,
    
    /// Meeting type
    required String type,
    
    /// Meeting date and time
    required DateTime meetingDateTime,
    
    /// Meeting duration in minutes
    required int durationMinutes,
    
    /// Meeting host ID
    required String hostId,
    
    /// Meeting participants
    required List<String> participants,
    
    /// Meeting status
    required String status,
    
    /// Meeting platform
    required String platform,
    
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
    required List<AgendaItemModel> agenda,
    
    /// Meeting reminders
    required List<MeetingReminderModel> reminders,
    
    /// Meeting creation date
    required DateTime dateCreated,
    
    /// Meeting last updated date
    required DateTime dateUpdated,
  }) = _MeetingModel;

  factory MeetingModel.fromJson(Map<String, dynamic> json) => _$MeetingModelFromJson(json);
  
  /// Convert from domain entity
  factory MeetingModel.fromEntity(MeetingEntity entity) {
    return MeetingModel(
      id: entity.id,
      groupId: entity.groupId,
      title: entity.title,
      description: entity.description,
      type: entity.type.name,
      meetingDateTime: entity.meetingDateTime,
      durationMinutes: entity.durationMinutes,
      hostId: entity.hostId,
      participants: entity.participants,
      status: entity.status.name,
      platform: entity.platform.name,
      meetingLink: entity.meetingLink,
      meetingPassword: entity.meetingPassword,
      recordingUrl: entity.recordingUrl,
      notes: entity.notes,
      materials: entity.materials,
      agenda: entity.agenda.map((item) => AgendaItemModel.fromEntity(item)).toList(),
      reminders: entity.reminders.map((reminder) => MeetingReminderModel.fromEntity(reminder)).toList(),
      dateCreated: entity.dateCreated,
      dateUpdated: entity.dateUpdated,
    );
  }

  /// Convert to domain entity
  MeetingEntity toEntity() {
    return MeetingEntity(
      id: id,
      groupId: groupId,
      title: title,
      description: description,
      type: MeetingType.values.firstWhere((e) => e.name == type),
      meetingDateTime: meetingDateTime,
      durationMinutes: durationMinutes,
      hostId: hostId,
      participants: participants,
      status: MeetingStatus.values.firstWhere((e) => e.name == status),
      platform: MeetingPlatform.values.firstWhere((e) => e.name == platform),
      meetingLink: meetingLink,
      meetingPassword: meetingPassword,
      recordingUrl: recordingUrl,
      notes: notes,
      materials: materials,
      agenda: agenda.map((item) => item.toEntity()).toList(),
      reminders: reminders.map((reminder) => reminder.toEntity()).toList(),
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
    );
  }
}

/// Data model for agenda items
@freezed
class AgendaItemModel with _$AgendaItemModel {
  const factory AgendaItemModel({
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
    required String type,
    
    /// Item status
    required String status,
    
    /// Assigned presenter
    String? presenterId,
    
    /// Notes
    String? notes,
  }) = _AgendaItemModel;

  factory AgendaItemModel.fromJson(Map<String, dynamic> json) => _$AgendaItemModelFromJson(json);
  
  /// Convert from domain entity
  factory AgendaItemModel.fromEntity(AgendaItemEntity entity) {
    return AgendaItemModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      durationMinutes: entity.durationMinutes,
      order: entity.order,
      type: entity.type.name,
      status: entity.status.name,
      presenterId: entity.presenterId,
      notes: entity.notes,
    );
  }

  /// Convert to domain entity
  AgendaItemEntity toEntity() {
    return AgendaItemEntity(
      id: id,
      title: title,
      description: description,
      durationMinutes: durationMinutes,
      order: order,
      type: AgendaItemType.values.firstWhere((e) => e.name == type),
      status: AgendaItemStatus.values.firstWhere((e) => e.name == status),
      presenterId: presenterId,
      notes: notes,
    );
  }
}

/// Data model for meeting reminders
@freezed
class MeetingReminderModel with _$MeetingReminderModel {
  const factory MeetingReminderModel({
    /// Reminder ID
    required String id,
    
    /// Reminder type
    required String type,
    
    /// Reminder time before meeting in minutes
    required int timeBeforeMeetingMinutes,
    
    /// Reminder message
    required String message,
    
    /// Whether reminder is enabled
    required bool isEnabled,
    
    /// Reminder status
    required String status,
    
    /// Sent date
    DateTime? sentDate,
  }) = _MeetingReminderModel;

  factory MeetingReminderModel.fromJson(Map<String, dynamic> json) => _$MeetingReminderModelFromJson(json);
  
  /// Convert from domain entity
  factory MeetingReminderModel.fromEntity(MeetingReminderEntity entity) {
    return MeetingReminderModel(
      id: entity.id,
      type: entity.type.name,
      timeBeforeMeetingMinutes: entity.timeBeforeMeeting.inMinutes,
      message: entity.message,
      isEnabled: entity.isEnabled,
      status: entity.status.name,
      sentDate: entity.sentDate,
    );
  }

  /// Convert to domain entity
  MeetingReminderEntity toEntity() {
    return MeetingReminderEntity(
      id: id,
      type: ReminderType.values.firstWhere((e) => e.name == type),
      timeBeforeMeeting: Duration(minutes: timeBeforeMeetingMinutes),
      message: message,
      isEnabled: isEnabled,
      status: ReminderStatus.values.firstWhere((e) => e.name == status),
      sentDate: sentDate,
    );
  }
}
