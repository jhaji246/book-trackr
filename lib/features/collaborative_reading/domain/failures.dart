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

/// Collaborative list not found failures
class CollaborativeListNotFoundFailure extends Failure {
  const CollaborativeListNotFoundFailure({required super.listId});
}

/// Book not found failures
class BookNotFoundFailure extends Failure {
  const BookNotFoundFailure({required super.bookId});
}

/// Permission-related failures
class PermissionFailure extends Failure {
  const PermissionFailure({
    required super.message,
    this.requiredPermission,
  });
}

/// Member limit exceeded failures
class MemberLimitExceededFailure extends Failure {
  const MemberLimitExceededFailure({
    required super.listId,
    this.maxMembers,
  });
}

/// Already member failures
class AlreadyMemberFailure extends Failure {
  const AlreadyMemberFailure({
    required super.listId,
    required super.userId,
  });
}

/// Not member failures
class NotMemberFailure extends Failure {
  const NotMemberFailure({
    required super.listId,
    required super.userId,
  });
}

/// Discussion thread not found failures
class DiscussionThreadNotFoundFailure extends Failure {
  const DiscussionThreadNotFoundFailure({required super.threadId});
}

/// Reply not found failures
class ReplyNotFoundFailure extends Failure {
  const ReplyNotFoundFailure({required super.replyId});
}

/// Duplicate book failures
class DuplicateBookFailure extends Failure {
  const DuplicateBookFailure({
    required super.listId,
    required super.bookId,
  });
}

/// List full failures
class ListFullFailure extends Failure {
  const ListFullFailure({
    required super.listId,
    this.maxBooks,
  });
}
