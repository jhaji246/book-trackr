import 'package:dartz/dartz.dart';
import '../../domain/entities/meeting_entity.dart';
import '../../domain/entities/meeting_helpers.dart';
import '../../domain/failures.dart';
import 'meeting_remote_data_source.dart';

/// Concrete implementation of MeetingRemoteDataSource with sample data
class MeetingRemoteDataSourceImpl implements MeetingRemoteDataSource {
  @override
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsForGroup(String groupId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Return sample meetings for the group
      final meetings = _generateSampleMeetings(groupId);
      return Right(meetings);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to fetch meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsForUser(String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Return sample meetings for the user
      final meetings = _generateSampleMeetings('group-1'); // Sample group
      return Right(meetings);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to fetch user meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> getMeetingById(String meetingId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 300));
      
      // Return sample meeting
      final meeting = _generateSampleMeeting(meetingId);
      return Right(meeting);
    } catch (e) {
      return Left(Failure.meetingNotFoundFailure(meetingId: meetingId));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> createMeeting(MeetingEntity meeting) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 800));
      
      // Return the created meeting with generated ID
      final createdMeeting = meeting.copyWith(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        dateCreated: DateTime.now(),
        dateUpdated: DateTime.now(),
      );
      
      return Right(createdMeeting);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to create meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> updateMeeting(MeetingEntity meeting) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 600));
      
      // Return updated meeting
      final updatedMeeting = meeting.copyWith(
        dateUpdated: DateTime.now(),
      );
      
      return Right(updatedMeeting);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteMeeting(String meetingId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Simulate successful deletion
      return const Right(null);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to delete meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> joinMeeting(String meetingId, String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 300));
      
      // Get the meeting and add user to participants
      final meetingResult = await getMeetingById(meetingId);
      return meetingResult.fold(
        (failure) => Left(failure),
        (meeting) {
          if (!meeting.participants.contains(userId)) {
            final updatedMeeting = meeting.copyWith(
              participants: [...meeting.participants, userId],
              dateUpdated: DateTime.now(),
            );
            return Right(updatedMeeting);
          }
          return Right(meeting);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to join meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> leaveMeeting(String meetingId, String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 300));
      
      // Get the meeting and remove user from participants
      final meetingResult = await getMeetingById(meetingId);
      return meetingResult.fold(
        (failure) => Left(failure),
        (meeting) {
          final updatedMeeting = meeting.copyWith(
            participants: meeting.participants.where((id) => id != userId).toList(),
            dateUpdated: DateTime.now(),
          );
          return Right(updatedMeeting);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to leave meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> updateMeetingStatus(String meetingId, MeetingStatus status) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 300));
      
      // Get the meeting and update status
      final meetingResult = await getMeetingById(meetingId);
      return meetingResult.fold(
        (failure) => Left(failure),
        (meeting) {
          final updatedMeeting = meeting.copyWith(
            status: status,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedMeeting);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update meeting status: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getUpcomingMeetings(String groupId) async {
    try {
      final meetings = await getMeetingsForGroup(groupId);
      return meetings.fold(
        (failure) => Left(failure),
        (meetings) {
          final upcoming = meetings.where((m) => MeetingHelpers.isUpcoming(m)).toList();
          upcoming.sort((a, b) => a.meetingDateTime.compareTo(b.meetingDateTime));
          return Right(upcoming);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get upcoming meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getPastMeetings(String groupId) async {
    try {
      final meetings = await getMeetingsForGroup(groupId);
      return meetings.fold(
        (failure) => Left(failure),
        (meetings) {
          final past = meetings.where((m) => MeetingHelpers.isPast(m)).toList();
          past.sort((a, b) => b.meetingDateTime.compareTo(a.meetingDateTime));
          return Right(past);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get past meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> searchMeetings({
    String? groupId,
    String? hostId,
    MeetingType? type,
    MeetingStatus? status,
    DateTime? fromDate,
    DateTime? toDate,
    String? searchQuery,
  }) async {
    try {
      final meetings = await getMeetingsForGroup(groupId ?? 'group-1');
      return meetings.fold(
        (failure) => Left(failure),
        (meetings) {
          var filtered = meetings;
          
          if (hostId != null) {
            filtered = filtered.where((m) => m.hostId == hostId).toList();
          }
          
          if (type != null) {
            filtered = filtered.where((m) => m.type == type).toList();
          }
          
          if (status != null) {
            filtered = filtered.where((m) => m.status == status).toList();
          }
          
          if (fromDate != null) {
            filtered = filtered.where((m) => m.meetingDateTime.isAfter(fromDate)).toList();
          }
          
          if (toDate != null) {
            filtered = filtered.where((m) => m.meetingDateTime.isBefore(toDate)).toList();
          }
          
          if (searchQuery != null && searchQuery.isNotEmpty) {
            final query = searchQuery.toLowerCase();
            filtered = filtered.where((m) =>
              m.title.toLowerCase().contains(query) ||
              m.description.toLowerCase().contains(query)
            ).toList();
          }
          
          return Right(filtered);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to search meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsHappeningNow() async {
    try {
      final meetings = await getMeetingsForGroup('group-1');
      return meetings.fold(
        (failure) => Left(failure),
        (meetings) {
          final happeningNow = meetings.where((m) => MeetingHelpers.isHappeningNow(m)).toList();
          return Right(happeningNow);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meetings happening now: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> sendMeetingReminders(String meetingId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Simulate successful reminder sending
      return const Right(null);
    } catch (e) {
      return Left(Failure.reminderFailure(message: 'Failed to send reminders: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> updateRecordingUrl(String meetingId, String recordingUrl) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 300));
      
      // Get the meeting and update recording URL
      final meetingResult = await getMeetingById(meetingId);
      return meetingResult.fold(
        (failure) => Left(failure),
        (meeting) {
          final updatedMeeting = meeting.copyWith(
            recordingUrl: recordingUrl,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedMeeting);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update recording URL: $e'));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getMeetingStatistics(String groupId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 600));
      
      // Return sample statistics
      return Right({
        'totalMeetings': 15,
        'upcomingMeetings': 3,
        'pastMeetings': 12,
        'averageAttendance': 8.5,
        'mostPopularType': 'bookDiscussion',
        'totalDuration': 1800, // minutes
      });
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meeting statistics: $e'));
    }
  }

  @override
  Future<Either<Failure, String>> generateMeetingLink(MeetingEntity meeting) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Generate sample meeting links based on platform
      switch (meeting.platform) {
        case MeetingPlatform.zoom:
          return Right('https://zoom.us/j/123456789?pwd=abc123');
        case MeetingPlatform.googleMeet:
          return Right('https://meet.google.com/abc-defg-hij');
        case MeetingPlatform.teams:
          return Right('https://teams.microsoft.com/l/meetup-join/abc123');
        case MeetingPlatform.discord:
          return Right('https://discord.gg/abc123');
        default:
          return Right('https://meeting.example.com/${meeting.id}');
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to generate meeting link: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> validateMeetingCredentials(String meetingId, String password) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 200));
      
      // For demo purposes, accept any password
      return const Right(true);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to validate credentials: $e'));
    }
  }

  /// Generate sample meetings for demonstration
  List<MeetingEntity> _generateSampleMeetings(String groupId) {
    final now = DateTime.now();
    final tomorrow = now.add(const Duration(days: 1));
    final nextWeek = now.add(const Duration(days: 7));
    final lastWeek = now.subtract(const Duration(days: 7));
    
    return [
      _generateSampleMeeting(
        'meeting-1',
        groupId: groupId,
        title: 'Book Discussion: "The Great Gatsby"',
        description: 'Join us for a lively discussion about F. Scott Fitzgerald\'s classic novel.',
        type: MeetingType.bookDiscussion,
        dateTime: tomorrow.add(const Duration(hours: 19)),
        duration: 90,
      ),
      _generateSampleMeeting(
        'meeting-2',
        groupId: groupId,
        title: 'Reading Check-in Session',
        description: 'Weekly check-in to discuss our reading progress and share thoughts.',
        type: MeetingType.readingCheckIn,
        dateTime: nextWeek.add(const Duration(hours: 20)),
        duration: 60,
      ),
      _generateSampleMeeting(
        'meeting-3',
        groupId: groupId,
        title: 'Author Interview: Jane Smith',
        description: 'Exclusive interview with bestselling author Jane Smith about her latest book.',
        type: MeetingType.authorInterview,
        dateTime: lastWeek.add(const Duration(hours: 18)),
        duration: 120,
        status: MeetingStatus.completed,
      ),
      _generateSampleMeeting(
        'meeting-4',
        groupId: groupId,
        title: 'Writing Workshop: Character Development',
        description: 'Learn techniques for creating compelling characters in your writing.',
        type: MeetingType.writingWorkshop,
        dateTime: now.add(const Duration(hours: 2)),
        duration: 90,
        status: MeetingStatus.inProgress,
      ),
    ];
  }

  /// Generate a sample meeting
  MeetingEntity _generateSampleMeeting(
    String id, {
    String? groupId,
    String? title,
    String? description,
    MeetingType? type,
    DateTime? dateTime,
    int? duration,
    MeetingStatus? status,
  }) {
    final now = DateTime.now();
    final meetingDateTime = dateTime ?? now.add(const Duration(days: 1, hours: 19));
    final meetingDuration = duration ?? 90;
    
    return MeetingEntity(
      id: id,
      groupId: groupId ?? 'group-1',
      title: title ?? 'Sample Meeting',
      description: description ?? 'This is a sample meeting for demonstration purposes.',
      type: type ?? MeetingType.bookDiscussion,
      meetingDateTime: meetingDateTime,
      durationMinutes: meetingDuration,
      hostId: 'user-1',
      participants: ['user-1', 'user-2', 'user-3'],
      status: status ?? MeetingStatus.scheduled,
      platform: MeetingPlatform.zoom,
      meetingLink: 'https://zoom.us/j/123456789?pwd=abc123',
      meetingPassword: 'abc123',
      recordingUrl: null,
      notes: null,
      materials: ['book-pdf.pdf', 'discussion-questions.docx'],
      agenda: _generateSampleAgenda(),
      reminders: _generateSampleReminders(),
      dateCreated: now.subtract(const Duration(days: 3)),
      dateUpdated: now.subtract(const Duration(days: 1)),
    );
  }

  /// Generate sample agenda items
  List<AgendaItemEntity> _generateSampleAgenda() {
    return [
      const AgendaItemEntity(
        id: 'agenda-1',
        title: 'Introduction & Welcome',
        description: 'Brief introduction and meeting overview',
        durationMinutes: 10,
        order: 1,
        type: AgendaItemType.introduction,
        status: AgendaItemStatus.pending,
        presenterId: 'user-1',
      ),
      const AgendaItemEntity(
        id: 'agenda-2',
        title: 'Main Discussion',
        description: 'In-depth discussion of the book',
        durationMinutes: 60,
        order: 2,
        type: AgendaItemType.discussion,
        status: AgendaItemStatus.pending,
      ),
      const AgendaItemEntity(
        id: 'agenda-3',
        title: 'Q&A Session',
        description: 'Questions and answers from participants',
        durationMinutes: 15,
        order: 3,
        type: AgendaItemType.qa,
        status: AgendaItemStatus.pending,
      ),
      const AgendaItemEntity(
        id: 'agenda-4',
        title: 'Wrap-up & Next Steps',
        description: 'Summary and planning for next meeting',
        durationMinutes: 5,
        order: 4,
        type: AgendaItemType.conclusion,
        status: AgendaItemStatus.pending,
        presenterId: 'user-1',
      ),
    ];
  }

  /// Generate sample reminders
  List<MeetingReminderEntity> _generateSampleReminders() {
    return [
      const MeetingReminderEntity(
        id: 'reminder-1',
        type: ReminderType.email,
        timeBeforeMeeting: Duration(hours: 24),
        message: 'Reminder: Your meeting starts in 24 hours',
        isEnabled: true,
        status: ReminderStatus.pending,
      ),
      const MeetingReminderEntity(
        id: 'reminder-2',
        type: ReminderType.push,
        timeBeforeMeeting: Duration(minutes: 15),
        message: 'Your meeting starts in 15 minutes',
        isEnabled: true,
        status: ReminderStatus.pending,
      ),
    ];
  }
}
