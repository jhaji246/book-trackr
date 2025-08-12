// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingGroupImpl _$$ReadingGroupImplFromJson(Map<String, dynamic> json) =>
    _$ReadingGroupImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      coverImageUrl: json['coverImageUrl'] as String?,
      primaryGenre: json['primaryGenre'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      privacy: $enumDecode(_$GroupPrivacyEnumMap, json['privacy']),
      maxMembers: (json['maxMembers'] as num?)?.toInt(),
      memberCount: (json['memberCount'] as num).toInt(),
      readingPace: (json['readingPace'] as num).toDouble(),
      currentBook: GroupBookSelection.fromJson(
          json['currentBook'] as Map<String, dynamic>),
      readingSchedule: ReadingSchedule.fromJson(
          json['readingSchedule'] as Map<String, dynamic>),
      discussionTopics: (json['discussionTopics'] as List<dynamic>)
          .map((e) => DiscussionTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
      rules: (json['rules'] as List<dynamic>).map((e) => e as String).toList(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => GroupAchievement.fromJson(e as Map<String, dynamic>))
          .toList(),
      moderators: (json['moderators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      members: (json['members'] as List<dynamic>)
          .map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      pendingRequests: (json['pendingRequests'] as List<dynamic>)
          .map((e) => JoinRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      isActive: json['isActive'] as bool,
      status: $enumDecode(_$GroupStatusEnumMap, json['status']),
      language: json['language'] as String,
      timezone: json['timezone'] as String?,
      meetingSchedule: json['meetingSchedule'] == null
          ? null
          : MeetingSchedule.fromJson(
              json['meetingSchedule'] as Map<String, dynamic>),
      favoriteGenres: (json['favoriteGenres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ReadingGroupImplToJson(_$ReadingGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'coverImageUrl': instance.coverImageUrl,
      'primaryGenre': instance.primaryGenre,
      'tags': instance.tags,
      'privacy': _$GroupPrivacyEnumMap[instance.privacy]!,
      'maxMembers': instance.maxMembers,
      'memberCount': instance.memberCount,
      'readingPace': instance.readingPace,
      'currentBook': instance.currentBook,
      'readingSchedule': instance.readingSchedule,
      'discussionTopics': instance.discussionTopics,
      'rules': instance.rules,
      'achievements': instance.achievements,
      'moderators': instance.moderators,
      'members': instance.members,
      'pendingRequests': instance.pendingRequests,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'isActive': instance.isActive,
      'status': _$GroupStatusEnumMap[instance.status]!,
      'language': instance.language,
      'timezone': instance.timezone,
      'meetingSchedule': instance.meetingSchedule,
      'favoriteGenres': instance.favoriteGenres,
    };

const _$GroupPrivacyEnumMap = {
  GroupPrivacy.public: 'public',
  GroupPrivacy.private: 'private',
  GroupPrivacy.inviteOnly: 'inviteOnly',
};

const _$GroupStatusEnumMap = {
  GroupStatus.open: 'open',
  GroupStatus.closed: 'closed',
  GroupStatus.archived: 'archived',
};

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
    };

_$ReadingScheduleImpl _$$ReadingScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingScheduleImpl(
      frequency: $enumDecode(_$ReadingFrequencyEnumMap, json['frequency']),
      booksPerPeriod: (json['booksPerPeriod'] as num).toInt(),
      goals: (json['goals'] as List<dynamic>)
          .map((e) => ReadingGoal.fromJson(e as Map<String, dynamic>))
          .toList(),
      upcomingBooks: (json['upcomingBooks'] as List<dynamic>)
          .map((e) => UpcomingBook.fromJson(e as Map<String, dynamic>))
          .toList(),
      challenges: (json['challenges'] as List<dynamic>)
          .map((e) => ReadingChallenge.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReadingScheduleImplToJson(
        _$ReadingScheduleImpl instance) =>
    <String, dynamic>{
      'frequency': _$ReadingFrequencyEnumMap[instance.frequency]!,
      'booksPerPeriod': instance.booksPerPeriod,
      'goals': instance.goals,
      'upcomingBooks': instance.upcomingBooks,
      'challenges': instance.challenges,
    };

const _$ReadingFrequencyEnumMap = {
  ReadingFrequency.weekly: 'weekly',
  ReadingFrequency.biweekly: 'biweekly',
  ReadingFrequency.monthly: 'monthly',
  ReadingFrequency.quarterly: 'quarterly',
  ReadingFrequency.custom: 'custom',
};

_$ReadingGoalImpl _$$ReadingGoalImplFromJson(Map<String, dynamic> json) =>
    _$ReadingGoalImpl(
      id: json['id'] as String,
      description: json['description'] as String,
      target: (json['target'] as num).toInt(),
      progress: (json['progress'] as num).toInt(),
      deadline: DateTime.parse(json['deadline'] as String),
      isAchieved: json['isAchieved'] as bool,
    );

Map<String, dynamic> _$$ReadingGoalImplToJson(_$ReadingGoalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'target': instance.target,
      'progress': instance.progress,
      'deadline': instance.deadline.toIso8601String(),
      'isAchieved': instance.isAchieved,
    };

_$UpcomingBookImpl _$$UpcomingBookImplFromJson(Map<String, dynamic> json) =>
    _$UpcomingBookImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverUrl: json['coverUrl'] as String?,
      plannedStartDate: DateTime.parse(json['plannedStartDate'] as String),
      plannedEndDate: DateTime.parse(json['plannedEndDate'] as String),
      votes: (json['votes'] as num).toInt(),
      voters:
          (json['voters'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UpcomingBookImplToJson(_$UpcomingBookImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'coverUrl': instance.coverUrl,
      'plannedStartDate': instance.plannedStartDate.toIso8601String(),
      'plannedEndDate': instance.plannedEndDate.toIso8601String(),
      'votes': instance.votes,
      'voters': instance.voters,
    };

_$ReadingChallengeImpl _$$ReadingChallengeImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingChallengeImpl(
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
    );

Map<String, dynamic> _$$ReadingChallengeImplToJson(
        _$ReadingChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'rules': instance.rules,
      'participants': instance.participants,
      'rewards': instance.rewards,
    };

_$ChallengeParticipantImpl _$$ChallengeParticipantImplFromJson(
        Map<String, dynamic> json) =>
    _$ChallengeParticipantImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      progress: (json['progress'] as num).toInt(),
      rank: (json['rank'] as num).toInt(),
      isCompleted: json['isCompleted'] as bool,
    );

Map<String, dynamic> _$$ChallengeParticipantImplToJson(
        _$ChallengeParticipantImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'progress': instance.progress,
      'rank': instance.rank,
      'isCompleted': instance.isCompleted,
    };

_$DiscussionTopicImpl _$$DiscussionTopicImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionTopicImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      creatorId: json['creatorId'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
      replyCount: (json['replyCount'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isPinned: json['isPinned'] as bool,
      isLocked: json['isLocked'] as bool,
      category: $enumDecode(_$TopicCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$DiscussionTopicImplToJson(
        _$DiscussionTopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'creatorId': instance.creatorId,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'lastActivity': instance.lastActivity.toIso8601String(),
      'replyCount': instance.replyCount,
      'tags': instance.tags,
      'isPinned': instance.isPinned,
      'isLocked': instance.isLocked,
      'category': _$TopicCategoryEnumMap[instance.category]!,
    };

const _$TopicCategoryEnumMap = {
  TopicCategory.general: 'general',
  TopicCategory.bookDiscussion: 'bookDiscussion',
  TopicCategory.readingProgress: 'readingProgress',
  TopicCategory.recommendations: 'recommendations',
  TopicCategory.offTopic: 'offTopic',
  TopicCategory.announcements: 'announcements',
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
    };

const _$MilestoneTypeEnumMap = {
  MilestoneType.startReading: 'startReading',
  MilestoneType.quarterComplete: 'quarterComplete',
  MilestoneType.halfway: 'halfway',
  MilestoneType.threeQuarters: 'threeQuarters',
  MilestoneType.finished: 'finished',
  MilestoneType.custom: 'custom',
};

_$GroupMemberImpl _$$GroupMemberImplFromJson(Map<String, dynamic> json) =>
    _$GroupMemberImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      role: $enumDecode(_$GroupRoleEnumMap, json['role']),
      dateJoined: DateTime.parse(json['dateJoined'] as String),
      isActive: json['isActive'] as bool,
      readingProgress: (json['readingProgress'] as num).toInt(),
      contributionScore: (json['contributionScore'] as num).toInt(),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
      readingStats: MemberReadingStats.fromJson(
          json['readingStats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupMemberImplToJson(_$GroupMemberImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'profilePictureUrl': instance.profilePictureUrl,
      'role': _$GroupRoleEnumMap[instance.role]!,
      'dateJoined': instance.dateJoined.toIso8601String(),
      'isActive': instance.isActive,
      'readingProgress': instance.readingProgress,
      'contributionScore': instance.contributionScore,
      'lastActivity': instance.lastActivity.toIso8601String(),
      'readingStats': instance.readingStats,
    };

const _$GroupRoleEnumMap = {
  GroupRole.creator: 'creator',
  GroupRole.moderator: 'moderator',
  GroupRole.member: 'member',
  GroupRole.guest: 'guest',
};

_$MemberReadingStatsImpl _$$MemberReadingStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberReadingStatsImpl(
      booksCompleted: (json['booksCompleted'] as num).toInt(),
      pagesRead: (json['pagesRead'] as num).toInt(),
      discussionPosts: (json['discussionPosts'] as num).toInt(),
      challengesCompleted: (json['challengesCompleted'] as num).toInt(),
      attendanceRate: (json['attendanceRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$MemberReadingStatsImplToJson(
        _$MemberReadingStatsImpl instance) =>
    <String, dynamic>{
      'booksCompleted': instance.booksCompleted,
      'pagesRead': instance.pagesRead,
      'discussionPosts': instance.discussionPosts,
      'challengesCompleted': instance.challengesCompleted,
      'attendanceRate': instance.attendanceRate,
    };

_$JoinRequestImpl _$$JoinRequestImplFromJson(Map<String, dynamic> json) =>
    _$JoinRequestImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      message: json['message'] as String?,
      requestDate: DateTime.parse(json['requestDate'] as String),
      status: $enumDecode(_$RequestStatusEnumMap, json['status']),
      processedBy: json['processedBy'] as String?,
      processedDate: json['processedDate'] == null
          ? null
          : DateTime.parse(json['processedDate'] as String),
      processingNotes: json['processingNotes'] as String?,
    );

Map<String, dynamic> _$$JoinRequestImplToJson(_$JoinRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'displayName': instance.displayName,
      'profilePictureUrl': instance.profilePictureUrl,
      'message': instance.message,
      'requestDate': instance.requestDate.toIso8601String(),
      'status': _$RequestStatusEnumMap[instance.status]!,
      'processedBy': instance.processedBy,
      'processedDate': instance.processedDate?.toIso8601String(),
      'processingNotes': instance.processingNotes,
    };

const _$RequestStatusEnumMap = {
  RequestStatus.pending: 'pending',
  RequestStatus.approved: 'approved',
  RequestStatus.rejected: 'rejected',
};

_$GroupAchievementImpl _$$GroupAchievementImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupAchievementImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      category: $enumDecode(_$AchievementCategoryEnumMap, json['category']),
      rarity: $enumDecode(_$AchievementRarityEnumMap, json['rarity']),
      dateEarned: DateTime.parse(json['dateEarned'] as String),
      membersEarned: (json['membersEarned'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$GroupAchievementImplToJson(
        _$GroupAchievementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'category': _$AchievementCategoryEnumMap[instance.category]!,
      'rarity': _$AchievementRarityEnumMap[instance.rarity]!,
      'dateEarned': instance.dateEarned.toIso8601String(),
      'membersEarned': instance.membersEarned,
    };

const _$AchievementCategoryEnumMap = {
  AchievementCategory.reading: 'reading',
  AchievementCategory.social: 'social',
  AchievementCategory.discussion: 'discussion',
  AchievementCategory.challenge: 'challenge',
  AchievementCategory.milestone: 'milestone',
  AchievementCategory.special: 'special',
};

const _$AchievementRarityEnumMap = {
  AchievementRarity.common: 'common',
  AchievementRarity.uncommon: 'uncommon',
  AchievementRarity.rare: 'rare',
  AchievementRarity.epic: 'epic',
  AchievementRarity.legendary: 'legendary',
};

_$MeetingScheduleImpl _$$MeetingScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingScheduleImpl(
      frequency: $enumDecode(_$MeetingFrequencyEnumMap, json['frequency']),
      dayOfWeek: (json['dayOfWeek'] as num).toInt(),
      meetingTime: json['meetingTime'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      platform: json['platform'] as String,
      meetingLink: json['meetingLink'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$MeetingScheduleImplToJson(
        _$MeetingScheduleImpl instance) =>
    <String, dynamic>{
      'frequency': _$MeetingFrequencyEnumMap[instance.frequency]!,
      'dayOfWeek': instance.dayOfWeek,
      'meetingTime': instance.meetingTime,
      'durationMinutes': instance.durationMinutes,
      'platform': instance.platform,
      'meetingLink': instance.meetingLink,
      'notes': instance.notes,
    };

const _$MeetingFrequencyEnumMap = {
  MeetingFrequency.weekly: 'weekly',
  MeetingFrequency.biweekly: 'biweekly',
  MeetingFrequency.monthly: 'monthly',
  MeetingFrequency.custom: 'custom',
};
