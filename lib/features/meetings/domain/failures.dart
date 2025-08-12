import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base failure class for the meetings feature
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

  const factory Failure.meetingNotFoundFailure({
    required String meetingId,
  }) = MeetingNotFoundFailure;

  const factory Failure.meetingConflictFailure({
    required String message,
    DateTime? conflictingTime,
  }) = MeetingConflictFailure;

  const factory Failure.permissionFailure({
    required String message,
    String? requiredPermission,
  }) = PermissionFailure;

  const factory Failure.reminderFailure({
    required String message,
    String? reminderType,
  }) = ReminderFailure;
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

/// Meeting not found failures
class MeetingNotFoundFailure extends Failure {
  const MeetingNotFoundFailure({required super.meetingId});
}

/// Meeting scheduling conflict failures
class MeetingConflictFailure extends Failure {
  const MeetingConflictFailure({
    required super.message,
    this.conflictingTime,
  });
}

/// Permission-related failures
class PermissionFailure extends Failure {
  const PermissionFailure({
    required super.message,
    this.requiredPermission,
  });
}

/// Reminder-related failures
class ReminderFailure extends Failure {
  const ReminderFailure({
    required super.message,
    this.reminderType,
  });
}
