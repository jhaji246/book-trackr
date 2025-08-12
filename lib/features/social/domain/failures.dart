import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base failure class for the social reading feature
@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory Failure.cacheFailure({
    required String message,
  }) = CacheFailure;

  const factory Failure.invalidInputFailure({
    required String message,
    String? field,
  }) = InvalidInputFailure;

  const factory Failure.authFailure({
    required String message,
  }) = AuthFailure;

  const factory Failure.profileNotFoundFailure({
    required String userId,
  }) = ProfileNotFoundFailure;

  const factory Failure.connectionAlreadyExistsFailure({
    required String userId1,
    required String userId2,
  }) = ConnectionAlreadyExistsFailure;

  const factory Failure.connectionNotFoundFailure({
    required String connectionId,
  }) = ConnectionNotFoundFailure;

  const factory Failure.selfConnectionFailure({
    required String message,
  }) = SelfConnectionFailure;

  const factory Failure.challengeNotFoundFailure({
    required String challengeId,
  }) = ChallengeNotFoundFailure;

  const factory Failure.challengeFullFailure({
    required String challengeId,
    required int maxParticipants,
  }) = ChallengeFullFailure;

  const factory Failure.alreadyParticipatingFailure({
    required String challengeId,
    required String userId,
  }) = AlreadyParticipatingFailure;

  const factory Failure.notParticipatingFailure({
    required String challengeId,
    required String userId,
  }) = NotParticipatingFailure;

  const factory Failure.challengeNotActiveFailure({
    required String challengeId,
    required String status,
  }) = ChallengeNotActiveFailure;

  const factory Failure.groupNotFoundFailure({
    required String groupId,
  }) = GroupNotFoundFailure;

  const factory Failure.groupFullFailure({
    required String groupId,
    required int maxMembers,
  }) = GroupFullFailure;

  const factory Failure.alreadyMemberFailure({
    required String groupId,
    required String userId,
  }) = AlreadyMemberFailure;

  const factory Failure.notMemberFailure({
    required String groupId,
    required String userId,
  }) = NotMemberFailure;

  const factory Failure.insufficientPermissionsFailure({
    required String message,
    required String requiredPermission,
  }) = InsufficientPermissionsFailure;

  const factory Failure.eventNotFoundFailure({
    required String eventId,
  }) = EventNotFoundFailure;

  const factory Failure.eventFullFailure({
    required String eventId,
    required int maxParticipants,
  }) = EventFullFailure;

  const factory Failure.alreadyRegisteredFailure({
    required String eventId,
    required String userId,
  }) = AlreadyRegisteredFailure;

  const factory Failure.notRegisteredFailure({
    required String eventId,
    required String userId,
  }) = NotRegisteredFailure;

  const factory Failure.achievementNotFoundFailure({
    required String achievementId,
  }) = AchievementNotFoundFailure;

  const factory Failure.achievementAlreadyUnlockedFailure({
    required String achievementId,
    required String userId,
  }) = AchievementAlreadyUnlockedFailure;

  const factory Failure.leaderboardNotFoundFailure({
    required String leaderboardId,
  }) = LeaderboardNotFoundFailure;

  const factory Failure.activityNotFoundFailure({
    required String activityId,
  }) = ActivityNotFoundFailure;

  const factory Failure.alreadyLikedFailure({
    required String activityId,
    required String userId,
  }) = AlreadyLikedFailure;

  const factory Failure.notLikedFailure({
    required String activityId,
    required String userId,
  }) = NotLikedFailure;

  const factory Failure.blockedUserFailure({
    required String message,
    required String blockedUserId,
  }) = BlockedUserFailure;

  const factory Failure.rateLimitFailure({
    required String message,
    required Duration cooldown,
  }) = RateLimitFailure;

  const factory Failure.contentModerationFailure({
    required String message,
    required String reason,
  }) = ContentModerationFailure;
}

/// Server-related failures
class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    this.statusCode,
  });
}

/// Network-related failures
class NetworkFailure extends Failure {
  const NetworkFailure({required super.message});
}

/// Cache-related failures
class CacheFailure extends Failure {
  const CacheFailure({required super.message});
}

/// Input validation failures
class InvalidInputFailure extends Failure {
  const InvalidInputFailure({
    required super.message,
    this.field,
  });
}

