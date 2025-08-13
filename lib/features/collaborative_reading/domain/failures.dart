import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base failure class for the collaborative reading feature
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

  const factory Failure.collaborativeListNotFoundFailure({
    required String listId,
  }) = CollaborativeListNotFoundFailure;

  const factory Failure.bookNotFoundFailure({
    required String bookId,
  }) = BookNotFoundFailure;

  const factory Failure.permissionFailure({
    required String message,
    String? requiredPermission,
  }) = PermissionFailure;

  const factory Failure.memberLimitExceededFailure({
    required String listId,
    required int maxMembers,
  }) = MemberLimitExceededFailure;

  const factory Failure.alreadyMemberFailure({
    required String listId,
    required String userId,
  }) = AlreadyMemberFailure;

  const factory Failure.notMemberFailure({
    required String listId,
    required String userId,
  }) = NotMemberFailure;

  const factory Failure.discussionThreadNotFoundFailure({
    required String threadId,
  }) = DiscussionThreadNotFoundFailure;

  const factory Failure.replyNotFoundFailure({
    required String replyId,
  }) = ReplyNotFoundFailure;

  const factory Failure.duplicateBookFailure({
    required String listId,
    required String bookId,
  }) = DuplicateBookFailure;

  const factory Failure.listFullFailure({
    required String listId,
    required int maxBooks,
  }) = ListFullFailure;
}
