// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_reading_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupBookSelectionImpl _$$GroupBookSelectionImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupBookSelectionImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverUrl: json['coverUrl'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      discussionSessions: (json['discussionSessions'] as List<dynamic>)
          .map((e) => DiscussionSession.fromJson(e as Map<String, dynamic>))
          .toList(),
      milestones: (json['milestones'] as List<dynamic>)
          .map((e) => ReadingMilestone.fromJson(e as Map<String, dynamic>))
          .toList(),
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      membersFinished: (json['membersFinished'] as num).toInt(),
      totalMembersReading: (json['totalMembersReading'] as num).toInt(),
      currentProgress: (json['currentProgress'] as num).toDouble(),
      pagesPerWeek: (json['pagesPerWeek'] as num).toInt(),
      currentWeek: (json['currentWeek'] as num).toInt(),
      totalWeeks: (json['totalWeeks'] as num).toInt(),
    );

Map<String, dynamic> _$$GroupBookSelectionImplToJson(
        _$GroupBookSelectionImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'coverUrl': instance.coverUrl,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'discussionSessions': instance.discussionSessions,
      'milestones': instance.milestones,
      'averageRating': instance.averageRating,
      'membersFinished': instance.membersFinished,
      'totalMembersReading': instance.totalMembersReading,
      'currentProgress': instance.currentProgress,
      'pagesPerWeek': instance.pagesPerWeek,
      'currentWeek': instance.currentWeek,
      'totalWeeks': instance.totalWeeks,
    };

