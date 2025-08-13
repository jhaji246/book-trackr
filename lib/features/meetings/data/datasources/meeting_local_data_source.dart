import 'package:dartz/dartz.dart';
import '../../domain/entities/meeting_entity.dart';
import '../../domain/failures.dart';

/// Abstract interface for local meeting data operations (caching)
abstract class MeetingLocalDataSource {
  /// Cache meetings for a group
  Future<Either<Failure, void>> cacheMeetingsForGroup(String groupId, List<MeetingEntity> meetings);
  
  /// Cache meetings for a user
  Future<Either<Failure, void>> cacheMeetingsForUser(String userId, List<MeetingEntity> meetings);
  
  /// Cache a single meeting
  Future<Either<Failure, void>> cacheMeeting(MeetingEntity meeting);
  
  /// Get cached meetings for a group
  Future<Either<Failure, List<MeetingEntity>>> getCachedMeetingsForGroup(String groupId);
  
  /// Get cached meetings for a user
  Future<Either<Failure, List<MeetingEntity>>> getCachedMeetingsForUser(String userId);
  
  /// Get cached meeting by ID
  Future<Either<Failure, MeetingEntity?>> getCachedMeeting(String meetingId);
  
  /// Get cached upcoming meetings for a group
  Future<Either<Failure, List<MeetingEntity>>> getCachedUpcomingMeetings(String groupId);
  
  /// Get cached past meetings for a group
  Future<Either<Failure, List<MeetingEntity>>> getCachedPastMeetings(String groupId);
  
  /// Get cached meetings happening now
  Future<Either<Failure, List<MeetingEntity>>> getCachedMeetingsHappeningNow();
  
  /// Clear cached meetings for a group
  Future<Either<Failure, void>> clearCachedMeetingsForGroup(String groupId);
  
  /// Clear cached meetings for a user
  Future<Either<Failure, void>> clearCachedMeetingsForUser(String userId);
  
  /// Clear all cached meetings
  Future<Either<Failure, void>> clearAllCachedMeetings();
  
  /// Check if meetings are cached for a group
  Future<Either<Failure, bool>> hasCachedMeetingsForGroup(String groupId);
  
  /// Check if meetings are cached for a user
  Future<Either<Failure, bool>> hasCachedMeetingsForUser(String userId);
  
  /// Get cache timestamp for a group
  Future<Either<Failure, DateTime?>> getCacheTimestampForGroup(String groupId);
  
  /// Get cache timestamp for a user
  Future<Either<Failure, DateTime?>> getCacheTimestampForUser(String userId);
  
  /// Check if cache is expired for a group
  Future<Either<Failure, bool>> isCacheExpiredForGroup(String groupId, Duration maxAge);
  
  /// Check if cache is expired for a user
  Future<Either<Failure, bool>> isCacheExpiredForUser(String userId, Duration maxAge);
}
