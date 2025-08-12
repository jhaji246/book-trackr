import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_scheduling.freezed.dart';
part 'meeting_scheduling.g.dart';

/// Represents a scheduled meeting for a reading group
@freezed
class GroupMeeting with _$GroupMeeting {
  const factory GroupMeeting({
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
    required List<AgendaItem> agenda,
    
    /// Meeting reminders
    required List<MeetingReminder> reminders,
    
    /// Meeting creation date
    required DateTime dateCreated,
    
    /// Meeting last updated date
    required DateTime dateUpdated,
  }) = _GroupMeeting;

  factory GroupMeeting.fromJson(Map<String, dynamic> json) => _$GroupMeetingFromJson(json);
  
  /// Creates a default meeting
  factory GroupMeeting.defaultMeeting({
    required String id,
    required String groupId,
    required String title,
    required String description,
    required String hostId,
    required MeetingType type,
    required DateTime meetingDateTime,
    required int durationMinutes,
  }) {
    return GroupMeeting(
      id: id,
      groupId: groupId,
      title: title,
      description: description,
      type: type,
      meetingDateTime: meetingDateTime,
      durationMinutes: durationMinutes,
      hostId: hostId,
      participants: [hostId],
      status: MeetingStatus.scheduled,
      platform: MeetingPlatform.zoom,
      meetingLink: null,
      meetingPassword: null,
      recordingUrl: null,
      notes: null,
      materials: [],
      agenda: _createDefaultAgenda(type),
      reminders: _createDefaultReminders(meetingDateTime),
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
    );
  }
  
