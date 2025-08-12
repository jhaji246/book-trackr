import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_reading_entity.freezed.dart';
part 'social_reading_entity.g.dart';

/// Core business entity for social reading features
@freezed
class SocialReadingEntity with _$SocialReadingEntity {
  const factory SocialReadingEntity({
    required String id,
    required String userId,
    required SocialProfileEntity profile,
    required List<SocialConnectionEntity> connections,
    required List<ReadingChallengeEntity> challenges,
    required List<ReadingGroupEntity> groups,
    required List<SocialEventEntity> events,
    required List<AchievementEntity> achievements,
    required List<LeaderboardEntity> leaderboards,
    required List<SocialActivityEntity> activities,
    required DateTime dateCreated,
    required DateTime lastUpdated,
  }) = _SocialReadingEntity;

  factory SocialReadingEntity.fromJson(Map<String, dynamic> json) => _$SocialReadingEntityFromJson(json);
}

/// Social profile entity
@freezed
class SocialProfileEntity with _$SocialProfileEntity {
  const factory SocialProfileEntity({
    required String userId,
    required String displayName,
    required String? bio,
    required String? avatarUrl,
    required String? location,
    required List<String> interests,
    required List<String> favoriteGenres,
    required List<String> favoriteAuthors,
    required int totalBooksRead,
    required int totalPagesRead,
    required double averageRating,
    required int readingStreak,
    required int totalPoints,
    required String readingLevel,
    required List<String> badges,
    required bool isPublic,
    required DateTime joinDate,
    required DateTime lastActive,
  }) = _SocialProfileEntity;

  factory SocialProfileEntity.fromJson(Map<String, dynamic> json) => _$SocialProfileEntityFromJson(json);
}

/// Social connection entity
@freezed
class SocialConnectionEntity with _$SocialConnectionEntity {
  const factory SocialConnectionEntity({
    required String id,
    required String userId,
    required String connectedUserId,
    required ConnectionStatus status,
    required DateTime dateRequested,
    required DateTime? dateAccepted,
    required String? message,
    required bool isFavorite,
    required int mutualBooks,
    required double compatibilityScore,
  }) = _SocialConnectionEntity;

  factory SocialConnectionEntity.fromJson(Map<String, dynamic> json) => _$SocialConnectionEntityFromJson(json);
}

/// Connection status enum
enum ConnectionStatus {
  pending,
  accepted,
  rejected,
  blocked,
}

/// Reading challenge entity
@freezed
class ReadingChallengeEntity with _$ReadingChallengeEntity {
  const factory ReadingChallengeEntity({
    required String id,
    required String title,
    required String description,
    required ChallengeType type,
    required ChallengeDifficulty difficulty,
    required DateTime startDate,
    required DateTime endDate,
    required int targetValue,
    required String targetUnit,
    required List<String> participants,
    required List<String> winners,
    required ChallengeStatus status,
    required Map<String, int> participantProgress,
    required List<String> rewards,
    required int maxParticipants,
    required bool isPublic,
    required String creatorId,
    required List<String> tags,
    required double completionRate,
  }) = _ReadingChallengeEntity;

  factory ReadingChallengeEntity.fromJson(Map<String, dynamic> json) => _$ReadingChallengeEntityFromJson(json);
}

/// Challenge type enum
enum ChallengeType {
  readingStreak,
  bookCount,
  pageCount,
  genreExploration,
  authorDiversity,
  speedReading,
  comprehension,
  socialReading,
  seasonal,
  custom,
}

/// Challenge difficulty enum
enum ChallengeDifficulty {
  easy,
  medium,
  hard,
  expert,
}

/// Challenge status enum
enum ChallengeStatus {
  upcoming,
  active,
  completed,
  cancelled,
}

/// Reading group entity
@freezed
class ReadingGroupEntity with _$ReadingGroupEntity {
  const factory ReadingGroupEntity({
    required String id,
    required String name,
    required String description,
    required GroupType type,
    required GroupVisibility visibility,
    required String creatorId,
    required List<String> memberIds,
    required List<String> moderatorIds,
    required List<String> adminIds,
    required int maxMembers,
    required List<String> currentBooks,
    required List<String> tags,
    required DateTime dateCreated,
    required DateTime lastActivity,
    required int totalDiscussions,
    required int totalMembers,
    required bool isActive,
    required String? coverImageUrl,
    required List<String> rules,
    required GroupSettingsEntity settings,
  }) = _ReadingGroupEntity;

  factory ReadingGroupEntity.fromJson(Map<String, dynamic> json) => _$ReadingGroupEntityFromJson(json);
}

/// Group type enum
enum GroupType {
  bookClub,
  readingChallenge,
  genreSpecific,
  authorFan,
  studyGroup,
  casual,
  competitive,
  support,
}

/// Group visibility enum
enum GroupVisibility {
  public,
  private,
  inviteOnly,
  moderated,
}

/// Group settings entity
@freezed
class GroupSettingsEntity with _$GroupSettingsEntity {
  const factory GroupSettingsEntity({
    required bool allowMemberInvites,
    required bool requireApproval,
    required bool allowPublicDiscussions,
    required bool allowBookSuggestions,
    required bool allowMemberRemoval,
    required bool allowContentModeration,
    required int maxBooksPerMember,
    required bool autoArchiveCompleted,
    required List<String> restrictedTopics,
  }) = _GroupSettingsEntity;

