import 'meeting_entity.dart';

/// Helper class with business logic methods for meetings
class MeetingHelpers {
  /// Check if meeting is happening now
  static bool isHappeningNow(MeetingEntity meeting) {
    final now = DateTime.now();
    final startTime = meeting.meetingDateTime;
    final endTime = startTime.add(Duration(minutes: meeting.durationMinutes));
    return now.isAfter(startTime) && now.isBefore(endTime);
  }

  /// Check if meeting is upcoming
  static bool isUpcoming(MeetingEntity meeting) {
    return meeting.meetingDateTime.isAfter(DateTime.now());
  }

  /// Check if meeting is past
  static bool isPast(MeetingEntity meeting) {
    final endTime = meeting.meetingDateTime.add(Duration(minutes: meeting.durationMinutes));
    return endTime.isBefore(DateTime.now());
  }

  /// Get meeting status as human-readable string
  static String getStatusText(MeetingStatus status) {
    switch (status) {
      case MeetingStatus.scheduled:
        return 'Scheduled';
      case MeetingStatus.inProgress:
        return 'In Progress';
      case MeetingStatus.completed:
        return 'Completed';
      case MeetingStatus.cancelled:
        return 'Cancelled';
      case MeetingStatus.postponed:
        return 'Postponed';
    }
  }

  /// Get meeting type as human-readable string
  static String getTypeText(MeetingType type) {
    switch (type) {
      case MeetingType.bookDiscussion:
        return 'Book Discussion';
      case MeetingType.readingCheckIn:
        return 'Reading Check-in';
      case MeetingType.authorInterview:
        return 'Author Interview';
      case MeetingType.writingWorkshop:
        return 'Writing Workshop';
      case MeetingType.social:
        return 'Social Gathering';
    }
  }

  /// Get platform as human-readable string
  static String getPlatformText(MeetingPlatform platform) {
    switch (platform) {
      case MeetingPlatform.zoom:
        return 'Zoom';
      case MeetingPlatform.googleMeet:
        return 'Google Meet';
      case MeetingPlatform.teams:
        return 'Microsoft Teams';
      case MeetingPlatform.skype:
        return 'Skype';
      case MeetingPlatform.discord:
        return 'Discord';
      case MeetingPlatform.inPerson:
        return 'In Person';
    }
  }

  /// Get time until meeting starts
  static Duration getTimeUntilStart(MeetingEntity meeting) {
    return meeting.meetingDateTime.difference(DateTime.now());
  }

  /// Get formatted time until meeting starts
  static String getTimeUntilStartText(MeetingEntity meeting) {
    final duration = getTimeUntilStart(meeting);
    if (duration.isNegative) {
      return 'Started';
    }
    
    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    
    if (days > 0) {
      return '$days days, $hours hours';
    } else if (hours > 0) {
      return '$hours hours, $minutes minutes';
    } else {
      return '$minutes minutes';
    }
  }
}
