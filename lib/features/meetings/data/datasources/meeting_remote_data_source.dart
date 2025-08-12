import '../../domain/entities/meeting_entity.dart';
import '../../domain/failures.dart';

/// Abstract interface for remote meeting data operations
abstract class MeetingRemoteDataSource {
  /// Get all meetings for a specific group
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsForGroup(String groupId);
  
  /// Get all meetings for a specific user (as participant or host)
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsForUser(String userId);
  
  /// Get a specific meeting by ID
  Future<Either<Failure, MeetingEntity>> getMeetingById(String meetingId);
  
  /// Create a new meeting
  Future<Either<Failure, MeetingEntity>> createMeeting(MeetingEntity meeting);
  
  /// Update an existing meeting
  Future<Either<Failure, MeetingEntity>> updateMeeting(MeetingEntity meeting);
  
  /// Delete a meeting
  Future<Either<Failure, void>> deleteMeeting(String meetingId);
  
  /// Join a meeting (add user to participants)
  Future<Either<Failure, MeetingEntity>> joinMeeting(String meetingId, String userId);
  
  /// Leave a meeting (remove user from participants)
  Future<Either<Failure, MeetingEntity>> leaveMeeting(String meetingId, String userId);
  
  /// Update meeting status
  Future<Either<Failure, MeetingEntity>> updateMeetingStatus(String meetingId, MeetingStatus status);
  
  /// Get upcoming meetings for a group
  Future<Either<Failure, List<MeetingEntity>>> getUpcomingMeetings(String groupId);
  
  /// Get past meetings for a group
  Future<Either<Failure, List<MeetingEntity>>> getPastMeetings(String groupId);
  
  /// Search meetings by criteria
  Future<Either<Failure, List<MeetingEntity>>> searchMeetings({
    String? groupId,
    String? hostId,
    MeetingType? type,
    MeetingStatus? status,
    DateTime? fromDate,
    DateTime? toDate,
    String? searchQuery,
  });
  
  /// Get meetings happening now
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsHappeningNow();
  
  /// Send meeting reminders
  Future<Either<Failure, void>> sendMeetingReminders(String meetingId);
  
  /// Update meeting recording URL
  Future<Either<Failure, MeetingEntity>> updateRecordingUrl(String meetingId, String recordingUrl);
  
  /// Get meeting statistics
  Future<Either<Failure, Map<String, dynamic>>> getMeetingStatistics(String groupId);
  
  /// Generate meeting link for video platform
  Future<Either<Failure, String>> generateMeetingLink(MeetingEntity meeting);
  
  /// Validate meeting credentials
  Future<Either<Failure, bool>> validateMeetingCredentials(String meetingId, String password);
}
