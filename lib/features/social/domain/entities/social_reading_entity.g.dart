// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_reading_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialReadingEntityImpl _$$SocialReadingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialReadingEntityImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      profile:
          SocialProfileEntity.fromJson(json['profile'] as Map<String, dynamic>),
      connections: (json['connections'] as List<dynamic>)
          .map(
              (e) => SocialConnectionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      challenges: (json['challenges'] as List<dynamic>)
          .map(
              (e) => ReadingChallengeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => ReadingGroupEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => SocialEventEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => AchievementEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      leaderboards: (json['leaderboards'] as List<dynamic>)
          .map((e) => LeaderboardEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      activities: (json['activities'] as List<dynamic>)
          .map((e) => SocialActivityEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$SocialReadingEntityImplToJson(
        _$SocialReadingEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'profile': instance.profile,
      'connections': instance.connections,
      'challenges': instance.challenges,
      'groups': instance.groups,
      'events': instance.events,
      'achievements': instance.achievements,
      'leaderboards': instance.leaderboards,
      'activities': instance.activities,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_$SocialProfileEntityImpl _$$SocialProfileEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialProfileEntityImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      bio: json['bio'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      location: json['location'] as String?,
      interests:
          (json['interests'] as List<dynamic>).map((e) => e as String).toList(),
      favoriteGenres: (json['favoriteGenres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      favoriteAuthors: (json['favoriteAuthors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      totalBooksRead: (json['totalBooksRead'] as num).toInt(),
      totalPagesRead: (json['totalPagesRead'] as num).toInt(),
      averageRating: (json['averageRating'] as num).toDouble(),
      readingStreak: (json['readingStreak'] as num).toInt(),
      totalPoints: (json['totalPoints'] as num).toInt(),
      readingLevel: json['readingLevel'] as String,
      badges:
          (json['badges'] as List<dynamic>).map((e) => e as String).toList(),
      isPublic: json['isPublic'] as bool,
      joinDate: DateTime.parse(json['joinDate'] as String),
      lastActive: DateTime.parse(json['lastActive'] as String),
    );

Map<String, dynamic> _$$SocialProfileEntityImplToJson(
        _$SocialProfileEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'bio': instance.bio,
      'avatarUrl': instance.avatarUrl,
      'location': instance.location,
      'interests': instance.interests,
      'favoriteGenres': instance.favoriteGenres,
      'favoriteAuthors': instance.favoriteAuthors,
      'totalBooksRead': instance.totalBooksRead,
      'totalPagesRead': instance.totalPagesRead,
      'averageRating': instance.averageRating,
      'readingStreak': instance.readingStreak,
      'totalPoints': instance.totalPoints,
      'readingLevel': instance.readingLevel,
      'badges': instance.badges,
      'isPublic': instance.isPublic,
      'joinDate': instance.joinDate.toIso8601String(),
      'lastActive': instance.lastActive.toIso8601String(),
    };

_$SocialConnectionEntityImpl _$$SocialConnectionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialConnectionEntityImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      connectedUserId: json['connectedUserId'] as String,
      status: $enumDecode(_$ConnectionStatusEnumMap, json['status']),
      dateRequested: DateTime.parse(json['dateRequested'] as String),
      dateAccepted: json['dateAccepted'] == null
          ? null
          : DateTime.parse(json['dateAccepted'] as String),
      message: json['message'] as String?,
      isFavorite: json['isFavorite'] as bool,
      mutualBooks: (json['mutualBooks'] as num).toInt(),
      compatibilityScore: (json['compatibilityScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$SocialConnectionEntityImplToJson(
        _$SocialConnectionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'connectedUserId': instance.connectedUserId,
      'status': _$ConnectionStatusEnumMap[instance.status]!,
      'dateRequested': instance.dateRequested.toIso8601String(),
      'dateAccepted': instance.dateAccepted?.toIso8601String(),
      'message': instance.message,
      'isFavorite': instance.isFavorite,
      'mutualBooks': instance.mutualBooks,
      'compatibilityScore': instance.compatibilityScore,
    };

const _$ConnectionStatusEnumMap = {
  ConnectionStatus.pending: 'pending',
  ConnectionStatus.accepted: 'accepted',
  ConnectionStatus.rejected: 'rejected',
  ConnectionStatus.blocked: 'blocked',
};

_$ReadingChallengeEntityImpl _$$ReadingChallengeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingChallengeEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ChallengeTypeEnumMap, json['type']),
      difficulty: $enumDecode(_$ChallengeDifficultyEnumMap, json['difficulty']),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      targetValue: (json['targetValue'] as num).toInt(),
      targetUnit: json['targetUnit'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      winners:
          (json['winners'] as List<dynamic>).map((e) => e as String).toList(),
      status: $enumDecode(_$ChallengeStatusEnumMap, json['status']),
      participantProgress:
          Map<String, int>.from(json['participantProgress'] as Map),
      rewards:
          (json['rewards'] as List<dynamic>).map((e) => e as String).toList(),
      maxParticipants: (json['maxParticipants'] as num).toInt(),
      isPublic: json['isPublic'] as bool,
      creatorId: json['creatorId'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      completionRate: (json['completionRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReadingChallengeEntityImplToJson(
        _$ReadingChallengeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$ChallengeTypeEnumMap[instance.type]!,
      'difficulty': _$ChallengeDifficultyEnumMap[instance.difficulty]!,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'targetValue': instance.targetValue,
      'targetUnit': instance.targetUnit,
      'participants': instance.participants,
      'winners': instance.winners,
      'status': _$ChallengeStatusEnumMap[instance.status]!,
      'participantProgress': instance.participantProgress,
      'rewards': instance.rewards,
      'maxParticipants': instance.maxParticipants,
      'isPublic': instance.isPublic,
      'creatorId': instance.creatorId,
      'tags': instance.tags,
      'completionRate': instance.completionRate,
    };

const _$ChallengeTypeEnumMap = {
  ChallengeType.readingStreak: 'readingStreak',
  ChallengeType.bookCount: 'bookCount',
  ChallengeType.pageCount: 'pageCount',
  ChallengeType.genreExploration: 'genreExploration',
  ChallengeType.authorDiversity: 'authorDiversity',
  ChallengeType.speedReading: 'speedReading',
  ChallengeType.comprehension: 'comprehension',
  ChallengeType.socialReading: 'socialReading',
  ChallengeType.seasonal: 'seasonal',
  ChallengeType.custom: 'custom',
};

const _$ChallengeDifficultyEnumMap = {
  ChallengeDifficulty.easy: 'easy',
  ChallengeDifficulty.medium: 'medium',
  ChallengeDifficulty.hard: 'hard',
  ChallengeDifficulty.expert: 'expert',
};

const _$ChallengeStatusEnumMap = {
  ChallengeStatus.upcoming: 'upcoming',
  ChallengeStatus.active: 'active',
  ChallengeStatus.completed: 'completed',
  ChallengeStatus.cancelled: 'cancelled',
};

_$ReadingGroupEntityImpl _$$ReadingGroupEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingGroupEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$GroupTypeEnumMap, json['type']),
      visibility: $enumDecode(_$GroupVisibilityEnumMap, json['visibility']),
      creatorId: json['creatorId'] as String,
      memberIds:
          (json['memberIds'] as List<dynamic>).map((e) => e as String).toList(),
      moderatorIds: (json['moderatorIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      adminIds:
          (json['adminIds'] as List<dynamic>).map((e) => e as String).toList(),
      maxMembers: (json['maxMembers'] as num).toInt(),
      currentBooks: (json['currentBooks'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
      totalDiscussions: (json['totalDiscussions'] as num).toInt(),
      totalMembers: (json['totalMembers'] as num).toInt(),
      isActive: json['isActive'] as bool,
      coverImageUrl: json['coverImageUrl'] as String?,
      rules: (json['rules'] as List<dynamic>).map((e) => e as String).toList(),
      settings: GroupSettingsEntity.fromJson(
          json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReadingGroupEntityImplToJson(
        _$ReadingGroupEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$GroupTypeEnumMap[instance.type]!,
      'visibility': _$GroupVisibilityEnumMap[instance.visibility]!,
      'creatorId': instance.creatorId,
      'memberIds': instance.memberIds,
      'moderatorIds': instance.moderatorIds,
      'adminIds': instance.adminIds,
      'maxMembers': instance.maxMembers,
      'currentBooks': instance.currentBooks,
      'tags': instance.tags,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'lastActivity': instance.lastActivity.toIso8601String(),
      'totalDiscussions': instance.totalDiscussions,
      'totalMembers': instance.totalMembers,
      'isActive': instance.isActive,
      'coverImageUrl': instance.coverImageUrl,
      'rules': instance.rules,
      'settings': instance.settings,
    };

const _$GroupTypeEnumMap = {
  GroupType.bookClub: 'bookClub',
  GroupType.readingChallenge: 'readingChallenge',
  GroupType.genreSpecific: 'genreSpecific',
  GroupType.authorFan: 'authorFan',
  GroupType.studyGroup: 'studyGroup',
  GroupType.casual: 'casual',
  GroupType.competitive: 'competitive',
  GroupType.support: 'support',
};

const _$GroupVisibilityEnumMap = {
  GroupVisibility.public: 'public',
  GroupVisibility.private: 'private',
  GroupVisibility.inviteOnly: 'inviteOnly',
  GroupVisibility.moderated: 'moderated',
};

_$GroupSettingsEntityImpl _$$GroupSettingsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupSettingsEntityImpl(
      allowMemberInvites: json['allowMemberInvites'] as bool,
      requireApproval: json['requireApproval'] as bool,
      allowPublicDiscussions: json['allowPublicDiscussions'] as bool,
      allowBookSuggestions: json['allowBookSuggestions'] as bool,
      allowMemberRemoval: json['allowMemberRemoval'] as bool,
      allowContentModeration: json['allowContentModeration'] as bool,
      maxBooksPerMember: (json['maxBooksPerMember'] as num).toInt(),
      autoArchiveCompleted: json['autoArchiveCompleted'] as bool,
      restrictedTopics: (json['restrictedTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$GroupSettingsEntityImplToJson(
        _$GroupSettingsEntityImpl instance) =>
    <String, dynamic>{
      'allowMemberInvites': instance.allowMemberInvites,
      'requireApproval': instance.requireApproval,
      'allowPublicDiscussions': instance.allowPublicDiscussions,
      'allowBookSuggestions': instance.allowBookSuggestions,
      'allowMemberRemoval': instance.allowMemberRemoval,
      'allowContentModeration': instance.allowContentModeration,
      'maxBooksPerMember': instance.maxBooksPerMember,
      'autoArchiveCompleted': instance.autoArchiveCompleted,
      'restrictedTopics': instance.restrictedTopics,
    };

_$SocialEventEntityImpl _$$SocialEventEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialEventEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      location: json['location'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      organizers: (json['organizers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: $enumDecode(_$EventStatusEnumMap, json['status']),
      maxParticipants: (json['maxParticipants'] as num).toInt(),
      books: (json['books'] as List<dynamic>).map((e) => e as String).toList(),
      coverImageUrl: json['coverImageUrl'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isVirtual: json['isVirtual'] as bool,
      meetingLink: json['meetingLink'] as String?,
      meetingPassword: json['meetingPassword'] as String?,
      agenda:
          (json['agenda'] as List<dynamic>).map((e) => e as String).toList(),
      materials:
          (json['materials'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SocialEventEntityImplToJson(
        _$SocialEventEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$EventTypeEnumMap[instance.type]!,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'location': instance.location,
      'participants': instance.participants,
      'organizers': instance.organizers,
      'status': _$EventStatusEnumMap[instance.status]!,
      'maxParticipants': instance.maxParticipants,
      'books': instance.books,
      'coverImageUrl': instance.coverImageUrl,
      'tags': instance.tags,
      'isVirtual': instance.isVirtual,
      'meetingLink': instance.meetingLink,
      'meetingPassword': instance.meetingPassword,
      'agenda': instance.agenda,
      'materials': instance.materials,
    };

const _$EventTypeEnumMap = {
  EventType.bookDiscussion: 'bookDiscussion',
  EventType.authorMeetup: 'authorMeetup',
  EventType.readingWorkshop: 'readingWorkshop',
  EventType.bookSwap: 'bookSwap',
  EventType.readingChallenge: 'readingChallenge',
  EventType.socialGathering: 'socialGathering',
  EventType.virtualBookClub: 'virtualBookClub',
  EventType.launchParty: 'launchParty',
};

const _$EventStatusEnumMap = {
  EventStatus.upcoming: 'upcoming',
  EventStatus.active: 'active',
  EventStatus.completed: 'completed',
  EventStatus.cancelled: 'cancelled',
  EventStatus.postponed: 'postponed',
};

_$AchievementEntityImpl _$$AchievementEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$AchievementTypeEnumMap, json['type']),
      level: (json['level'] as num).toInt(),
      progress: (json['progress'] as num).toDouble(),
      isUnlocked: json['isUnlocked'] as bool,
      unlockDate: json['unlockDate'] == null
          ? null
          : DateTime.parse(json['unlockDate'] as String),
      iconPath: json['iconPath'] as String,
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rarity: (json['rarity'] as num).toDouble(),
      points: (json['points'] as num).toInt(),
      category: json['category'] as String,
      isSocial: json['isSocial'] as bool,
      sharedWith: (json['sharedWith'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateShared: json['dateShared'] == null
          ? null
          : DateTime.parse(json['dateShared'] as String),
    );

Map<String, dynamic> _$$AchievementEntityImplToJson(
        _$AchievementEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$AchievementTypeEnumMap[instance.type]!,
      'level': instance.level,
      'progress': instance.progress,
      'isUnlocked': instance.isUnlocked,
      'unlockDate': instance.unlockDate?.toIso8601String(),
      'iconPath': instance.iconPath,
      'requirements': instance.requirements,
      'rarity': instance.rarity,
      'points': instance.points,
      'category': instance.category,
      'isSocial': instance.isSocial,
      'sharedWith': instance.sharedWith,
      'dateShared': instance.dateShared?.toIso8601String(),
    };

const _$AchievementTypeEnumMap = {
  AchievementType.socialConnections: 'socialConnections',
  AchievementType.groupParticipation: 'groupParticipation',
  AchievementType.challengeCompletion: 'challengeCompletion',
  AchievementType.eventAttendance: 'eventAttendance',
  AchievementType.communityContribution: 'communityContribution',
  AchievementType.friendRecommendations: 'friendRecommendations',
  AchievementType.socialSharing: 'socialSharing',
  AchievementType.collaborativeReading: 'collaborativeReading',
  AchievementType.mentorship: 'mentorship',
  AchievementType.communityBuilding: 'communityBuilding',
};

_$LeaderboardEntityImpl _$$LeaderboardEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$LeaderboardTypeEnumMap, json['type']),
      period: $enumDecode(_$LeaderboardPeriodEnumMap, json['period']),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      entries: (json['entries'] as List<dynamic>)
          .map(
              (e) => LeaderboardEntryEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalParticipants: (json['totalParticipants'] as num).toInt(),
      groupId: json['groupId'] as String?,
      challengeId: json['challengeId'] as String?,
      isActive: json['isActive'] as bool,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weights: (json['weights'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$LeaderboardEntityImplToJson(
        _$LeaderboardEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$LeaderboardTypeEnumMap[instance.type]!,
      'period': _$LeaderboardPeriodEnumMap[instance.period]!,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'entries': instance.entries,
      'totalParticipants': instance.totalParticipants,
      'groupId': instance.groupId,
      'challengeId': instance.challengeId,
      'isActive': instance.isActive,
      'categories': instance.categories,
      'weights': instance.weights,
    };

const _$LeaderboardTypeEnumMap = {
  LeaderboardType.readingStreak: 'readingStreak',
  LeaderboardType.booksRead: 'booksRead',
  LeaderboardType.pagesRead: 'pagesRead',
  LeaderboardType.pointsEarned: 'pointsEarned',
  LeaderboardType.challengesCompleted: 'challengesCompleted',
  LeaderboardType.socialActivity: 'socialActivity',
  LeaderboardType.groupParticipation: 'groupParticipation',
  LeaderboardType.communityContribution: 'communityContribution',
  LeaderboardType.overall: 'overall',
};

const _$LeaderboardPeriodEnumMap = {
  LeaderboardPeriod.daily: 'daily',
  LeaderboardPeriod.weekly: 'weekly',
  LeaderboardPeriod.monthly: 'monthly',
  LeaderboardPeriod.quarterly: 'quarterly',
  LeaderboardPeriod.yearly: 'yearly',
  LeaderboardPeriod.allTime: 'allTime',
};

_$LeaderboardEntryEntityImpl _$$LeaderboardEntryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardEntryEntityImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      rank: (json['rank'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      categoryScores: (json['categoryScores'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      previousRank: (json['previousRank'] as num).toInt(),
      rankChange: (json['rankChange'] as num).toDouble(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isCurrentUser: json['isCurrentUser'] as bool,
    );

Map<String, dynamic> _$$LeaderboardEntryEntityImplToJson(
        _$LeaderboardEntryEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'avatarUrl': instance.avatarUrl,
      'rank': instance.rank,
      'score': instance.score,
      'categoryScores': instance.categoryScores,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'previousRank': instance.previousRank,
      'rankChange': instance.rankChange,
      'achievements': instance.achievements,
      'isCurrentUser': instance.isCurrentUser,
    };

_$SocialActivityEntityImpl _$$SocialActivityEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialActivityEntityImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      type: $enumDecode(_$ActivityTypeEnumMap, json['type']),
      title: json['title'] as String,
      description: json['description'] as String,
      data: json['data'] as Map<String, dynamic>,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      likedBy:
          (json['likedBy'] as List<dynamic>).map((e) => e as String).toList(),
      commentedBy: (json['commentedBy'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sharedBy:
          (json['sharedBy'] as List<dynamic>).map((e) => e as String).toList(),
      bookId: json['bookId'] as String?,
      groupId: json['groupId'] as String?,
      challengeId: json['challengeId'] as String?,
      isPublic: json['isPublic'] as bool,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      engagementScore: (json['engagementScore'] as num).toInt(),
    );

Map<String, dynamic> _$$SocialActivityEntityImplToJson(
        _$SocialActivityEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'displayName': instance.displayName,
      'avatarUrl': instance.avatarUrl,
      'type': _$ActivityTypeEnumMap[instance.type]!,
      'title': instance.title,
      'description': instance.description,
      'data': instance.data,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'likedBy': instance.likedBy,
      'commentedBy': instance.commentedBy,
      'sharedBy': instance.sharedBy,
      'bookId': instance.bookId,
      'groupId': instance.groupId,
      'challengeId': instance.challengeId,
      'isPublic': instance.isPublic,
      'tags': instance.tags,
      'engagementScore': instance.engagementScore,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.bookCompleted: 'bookCompleted',
  ActivityType.readingStreak: 'readingStreak',
  ActivityType.challengeJoined: 'challengeJoined',
  ActivityType.challengeCompleted: 'challengeCompleted',
  ActivityType.groupJoined: 'groupJoined',
  ActivityType.groupCreated: 'groupCreated',
  ActivityType.eventAttended: 'eventAttended',
  ActivityType.achievementUnlocked: 'achievementUnlocked',
  ActivityType.bookRated: 'bookRated',
  ActivityType.bookReviewed: 'bookReviewed',
  ActivityType.friendAdded: 'friendAdded',
  ActivityType.recommendationShared: 'recommendationShared',
  ActivityType.readingGoal: 'readingGoal',
  ActivityType.milestoneReached: 'milestoneReached',
};