_$ReadingMilestoneImpl _$$ReadingMilestoneImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingMilestoneImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      target: (json['target'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$MilestoneTypeEnumMap, json['type']),
      membersReached: (json['membersReached'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isGroupAchieved: json['isGroupAchieved'] as bool,
      groupAchievementDate: json['groupAchievementDate'] == null
          ? null
          : DateTime.parse(json['groupAchievementDate'] as String),
    );

Map<String, dynamic> _$$ReadingMilestoneImplToJson(
        _$ReadingMilestoneImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'target': instance.target,
      'date': instance.date.toIso8601String(),
      'type': _$MilestoneTypeEnumMap[instance.type]!,
      'membersReached': instance.membersReached,
      'isGroupAchieved': instance.isGroupAchieved,
      'groupAchievementDate': instance.groupAchievementDate?.toIso8601String(),
    };

const _$MilestoneTypeEnumMap = {
  MilestoneType.startReading: 'startReading',
  MilestoneType.quarterComplete: 'quarterComplete',
  MilestoneType.halfway: 'halfway',
  MilestoneType.threeQuarters: 'threeQuarters',
  MilestoneType.finished: 'finished',
  MilestoneType.custom: 'custom',
};

_$DiscussionSessionImpl _$$DiscussionSessionImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionSessionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      sessionDateTime: DateTime.parse(json['sessionDateTime'] as String),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      hostId: json['hostId'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      notes: json['notes'] as String?,
      isCompleted: json['isCompleted'] as bool,
      recordingUrl: json['recordingUrl'] as String?,
      materials:
          (json['materials'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DiscussionSessionImplToJson(
        _$DiscussionSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'sessionDateTime': instance.sessionDateTime.toIso8601String(),
      'durationMinutes': instance.durationMinutes,
      'hostId': instance.hostId,
      'participants': instance.participants,
      'notes': instance.notes,
      'isCompleted': instance.isCompleted,
      'recordingUrl': instance.recordingUrl,
      'materials': instance.materials,
    };

_$MemberReadingProgressImpl _$$MemberReadingProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberReadingProgressImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      currentPage: (json['currentPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      progressPercentage: (json['progressPercentage'] as num).toDouble(),
      status: $enumDecode(_$ReadingStatusEnumMap, json['status']),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      readingSpeed: (json['readingSpeed'] as num).toDouble(),
      estimatedCompletion: json['estimatedCompletion'] == null
          ? null
          : DateTime.parse(json['estimatedCompletion'] as String),
      notes: json['notes'] as String?,
      isOnTrack: json['isOnTrack'] as bool,
      daysOffSchedule: (json['daysOffSchedule'] as num).toInt(),
    );

Map<String, dynamic> _$$MemberReadingProgressImplToJson(
        _$MemberReadingProgressImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'profilePictureUrl': instance.profilePictureUrl,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'progressPercentage': instance.progressPercentage,
      'status': _$ReadingStatusEnumMap[instance.status]!,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'readingSpeed': instance.readingSpeed,
      'estimatedCompletion': instance.estimatedCompletion?.toIso8601String(),
      'notes': instance.notes,
      'isOnTrack': instance.isOnTrack,
      'daysOffSchedule': instance.daysOffSchedule,
    };

const _$ReadingStatusEnumMap = {
  ReadingStatus.notStarted: 'notStarted',
  ReadingStatus.inProgress: 'inProgress',
  ReadingStatus.paused: 'paused',
  ReadingStatus.completed: 'completed',
  ReadingStatus.abandoned: 'abandoned',
};

_$GroupReadingChallengeImpl _$$GroupReadingChallengeImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupReadingChallengeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      rules: (json['rules'] as List<dynamic>).map((e) => e as String).toList(),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ChallengeParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
      rewards:
          (json['rewards'] as List<dynamic>).map((e) => e as String).toList(),
      type: $enumDecode(_$ChallengeTypeEnumMap, json['type']),
      difficulty: $enumDecode(_$ChallengeDifficultyEnumMap, json['difficulty']),
      isActive: json['isActive'] as bool,
      progress:
          ChallengeProgress.fromJson(json['progress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupReadingChallengeImplToJson(
        _$GroupReadingChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'rules': instance.rules,
      'participants': instance.participants,
      'rewards': instance.rewards,
      'type': _$ChallengeTypeEnumMap[instance.type]!,
      'difficulty': _$ChallengeDifficultyEnumMap[instance.difficulty]!,
      'isActive': instance.isActive,
      'progress': instance.progress,
    };

const _$ChallengeTypeEnumMap = {
  ChallengeType.readingSprint: 'readingSprint',
  ChallengeType.bookCount: 'bookCount',
  ChallengeType.pageCount: 'pageCount',
  ChallengeType.genreExploration: 'genreExploration',
  ChallengeType.authorFocus: 'authorFocus',
  ChallengeType.timeBased: 'timeBased',
  ChallengeType.collaborative: 'collaborative',
};

const _$ChallengeDifficultyEnumMap = {
  ChallengeDifficulty.easy: 'easy',
  ChallengeDifficulty.medium: 'medium',
  ChallengeDifficulty.hard: 'hard',
  ChallengeDifficulty.expert: 'expert',
};

_$ChallengeParticipantImpl _$$ChallengeParticipantImplFromJson(
        Map<String, dynamic> json) =>
    _$ChallengeParticipantImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      progress: (json['progress'] as num).toInt(),
      rank: (json['rank'] as num).toInt(),
      isCompleted: json['isCompleted'] as bool,
      completionDate: json['completionDate'] == null
          ? null
          : DateTime.parse(json['completionDate'] as String),
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$$ChallengeParticipantImplToJson(
        _$ChallengeParticipantImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'progress': instance.progress,
      'rank': instance.rank,
      'isCompleted': instance.isCompleted,
      'completionDate': instance.completionDate?.toIso8601String(),
      'score': instance.score,
    };

_$ChallengeProgressImpl _$$ChallengeProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$ChallengeProgressImpl(
      totalParticipants: (json['totalParticipants'] as num).toInt(),
      participantsCompleted: (json['participantsCompleted'] as num).toInt(),
      averageProgress: (json['averageProgress'] as num).toDouble(),
      leaderboard: (json['leaderboard'] as List<dynamic>)
          .map((e) => ChallengeParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupProgress: (json['groupProgress'] as num).toDouble(),
      daysRemaining: (json['daysRemaining'] as num).toInt(),
      isOnTrack: json['isOnTrack'] as bool,
    );

Map<String, dynamic> _$$ChallengeProgressImplToJson(
        _$ChallengeProgressImpl instance) =>
    <String, dynamic>{
      'totalParticipants': instance.totalParticipants,
      'participantsCompleted': instance.participantsCompleted,
      'averageProgress': instance.averageProgress,
      'leaderboard': instance.leaderboard,
      'groupProgress': instance.groupProgress,
      'daysRemaining': instance.daysRemaining,
      'isOnTrack': instance.isOnTrack,
    };
