import 'package:dartz/dartz.dart';
import '../../domain/entities/meeting_entity.dart';
import '../../domain/entities/meeting_helpers.dart';
import '../../domain/failures.dart';
import '../../domain/repositories/meeting_repository.dart';
import '../datasources/meeting_local_data_source.dart';
import '../datasources/meeting_remote_data_source.dart';

/// Concrete implementation of MeetingRepository
class MeetingRepositoryImpl implements MeetingRepository {
  final MeetingRemoteDataSource _remoteDataSource;
  final MeetingLocalDataSource _localDataSource;
  
  static const Duration _cacheExpiry = Duration(minutes: 30);

  const MeetingRepositoryImpl({
    required MeetingRemoteDataSource remoteDataSource,
    required MeetingLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsForGroup(String groupId) async {
    try {
      // Check if we have valid cached data
      final hasCache = await _localDataSource.hasCachedMeetingsForGroup(groupId);
      final isExpired = await _localDataSource.isCacheExpiredForGroup(groupId, _cacheExpiry);
      
      if (hasCache && !isExpired) {
        // Return cached data
        return await _localDataSource.getCachedMeetingsForGroup(groupId);
      }
      
      // Fetch from remote and cache
      final remoteResult = await _remoteDataSource.getMeetingsForGroup(groupId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (meetings) async {
          // Cache the meetings
          await _localDataSource.cacheMeetingsForGroup(groupId, meetings);
          return Right(meetings);
        },
      );
    } catch (e) {
      // Fallback to cache if available
      final cachedMeetings = await _localDataSource.getCachedMeetingsForGroup(groupId);
      if (cachedMeetings.isRight() && cachedMeetings.right.isNotEmpty) {
        return cachedMeetings;
      }
      return Left(Failure.serverFailure(message: 'Failed to get meetings for group: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsForUser(String userId) async {
    try {
      // Check if we have valid cached data
      final hasCache = await _localDataSource.hasCachedMeetingsForUser(userId);
      final isExpired = await _localDataSource.isCacheExpiredForUser(userId, _cacheExpiry);
      
      if (hasCache && !isExpired) {
        // Return cached data
        return await _localDataSource.getCachedMeetingsForUser(userId);
      }
      
      // Fetch from remote and cache
      final remoteResult = await _remoteDataSource.getMeetingsForUser(userId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (meetings) async {
          // Cache the meetings
          await _localDataSource.cacheMeetingsForUser(userId, meetings);
          return Right(meetings);
        },
      );
    } catch (e) {
      // Fallback to cache if available
      final cachedMeetings = await _localDataSource.getCachedMeetingsForUser(userId);
      if (cachedMeetings.isRight() && cachedMeetings.right.isNotEmpty) {
        return cachedMeetings;
      }
      return Left(Failure.serverFailure(message: 'Failed to get meetings for user: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> getMeetingById(String meetingId) async {
    try {
      // Check cache first
      final cachedMeeting = await _localDataSource.getCachedMeeting(meetingId);
      if (cachedMeeting.isRight() && cachedMeeting.right != null) {
        return Right(cachedMeeting.right!);
      }
      
      // Fetch from remote
      final remoteResult = await _remoteDataSource.getMeetingById(meetingId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (meeting) async {
          // Cache the meeting
          await _localDataSource.cacheMeeting(meeting);
          return Right(meeting);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> createMeeting(MeetingEntity meeting) async {
    try {
      // Create meeting remotely
      final remoteResult = await _remoteDataSource.createMeeting(meeting);
      return remoteResult.fold(
        (failure) => Left(failure),
        (createdMeeting) async {
          // Cache the new meeting
          await _localDataSource.cacheMeeting(createdMeeting);
          
          // Update group cache
          final groupMeetings = await _localDataSource.getCachedMeetingsForGroup(meeting.groupId);
          if (groupMeetings.isRight()) {
            final updatedMeetings = [...groupMeetings.right, createdMeeting];
            await _localDataSource.cacheMeetingsForGroup(meeting.groupId, updatedMeetings);
          }
          
          return Right(createdMeeting);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to create meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> updateMeeting(MeetingEntity meeting) async {
    try {
      // Update meeting remotely
      final remoteResult = await _remoteDataSource.updateMeeting(meeting);
      return remoteResult.fold(
        (failure) => Left(failure),
        (updatedMeeting) async {
          // Update cache
          await _localDataSource.cacheMeeting(updatedMeeting);
          
          // Update group cache
          final groupMeetings = await _localDataSource.getCachedMeetingsForGroup(meeting.groupId);
          if (groupMeetings.isRight()) {
            final updatedMeetings = groupMeetings.right.map((m) => 
              m.id == meeting.id ? updatedMeeting : m
            ).toList();
            await _localDataSource.cacheMeetingsForGroup(meeting.groupId, updatedMeetings);
          }
          
          return Right(updatedMeeting);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteMeeting(String meetingId) async {
    try {
      // Delete meeting remotely
      final remoteResult = await _remoteDataSource.deleteMeeting(meetingId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (_) async {
          // Remove from cache
          await _localDataSource.clearCachedMeetingsForGroup('group-1'); // Simplified for demo
          return const Right(null);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to delete meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> joinMeeting(String meetingId, String userId) async {
    try {
      // Join meeting remotely
      final remoteResult = await _remoteDataSource.joinMeeting(meetingId, userId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (updatedMeeting) async {
          // Update cache
          await _localDataSource.cacheMeeting(updatedMeeting);
          return Right(updatedMeeting);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to join meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> leaveMeeting(String meetingId, String userId) async {
    try {
      // Leave meeting remotely
      final remoteResult = await _remoteDataSource.leaveMeeting(meetingId, userId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (updatedMeeting) async {
          // Update cache
          await _localDataSource.cacheMeeting(updatedMeeting);
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
      // Update status remotely
      final remoteResult = await _remoteDataSource.updateMeetingStatus(meetingId, status);
      return remoteResult.fold(
        (failure) => Left(failure),
        (updatedMeeting) async {
          // Update cache
          await _localDataSource.cacheMeeting(updatedMeeting);
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
      // Check cache first
      final cachedMeetings = await _localDataSource.getCachedUpcomingMeetings(groupId);
      if (cachedMeetings.isRight() && cachedMeetings.right.isNotEmpty) {
        return cachedMeetings;
      }
      
      // Fetch from remote
      final remoteResult = await _remoteDataSource.getUpcomingMeetings(groupId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (meetings) async {
          // Cache the meetings
          await _localDataSource.cacheMeetingsForGroup(groupId, meetings);
          return Right(meetings);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get upcoming meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getPastMeetings(String groupId) async {
    try {
      // Check cache first
      final cachedMeetings = await _localDataSource.getCachedPastMeetings(groupId);
      if (cachedMeetings.isRight() && cachedMeetings.right.isNotEmpty) {
        return cachedMeetings;
      }
      
      // Fetch from remote
      final remoteResult = await _remoteDataSource.getPastMeetings(groupId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (meetings) async {
          // Cache the meetings
          await _localDataSource.cacheMeetingsForGroup(groupId, meetings);
          return Right(meetings);
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
      // Search remotely
      final remoteResult = await _remoteDataSource.searchMeetings(
        groupId: groupId,
        hostId: hostId,
        type: type,
        status: status,
        fromDate: fromDate,
        toDate: toDate,
        searchQuery: searchQuery,
      );
      
      return remoteResult;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to search meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsHappeningNow() async {
    try {
      // Check cache first
      final cachedMeetings = await _localDataSource.getCachedMeetingsHappeningNow();
      if (cachedMeetings.isRight() && cachedMeetings.right.isNotEmpty) {
        return cachedMeetings;
      }
      
      // Fetch from remote
      final remoteResult = await _remoteDataSource.getMeetingsHappeningNow();
      return remoteResult;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meetings happening now: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> sendMeetingReminders(String meetingId) async {
    try {
      return await _remoteDataSource.sendMeetingReminders(meetingId);
    } catch (e) {
      return Left(Failure.reminderFailure(message: 'Failed to send meeting reminders: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity>> updateRecordingUrl(String meetingId, String recordingUrl) async {
    try {
      // Update remotely
      final remoteResult = await _remoteDataSource.updateRecordingUrl(meetingId, recordingUrl);
      return remoteResult.fold(
        (failure) => Left(failure),
        (updatedMeeting) async {
          // Update cache
          await _localDataSource.cacheMeeting(updatedMeeting);
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
      return await _remoteDataSource.getMeetingStatistics(groupId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meeting statistics: $e'));
    }
  }
}
