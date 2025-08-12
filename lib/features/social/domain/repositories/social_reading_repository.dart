import 'package:dartz/dartz.dart';
import '../entities/social_reading_entity.dart';
import '../failures.dart';

/// Abstract interface for social reading data operations
abstract class SocialReadingRepository {
  /// Get social reading profile for a user
  Future<Either<Failure, SocialReadingEntity>> getUserSocialProfile(String userId);
  
  /// Get social profile by user ID
  Future<Either<Failure, SocialProfileEntity>> getSocialProfile(String userId);
  
  /// Update social profile
  Future<Either<Failure, SocialProfileEntity>> updateSocialProfile(SocialProfileEntity profile);
  
  /// Search for users to connect with
  Future<Either<Failure, List<SocialProfileEntity>>> searchUsers({
    String? searchQuery,
    List<String>? interests,
    List<String>? favoriteGenres,
    String? location,
    bool? onlineOnly,
  });
  
  /// Send connection request
  Future<Either<Failure, SocialConnectionEntity>> sendConnectionRequest(
    String fromUserId,
    String toUserId,
    String? message,
  );
  
  /// Accept connection request
  Future<Either<Failure, SocialConnectionEntity>> acceptConnectionRequest(String connectionId);
  
  /// Reject connection request
  Future<Either<Failure, void>> rejectConnectionRequest(String connectionId);
  
  /// Block user
  Future<Either<Failure, void>> blockUser(String userId, String blockedUserId);
  
  /// Remove connection
  Future<Either<Failure, void>> removeConnection(String connectionId);
  
  /// Get user connections
  Future<Either<Failure, List<SocialConnectionEntity>>> getUserConnections(String userId);
  
  /// Get mutual connections
  Future<Either<Failure, List<SocialConnectionEntity>>> getMutualConnections(
    String userId1,
    String userId2,
  );
  
  /// Create reading challenge
  Future<Either<Failure, ReadingChallengeEntity>> createReadingChallenge(ReadingChallengeEntity challenge);
  
  /// Join reading challenge
  Future<Either<Failure, ReadingChallengeEntity>> joinReadingChallenge(
    String challengeId,
    String userId,
  );
  
  /// Leave reading challenge
  Future<Either<Failure, ReadingChallengeEntity>> leaveReadingChallenge(
    String challengeId,
    String userId,
  );
  
  /// Update challenge progress
  Future<Either<Failure, ReadingChallengeEntity>> updateChallengeProgress(
    String challengeId,
    String userId,
    int progress,
  );
  
  /// Get user challenges
  Future<Either<Failure, List<ReadingChallengeEntity>>> getUserChallenges(String userId);
  
  /// Get public challenges
  Future<Either<Failure, List<ReadingChallengeEntity>>> getPublicChallenges();
  
  /// Get challenge by ID
  Future<Either<Failure, ReadingChallengeEntity>> getChallengeById(String challengeId);
  
  /// Create reading group
  Future<Either<Failure, ReadingGroupEntity>> createReadingGroup(ReadingGroupEntity group);
  
  /// Join reading group
  Future<Either<Failure, ReadingGroupEntity>> joinReadingGroup(
    String groupId,
    String userId,
  );
  
  /// Leave reading group
  Future<Either<Failure, ReadingGroupEntity>> leaveReadingGroup(
    String groupId,
    String userId,
  );
  
  /// Invite user to group
  Future<Either<Failure, ReadingGroupEntity>> inviteUserToGroup(
    String groupId,
    String invitedUserId,
    String invitedByUserId,
  );
  
  /// Remove user from group
  Future<Either<Failure, ReadingGroupEntity>> removeUserFromGroup(
    String groupId,
    String userId,
    String removedByUserId,
  );
  
  /// Get user groups
  Future<Either<Failure, List<ReadingGroupEntity>>> getUserGroups(String userId);
  
  /// Get public groups
  Future<Either<Failure, List<ReadingGroupEntity>>> getPublicGroups();
  
  /// Get group by ID
  Future<Either<Failure, ReadingGroupEntity>> getGroupById(String groupId);
  
  /// Create social event
  Future<Either<Failure, SocialEventEntity>> createSocialEvent(SocialEventEntity event);
  