/// Authentication failures
class AuthFailure extends Failure {
  const AuthFailure({required super.message});
}

/// Profile not found failures
class ProfileNotFoundFailure extends Failure {
  const ProfileNotFoundFailure({required super.userId});
}

/// Connection already exists failures
class ConnectionAlreadyExistsFailure extends Failure {
  const ConnectionAlreadyExistsFailure({
    required super.userId1,
    required super.userId2,
  });
}

/// Connection not found failures
class ConnectionNotFoundFailure extends Failure {
  const ConnectionNotFoundFailure({required super.connectionId});
}

/// Self connection failures
class SelfConnectionFailure extends Failure {
  const SelfConnectionFailure({required super.message});
}

/// Challenge not found failures
class ChallengeNotFoundFailure extends Failure {
  const ChallengeNotFoundFailure({required super.challengeId});
}

/// Challenge full failures
class ChallengeFullFailure extends Failure {
  const ChallengeFullFailure({
    required super.challengeId,
    this.maxParticipants,
  });
}

/// Already participating failures
class AlreadyParticipatingFailure extends Failure {
  const AlreadyParticipatingFailure({
    required super.challengeId,
    required super.userId,
  });
}

/// Not participating failures
class NotParticipatingFailure extends Failure {
  const NotParticipatingFailure({
    required super.challengeId,
    required super.userId,
  });
}

/// Challenge not active failures
class ChallengeNotActiveFailure extends Failure {
  const ChallengeNotActiveFailure({
    required super.challengeId,
    required super.status,
  });
}

/// Group not found failures
class GroupNotFoundFailure extends Failure {
  const GroupNotFoundFailure({required super.groupId});
}

/// Group full failures
class GroupFullFailure extends Failure {
  const GroupFullFailure({
    required super.groupId,
    this.maxMembers,
  });
}

/// Already member failures
class AlreadyMemberFailure extends Failure {
  const AlreadyMemberFailure({
    required super.groupId,
    required super.userId,
  });
}

/// Not member failures
class NotMemberFailure extends Failure {
  const NotMemberFailure({
    required super.groupId,
    required super.userId,
  });
}

/// Insufficient permissions failures
class InsufficientPermissionsFailure extends Failure {
  const InsufficientPermissionsFailure({
    required super.message,
    this.requiredPermission,
  });
}

/// Event not found failures
class EventNotFoundFailure extends Failure {
  const EventNotFoundFailure({required super.eventId});
}

/// Event full failures
class EventFullFailure extends Failure {
  const EventFullFailure({
    required super.eventId,
    this.maxParticipants,
  });
}

/// Already registered failures
class AlreadyRegisteredFailure extends Failure {
  const AlreadyRegisteredFailure({
    required super.eventId,
    required super.userId,
  });
}

/// Not registered failures
class NotRegisteredFailure extends Failure {
  const NotRegisteredFailure({
    required super.eventId,
    required super.userId,
  });
}

/// Achievement not found failures
class AchievementNotFoundFailure extends Failure {
  const AchievementNotFoundFailure({required super.achievementId});
}

/// Achievement already unlocked failures
class AchievementAlreadyUnlockedFailure extends Failure {
  const AchievementAlreadyUnlockedFailure({
    required super.achievementId,
    required super.userId,
  });
}

/// Leaderboard not found failures
class LeaderboardNotFoundFailure extends Failure {
  const LeaderboardNotFoundFailure({required super.leaderboardId});
}

/// Activity not found failures
class ActivityNotFoundFailure extends Failure {
  const ActivityNotFoundFailure({required super.activityId});
}

/// Already liked failures
class AlreadyLikedFailure extends Failure {
  const AlreadyLikedFailure({
    required super.activityId,
    required super.userId,
  });
}

/// Not liked failures
class NotLikedFailure extends Failure {
  const NotLikedFailure({
    required super.activityId,
    required super.userId,
  });
}

/// Blocked user failures
class BlockedUserFailure extends Failure {
  const BlockedUserFailure({
    required super.message,
    this.blockedUserId,
  });
}

/// Rate limit failures
class RateLimitFailure extends Failure {
  const RateLimitFailure({
    required super.message,
    this.cooldown,
  });
}

/// Content moderation failures
class ContentModerationFailure extends Failure {
  const ContentModerationFailure({
    required super.message,
    this.reason,
  });
}
