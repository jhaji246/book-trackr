import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base failure class for the auth feature
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

  const factory Failure.invalidCredentialsFailure({
    required String message,
  }) = InvalidCredentialsFailure;

  const factory Failure.emailAlreadyInUseFailure({
    required String message,
  }) = EmailAlreadyInUseFailure;

  const factory Failure.weakPasswordFailure({
    required String message,
  }) = WeakPasswordFailure;

  const factory Failure.userNotFoundFailure({
    required String message,
  }) = UserNotFoundFailure;

  const factory Failure.tooManyRequestsFailure({
    required String message,
  }) = TooManyRequestsFailure;

  const factory Failure.emailNotVerifiedFailure({
    required String message,
  }) = EmailNotVerifiedFailure;

  const factory Failure.accountDisabledFailure({
    required String message,
  }) = AccountDisabledFailure;

  const factory Failure.operationNotAllowedFailure({
    required String message,
  }) = OperationNotAllowedFailure;

  const factory Failure.invalidEmailFailure({
    required String message,
  }) = InvalidEmailFailure;

  const factory Failure.requiresRecentLoginFailure({
    required String message,
  }) = RequiresRecentLoginFailure;
}