  factory GroupSettingsEntity.fromJson(Map<String, dynamic> json) => _$GroupSettingsEntityFromJson(json);
}

/// Social event entity
@freezed
class SocialEventEntity with _$SocialEventEntity {
  const factory SocialEventEntity({
    required String id,
    required String title,
    required String description,
    required EventType type,
    required DateTime startDate,
    required DateTime endDate,
    required String location,
    required List<String> participants,
    required List<String> organizers,
    required EventStatus status,
    required int maxParticipants,
    required List<String> books,
    required String? coverImageUrl,
    required List<String> tags,
    required bool isVirtual,
    required String? meetingLink,
    required String? meetingPassword,
    required List<String> agenda,
    required List<String> materials,
  }) = _SocialEventEntity;

  factory SocialEventEntity.fromJson(Map<String, dynamic> json) => _$SocialEventEntityFromJson(json);
}

/// Event type enum
enum EventType {
  bookDiscussion,
  authorMeetup,
  readingWorkshop,
  bookSwap,
  readingChallenge,
  socialGathering,
  virtualBookClub,
  launchParty,
}

/// Event status enum
enum EventStatus {
  upcoming,
  active,
  completed,
  cancelled,
  postponed,
}

/// Achievement entity for social features
@freezed
class AchievementEntity with _$AchievementEntity {
  const factory AchievementEntity({
    required String id,
    required String title,
    required String description,
    required AchievementType type,
    required int level,
    required double progress,
    required bool isUnlocked,
    required DateTime? unlockDate,
    required String iconPath,
    required List<String> requirements,
    required double rarity,
    required int points,
    required String category,
    required bool isSocial,
    required List<String> sharedWith,
    required DateTime? dateShared,
  }) = _AchievementEntity;

  factory AchievementEntity.fromJson(Map<String, dynamic> json) => _$AchievementEntityFromJson(json);
}

/// Achievement type enum for social features
enum AchievementType {
  socialConnections,
  groupParticipation,
  challengeCompletion,
  eventAttendance,
  communityContribution,
  friendRecommendations,
  socialSharing,
  collaborativeReading,
  mentorship,
  communityBuilding,
}

/// Leaderboard entity
@freezed
class LeaderboardEntity with _$LeaderboardEntity {
  const factory LeaderboardEntity({
    required String id,
    required String title,
    required String description,
    required LeaderboardType type,
    required LeaderboardPeriod period,
    required DateTime startDate,
    required DateTime endDate,
    required List<LeaderboardEntryEntity> entries,
    required int totalParticipants,
    required String? groupId,
    required String? challengeId,
    required bool isActive,
    required List<String> categories,
    required Map<String, double> weights,
  }) = _LeaderboardEntity;

  factory LeaderboardEntity.fromJson(Map<String, dynamic> json) => _$LeaderboardEntityFromJson(json);
}

/// Leaderboard type enum
enum LeaderboardType {
  readingStreak,
  booksRead,
  pagesRead,
  pointsEarned,
  challengesCompleted,
  socialActivity,
  groupParticipation,
  communityContribution,
  overall,
}

/// Leaderboard period enum
enum LeaderboardPeriod {
  daily,
  weekly,
  monthly,
  quarterly,
  yearly,
  allTime,
}

/// Leaderboard entry entity
@freezed
class LeaderboardEntryEntity with _$LeaderboardEntryEntity {
  const factory LeaderboardEntryEntity({
    required String userId,
    required String displayName,
    required String? avatarUrl,
    required int rank,
    required double score,
    required Map<String, double> categoryScores,
    required DateTime lastUpdated,
    required int previousRank,
    required double rankChange,
    required List<String> achievements,
    required bool isCurrentUser,
  }) = _LeaderboardEntryEntity;

  factory LeaderboardEntryEntity.fromJson(Map<String, dynamic> json) => _$LeaderboardEntryEntityFromJson(json);
}

/// Social activity entity
@freezed
class SocialActivityEntity with _$SocialActivityEntity {
  const factory SocialActivityEntity({
    required String id,
    required String userId,
    required String displayName,
    required String? avatarUrl,
    required ActivityType type,
    required String title,
    required String description,
    required Map<String, dynamic> data,
    required DateTime dateCreated,
    required List<String> likedBy,
    required List<String> commentedBy,
    required List<String> sharedBy,
    required String? bookId,
    required String? groupId,
    required String? challengeId,
    required bool isPublic,
    required List<String> tags,
    required int engagementScore,
  }) = _SocialActivityEntity;

  factory SocialActivityEntity.fromJson(Map<String, dynamic> json) => _$SocialActivityEntityFromJson(json);
}

/// Activity type enum
enum ActivityType {
  bookCompleted,
  readingStreak,
  challengeJoined,
  challengeCompleted,
  groupJoined,
  groupCreated,
  eventAttended,
  achievementUnlocked,
  bookRated,
  bookReviewed,
  friendAdded,
  recommendationShared,
  readingGoal,
  milestoneReached,
}
