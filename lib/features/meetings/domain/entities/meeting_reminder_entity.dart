import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_reminder_entity.freezed.dart';
part 'meeting_reminder_entity.g.dart';

/// Represents a reminder for a meeting
@freezed
class MeetingReminderEntity with _$MeetingReminderEntity {
  const factory MeetingReminderEntity({
    /// Unique identifier for the reminder
    required String id,
    
    /// Meeting ID this reminder belongs to
    required String meetingId,
    
    /// User ID who should receive the reminder
    required String userId,
    
    /// Type of reminder
    required ReminderType type,
    
    /// When the reminder should be sent (relative to meeting time)
    required int minutesBeforeMeeting,
    
    /// Whether the reminder has been sent
    @Default(false) bool isSent,
    
    /// When the reminder was sent
    DateTime? sentAt,
    
    /// Whether the reminder is active
    @Default(true) bool isActive,
    
    /// Custom message for the reminder
    String? customMessage,
  }) = _MeetingReminderEntity;

  factory MeetingReminderEntity.fromJson(Map<String, dynamic> json) => _$MeetingReminderEntityFromJson(json);
  
  /// Creates a default reminder
  factory MeetingReminderEntity.defaultReminder({
    required String meetingId,
    required String userId,
    required ReminderType type,
  }) {
    return MeetingReminderEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      meetingId: meetingId,
      userId: userId,
      type: type,
      minutesBeforeMeeting: _getDefaultMinutesBeforeMeeting(type),
    );
  }
  
  /// Get default minutes before meeting based on reminder type
  static int _getDefaultMinutesBeforeMeeting(ReminderType type) {
    switch (type) {
      case ReminderType.oneDay:
        return 24 * 60; // 24 hours
      case ReminderType.oneHour:
        return 60; // 1 hour
      case ReminderType.fifteenMinutes:
        return 15; // 15 minutes
      case ReminderType.fiveMinutes:
        return 5; // 5 minutes
      case ReminderType.custom:
        return 60; // Default to 1 hour
    }
  }
}

/// Types of reminders
enum ReminderType {
  oneDay('1 Day Before'),
  oneHour('1 Hour Before'),
  fifteenMinutes('15 Minutes Before'),
  fiveMinutes('5 Minutes Before'),
  custom('Custom');

  const ReminderType(this.displayName);
  final String displayName;
}