  /// Create default agenda based on meeting type
  static List<AgendaItem> _createDefaultAgenda(MeetingType type) {
    switch (type) {
      case MeetingType.bookDiscussion:
        return [
          AgendaItem(
            id: 'intro',
            title: 'Introduction & Welcome',
            description: 'Brief introduction and meeting overview',
            durationMinutes: 5,
            order: 1,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
          AgendaItem(
            id: 'discussion',
            title: 'Book Discussion',
            description: 'Main discussion about the book',
            durationMinutes: 40,
            order: 2,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
          AgendaItem(
            id: 'questions',
            title: 'Questions & Answers',
            description: 'Open floor for questions and discussion',
            durationMinutes: 10,
            order: 3,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
          AgendaItem(
            id: 'next',
            title: 'Next Steps',
            description: 'Plan for next meeting and assignments',
            durationMinutes: 5,
            order: 4,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
        ];
      case MeetingType.readingCheck:
        return [
          AgendaItem(
            id: 'progress',
            title: 'Reading Progress Check',
            description: 'Review current reading progress',
            durationMinutes: 20,
            order: 1,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
          AgendaItem(
            id: 'challenges',
            title: 'Challenges & Solutions',
            description: 'Discuss reading challenges and solutions',
            durationMinutes: 25,
            order: 2,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
          AgendaItem(
            id: 'support',
            title: 'Support & Encouragement',
            description: 'Provide support and encouragement',
            durationMinutes: 15,
            order: 3,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
        ];
      case MeetingType.social:
        return [
          AgendaItem(
            id: 'social',
            title: 'Social Time',
            description: 'Casual conversation and socializing',
            durationMinutes: 50,
            order: 1,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
          AgendaItem(
            id: 'planning',
            title: 'Future Planning',
            description: 'Plan future activities and events',
            durationMinutes: 10,
            order: 2,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
        ];
      default:
        return [
          AgendaItem(
            id: 'general',
            title: 'General Discussion',
            description: 'Open discussion and planning',
            durationMinutes: 50,
            order: 1,
            isCompleted: false,
            notes: null,
            presenterId: null,
          ),
        ];
    }
  }
  
  /// Create default reminders
  static List<MeetingReminder> _createDefaultReminders(DateTime meetingDateTime) {
    return [
      MeetingReminder(
        id: 'day_before',
        type: ReminderType.dayBefore,
        message: 'Meeting tomorrow at ${meetingDateTime.hour}:${meetingDateTime.minute.toString().padLeft(2, '0')}',
        sendTime: meetingDateTime.subtract(const Duration(days: 1)),
        isSent: false,
      ),
      MeetingReminder(
        id: 'hour_before',
        type: ReminderType.hourBefore,
        message: 'Meeting in 1 hour',
        sendTime: meetingDateTime.subtract(const Duration(hours: 1)),
        isSent: false,
      ),
      MeetingReminder(
        id: 'fifteen_min',
        type: ReminderType.fifteenMinutes,
        message: 'Meeting in 15 minutes',
        sendTime: meetingDateTime.subtract(const Duration(minutes: 15)),
        isSent: false,
      ),
    ];
  }
}

/// Meeting types
enum MeetingType {
  bookDiscussion('Book Discussion'),
  readingCheck('Reading Check-in'),
  social('Social Meeting'),
  planning('Planning Meeting'),
  authorDiscussion('Author Discussion'),
  genreDiscussion('Genre Discussion'),
  challengeReview('Challenge Review'),
  milestoneCelebration('Milestone Celebration');

  const MeetingType(this.displayName);
  final String displayName;
}

/// Meeting status
enum MeetingStatus {
  scheduled('Scheduled'),
  inProgress('In Progress'),
  completed('Completed'),
  cancelled('Cancelled'),
  postponed('Postponed');

  const MeetingStatus(this.displayName);
  final String displayName;
}

/// Meeting platforms
enum MeetingPlatform {
  zoom('Zoom'),
  googleMeet('Google Meet'),
  teams('Microsoft Teams'),
  discord('Discord'),
  skype('Skype'),
  webex('Webex'),
  other('Other');

  const MeetingPlatform(this.displayName);
  final String displayName;
}

/// Represents an agenda item for a meeting
@freezed
class AgendaItem with _$AgendaItem {
  const factory AgendaItem({
    /// Agenda item ID
    required String id,
    
    /// Item title
    required String title,
    
    /// Item description
    required String description,
    
    /// Duration in minutes
    required int durationMinutes,
    
    /// Display order
    required int order,
    
    /// Whether item is completed
    required bool isCompleted,
    
    /// Item notes
    String? notes,
    
    /// Item presenter
    String? presenterId,
  }) = _AgendaItem;

  factory AgendaItem.fromJson(Map<String, dynamic> json) => _$AgendaItemFromJson(json);
}

/// Represents a meeting reminder
@freezed
class MeetingReminder with _$MeetingReminder {
  const factory MeetingReminder({
    /// Reminder ID
    required String id,
    
    /// Reminder type
    required ReminderType type,
    
    /// Reminder message
    required String message,
    
    /// When to send the reminder
    required DateTime sendTime,
    
    /// Whether reminder has been sent
    required bool isSent,
    
    /// Reminder sent date
    DateTime? sentDate,
  }) = _MeetingReminder;

  factory MeetingReminder.fromJson(Map<String, dynamic> json) => _$MeetingReminderFromJson(json);
}

/// Reminder types
enum ReminderType {
  dayBefore('Day Before'),
  hourBefore('Hour Before'),
  fifteenMinutes('15 Minutes Before'),
  custom('Custom');

  const ReminderType(this.displayName);
  final String displayName;
}

/// Represents a meeting participant
@freezed
class MeetingParticipant with _$MeetingParticipant {
  const factory MeetingParticipant({
    /// User ID
    required String userId,
    
    /// User's display name
    required String displayName,
    
    /// User's profile picture URL
    String? profilePictureUrl,
    
    /// Participant role
    required ParticipantRole role,
    
    /// Whether participant has joined
    required bool hasJoined,
    
    /// Join time
    DateTime? joinTime,
    
    /// Leave time
    DateTime? leaveTime,
    
    /// Participant status
    required ParticipantStatus status,
    
    /// Participant notes
    String? notes,
  }) = _MeetingParticipant;

  factory MeetingParticipant.fromJson(Map<String, dynamic> json) => _$MeetingParticipantFromJson(json);
}

/// Participant roles
enum ParticipantRole {
  host('Host'),
  coHost('Co-Host'),
  presenter('Presenter'),
  participant('Participant'),
  observer('Observer');

  const ParticipantRole(this.displayName);
  final String displayName;
}

/// Participant status
enum ParticipantStatus {
  invited('Invited'),
  confirmed('Confirmed'),
  declined('Declined'),
  tentative('Tentative'),
  joined('Joined'),
  left('Left'),
  noShow('No Show');

  const ParticipantStatus(this.displayName);
  final String displayName;
}

/// Represents a meeting invitation
@freezed
class MeetingInvitation with _$MeetingInvitation {
  const factory MeetingInvitation({
    /// Invitation ID
    required String id,
    
    /// Meeting ID
    required String meetingId,
    
    /// Invited user ID
    required String invitedUserId,
    
    /// Invitation status
    required InvitationStatus status,
    
    /// Invitation date
    required DateTime invitationDate,
    
    /// Response date
    DateTime? responseDate,
    
    /// Response notes
    String? responseNotes,
    
    /// Whether invitation has been sent
    required bool isSent,
    
    /// Sent date
    DateTime? sentDate,
  }) = _MeetingInvitation;

  factory MeetingInvitation.fromJson(Map<String, dynamic> json) => _$MeetingInvitationFromJson(json);
}

/// Invitation status
enum InvitationStatus {
  pending('Pending'),
  accepted('Accepted'),
  declined('Declined'),
  tentative('Tentative'),
  expired('Expired');

  const InvitationStatus(this.displayName);
  final String displayName;
}

/// Extension methods for GroupMeeting
extension GroupMeetingExtension on GroupMeeting {
  /// Check if meeting is upcoming
  bool get isUpcoming => meetingDateTime.isAfter(DateTime.now());
  
  /// Check if meeting is today
  bool get isToday {
    final now = DateTime.now();
    return meetingDateTime.year == now.year &&
           meetingDateTime.month == now.month &&
           meetingDateTime.day == now.day;
  }
  
  /// Check if meeting is this week
  bool get isThisWeek {
    final now = DateTime.now();
    final meetingWeek = meetingDateTime.difference(DateTime(2021, 1, 1)).inDays ~/ 7;
    final currentWeek = now.difference(DateTime(2021, 1, 1)).inDays ~/ 7;
    return meetingWeek == currentWeek;
  }
  
  /// Get meeting age
  Duration get age => DateTime.now().difference(meetingDateTime);
  
  /// Get meeting age in days
  int get ageInDays => age.inDays;
  
  /// Get meeting age in hours
  int get ageInHours => age.inHours;
  
  /// Check if meeting is recent (within 24 hours)
  bool get isRecent => ageInHours < 24;
  
  /// Check if meeting is starting soon (within 15 minutes)
  bool get isStartingSoon {
    final timeUntilMeeting = meetingDateTime.difference(DateTime.now());
    return timeUntilMeeting.inMinutes <= 15 && timeUntilMeeting.inMinutes >= 0;
  }
  
  /// Check if meeting is overdue (should have started but hasn't)
  bool get isOverdue {
    final timeUntilMeeting = meetingDateTime.difference(DateTime.now());
    return timeUntilMeeting.inMinutes < 0 && status == MeetingStatus.scheduled;
  }
  
  /// Get meeting end time
  DateTime get endTime => meetingDateTime.add(Duration(minutes: durationMinutes));
  
  /// Check if meeting is currently in progress
  bool get isInProgress {
    final now = DateTime.now();
    return now.isAfter(meetingDateTime) && now.isBefore(endTime);
  }
  
  /// Get total agenda duration
  int get totalAgendaDuration {
    return agenda.fold(0, (sum, item) => sum + item.durationMinutes);
  }
  
  /// Get completed agenda items
  List<AgendaItem> get completedAgendaItems {
    return agenda.where((item) => item.isCompleted).toList();
  }
  
  /// Get pending agenda items
  List<AgendaItem> get pendingAgendaItems {
    return agenda.where((item) => !item.isCompleted).toList();
  }
  
  /// Check if user is host
  bool isHost(String userId) => hostId == userId;
  
  /// Check if user is participant
  bool isParticipant(String userId) => participants.contains(userId);
  
  /// Check if user can edit meeting
  bool canEdit(String userId) => isHost(userId);
  
  /// Check if user can cancel meeting
  bool canCancel(String userId) => isHost(userId);
  
  /// Check if user can join meeting
  bool canJoin(String userId) => isParticipant(userId) && status == MeetingStatus.scheduled;
}

/// Extension methods for AgendaItem
extension AgendaItemExtension on AgendaItem {
  /// Check if item is overdue
  bool get isOverdue => !isCompleted;
  
  /// Get item status
  String get statusText => isCompleted ? 'Completed' : 'Pending';
}

/// Extension methods for MeetingParticipant
extension MeetingParticipantExtension on MeetingParticipant {
  /// Check if participant is currently in meeting
  bool get isInMeeting => hasJoined && joinTime != null && leaveTime == null;
  
  /// Get meeting duration for participant
  Duration? get meetingDuration {
    if (joinTime == null) return null;
    final endTime = leaveTime ?? DateTime.now();
    return endTime.difference(joinTime!);
  }
  
  /// Get meeting duration in minutes
  int? get meetingDurationMinutes => meetingDuration?.inMinutes;
  
  /// Check if participant is host
  bool get isHost => role == ParticipantRole.host;
  
  /// Check if participant is presenter
  bool get isPresenter => role == ParticipantRole.presenter;
}
