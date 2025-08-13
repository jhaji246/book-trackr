import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import '../../domain/entities/meeting_entity.dart';
import '../../domain/entities/meeting_helpers.dart';
import '../../domain/failures.dart';
import 'meeting_local_data_source.dart';

/// Concrete implementation of MeetingLocalDataSource using Hive
class MeetingLocalDataSourceImpl implements MeetingLocalDataSource {
  static const String _meetingsBoxName = 'meetings_cache';
  static const String _timestampsBoxName = 'meetings_timestamps';
  static const Duration _defaultCacheExpiry = Duration(hours: 1);

  late Box<dynamic> _meetingsBox;
  late Box<dynamic> _timestampsBox;

  /// Initialize the data source
  Future<void> initialize() async {
    _meetingsBox = await Hive.openBox(_meetingsBoxName);
    _timestampsBox = await Hive.openBox(_timestampsBoxName);
  }

  @override
  Future<Either<Failure, void>> cacheMeetingsForGroup(String groupId, List<MeetingEntity> meetings) async {
    try {
      final key = 'group_$groupId';
      final meetingsData = meetings.map((m) => _meetingToMap(m)).toList();
      
      await _meetingsBox.put(key, meetingsData);
      await _timestampsBox.put(key, DateTime.now().toIso8601String());
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to cache meetings for group: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> cacheMeetingsForUser(String userId, List<MeetingEntity> meetings) async {
    try {
      final key = 'user_$userId';
      final meetingsData = meetings.map((m) => _meetingToMap(m)).toList();
      
      await _meetingsBox.put(key, meetingsData);
      await _timestampsBox.put(key, DateTime.now().toIso8601String());
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to cache meetings for user: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> cacheMeeting(MeetingEntity meeting) async {
    try {
      final key = 'meeting_${meeting.id}';
      final meetingData = _meetingToMap(meeting);
      
      await _meetingsBox.put(key, meetingData);
      await _timestampsBox.put(key, DateTime.now().toIso8601String());
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to cache meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getCachedMeetingsForGroup(String groupId) async {
    try {
      final key = 'group_$groupId';
      final meetingsData = _meetingsBox.get(key) as List<dynamic>?;
      
      if (meetingsData == null) {
        return const Right([]);
      }
      
      final meetings = meetingsData
          .map((data) => _meetingFromMap(data as Map<String, dynamic>))
          .whereType<MeetingEntity>()
          .toList();
      
      return Right(meetings);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached meetings for group: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getCachedMeetingsForUser(String userId) async {
    try {
      final key = 'user_$userId';
      final meetingsData = _meetingsBox.get(key) as List<dynamic>?;
      
      if (meetingsData == null) {
        return const Right([]);
      }
      
      final meetings = meetingsData
          .map((data) => _meetingFromMap(data as Map<String, dynamic>))
          .whereType<MeetingEntity>()
          .toList();
      
      return Right(meetings);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached meetings for user: $e'));
    }
  }

  @override
  Future<Either<Failure, MeetingEntity?>> getCachedMeeting(String meetingId) async {
    try {
      final key = 'meeting_$meetingId';
      final meetingData = _meetingsBox.get(key) as Map<String, dynamic>?;
      
      if (meetingData == null) {
        return const Right(null);
      }
      
      final meeting = _meetingFromMap(meetingData);
      return Right(meeting);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached meeting: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getCachedUpcomingMeetings(String groupId) async {
    try {
      final meetings = await getCachedMeetingsForGroup(groupId);
      return meetings.fold(
        (failure) => Left(failure),
        (meetings) {
          final upcoming = meetings.where((m) => MeetingHelpers.isUpcoming(m)).toList();
          upcoming.sort((a, b) => a.meetingDateTime.compareTo(b.meetingDateTime));
          return Right(upcoming);
        },
      );
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached upcoming meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getCachedPastMeetings(String groupId) async {
    try {
      final meetings = await getCachedMeetingsForGroup(groupId);
      return meetings.fold(
        (failure) => Left(failure),
        (meetings) {
          final past = meetings.where((m) => MeetingHelpers.isPast(m)).toList();
          past.sort((a, b) => b.meetingDateTime.compareTo(a.meetingDateTime));
          return Right(past);
        },
      );
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached past meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MeetingEntity>>> getCachedMeetingsHappeningNow() async {
    try {
      // Get all cached meetings and filter for those happening now
      final allMeetings = <MeetingEntity>[];
      
      // Get meetings from all group caches
      for (final key in _meetingsBox.keys) {
        if (key.toString().startsWith('group_')) {
          final meetings = await getCachedMeetingsForGroup(key.toString().substring(6));
          meetings.fold(
            (failure) => null,
            (meetings) => allMeetings.addAll(meetings),
          );
        }
      }
      
      final happeningNow = allMeetings.where((m) => MeetingHelpers.isHappeningNow(m)).toList();
      return Right(happeningNow);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached meetings happening now: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearCachedMeetingsForGroup(String groupId) async {
    try {
      final key = 'group_$groupId';
      await _meetingsBox.delete(key);
      await _timestampsBox.delete(key);
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to clear cached meetings for group: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearCachedMeetingsForUser(String userId) async {
    try {
      final key = 'user_$userId';
      await _meetingsBox.delete(key);
      await _timestampsBox.delete(key);
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to clear cached meetings for user: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearAllCachedMeetings() async {
    try {
      await _meetingsBox.clear();
      await _timestampsBox.clear();
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to clear all cached meetings: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> hasCachedMeetingsForGroup(String groupId) async {
    try {
      final key = 'group_$groupId';
      return Right(_meetingsBox.containsKey(key));
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to check cached meetings for group: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> hasCachedMeetingsForUser(String userId) async {
    try {
      final key = 'user_$userId';
      return Right(_meetingsBox.containsKey(key));
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to check cached meetings for user: $e'));
    }
  }

  @override
  Future<Either<Failure, DateTime?>> getCacheTimestampForGroup(String groupId) async {
    try {
      final key = 'group_$groupId';
      final timestamp = _timestampsBox.get(key) as String?;
      
      if (timestamp == null) {
        return const Right(null);
      }
      
      return Right(DateTime.parse(timestamp));
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cache timestamp for group: $e'));
    }
  }

  @override
  Future<Either<Failure, DateTime?>> getCacheTimestampForUser(String userId) async {
    try {
      final key = 'user_$userId';
      final timestamp = _timestampsBox.get(key) as String?;
      
      if (timestamp == null) {
        return const Right(null);
      }
      
      return Right(DateTime.parse(timestamp));
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cache timestamp for user: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> isCacheExpiredForGroup(String groupId, Duration maxAge) async {
    try {
      final timestamp = await getCacheTimestampForGroup(groupId);
      return timestamp.fold(
        (failure) => Left(failure),
        (timestamp) {
          if (timestamp == null) return const Right(true);
          
          final age = DateTime.now().difference(timestamp);
          return Right(age > maxAge);
        },
      );
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to check cache expiry for group: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> isCacheExpiredForUser(String userId, Duration maxAge) async {
    try {
      final timestamp = await getCacheTimestampForUser(userId);
      return timestamp.fold(
        (failure) => Left(failure),
        (timestamp) {
          if (timestamp == null) return const Right(true);
          
          final age = DateTime.now().difference(timestamp);
          return Right(age > maxAge);
        },
      );
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to check cache expiry for user: $e'));
    }
  }

  /// Convert MeetingEntity to Map for storage
  Map<String, dynamic> _meetingToMap(MeetingEntity meeting) {
    return {
      'id': meeting.id,
      'groupId': meeting.groupId,
      'title': meeting.title,
      'description': meeting.description,
      'type': meeting.type.name,
      'meetingDateTime': meeting.meetingDateTime.toIso8601String(),
      'durationMinutes': meeting.durationMinutes,
      'hostId': meeting.hostId,
      'participants': meeting.participants,
      'status': meeting.status.name,
      'platform': meeting.platform.name,
      'meetingLink': meeting.meetingLink,
      'meetingPassword': meeting.meetingPassword,
      'recordingUrl': meeting.recordingUrl,
      'notes': meeting.notes,
      'materials': meeting.materials,
      // 'agenda': meeting.agenda.map((item) => _agendaItemToMap(item)).toList(),
      // 'reminders': meeting.reminders.map((reminder) => _reminderToMap(reminder)).toList(),
      'dateCreated': meeting.dateCreated.toIso8601String(),
      'dateUpdated': meeting.dateUpdated.toIso8601String(),
    };
  }

  /// Convert Map to MeetingEntity
  MeetingEntity _meetingFromMap(Map<String, dynamic> map) {
    return MeetingEntity(
      id: map['id'] as String,
      groupId: map['groupId'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      type: MeetingType.values.firstWhere((e) => e.name == map['type']),
      meetingDateTime: DateTime.parse(map['meetingDateTime'] as String),
      durationMinutes: map['durationMinutes'] as int,
      hostId: map['hostId'] as String,
      participants: List<String>.from(map['participants']),
      status: MeetingStatus.values.firstWhere((e) => e.name == map['status']),
      platform: MeetingPlatform.values.firstWhere((e) => e.name == map['platform']),
      meetingLink: map['meetingLink'] as String?,
      meetingPassword: map['meetingPassword'] as String?,
      recordingUrl: map['recordingUrl'] as String?,
      notes: map['notes'] as String?,
      materials: List<String>.from(map['materials']),
      agenda: (map['agenda'] as List<dynamic>)
          .map((item) => _agendaItemFromMap(item as Map<String, dynamic>))
          .toList(),
      reminders: (map['reminders'] as List<dynamic>)
          .map((reminder) => _reminderFromMap(reminder as Map<String, dynamic>))
          .toList(),
      dateCreated: DateTime.parse(map['dateCreated'] as String),
      dateUpdated: DateTime.parse(map['dateUpdated'] as String),
    );
  }

  /// Convert AgendaItemEntity to Map
  Map<String, dynamic> _agendaItemToMap(AgendaItemEntity item) {
    return {
      'id': item.id,
      'title': item.title,
      'description': item.description,
      'durationMinutes': item.durationMinutes,
      'order': item.order,
      'type': item.type.name,
      'status': item.status.name,
      'presenterId': item.presenterId,
      'notes': item.notes,
    };
  }

  /// Convert Map to AgendaItemEntity
  AgendaItemEntity _agendaItemFromMap(Map<String, dynamic> map) {
    return AgendaItemEntity(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      durationMinutes: map['durationMinutes'] as int,
      order: map['order'] as int,
      type: AgendaItemType.values.firstWhere((e) => e.name == map['type']),
      status: AgendaItemStatus.values.firstWhere((e) => e.name == map['status']),
      presenterId: map['presenterId'] as String?,
      notes: map['notes'] as String?,
    );
  }

  /// Convert MeetingReminderEntity to Map
  Map<String, dynamic> _reminderToMap(MeetingReminderEntity reminder) {
    return {
      'id': reminder.id,
      'type': reminder.type.name,
      'timeBeforeMeetingMinutes': reminder.timeBeforeMeeting.inMinutes,
      'message': reminder.message,
      'isEnabled': reminder.isEnabled,
      'status': reminder.status.name,
      'sentDate': reminder.sentDate?.toIso8601String(),
    };
  }

  /// Convert Map to MeetingReminderEntity
  MeetingReminderEntity _reminderFromMap(Map<String, dynamic> map) {
    return MeetingReminderEntity(
      id: map['id'] as String,
      type: ReminderType.values.firstWhere((e) => e.name == map['type']),
      timeBeforeMeeting: Duration(minutes: map['timeBeforeMeetingMinutes'] as int),
      message: map['message'] as String,
      isEnabled: map['isEnabled'] as bool,
      status: ReminderStatus.values.firstWhere((e) => e.name == map['status']),
      sentDate: map['sentDate'] != null ? DateTime.parse(map['sentDate'] as String) : null,
    );
  }
}
