// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int? statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl({required this.message, this.statusCode});

  @override
  final String message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return serverFailure(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return serverFailure?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(
      {required final String message,
      final int? statusCode}) = _$ServerFailureImpl;

  String get message;
  int? get statusCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NetworkFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.networkFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return networkFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return networkFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure({required final String message}) =
      _$NetworkFailureImpl;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CacheFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl implements CacheFailure {
  const _$CacheFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return cacheFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return cacheFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure({required final String message}) =
      _$CacheFailureImpl;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidInputFailureImplCopyWith<$Res> {
  factory _$$InvalidInputFailureImplCopyWith(_$InvalidInputFailureImpl value,
          $Res Function(_$InvalidInputFailureImpl) then) =
      __$$InvalidInputFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? field});
}

/// @nodoc
class __$$InvalidInputFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InvalidInputFailureImpl>
    implements _$$InvalidInputFailureImplCopyWith<$Res> {
  __$$InvalidInputFailureImplCopyWithImpl(_$InvalidInputFailureImpl _value,
      $Res Function(_$InvalidInputFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? field = freezed,
  }) {
    return _then(_$InvalidInputFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidInputFailureImpl implements InvalidInputFailure {
  const _$InvalidInputFailureImpl({required this.message, this.field});

  @override
  final String message;
  @override
  final String? field;

  @override
  String toString() {
    return 'Failure.invalidInputFailure(message: $message, field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidInputFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, field);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidInputFailureImplCopyWith<_$InvalidInputFailureImpl> get copyWith =>
      __$$InvalidInputFailureImplCopyWithImpl<_$InvalidInputFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return invalidInputFailure(message, field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return invalidInputFailure?.call(message, field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (invalidInputFailure != null) {
      return invalidInputFailure(message, field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return invalidInputFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return invalidInputFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (invalidInputFailure != null) {
      return invalidInputFailure(this);
    }
    return orElse();
  }
}

abstract class InvalidInputFailure implements Failure {
  const factory InvalidInputFailure(
      {required final String message,
      final String? field}) = _$InvalidInputFailureImpl;

  String get message;
  String? get field;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidInputFailureImplCopyWith<_$InvalidInputFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl implements AuthFailure {
  const _$AuthFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.authFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return authFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return authFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements Failure {
  const factory AuthFailure({required final String message}) =
      _$AuthFailureImpl;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileNotFoundFailureImplCopyWith<$Res> {
  factory _$$ProfileNotFoundFailureImplCopyWith(
          _$ProfileNotFoundFailureImpl value,
          $Res Function(_$ProfileNotFoundFailureImpl) then) =
      __$$ProfileNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$ProfileNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ProfileNotFoundFailureImpl>
    implements _$$ProfileNotFoundFailureImplCopyWith<$Res> {
  __$$ProfileNotFoundFailureImplCopyWithImpl(
      _$ProfileNotFoundFailureImpl _value,
      $Res Function(_$ProfileNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ProfileNotFoundFailureImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileNotFoundFailureImpl implements ProfileNotFoundFailure {
  const _$ProfileNotFoundFailureImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.profileNotFoundFailure(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileNotFoundFailureImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileNotFoundFailureImplCopyWith<_$ProfileNotFoundFailureImpl>
      get copyWith => __$$ProfileNotFoundFailureImplCopyWithImpl<
          _$ProfileNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return profileNotFoundFailure(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return profileNotFoundFailure?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (profileNotFoundFailure != null) {
      return profileNotFoundFailure(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return profileNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return profileNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (profileNotFoundFailure != null) {
      return profileNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class ProfileNotFoundFailure implements Failure {
  const factory ProfileNotFoundFailure({required final String userId}) =
      _$ProfileNotFoundFailureImpl;

  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileNotFoundFailureImplCopyWith<_$ProfileNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionAlreadyExistsFailureImplCopyWith<$Res> {
  factory _$$ConnectionAlreadyExistsFailureImplCopyWith(
          _$ConnectionAlreadyExistsFailureImpl value,
          $Res Function(_$ConnectionAlreadyExistsFailureImpl) then) =
      __$$ConnectionAlreadyExistsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId1, String userId2});
}

/// @nodoc
class __$$ConnectionAlreadyExistsFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionAlreadyExistsFailureImpl>
    implements _$$ConnectionAlreadyExistsFailureImplCopyWith<$Res> {
  __$$ConnectionAlreadyExistsFailureImplCopyWithImpl(
      _$ConnectionAlreadyExistsFailureImpl _value,
      $Res Function(_$ConnectionAlreadyExistsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId1 = null,
    Object? userId2 = null,
  }) {
    return _then(_$ConnectionAlreadyExistsFailureImpl(
      userId1: null == userId1
          ? _value.userId1
          : userId1 // ignore: cast_nullable_to_non_nullable
              as String,
      userId2: null == userId2
          ? _value.userId2
          : userId2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionAlreadyExistsFailureImpl
    implements ConnectionAlreadyExistsFailure {
  const _$ConnectionAlreadyExistsFailureImpl(
      {required this.userId1, required this.userId2});

  @override
  final String userId1;
  @override
  final String userId2;

  @override
  String toString() {
    return 'Failure.connectionAlreadyExistsFailure(userId1: $userId1, userId2: $userId2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionAlreadyExistsFailureImpl &&
            (identical(other.userId1, userId1) || other.userId1 == userId1) &&
            (identical(other.userId2, userId2) || other.userId2 == userId2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId1, userId2);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionAlreadyExistsFailureImplCopyWith<
          _$ConnectionAlreadyExistsFailureImpl>
      get copyWith => __$$ConnectionAlreadyExistsFailureImplCopyWithImpl<
          _$ConnectionAlreadyExistsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return connectionAlreadyExistsFailure(userId1, userId2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return connectionAlreadyExistsFailure?.call(userId1, userId2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (connectionAlreadyExistsFailure != null) {
      return connectionAlreadyExistsFailure(userId1, userId2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return connectionAlreadyExistsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return connectionAlreadyExistsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (connectionAlreadyExistsFailure != null) {
      return connectionAlreadyExistsFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionAlreadyExistsFailure implements Failure {
  const factory ConnectionAlreadyExistsFailure(
      {required final String userId1,
      required final String userId2}) = _$ConnectionAlreadyExistsFailureImpl;

  String get userId1;
  String get userId2;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionAlreadyExistsFailureImplCopyWith<
          _$ConnectionAlreadyExistsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionNotFoundFailureImplCopyWith<$Res> {
  factory _$$ConnectionNotFoundFailureImplCopyWith(
          _$ConnectionNotFoundFailureImpl value,
          $Res Function(_$ConnectionNotFoundFailureImpl) then) =
      __$$ConnectionNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String connectionId});
}

/// @nodoc
class __$$ConnectionNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionNotFoundFailureImpl>
    implements _$$ConnectionNotFoundFailureImplCopyWith<$Res> {
  __$$ConnectionNotFoundFailureImplCopyWithImpl(
      _$ConnectionNotFoundFailureImpl _value,
      $Res Function(_$ConnectionNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionId = null,
  }) {
    return _then(_$ConnectionNotFoundFailureImpl(
      connectionId: null == connectionId
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionNotFoundFailureImpl implements ConnectionNotFoundFailure {
  const _$ConnectionNotFoundFailureImpl({required this.connectionId});

  @override
  final String connectionId;

  @override
  String toString() {
    return 'Failure.connectionNotFoundFailure(connectionId: $connectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionNotFoundFailureImpl &&
            (identical(other.connectionId, connectionId) ||
                other.connectionId == connectionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionNotFoundFailureImplCopyWith<_$ConnectionNotFoundFailureImpl>
      get copyWith => __$$ConnectionNotFoundFailureImplCopyWithImpl<
          _$ConnectionNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return connectionNotFoundFailure(connectionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return connectionNotFoundFailure?.call(connectionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (connectionNotFoundFailure != null) {
      return connectionNotFoundFailure(connectionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return connectionNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return connectionNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (connectionNotFoundFailure != null) {
      return connectionNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionNotFoundFailure implements Failure {
  const factory ConnectionNotFoundFailure(
      {required final String connectionId}) = _$ConnectionNotFoundFailureImpl;

  String get connectionId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionNotFoundFailureImplCopyWith<_$ConnectionNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelfConnectionFailureImplCopyWith<$Res> {
  factory _$$SelfConnectionFailureImplCopyWith(
          _$SelfConnectionFailureImpl value,
          $Res Function(_$SelfConnectionFailureImpl) then) =
      __$$SelfConnectionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SelfConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SelfConnectionFailureImpl>
    implements _$$SelfConnectionFailureImplCopyWith<$Res> {
  __$$SelfConnectionFailureImplCopyWithImpl(_$SelfConnectionFailureImpl _value,
      $Res Function(_$SelfConnectionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SelfConnectionFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelfConnectionFailureImpl implements SelfConnectionFailure {
  const _$SelfConnectionFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.selfConnectionFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelfConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelfConnectionFailureImplCopyWith<_$SelfConnectionFailureImpl>
      get copyWith => __$$SelfConnectionFailureImplCopyWithImpl<
          _$SelfConnectionFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return selfConnectionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return selfConnectionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (selfConnectionFailure != null) {
      return selfConnectionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return selfConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return selfConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (selfConnectionFailure != null) {
      return selfConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class SelfConnectionFailure implements Failure {
  const factory SelfConnectionFailure({required final String message}) =
      _$SelfConnectionFailureImpl;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelfConnectionFailureImplCopyWith<_$SelfConnectionFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChallengeNotFoundFailureImplCopyWith<$Res> {
  factory _$$ChallengeNotFoundFailureImplCopyWith(
          _$ChallengeNotFoundFailureImpl value,
          $Res Function(_$ChallengeNotFoundFailureImpl) then) =
      __$$ChallengeNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String challengeId});
}

/// @nodoc
class __$$ChallengeNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ChallengeNotFoundFailureImpl>
    implements _$$ChallengeNotFoundFailureImplCopyWith<$Res> {
  __$$ChallengeNotFoundFailureImplCopyWithImpl(
      _$ChallengeNotFoundFailureImpl _value,
      $Res Function(_$ChallengeNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeId = null,
  }) {
    return _then(_$ChallengeNotFoundFailureImpl(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChallengeNotFoundFailureImpl implements ChallengeNotFoundFailure {
  const _$ChallengeNotFoundFailureImpl({required this.challengeId});

  @override
  final String challengeId;

  @override
  String toString() {
    return 'Failure.challengeNotFoundFailure(challengeId: $challengeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeNotFoundFailureImpl &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challengeId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeNotFoundFailureImplCopyWith<_$ChallengeNotFoundFailureImpl>
      get copyWith => __$$ChallengeNotFoundFailureImplCopyWithImpl<
          _$ChallengeNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return challengeNotFoundFailure(challengeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return challengeNotFoundFailure?.call(challengeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (challengeNotFoundFailure != null) {
      return challengeNotFoundFailure(challengeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return challengeNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return challengeNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (challengeNotFoundFailure != null) {
      return challengeNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class ChallengeNotFoundFailure implements Failure {
  const factory ChallengeNotFoundFailure({required final String challengeId}) =
      _$ChallengeNotFoundFailureImpl;

  String get challengeId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeNotFoundFailureImplCopyWith<_$ChallengeNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChallengeFullFailureImplCopyWith<$Res> {
  factory _$$ChallengeFullFailureImplCopyWith(_$ChallengeFullFailureImpl value,
          $Res Function(_$ChallengeFullFailureImpl) then) =
      __$$ChallengeFullFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String challengeId, int maxParticipants});
}

/// @nodoc
class __$$ChallengeFullFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ChallengeFullFailureImpl>
    implements _$$ChallengeFullFailureImplCopyWith<$Res> {
  __$$ChallengeFullFailureImplCopyWithImpl(_$ChallengeFullFailureImpl _value,
      $Res Function(_$ChallengeFullFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeId = null,
    Object? maxParticipants = null,
  }) {
    return _then(_$ChallengeFullFailureImpl(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChallengeFullFailureImpl implements ChallengeFullFailure {
  const _$ChallengeFullFailureImpl(
      {required this.challengeId, required this.maxParticipants});

  @override
  final String challengeId;
  @override
  final int maxParticipants;

  @override
  String toString() {
    return 'Failure.challengeFullFailure(challengeId: $challengeId, maxParticipants: $maxParticipants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeFullFailureImpl &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challengeId, maxParticipants);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeFullFailureImplCopyWith<_$ChallengeFullFailureImpl>
      get copyWith =>
          __$$ChallengeFullFailureImplCopyWithImpl<_$ChallengeFullFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return challengeFullFailure(challengeId, maxParticipants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return challengeFullFailure?.call(challengeId, maxParticipants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (challengeFullFailure != null) {
      return challengeFullFailure(challengeId, maxParticipants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return challengeFullFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return challengeFullFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (challengeFullFailure != null) {
      return challengeFullFailure(this);
    }
    return orElse();
  }
}

abstract class ChallengeFullFailure implements Failure {
  const factory ChallengeFullFailure(
      {required final String challengeId,
      required final int maxParticipants}) = _$ChallengeFullFailureImpl;

  String get challengeId;
  int get maxParticipants;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeFullFailureImplCopyWith<_$ChallengeFullFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlreadyParticipatingFailureImplCopyWith<$Res> {
  factory _$$AlreadyParticipatingFailureImplCopyWith(
          _$AlreadyParticipatingFailureImpl value,
          $Res Function(_$AlreadyParticipatingFailureImpl) then) =
      __$$AlreadyParticipatingFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String challengeId, String userId});
}

/// @nodoc
class __$$AlreadyParticipatingFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AlreadyParticipatingFailureImpl>
    implements _$$AlreadyParticipatingFailureImplCopyWith<$Res> {
  __$$AlreadyParticipatingFailureImplCopyWithImpl(
      _$AlreadyParticipatingFailureImpl _value,
      $Res Function(_$AlreadyParticipatingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeId = null,
    Object? userId = null,
  }) {
    return _then(_$AlreadyParticipatingFailureImpl(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AlreadyParticipatingFailureImpl implements AlreadyParticipatingFailure {
  const _$AlreadyParticipatingFailureImpl(
      {required this.challengeId, required this.userId});

  @override
  final String challengeId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.alreadyParticipatingFailure(challengeId: $challengeId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyParticipatingFailureImpl &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challengeId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlreadyParticipatingFailureImplCopyWith<_$AlreadyParticipatingFailureImpl>
      get copyWith => __$$AlreadyParticipatingFailureImplCopyWithImpl<
          _$AlreadyParticipatingFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return alreadyParticipatingFailure(challengeId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return alreadyParticipatingFailure?.call(challengeId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (alreadyParticipatingFailure != null) {
      return alreadyParticipatingFailure(challengeId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return alreadyParticipatingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return alreadyParticipatingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (alreadyParticipatingFailure != null) {
      return alreadyParticipatingFailure(this);
    }
    return orElse();
  }
}

abstract class AlreadyParticipatingFailure implements Failure {
  const factory AlreadyParticipatingFailure(
      {required final String challengeId,
      required final String userId}) = _$AlreadyParticipatingFailureImpl;

  String get challengeId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlreadyParticipatingFailureImplCopyWith<_$AlreadyParticipatingFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotParticipatingFailureImplCopyWith<$Res> {
  factory _$$NotParticipatingFailureImplCopyWith(
          _$NotParticipatingFailureImpl value,
          $Res Function(_$NotParticipatingFailureImpl) then) =
      __$$NotParticipatingFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String challengeId, String userId});
}

/// @nodoc
class __$$NotParticipatingFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotParticipatingFailureImpl>
    implements _$$NotParticipatingFailureImplCopyWith<$Res> {
  __$$NotParticipatingFailureImplCopyWithImpl(
      _$NotParticipatingFailureImpl _value,
      $Res Function(_$NotParticipatingFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeId = null,
    Object? userId = null,
  }) {
    return _then(_$NotParticipatingFailureImpl(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotParticipatingFailureImpl implements NotParticipatingFailure {
  const _$NotParticipatingFailureImpl(
      {required this.challengeId, required this.userId});

  @override
  final String challengeId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.notParticipatingFailure(challengeId: $challengeId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotParticipatingFailureImpl &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challengeId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotParticipatingFailureImplCopyWith<_$NotParticipatingFailureImpl>
      get copyWith => __$$NotParticipatingFailureImplCopyWithImpl<
          _$NotParticipatingFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return notParticipatingFailure(challengeId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return notParticipatingFailure?.call(challengeId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (notParticipatingFailure != null) {
      return notParticipatingFailure(challengeId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return notParticipatingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return notParticipatingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (notParticipatingFailure != null) {
      return notParticipatingFailure(this);
    }
    return orElse();
  }
}

abstract class NotParticipatingFailure implements Failure {
  const factory NotParticipatingFailure(
      {required final String challengeId,
      required final String userId}) = _$NotParticipatingFailureImpl;

  String get challengeId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotParticipatingFailureImplCopyWith<_$NotParticipatingFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChallengeNotActiveFailureImplCopyWith<$Res> {
  factory _$$ChallengeNotActiveFailureImplCopyWith(
          _$ChallengeNotActiveFailureImpl value,
          $Res Function(_$ChallengeNotActiveFailureImpl) then) =
      __$$ChallengeNotActiveFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String challengeId, String status});
}

/// @nodoc
class __$$ChallengeNotActiveFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ChallengeNotActiveFailureImpl>
    implements _$$ChallengeNotActiveFailureImplCopyWith<$Res> {
  __$$ChallengeNotActiveFailureImplCopyWithImpl(
      _$ChallengeNotActiveFailureImpl _value,
      $Res Function(_$ChallengeNotActiveFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeId = null,
    Object? status = null,
  }) {
    return _then(_$ChallengeNotActiveFailureImpl(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChallengeNotActiveFailureImpl implements ChallengeNotActiveFailure {
  const _$ChallengeNotActiveFailureImpl(
      {required this.challengeId, required this.status});

  @override
  final String challengeId;
  @override
  final String status;

  @override
  String toString() {
    return 'Failure.challengeNotActiveFailure(challengeId: $challengeId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeNotActiveFailureImpl &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challengeId, status);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeNotActiveFailureImplCopyWith<_$ChallengeNotActiveFailureImpl>
      get copyWith => __$$ChallengeNotActiveFailureImplCopyWithImpl<
          _$ChallengeNotActiveFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return challengeNotActiveFailure(challengeId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return challengeNotActiveFailure?.call(challengeId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (challengeNotActiveFailure != null) {
      return challengeNotActiveFailure(challengeId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return challengeNotActiveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return challengeNotActiveFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (challengeNotActiveFailure != null) {
      return challengeNotActiveFailure(this);
    }
    return orElse();
  }
}

abstract class ChallengeNotActiveFailure implements Failure {
  const factory ChallengeNotActiveFailure(
      {required final String challengeId,
      required final String status}) = _$ChallengeNotActiveFailureImpl;

  String get challengeId;
  String get status;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeNotActiveFailureImplCopyWith<_$ChallengeNotActiveFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupNotFoundFailureImplCopyWith<$Res> {
  factory _$$GroupNotFoundFailureImplCopyWith(_$GroupNotFoundFailureImpl value,
          $Res Function(_$GroupNotFoundFailureImpl) then) =
      __$$GroupNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId});
}

/// @nodoc
class __$$GroupNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$GroupNotFoundFailureImpl>
    implements _$$GroupNotFoundFailureImplCopyWith<$Res> {
  __$$GroupNotFoundFailureImplCopyWithImpl(_$GroupNotFoundFailureImpl _value,
      $Res Function(_$GroupNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$GroupNotFoundFailureImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroupNotFoundFailureImpl implements GroupNotFoundFailure {
  const _$GroupNotFoundFailureImpl({required this.groupId});

  @override
  final String groupId;

  @override
  String toString() {
    return 'Failure.groupNotFoundFailure(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupNotFoundFailureImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupNotFoundFailureImplCopyWith<_$GroupNotFoundFailureImpl>
      get copyWith =>
          __$$GroupNotFoundFailureImplCopyWithImpl<_$GroupNotFoundFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return groupNotFoundFailure(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return groupNotFoundFailure?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (groupNotFoundFailure != null) {
      return groupNotFoundFailure(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return groupNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return groupNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (groupNotFoundFailure != null) {
      return groupNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class GroupNotFoundFailure implements Failure {
  const factory GroupNotFoundFailure({required final String groupId}) =
      _$GroupNotFoundFailureImpl;

  String get groupId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupNotFoundFailureImplCopyWith<_$GroupNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupFullFailureImplCopyWith<$Res> {
  factory _$$GroupFullFailureImplCopyWith(_$GroupFullFailureImpl value,
          $Res Function(_$GroupFullFailureImpl) then) =
      __$$GroupFullFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId, int maxMembers});
}

/// @nodoc
class __$$GroupFullFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$GroupFullFailureImpl>
    implements _$$GroupFullFailureImplCopyWith<$Res> {
  __$$GroupFullFailureImplCopyWithImpl(_$GroupFullFailureImpl _value,
      $Res Function(_$GroupFullFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? maxMembers = null,
  }) {
    return _then(_$GroupFullFailureImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GroupFullFailureImpl implements GroupFullFailure {
  const _$GroupFullFailureImpl(
      {required this.groupId, required this.maxMembers});

  @override
  final String groupId;
  @override
  final int maxMembers;

  @override
  String toString() {
    return 'Failure.groupFullFailure(groupId: $groupId, maxMembers: $maxMembers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupFullFailureImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, maxMembers);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupFullFailureImplCopyWith<_$GroupFullFailureImpl> get copyWith =>
      __$$GroupFullFailureImplCopyWithImpl<_$GroupFullFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return groupFullFailure(groupId, maxMembers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return groupFullFailure?.call(groupId, maxMembers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (groupFullFailure != null) {
      return groupFullFailure(groupId, maxMembers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return groupFullFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return groupFullFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (groupFullFailure != null) {
      return groupFullFailure(this);
    }
    return orElse();
  }
}

abstract class GroupFullFailure implements Failure {
  const factory GroupFullFailure(
      {required final String groupId,
      required final int maxMembers}) = _$GroupFullFailureImpl;

  String get groupId;
  int get maxMembers;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupFullFailureImplCopyWith<_$GroupFullFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlreadyMemberFailureImplCopyWith<$Res> {
  factory _$$AlreadyMemberFailureImplCopyWith(_$AlreadyMemberFailureImpl value,
          $Res Function(_$AlreadyMemberFailureImpl) then) =
      __$$AlreadyMemberFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId, String userId});
}

/// @nodoc
class __$$AlreadyMemberFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AlreadyMemberFailureImpl>
    implements _$$AlreadyMemberFailureImplCopyWith<$Res> {
  __$$AlreadyMemberFailureImplCopyWithImpl(_$AlreadyMemberFailureImpl _value,
      $Res Function(_$AlreadyMemberFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userId = null,
  }) {
    return _then(_$AlreadyMemberFailureImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AlreadyMemberFailureImpl implements AlreadyMemberFailure {
  const _$AlreadyMemberFailureImpl(
      {required this.groupId, required this.userId});

  @override
  final String groupId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.alreadyMemberFailure(groupId: $groupId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyMemberFailureImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlreadyMemberFailureImplCopyWith<_$AlreadyMemberFailureImpl>
      get copyWith =>
          __$$AlreadyMemberFailureImplCopyWithImpl<_$AlreadyMemberFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return alreadyMemberFailure(groupId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return alreadyMemberFailure?.call(groupId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (alreadyMemberFailure != null) {
      return alreadyMemberFailure(groupId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return alreadyMemberFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return alreadyMemberFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (alreadyMemberFailure != null) {
      return alreadyMemberFailure(this);
    }
    return orElse();
  }
}

abstract class AlreadyMemberFailure implements Failure {
  const factory AlreadyMemberFailure(
      {required final String groupId,
      required final String userId}) = _$AlreadyMemberFailureImpl;

  String get groupId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlreadyMemberFailureImplCopyWith<_$AlreadyMemberFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotMemberFailureImplCopyWith<$Res> {
  factory _$$NotMemberFailureImplCopyWith(_$NotMemberFailureImpl value,
          $Res Function(_$NotMemberFailureImpl) then) =
      __$$NotMemberFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId, String userId});
}

/// @nodoc
class __$$NotMemberFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotMemberFailureImpl>
    implements _$$NotMemberFailureImplCopyWith<$Res> {
  __$$NotMemberFailureImplCopyWithImpl(_$NotMemberFailureImpl _value,
      $Res Function(_$NotMemberFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userId = null,
  }) {
    return _then(_$NotMemberFailureImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotMemberFailureImpl implements NotMemberFailure {
  const _$NotMemberFailureImpl({required this.groupId, required this.userId});

  @override
  final String groupId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.notMemberFailure(groupId: $groupId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotMemberFailureImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotMemberFailureImplCopyWith<_$NotMemberFailureImpl> get copyWith =>
      __$$NotMemberFailureImplCopyWithImpl<_$NotMemberFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return notMemberFailure(groupId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return notMemberFailure?.call(groupId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (notMemberFailure != null) {
      return notMemberFailure(groupId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return notMemberFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return notMemberFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (notMemberFailure != null) {
      return notMemberFailure(this);
    }
    return orElse();
  }
}

abstract class NotMemberFailure implements Failure {
  const factory NotMemberFailure(
      {required final String groupId,
      required final String userId}) = _$NotMemberFailureImpl;

  String get groupId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotMemberFailureImplCopyWith<_$NotMemberFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsufficientPermissionsFailureImplCopyWith<$Res> {
  factory _$$InsufficientPermissionsFailureImplCopyWith(
          _$InsufficientPermissionsFailureImpl value,
          $Res Function(_$InsufficientPermissionsFailureImpl) then) =
      __$$InsufficientPermissionsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String requiredPermission});
}

/// @nodoc
class __$$InsufficientPermissionsFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InsufficientPermissionsFailureImpl>
    implements _$$InsufficientPermissionsFailureImplCopyWith<$Res> {
  __$$InsufficientPermissionsFailureImplCopyWithImpl(
      _$InsufficientPermissionsFailureImpl _value,
      $Res Function(_$InsufficientPermissionsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? requiredPermission = null,
  }) {
    return _then(_$InsufficientPermissionsFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      requiredPermission: null == requiredPermission
          ? _value.requiredPermission
          : requiredPermission // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InsufficientPermissionsFailureImpl
    implements InsufficientPermissionsFailure {
  const _$InsufficientPermissionsFailureImpl(
      {required this.message, required this.requiredPermission});

  @override
  final String message;
  @override
  final String requiredPermission;

  @override
  String toString() {
    return 'Failure.insufficientPermissionsFailure(message: $message, requiredPermission: $requiredPermission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientPermissionsFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requiredPermission, requiredPermission) ||
                other.requiredPermission == requiredPermission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, requiredPermission);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsufficientPermissionsFailureImplCopyWith<
          _$InsufficientPermissionsFailureImpl>
      get copyWith => __$$InsufficientPermissionsFailureImplCopyWithImpl<
          _$InsufficientPermissionsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return insufficientPermissionsFailure(message, requiredPermission);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return insufficientPermissionsFailure?.call(message, requiredPermission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (insufficientPermissionsFailure != null) {
      return insufficientPermissionsFailure(message, requiredPermission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return insufficientPermissionsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return insufficientPermissionsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (insufficientPermissionsFailure != null) {
      return insufficientPermissionsFailure(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissionsFailure implements Failure {
  const factory InsufficientPermissionsFailure(
          {required final String message,
          required final String requiredPermission}) =
      _$InsufficientPermissionsFailureImpl;

  String get message;
  String get requiredPermission;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsufficientPermissionsFailureImplCopyWith<
          _$InsufficientPermissionsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventNotFoundFailureImplCopyWith<$Res> {
  factory _$$EventNotFoundFailureImplCopyWith(_$EventNotFoundFailureImpl value,
          $Res Function(_$EventNotFoundFailureImpl) then) =
      __$$EventNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$EventNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$EventNotFoundFailureImpl>
    implements _$$EventNotFoundFailureImplCopyWith<$Res> {
  __$$EventNotFoundFailureImplCopyWithImpl(_$EventNotFoundFailureImpl _value,
      $Res Function(_$EventNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$EventNotFoundFailureImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventNotFoundFailureImpl implements EventNotFoundFailure {
  const _$EventNotFoundFailureImpl({required this.eventId});

  @override
  final String eventId;

  @override
  String toString() {
    return 'Failure.eventNotFoundFailure(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventNotFoundFailureImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventNotFoundFailureImplCopyWith<_$EventNotFoundFailureImpl>
      get copyWith =>
          __$$EventNotFoundFailureImplCopyWithImpl<_$EventNotFoundFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return eventNotFoundFailure(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return eventNotFoundFailure?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (eventNotFoundFailure != null) {
      return eventNotFoundFailure(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return eventNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return eventNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (eventNotFoundFailure != null) {
      return eventNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class EventNotFoundFailure implements Failure {
  const factory EventNotFoundFailure({required final String eventId}) =
      _$EventNotFoundFailureImpl;

  String get eventId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventNotFoundFailureImplCopyWith<_$EventNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventFullFailureImplCopyWith<$Res> {
  factory _$$EventFullFailureImplCopyWith(_$EventFullFailureImpl value,
          $Res Function(_$EventFullFailureImpl) then) =
      __$$EventFullFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, int maxParticipants});
}

/// @nodoc
class __$$EventFullFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$EventFullFailureImpl>
    implements _$$EventFullFailureImplCopyWith<$Res> {
  __$$EventFullFailureImplCopyWithImpl(_$EventFullFailureImpl _value,
      $Res Function(_$EventFullFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? maxParticipants = null,
  }) {
    return _then(_$EventFullFailureImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EventFullFailureImpl implements EventFullFailure {
  const _$EventFullFailureImpl(
      {required this.eventId, required this.maxParticipants});

  @override
  final String eventId;
  @override
  final int maxParticipants;

  @override
  String toString() {
    return 'Failure.eventFullFailure(eventId: $eventId, maxParticipants: $maxParticipants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFullFailureImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, maxParticipants);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFullFailureImplCopyWith<_$EventFullFailureImpl> get copyWith =>
      __$$EventFullFailureImplCopyWithImpl<_$EventFullFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return eventFullFailure(eventId, maxParticipants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return eventFullFailure?.call(eventId, maxParticipants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (eventFullFailure != null) {
      return eventFullFailure(eventId, maxParticipants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return eventFullFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return eventFullFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (eventFullFailure != null) {
      return eventFullFailure(this);
    }
    return orElse();
  }
}

abstract class EventFullFailure implements Failure {
  const factory EventFullFailure(
      {required final String eventId,
      required final int maxParticipants}) = _$EventFullFailureImpl;

  String get eventId;
  int get maxParticipants;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventFullFailureImplCopyWith<_$EventFullFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlreadyRegisteredFailureImplCopyWith<$Res> {
  factory _$$AlreadyRegisteredFailureImplCopyWith(
          _$AlreadyRegisteredFailureImpl value,
          $Res Function(_$AlreadyRegisteredFailureImpl) then) =
      __$$AlreadyRegisteredFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$AlreadyRegisteredFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AlreadyRegisteredFailureImpl>
    implements _$$AlreadyRegisteredFailureImplCopyWith<$Res> {
  __$$AlreadyRegisteredFailureImplCopyWithImpl(
      _$AlreadyRegisteredFailureImpl _value,
      $Res Function(_$AlreadyRegisteredFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$AlreadyRegisteredFailureImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AlreadyRegisteredFailureImpl implements AlreadyRegisteredFailure {
  const _$AlreadyRegisteredFailureImpl(
      {required this.eventId, required this.userId});

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.alreadyRegisteredFailure(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyRegisteredFailureImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlreadyRegisteredFailureImplCopyWith<_$AlreadyRegisteredFailureImpl>
      get copyWith => __$$AlreadyRegisteredFailureImplCopyWithImpl<
          _$AlreadyRegisteredFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return alreadyRegisteredFailure(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return alreadyRegisteredFailure?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (alreadyRegisteredFailure != null) {
      return alreadyRegisteredFailure(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return alreadyRegisteredFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return alreadyRegisteredFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (alreadyRegisteredFailure != null) {
      return alreadyRegisteredFailure(this);
    }
    return orElse();
  }
}

abstract class AlreadyRegisteredFailure implements Failure {
  const factory AlreadyRegisteredFailure(
      {required final String eventId,
      required final String userId}) = _$AlreadyRegisteredFailureImpl;

  String get eventId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlreadyRegisteredFailureImplCopyWith<_$AlreadyRegisteredFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotRegisteredFailureImplCopyWith<$Res> {
  factory _$$NotRegisteredFailureImplCopyWith(_$NotRegisteredFailureImpl value,
          $Res Function(_$NotRegisteredFailureImpl) then) =
      __$$NotRegisteredFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$NotRegisteredFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotRegisteredFailureImpl>
    implements _$$NotRegisteredFailureImplCopyWith<$Res> {
  __$$NotRegisteredFailureImplCopyWithImpl(_$NotRegisteredFailureImpl _value,
      $Res Function(_$NotRegisteredFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$NotRegisteredFailureImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotRegisteredFailureImpl implements NotRegisteredFailure {
  const _$NotRegisteredFailureImpl(
      {required this.eventId, required this.userId});

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.notRegisteredFailure(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotRegisteredFailureImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotRegisteredFailureImplCopyWith<_$NotRegisteredFailureImpl>
      get copyWith =>
          __$$NotRegisteredFailureImplCopyWithImpl<_$NotRegisteredFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return notRegisteredFailure(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return notRegisteredFailure?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (notRegisteredFailure != null) {
      return notRegisteredFailure(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return notRegisteredFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return notRegisteredFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (notRegisteredFailure != null) {
      return notRegisteredFailure(this);
    }
    return orElse();
  }
}

abstract class NotRegisteredFailure implements Failure {
  const factory NotRegisteredFailure(
      {required final String eventId,
      required final String userId}) = _$NotRegisteredFailureImpl;

  String get eventId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotRegisteredFailureImplCopyWith<_$NotRegisteredFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AchievementNotFoundFailureImplCopyWith<$Res> {
  factory _$$AchievementNotFoundFailureImplCopyWith(
          _$AchievementNotFoundFailureImpl value,
          $Res Function(_$AchievementNotFoundFailureImpl) then) =
      __$$AchievementNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String achievementId});
}

/// @nodoc
class __$$AchievementNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AchievementNotFoundFailureImpl>
    implements _$$AchievementNotFoundFailureImplCopyWith<$Res> {
  __$$AchievementNotFoundFailureImplCopyWithImpl(
      _$AchievementNotFoundFailureImpl _value,
      $Res Function(_$AchievementNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievementId = null,
  }) {
    return _then(_$AchievementNotFoundFailureImpl(
      achievementId: null == achievementId
          ? _value.achievementId
          : achievementId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AchievementNotFoundFailureImpl implements AchievementNotFoundFailure {
  const _$AchievementNotFoundFailureImpl({required this.achievementId});

  @override
  final String achievementId;

  @override
  String toString() {
    return 'Failure.achievementNotFoundFailure(achievementId: $achievementId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementNotFoundFailureImpl &&
            (identical(other.achievementId, achievementId) ||
                other.achievementId == achievementId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, achievementId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementNotFoundFailureImplCopyWith<_$AchievementNotFoundFailureImpl>
      get copyWith => __$$AchievementNotFoundFailureImplCopyWithImpl<
          _$AchievementNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return achievementNotFoundFailure(achievementId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return achievementNotFoundFailure?.call(achievementId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (achievementNotFoundFailure != null) {
      return achievementNotFoundFailure(achievementId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return achievementNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return achievementNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (achievementNotFoundFailure != null) {
      return achievementNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class AchievementNotFoundFailure implements Failure {
  const factory AchievementNotFoundFailure(
      {required final String achievementId}) = _$AchievementNotFoundFailureImpl;

  String get achievementId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementNotFoundFailureImplCopyWith<_$AchievementNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AchievementAlreadyUnlockedFailureImplCopyWith<$Res> {
  factory _$$AchievementAlreadyUnlockedFailureImplCopyWith(
          _$AchievementAlreadyUnlockedFailureImpl value,
          $Res Function(_$AchievementAlreadyUnlockedFailureImpl) then) =
      __$$AchievementAlreadyUnlockedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String achievementId, String userId});
}

/// @nodoc
class __$$AchievementAlreadyUnlockedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AchievementAlreadyUnlockedFailureImpl>
    implements _$$AchievementAlreadyUnlockedFailureImplCopyWith<$Res> {
  __$$AchievementAlreadyUnlockedFailureImplCopyWithImpl(
      _$AchievementAlreadyUnlockedFailureImpl _value,
      $Res Function(_$AchievementAlreadyUnlockedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievementId = null,
    Object? userId = null,
  }) {
    return _then(_$AchievementAlreadyUnlockedFailureImpl(
      achievementId: null == achievementId
          ? _value.achievementId
          : achievementId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AchievementAlreadyUnlockedFailureImpl
    implements AchievementAlreadyUnlockedFailure {
  const _$AchievementAlreadyUnlockedFailureImpl(
      {required this.achievementId, required this.userId});

  @override
  final String achievementId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.achievementAlreadyUnlockedFailure(achievementId: $achievementId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementAlreadyUnlockedFailureImpl &&
            (identical(other.achievementId, achievementId) ||
                other.achievementId == achievementId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, achievementId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementAlreadyUnlockedFailureImplCopyWith<
          _$AchievementAlreadyUnlockedFailureImpl>
      get copyWith => __$$AchievementAlreadyUnlockedFailureImplCopyWithImpl<
          _$AchievementAlreadyUnlockedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return achievementAlreadyUnlockedFailure(achievementId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return achievementAlreadyUnlockedFailure?.call(achievementId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (achievementAlreadyUnlockedFailure != null) {
      return achievementAlreadyUnlockedFailure(achievementId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return achievementAlreadyUnlockedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return achievementAlreadyUnlockedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (achievementAlreadyUnlockedFailure != null) {
      return achievementAlreadyUnlockedFailure(this);
    }
    return orElse();
  }
}

abstract class AchievementAlreadyUnlockedFailure implements Failure {
  const factory AchievementAlreadyUnlockedFailure(
      {required final String achievementId,
      required final String userId}) = _$AchievementAlreadyUnlockedFailureImpl;

  String get achievementId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementAlreadyUnlockedFailureImplCopyWith<
          _$AchievementAlreadyUnlockedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaderboardNotFoundFailureImplCopyWith<$Res> {
  factory _$$LeaderboardNotFoundFailureImplCopyWith(
          _$LeaderboardNotFoundFailureImpl value,
          $Res Function(_$LeaderboardNotFoundFailureImpl) then) =
      __$$LeaderboardNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String leaderboardId});
}

/// @nodoc
class __$$LeaderboardNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LeaderboardNotFoundFailureImpl>
    implements _$$LeaderboardNotFoundFailureImplCopyWith<$Res> {
  __$$LeaderboardNotFoundFailureImplCopyWithImpl(
      _$LeaderboardNotFoundFailureImpl _value,
      $Res Function(_$LeaderboardNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboardId = null,
  }) {
    return _then(_$LeaderboardNotFoundFailureImpl(
      leaderboardId: null == leaderboardId
          ? _value.leaderboardId
          : leaderboardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LeaderboardNotFoundFailureImpl implements LeaderboardNotFoundFailure {
  const _$LeaderboardNotFoundFailureImpl({required this.leaderboardId});

  @override
  final String leaderboardId;

  @override
  String toString() {
    return 'Failure.leaderboardNotFoundFailure(leaderboardId: $leaderboardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardNotFoundFailureImpl &&
            (identical(other.leaderboardId, leaderboardId) ||
                other.leaderboardId == leaderboardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leaderboardId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardNotFoundFailureImplCopyWith<_$LeaderboardNotFoundFailureImpl>
      get copyWith => __$$LeaderboardNotFoundFailureImplCopyWithImpl<
          _$LeaderboardNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return leaderboardNotFoundFailure(leaderboardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return leaderboardNotFoundFailure?.call(leaderboardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (leaderboardNotFoundFailure != null) {
      return leaderboardNotFoundFailure(leaderboardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return leaderboardNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return leaderboardNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (leaderboardNotFoundFailure != null) {
      return leaderboardNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class LeaderboardNotFoundFailure implements Failure {
  const factory LeaderboardNotFoundFailure(
      {required final String leaderboardId}) = _$LeaderboardNotFoundFailureImpl;

  String get leaderboardId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardNotFoundFailureImplCopyWith<_$LeaderboardNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivityNotFoundFailureImplCopyWith<$Res> {
  factory _$$ActivityNotFoundFailureImplCopyWith(
          _$ActivityNotFoundFailureImpl value,
          $Res Function(_$ActivityNotFoundFailureImpl) then) =
      __$$ActivityNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String activityId});
}

/// @nodoc
class __$$ActivityNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ActivityNotFoundFailureImpl>
    implements _$$ActivityNotFoundFailureImplCopyWith<$Res> {
  __$$ActivityNotFoundFailureImplCopyWithImpl(
      _$ActivityNotFoundFailureImpl _value,
      $Res Function(_$ActivityNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
  }) {
    return _then(_$ActivityNotFoundFailureImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivityNotFoundFailureImpl implements ActivityNotFoundFailure {
  const _$ActivityNotFoundFailureImpl({required this.activityId});

  @override
  final String activityId;

  @override
  String toString() {
    return 'Failure.activityNotFoundFailure(activityId: $activityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityNotFoundFailureImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityNotFoundFailureImplCopyWith<_$ActivityNotFoundFailureImpl>
      get copyWith => __$$ActivityNotFoundFailureImplCopyWithImpl<
          _$ActivityNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return activityNotFoundFailure(activityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return activityNotFoundFailure?.call(activityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (activityNotFoundFailure != null) {
      return activityNotFoundFailure(activityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return activityNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return activityNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (activityNotFoundFailure != null) {
      return activityNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class ActivityNotFoundFailure implements Failure {
  const factory ActivityNotFoundFailure({required final String activityId}) =
      _$ActivityNotFoundFailureImpl;

  String get activityId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityNotFoundFailureImplCopyWith<_$ActivityNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlreadyLikedFailureImplCopyWith<$Res> {
  factory _$$AlreadyLikedFailureImplCopyWith(_$AlreadyLikedFailureImpl value,
          $Res Function(_$AlreadyLikedFailureImpl) then) =
      __$$AlreadyLikedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String activityId, String userId});
}

/// @nodoc
class __$$AlreadyLikedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AlreadyLikedFailureImpl>
    implements _$$AlreadyLikedFailureImplCopyWith<$Res> {
  __$$AlreadyLikedFailureImplCopyWithImpl(_$AlreadyLikedFailureImpl _value,
      $Res Function(_$AlreadyLikedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? userId = null,
  }) {
    return _then(_$AlreadyLikedFailureImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AlreadyLikedFailureImpl implements AlreadyLikedFailure {
  const _$AlreadyLikedFailureImpl(
      {required this.activityId, required this.userId});

  @override
  final String activityId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.alreadyLikedFailure(activityId: $activityId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyLikedFailureImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlreadyLikedFailureImplCopyWith<_$AlreadyLikedFailureImpl> get copyWith =>
      __$$AlreadyLikedFailureImplCopyWithImpl<_$AlreadyLikedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return alreadyLikedFailure(activityId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return alreadyLikedFailure?.call(activityId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (alreadyLikedFailure != null) {
      return alreadyLikedFailure(activityId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return alreadyLikedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return alreadyLikedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (alreadyLikedFailure != null) {
      return alreadyLikedFailure(this);
    }
    return orElse();
  }
}

abstract class AlreadyLikedFailure implements Failure {
  const factory AlreadyLikedFailure(
      {required final String activityId,
      required final String userId}) = _$AlreadyLikedFailureImpl;

  String get activityId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlreadyLikedFailureImplCopyWith<_$AlreadyLikedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotLikedFailureImplCopyWith<$Res> {
  factory _$$NotLikedFailureImplCopyWith(_$NotLikedFailureImpl value,
          $Res Function(_$NotLikedFailureImpl) then) =
      __$$NotLikedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String activityId, String userId});
}

/// @nodoc
class __$$NotLikedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotLikedFailureImpl>
    implements _$$NotLikedFailureImplCopyWith<$Res> {
  __$$NotLikedFailureImplCopyWithImpl(
      _$NotLikedFailureImpl _value, $Res Function(_$NotLikedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? userId = null,
  }) {
    return _then(_$NotLikedFailureImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotLikedFailureImpl implements NotLikedFailure {
  const _$NotLikedFailureImpl({required this.activityId, required this.userId});

  @override
  final String activityId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.notLikedFailure(activityId: $activityId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotLikedFailureImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityId, userId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotLikedFailureImplCopyWith<_$NotLikedFailureImpl> get copyWith =>
      __$$NotLikedFailureImplCopyWithImpl<_$NotLikedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return notLikedFailure(activityId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return notLikedFailure?.call(activityId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (notLikedFailure != null) {
      return notLikedFailure(activityId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return notLikedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return notLikedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (notLikedFailure != null) {
      return notLikedFailure(this);
    }
    return orElse();
  }
}

abstract class NotLikedFailure implements Failure {
  const factory NotLikedFailure(
      {required final String activityId,
      required final String userId}) = _$NotLikedFailureImpl;

  String get activityId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotLikedFailureImplCopyWith<_$NotLikedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlockedUserFailureImplCopyWith<$Res> {
  factory _$$BlockedUserFailureImplCopyWith(_$BlockedUserFailureImpl value,
          $Res Function(_$BlockedUserFailureImpl) then) =
      __$$BlockedUserFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String blockedUserId});
}

/// @nodoc
class __$$BlockedUserFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BlockedUserFailureImpl>
    implements _$$BlockedUserFailureImplCopyWith<$Res> {
  __$$BlockedUserFailureImplCopyWithImpl(_$BlockedUserFailureImpl _value,
      $Res Function(_$BlockedUserFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? blockedUserId = null,
  }) {
    return _then(_$BlockedUserFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      blockedUserId: null == blockedUserId
          ? _value.blockedUserId
          : blockedUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlockedUserFailureImpl implements BlockedUserFailure {
  const _$BlockedUserFailureImpl(
      {required this.message, required this.blockedUserId});

  @override
  final String message;
  @override
  final String blockedUserId;

  @override
  String toString() {
    return 'Failure.blockedUserFailure(message: $message, blockedUserId: $blockedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockedUserFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.blockedUserId, blockedUserId) ||
                other.blockedUserId == blockedUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, blockedUserId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockedUserFailureImplCopyWith<_$BlockedUserFailureImpl> get copyWith =>
      __$$BlockedUserFailureImplCopyWithImpl<_$BlockedUserFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return blockedUserFailure(message, blockedUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return blockedUserFailure?.call(message, blockedUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (blockedUserFailure != null) {
      return blockedUserFailure(message, blockedUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return blockedUserFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return blockedUserFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (blockedUserFailure != null) {
      return blockedUserFailure(this);
    }
    return orElse();
  }
}

abstract class BlockedUserFailure implements Failure {
  const factory BlockedUserFailure(
      {required final String message,
      required final String blockedUserId}) = _$BlockedUserFailureImpl;

  String get message;
  String get blockedUserId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockedUserFailureImplCopyWith<_$BlockedUserFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateLimitFailureImplCopyWith<$Res> {
  factory _$$RateLimitFailureImplCopyWith(_$RateLimitFailureImpl value,
          $Res Function(_$RateLimitFailureImpl) then) =
      __$$RateLimitFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, Duration cooldown});
}

/// @nodoc
class __$$RateLimitFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RateLimitFailureImpl>
    implements _$$RateLimitFailureImplCopyWith<$Res> {
  __$$RateLimitFailureImplCopyWithImpl(_$RateLimitFailureImpl _value,
      $Res Function(_$RateLimitFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? cooldown = null,
  }) {
    return _then(_$RateLimitFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      cooldown: null == cooldown
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$RateLimitFailureImpl implements RateLimitFailure {
  const _$RateLimitFailureImpl({required this.message, required this.cooldown});

  @override
  final String message;
  @override
  final Duration cooldown;

  @override
  String toString() {
    return 'Failure.rateLimitFailure(message: $message, cooldown: $cooldown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateLimitFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cooldown, cooldown) ||
                other.cooldown == cooldown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, cooldown);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateLimitFailureImplCopyWith<_$RateLimitFailureImpl> get copyWith =>
      __$$RateLimitFailureImplCopyWithImpl<_$RateLimitFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return rateLimitFailure(message, cooldown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return rateLimitFailure?.call(message, cooldown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (rateLimitFailure != null) {
      return rateLimitFailure(message, cooldown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return rateLimitFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return rateLimitFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (rateLimitFailure != null) {
      return rateLimitFailure(this);
    }
    return orElse();
  }
}

abstract class RateLimitFailure implements Failure {
  const factory RateLimitFailure(
      {required final String message,
      required final Duration cooldown}) = _$RateLimitFailureImpl;

  String get message;
  Duration get cooldown;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateLimitFailureImplCopyWith<_$RateLimitFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentModerationFailureImplCopyWith<$Res> {
  factory _$$ContentModerationFailureImplCopyWith(
          _$ContentModerationFailureImpl value,
          $Res Function(_$ContentModerationFailureImpl) then) =
      __$$ContentModerationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String reason});
}

/// @nodoc
class __$$ContentModerationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ContentModerationFailureImpl>
    implements _$$ContentModerationFailureImplCopyWith<$Res> {
  __$$ContentModerationFailureImplCopyWithImpl(
      _$ContentModerationFailureImpl _value,
      $Res Function(_$ContentModerationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? reason = null,
  }) {
    return _then(_$ContentModerationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentModerationFailureImpl implements ContentModerationFailure {
  const _$ContentModerationFailureImpl(
      {required this.message, required this.reason});

  @override
  final String message;
  @override
  final String reason;

  @override
  String toString() {
    return 'Failure.contentModerationFailure(message: $message, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentModerationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, reason);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentModerationFailureImplCopyWith<_$ContentModerationFailureImpl>
      get copyWith => __$$ContentModerationFailureImplCopyWithImpl<
          _$ContentModerationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String userId) profileNotFoundFailure,
    required TResult Function(String userId1, String userId2)
        connectionAlreadyExistsFailure,
    required TResult Function(String connectionId) connectionNotFoundFailure,
    required TResult Function(String message) selfConnectionFailure,
    required TResult Function(String challengeId) challengeNotFoundFailure,
    required TResult Function(String challengeId, int maxParticipants)
        challengeFullFailure,
    required TResult Function(String challengeId, String userId)
        alreadyParticipatingFailure,
    required TResult Function(String challengeId, String userId)
        notParticipatingFailure,
    required TResult Function(String challengeId, String status)
        challengeNotActiveFailure,
    required TResult Function(String groupId) groupNotFoundFailure,
    required TResult Function(String groupId, int maxMembers) groupFullFailure,
    required TResult Function(String groupId, String userId)
        alreadyMemberFailure,
    required TResult Function(String groupId, String userId) notMemberFailure,
    required TResult Function(String message, String requiredPermission)
        insufficientPermissionsFailure,
    required TResult Function(String eventId) eventNotFoundFailure,
    required TResult Function(String eventId, int maxParticipants)
        eventFullFailure,
    required TResult Function(String eventId, String userId)
        alreadyRegisteredFailure,
    required TResult Function(String eventId, String userId)
        notRegisteredFailure,
    required TResult Function(String achievementId) achievementNotFoundFailure,
    required TResult Function(String achievementId, String userId)
        achievementAlreadyUnlockedFailure,
    required TResult Function(String leaderboardId) leaderboardNotFoundFailure,
    required TResult Function(String activityId) activityNotFoundFailure,
    required TResult Function(String activityId, String userId)
        alreadyLikedFailure,
    required TResult Function(String activityId, String userId) notLikedFailure,
    required TResult Function(String message, String blockedUserId)
        blockedUserFailure,
    required TResult Function(String message, Duration cooldown)
        rateLimitFailure,
    required TResult Function(String message, String reason)
        contentModerationFailure,
  }) {
    return contentModerationFailure(message, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String userId)? profileNotFoundFailure,
    TResult? Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult? Function(String connectionId)? connectionNotFoundFailure,
    TResult? Function(String message)? selfConnectionFailure,
    TResult? Function(String challengeId)? challengeNotFoundFailure,
    TResult? Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult? Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult? Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult? Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult? Function(String groupId)? groupNotFoundFailure,
    TResult? Function(String groupId, int maxMembers)? groupFullFailure,
    TResult? Function(String groupId, String userId)? alreadyMemberFailure,
    TResult? Function(String groupId, String userId)? notMemberFailure,
    TResult? Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult? Function(String eventId)? eventNotFoundFailure,
    TResult? Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult? Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult? Function(String eventId, String userId)? notRegisteredFailure,
    TResult? Function(String achievementId)? achievementNotFoundFailure,
    TResult? Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult? Function(String activityId)? activityNotFoundFailure,
    TResult? Function(String activityId, String userId)? alreadyLikedFailure,
    TResult? Function(String activityId, String userId)? notLikedFailure,
    TResult? Function(String message, String blockedUserId)? blockedUserFailure,
    TResult? Function(String message, Duration cooldown)? rateLimitFailure,
    TResult? Function(String message, String reason)? contentModerationFailure,
  }) {
    return contentModerationFailure?.call(message, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String userId)? profileNotFoundFailure,
    TResult Function(String userId1, String userId2)?
        connectionAlreadyExistsFailure,
    TResult Function(String connectionId)? connectionNotFoundFailure,
    TResult Function(String message)? selfConnectionFailure,
    TResult Function(String challengeId)? challengeNotFoundFailure,
    TResult Function(String challengeId, int maxParticipants)?
        challengeFullFailure,
    TResult Function(String challengeId, String userId)?
        alreadyParticipatingFailure,
    TResult Function(String challengeId, String userId)?
        notParticipatingFailure,
    TResult Function(String challengeId, String status)?
        challengeNotActiveFailure,
    TResult Function(String groupId)? groupNotFoundFailure,
    TResult Function(String groupId, int maxMembers)? groupFullFailure,
    TResult Function(String groupId, String userId)? alreadyMemberFailure,
    TResult Function(String groupId, String userId)? notMemberFailure,
    TResult Function(String message, String requiredPermission)?
        insufficientPermissionsFailure,
    TResult Function(String eventId)? eventNotFoundFailure,
    TResult Function(String eventId, int maxParticipants)? eventFullFailure,
    TResult Function(String eventId, String userId)? alreadyRegisteredFailure,
    TResult Function(String eventId, String userId)? notRegisteredFailure,
    TResult Function(String achievementId)? achievementNotFoundFailure,
    TResult Function(String achievementId, String userId)?
        achievementAlreadyUnlockedFailure,
    TResult Function(String leaderboardId)? leaderboardNotFoundFailure,
    TResult Function(String activityId)? activityNotFoundFailure,
    TResult Function(String activityId, String userId)? alreadyLikedFailure,
    TResult Function(String activityId, String userId)? notLikedFailure,
    TResult Function(String message, String blockedUserId)? blockedUserFailure,
    TResult Function(String message, Duration cooldown)? rateLimitFailure,
    TResult Function(String message, String reason)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (contentModerationFailure != null) {
      return contentModerationFailure(message, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(ProfileNotFoundFailure value)
        profileNotFoundFailure,
    required TResult Function(ConnectionAlreadyExistsFailure value)
        connectionAlreadyExistsFailure,
    required TResult Function(ConnectionNotFoundFailure value)
        connectionNotFoundFailure,
    required TResult Function(SelfConnectionFailure value)
        selfConnectionFailure,
    required TResult Function(ChallengeNotFoundFailure value)
        challengeNotFoundFailure,
    required TResult Function(ChallengeFullFailure value) challengeFullFailure,
    required TResult Function(AlreadyParticipatingFailure value)
        alreadyParticipatingFailure,
    required TResult Function(NotParticipatingFailure value)
        notParticipatingFailure,
    required TResult Function(ChallengeNotActiveFailure value)
        challengeNotActiveFailure,
    required TResult Function(GroupNotFoundFailure value) groupNotFoundFailure,
    required TResult Function(GroupFullFailure value) groupFullFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(InsufficientPermissionsFailure value)
        insufficientPermissionsFailure,
    required TResult Function(EventNotFoundFailure value) eventNotFoundFailure,
    required TResult Function(EventFullFailure value) eventFullFailure,
    required TResult Function(AlreadyRegisteredFailure value)
        alreadyRegisteredFailure,
    required TResult Function(NotRegisteredFailure value) notRegisteredFailure,
    required TResult Function(AchievementNotFoundFailure value)
        achievementNotFoundFailure,
    required TResult Function(AchievementAlreadyUnlockedFailure value)
        achievementAlreadyUnlockedFailure,
    required TResult Function(LeaderboardNotFoundFailure value)
        leaderboardNotFoundFailure,
    required TResult Function(ActivityNotFoundFailure value)
        activityNotFoundFailure,
    required TResult Function(AlreadyLikedFailure value) alreadyLikedFailure,
    required TResult Function(NotLikedFailure value) notLikedFailure,
    required TResult Function(BlockedUserFailure value) blockedUserFailure,
    required TResult Function(RateLimitFailure value) rateLimitFailure,
    required TResult Function(ContentModerationFailure value)
        contentModerationFailure,
  }) {
    return contentModerationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult? Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult? Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult? Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult? Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult? Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult? Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult? Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult? Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult? Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult? Function(GroupFullFailure value)? groupFullFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult? Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult? Function(EventFullFailure value)? eventFullFailure,
    TResult? Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult? Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult? Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult? Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult? Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult? Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult? Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult? Function(NotLikedFailure value)? notLikedFailure,
    TResult? Function(BlockedUserFailure value)? blockedUserFailure,
    TResult? Function(RateLimitFailure value)? rateLimitFailure,
    TResult? Function(ContentModerationFailure value)? contentModerationFailure,
  }) {
    return contentModerationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(ProfileNotFoundFailure value)? profileNotFoundFailure,
    TResult Function(ConnectionAlreadyExistsFailure value)?
        connectionAlreadyExistsFailure,
    TResult Function(ConnectionNotFoundFailure value)?
        connectionNotFoundFailure,
    TResult Function(SelfConnectionFailure value)? selfConnectionFailure,
    TResult Function(ChallengeNotFoundFailure value)? challengeNotFoundFailure,
    TResult Function(ChallengeFullFailure value)? challengeFullFailure,
    TResult Function(AlreadyParticipatingFailure value)?
        alreadyParticipatingFailure,
    TResult Function(NotParticipatingFailure value)? notParticipatingFailure,
    TResult Function(ChallengeNotActiveFailure value)?
        challengeNotActiveFailure,
    TResult Function(GroupNotFoundFailure value)? groupNotFoundFailure,
    TResult Function(GroupFullFailure value)? groupFullFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(InsufficientPermissionsFailure value)?
        insufficientPermissionsFailure,
    TResult Function(EventNotFoundFailure value)? eventNotFoundFailure,
    TResult Function(EventFullFailure value)? eventFullFailure,
    TResult Function(AlreadyRegisteredFailure value)? alreadyRegisteredFailure,
    TResult Function(NotRegisteredFailure value)? notRegisteredFailure,
    TResult Function(AchievementNotFoundFailure value)?
        achievementNotFoundFailure,
    TResult Function(AchievementAlreadyUnlockedFailure value)?
        achievementAlreadyUnlockedFailure,
    TResult Function(LeaderboardNotFoundFailure value)?
        leaderboardNotFoundFailure,
    TResult Function(ActivityNotFoundFailure value)? activityNotFoundFailure,
    TResult Function(AlreadyLikedFailure value)? alreadyLikedFailure,
    TResult Function(NotLikedFailure value)? notLikedFailure,
    TResult Function(BlockedUserFailure value)? blockedUserFailure,
    TResult Function(RateLimitFailure value)? rateLimitFailure,
    TResult Function(ContentModerationFailure value)? contentModerationFailure,
    required TResult orElse(),
  }) {
    if (contentModerationFailure != null) {
      return contentModerationFailure(this);
    }
    return orElse();
  }
}

abstract class ContentModerationFailure implements Failure {
  const factory ContentModerationFailure(
      {required final String message,
      required final String reason}) = _$ContentModerationFailureImpl;

  String get message;
  String get reason;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentModerationFailureImplCopyWith<_$ContentModerationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