  /// Join social event
  Future<Either<Failure, SocialEventEntity>> joinSocialEvent(
    String eventId,
    String userId,
  );
  
  /// Leave social event
  Future<Either<Failure, SocialEventEntity>> leaveSocialEvent(
    String eventId,
    String userId,
  );
  
  /// Get user events
  Future<Either<Failure, List<SocialEventEntity>>> getUserEvents(String userId);
  
  /// Get public events
  Future<Either<Failure, List<SocialEventEntity>>> getPublicEvents();
  
  /// Get event by ID
  Future<Either<Failure, SocialEventEntity>> getEventById(String eventId);
  
  /// Get user achievements
  Future<Either<Failure, List<AchievementEntity>>> getUserAchievements(String userId);
  
  /// Unlock achievement
  Future<Either<Failure, AchievementEntity>> unlockAchievement(
    String userId,
    String achievementId,
  );
  
  /// Share achievement
  Future<Either<Failure, AchievementEntity>> shareAchievement(
    String userId,
    String achievementId,
    List<String> shareWithUserIds,
  );
  
  /// Get leaderboards
  Future<Either<Failure, List<LeaderboardEntity>>> getLeaderboards({
    LeaderboardType? type,
    LeaderboardPeriod? period,
    String? groupId,
    String? challengeId,
  });
  
  /// Get leaderboard entries
  Future<Either<Failure, List<LeaderboardEntryEntity>>> getLeaderboardEntries(
    String leaderboardId,
    {int? limit, int? offset}
  );
  
  /// Get user ranking
  Future<Either<Failure, LeaderboardEntryEntity?>> getUserRanking(
    String leaderboardId,
    String userId,
  );
  
  /// Create social activity
  Future<Either<Failure, SocialActivityEntity>> createSocialActivity(SocialActivityEntity activity);
  
  /// Like social activity
  Future<Either<Failure, SocialActivityEntity>> likeSocialActivity(
    String activityId,
    String userId,
  );
  
  /// Unlike social activity
  Future<Either<Failure, SocialActivityEntity>> unlikeSocialActivity(
    String activityId,
    String userId,
  );
  
  /// Comment on social activity
  Future<Either<Failure, SocialActivityEntity>> commentOnSocialActivity(
    String activityId,
    String userId,
    String comment,
  );
  
  /// Share social activity
  Future<Either<Failure, SocialActivityEntity>> shareSocialActivity(
    String activityId,
    String userId,
    List<String> shareWithUserIds,
  );
  
  /// Get user activities
  Future<Either<Failure, List<SocialActivityEntity>>> getUserActivities(String userId);
  
  /// Get social feed
  Future<Either<Failure, List<SocialActivityEntity>>> getSocialFeed(String userId, {
    int? limit,
    int? offset,
    List<String>? filterTypes,
    String? groupId,
  });
  
  /// Get friend recommendations
  Future<Either<Failure, List<SocialProfileEntity>>> getFriendRecommendations(String userId);
  
  /// Get book recommendations from friends
  Future<Either<Failure, List<Map<String, dynamic>>>> getFriendBookRecommendations(String userId);
  
  /// Get reading compatibility score
  Future<Either<Failure, double>> getReadingCompatibilityScore(
    String userId1,
    String userId2,
  );
  
  /// Get community insights
  Future<Either<Failure, Map<String, dynamic>>> getCommunityInsights(String userId);
  
  /// Get trending topics
  Future<Either<Failure, List<String>>> getTrendingTopics();
  
  /// Get popular groups
  Future<Either<Failure, List<ReadingGroupEntity>>> getPopularGroups();
  
  /// Get active challenges
  Future<Either<Failure, List<ReadingChallengeEntity>>> getActiveChallenges();
  
  /// Get upcoming events
  Future<Either<Failure, List<SocialEventEntity>>> getUpcomingEvents();
  
  /// Get user statistics
  Future<Either<Failure, Map<String, dynamic>>> getUserSocialStatistics(String userId);
  
  /// Get community statistics
  Future<Either<Failure, Map<String, dynamic>>> getCommunityStatistics();
}
