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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
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
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
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
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
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
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
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
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
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
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
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
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
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
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
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
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
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
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
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
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
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
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
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
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
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
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
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
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
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
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
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
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
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
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
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
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
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
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
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
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
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
abstract class _$$CollaborativeListNotFoundFailureImplCopyWith<$Res> {
  factory _$$CollaborativeListNotFoundFailureImplCopyWith(
          _$CollaborativeListNotFoundFailureImpl value,
          $Res Function(_$CollaborativeListNotFoundFailureImpl) then) =
      __$$CollaborativeListNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listId});
}

/// @nodoc
class __$$CollaborativeListNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CollaborativeListNotFoundFailureImpl>
    implements _$$CollaborativeListNotFoundFailureImplCopyWith<$Res> {
  __$$CollaborativeListNotFoundFailureImplCopyWithImpl(
      _$CollaborativeListNotFoundFailureImpl _value,
      $Res Function(_$CollaborativeListNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
  }) {
    return _then(_$CollaborativeListNotFoundFailureImpl(
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CollaborativeListNotFoundFailureImpl
    implements CollaborativeListNotFoundFailure {
  const _$CollaborativeListNotFoundFailureImpl({required this.listId});

  @override
  final String listId;

  @override
  String toString() {
    return 'Failure.collaborativeListNotFoundFailure(listId: $listId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaborativeListNotFoundFailureImpl &&
            (identical(other.listId, listId) || other.listId == listId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaborativeListNotFoundFailureImplCopyWith<
          _$CollaborativeListNotFoundFailureImpl>
      get copyWith => __$$CollaborativeListNotFoundFailureImplCopyWithImpl<
          _$CollaborativeListNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return collaborativeListNotFoundFailure(listId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return collaborativeListNotFoundFailure?.call(listId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (collaborativeListNotFoundFailure != null) {
      return collaborativeListNotFoundFailure(listId);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) {
    return collaborativeListNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) {
    return collaborativeListNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
    required TResult orElse(),
  }) {
    if (collaborativeListNotFoundFailure != null) {
      return collaborativeListNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class CollaborativeListNotFoundFailure implements Failure {
  const factory CollaborativeListNotFoundFailure(
      {required final String listId}) = _$CollaborativeListNotFoundFailureImpl;

  String get listId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaborativeListNotFoundFailureImplCopyWith<
          _$CollaborativeListNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookNotFoundFailureImplCopyWith<$Res> {
  factory _$$BookNotFoundFailureImplCopyWith(_$BookNotFoundFailureImpl value,
          $Res Function(_$BookNotFoundFailureImpl) then) =
      __$$BookNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$BookNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BookNotFoundFailureImpl>
    implements _$$BookNotFoundFailureImplCopyWith<$Res> {
  __$$BookNotFoundFailureImplCopyWithImpl(_$BookNotFoundFailureImpl _value,
      $Res Function(_$BookNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$BookNotFoundFailureImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookNotFoundFailureImpl implements BookNotFoundFailure {
  const _$BookNotFoundFailureImpl({required this.bookId});

  @override
  final String bookId;

  @override
  String toString() {
    return 'Failure.bookNotFoundFailure(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookNotFoundFailureImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookNotFoundFailureImplCopyWith<_$BookNotFoundFailureImpl> get copyWith =>
      __$$BookNotFoundFailureImplCopyWithImpl<_$BookNotFoundFailureImpl>(
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return bookNotFoundFailure(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return bookNotFoundFailure?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (bookNotFoundFailure != null) {
      return bookNotFoundFailure(bookId);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) {
    return bookNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) {
    return bookNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
    required TResult orElse(),
  }) {
    if (bookNotFoundFailure != null) {
      return bookNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class BookNotFoundFailure implements Failure {
  const factory BookNotFoundFailure({required final String bookId}) =
      _$BookNotFoundFailureImpl;

  String get bookId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookNotFoundFailureImplCopyWith<_$BookNotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionFailureImplCopyWith<$Res> {
  factory _$$PermissionFailureImplCopyWith(_$PermissionFailureImpl value,
          $Res Function(_$PermissionFailureImpl) then) =
      __$$PermissionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? requiredPermission});
}

/// @nodoc
class __$$PermissionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PermissionFailureImpl>
    implements _$$PermissionFailureImplCopyWith<$Res> {
  __$$PermissionFailureImplCopyWithImpl(_$PermissionFailureImpl _value,
      $Res Function(_$PermissionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? requiredPermission = freezed,
  }) {
    return _then(_$PermissionFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      requiredPermission: freezed == requiredPermission
          ? _value.requiredPermission
          : requiredPermission // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PermissionFailureImpl implements PermissionFailure {
  const _$PermissionFailureImpl(
      {required this.message, this.requiredPermission});

  @override
  final String message;
  @override
  final String? requiredPermission;

  @override
  String toString() {
    return 'Failure.permissionFailure(message: $message, requiredPermission: $requiredPermission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionFailureImpl &&
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
  _$$PermissionFailureImplCopyWith<_$PermissionFailureImpl> get copyWith =>
      __$$PermissionFailureImplCopyWithImpl<_$PermissionFailureImpl>(
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return permissionFailure(message, requiredPermission);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return permissionFailure?.call(message, requiredPermission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (permissionFailure != null) {
      return permissionFailure(message, requiredPermission);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) {
    return permissionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) {
    return permissionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
    required TResult orElse(),
  }) {
    if (permissionFailure != null) {
      return permissionFailure(this);
    }
    return orElse();
  }
}

abstract class PermissionFailure implements Failure {
  const factory PermissionFailure(
      {required final String message,
      final String? requiredPermission}) = _$PermissionFailureImpl;

  String get message;
  String? get requiredPermission;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionFailureImplCopyWith<_$PermissionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemberLimitExceededFailureImplCopyWith<$Res> {
  factory _$$MemberLimitExceededFailureImplCopyWith(
          _$MemberLimitExceededFailureImpl value,
          $Res Function(_$MemberLimitExceededFailureImpl) then) =
      __$$MemberLimitExceededFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listId, int maxMembers});
}

/// @nodoc
class __$$MemberLimitExceededFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$MemberLimitExceededFailureImpl>
    implements _$$MemberLimitExceededFailureImplCopyWith<$Res> {
  __$$MemberLimitExceededFailureImplCopyWithImpl(
      _$MemberLimitExceededFailureImpl _value,
      $Res Function(_$MemberLimitExceededFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? maxMembers = null,
  }) {
    return _then(_$MemberLimitExceededFailureImpl(
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MemberLimitExceededFailureImpl implements MemberLimitExceededFailure {
  const _$MemberLimitExceededFailureImpl(
      {required this.listId, required this.maxMembers});

  @override
  final String listId;
  @override
  final int maxMembers;

  @override
  String toString() {
    return 'Failure.memberLimitExceededFailure(listId: $listId, maxMembers: $maxMembers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberLimitExceededFailureImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, maxMembers);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberLimitExceededFailureImplCopyWith<_$MemberLimitExceededFailureImpl>
      get copyWith => __$$MemberLimitExceededFailureImplCopyWithImpl<
          _$MemberLimitExceededFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return memberLimitExceededFailure(listId, maxMembers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return memberLimitExceededFailure?.call(listId, maxMembers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (memberLimitExceededFailure != null) {
      return memberLimitExceededFailure(listId, maxMembers);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) {
    return memberLimitExceededFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) {
    return memberLimitExceededFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
    required TResult orElse(),
  }) {
    if (memberLimitExceededFailure != null) {
      return memberLimitExceededFailure(this);
    }
    return orElse();
  }
}

abstract class MemberLimitExceededFailure implements Failure {
  const factory MemberLimitExceededFailure(
      {required final String listId,
      required final int maxMembers}) = _$MemberLimitExceededFailureImpl;

  String get listId;
  int get maxMembers;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberLimitExceededFailureImplCopyWith<_$MemberLimitExceededFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlreadyMemberFailureImplCopyWith<$Res> {
  factory _$$AlreadyMemberFailureImplCopyWith(_$AlreadyMemberFailureImpl value,
          $Res Function(_$AlreadyMemberFailureImpl) then) =
      __$$AlreadyMemberFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listId, String userId});
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
    Object? listId = null,
    Object? userId = null,
  }) {
    return _then(_$AlreadyMemberFailureImpl(
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
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
      {required this.listId, required this.userId});

  @override
  final String listId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.alreadyMemberFailure(listId: $listId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyMemberFailureImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, userId);

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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return alreadyMemberFailure(listId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return alreadyMemberFailure?.call(listId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (alreadyMemberFailure != null) {
      return alreadyMemberFailure(listId, userId);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
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
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
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
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
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
      {required final String listId,
      required final String userId}) = _$AlreadyMemberFailureImpl;

  String get listId;
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
  $Res call({String listId, String userId});
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
    Object? listId = null,
    Object? userId = null,
  }) {
    return _then(_$NotMemberFailureImpl(
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
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
  const _$NotMemberFailureImpl({required this.listId, required this.userId});

  @override
  final String listId;
  @override
  final String userId;

  @override
  String toString() {
    return 'Failure.notMemberFailure(listId: $listId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotMemberFailureImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, userId);

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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return notMemberFailure(listId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return notMemberFailure?.call(listId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (notMemberFailure != null) {
      return notMemberFailure(listId, userId);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
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
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
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
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
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
      {required final String listId,
      required final String userId}) = _$NotMemberFailureImpl;

  String get listId;
  String get userId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotMemberFailureImplCopyWith<_$NotMemberFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscussionThreadNotFoundFailureImplCopyWith<$Res> {
  factory _$$DiscussionThreadNotFoundFailureImplCopyWith(
          _$DiscussionThreadNotFoundFailureImpl value,
          $Res Function(_$DiscussionThreadNotFoundFailureImpl) then) =
      __$$DiscussionThreadNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String threadId});
}

/// @nodoc
class __$$DiscussionThreadNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DiscussionThreadNotFoundFailureImpl>
    implements _$$DiscussionThreadNotFoundFailureImplCopyWith<$Res> {
  __$$DiscussionThreadNotFoundFailureImplCopyWithImpl(
      _$DiscussionThreadNotFoundFailureImpl _value,
      $Res Function(_$DiscussionThreadNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threadId = null,
  }) {
    return _then(_$DiscussionThreadNotFoundFailureImpl(
      threadId: null == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DiscussionThreadNotFoundFailureImpl
    implements DiscussionThreadNotFoundFailure {
  const _$DiscussionThreadNotFoundFailureImpl({required this.threadId});

  @override
  final String threadId;

  @override
  String toString() {
    return 'Failure.discussionThreadNotFoundFailure(threadId: $threadId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionThreadNotFoundFailureImpl &&
            (identical(other.threadId, threadId) ||
                other.threadId == threadId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, threadId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionThreadNotFoundFailureImplCopyWith<
          _$DiscussionThreadNotFoundFailureImpl>
      get copyWith => __$$DiscussionThreadNotFoundFailureImplCopyWithImpl<
          _$DiscussionThreadNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return discussionThreadNotFoundFailure(threadId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return discussionThreadNotFoundFailure?.call(threadId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (discussionThreadNotFoundFailure != null) {
      return discussionThreadNotFoundFailure(threadId);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) {
    return discussionThreadNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) {
    return discussionThreadNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
    required TResult orElse(),
  }) {
    if (discussionThreadNotFoundFailure != null) {
      return discussionThreadNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class DiscussionThreadNotFoundFailure implements Failure {
  const factory DiscussionThreadNotFoundFailure(
      {required final String threadId}) = _$DiscussionThreadNotFoundFailureImpl;

  String get threadId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionThreadNotFoundFailureImplCopyWith<
          _$DiscussionThreadNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplyNotFoundFailureImplCopyWith<$Res> {
  factory _$$ReplyNotFoundFailureImplCopyWith(_$ReplyNotFoundFailureImpl value,
          $Res Function(_$ReplyNotFoundFailureImpl) then) =
      __$$ReplyNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String replyId});
}

/// @nodoc
class __$$ReplyNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ReplyNotFoundFailureImpl>
    implements _$$ReplyNotFoundFailureImplCopyWith<$Res> {
  __$$ReplyNotFoundFailureImplCopyWithImpl(_$ReplyNotFoundFailureImpl _value,
      $Res Function(_$ReplyNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
  }) {
    return _then(_$ReplyNotFoundFailureImpl(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReplyNotFoundFailureImpl implements ReplyNotFoundFailure {
  const _$ReplyNotFoundFailureImpl({required this.replyId});

  @override
  final String replyId;

  @override
  String toString() {
    return 'Failure.replyNotFoundFailure(replyId: $replyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyNotFoundFailureImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, replyId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyNotFoundFailureImplCopyWith<_$ReplyNotFoundFailureImpl>
      get copyWith =>
          __$$ReplyNotFoundFailureImplCopyWithImpl<_$ReplyNotFoundFailureImpl>(
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return replyNotFoundFailure(replyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return replyNotFoundFailure?.call(replyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (replyNotFoundFailure != null) {
      return replyNotFoundFailure(replyId);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) {
    return replyNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) {
    return replyNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
    required TResult orElse(),
  }) {
    if (replyNotFoundFailure != null) {
      return replyNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class ReplyNotFoundFailure implements Failure {
  const factory ReplyNotFoundFailure({required final String replyId}) =
      _$ReplyNotFoundFailureImpl;

  String get replyId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyNotFoundFailureImplCopyWith<_$ReplyNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuplicateBookFailureImplCopyWith<$Res> {
  factory _$$DuplicateBookFailureImplCopyWith(_$DuplicateBookFailureImpl value,
          $Res Function(_$DuplicateBookFailureImpl) then) =
      __$$DuplicateBookFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listId, String bookId});
}

/// @nodoc
class __$$DuplicateBookFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DuplicateBookFailureImpl>
    implements _$$DuplicateBookFailureImplCopyWith<$Res> {
  __$$DuplicateBookFailureImplCopyWithImpl(_$DuplicateBookFailureImpl _value,
      $Res Function(_$DuplicateBookFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? bookId = null,
  }) {
    return _then(_$DuplicateBookFailureImpl(
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DuplicateBookFailureImpl implements DuplicateBookFailure {
  const _$DuplicateBookFailureImpl(
      {required this.listId, required this.bookId});

  @override
  final String listId;
  @override
  final String bookId;

  @override
  String toString() {
    return 'Failure.duplicateBookFailure(listId: $listId, bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicateBookFailureImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, bookId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicateBookFailureImplCopyWith<_$DuplicateBookFailureImpl>
      get copyWith =>
          __$$DuplicateBookFailureImplCopyWithImpl<_$DuplicateBookFailureImpl>(
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return duplicateBookFailure(listId, bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return duplicateBookFailure?.call(listId, bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (duplicateBookFailure != null) {
      return duplicateBookFailure(listId, bookId);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) {
    return duplicateBookFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) {
    return duplicateBookFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
    required TResult orElse(),
  }) {
    if (duplicateBookFailure != null) {
      return duplicateBookFailure(this);
    }
    return orElse();
  }
}

abstract class DuplicateBookFailure implements Failure {
  const factory DuplicateBookFailure(
      {required final String listId,
      required final String bookId}) = _$DuplicateBookFailureImpl;

  String get listId;
  String get bookId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuplicateBookFailureImplCopyWith<_$DuplicateBookFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListFullFailureImplCopyWith<$Res> {
  factory _$$ListFullFailureImplCopyWith(_$ListFullFailureImpl value,
          $Res Function(_$ListFullFailureImpl) then) =
      __$$ListFullFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listId, int maxBooks});
}

/// @nodoc
class __$$ListFullFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ListFullFailureImpl>
    implements _$$ListFullFailureImplCopyWith<$Res> {
  __$$ListFullFailureImplCopyWithImpl(
      _$ListFullFailureImpl _value, $Res Function(_$ListFullFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? maxBooks = null,
  }) {
    return _then(_$ListFullFailureImpl(
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      maxBooks: null == maxBooks
          ? _value.maxBooks
          : maxBooks // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListFullFailureImpl implements ListFullFailure {
  const _$ListFullFailureImpl({required this.listId, required this.maxBooks});

  @override
  final String listId;
  @override
  final int maxBooks;

  @override
  String toString() {
    return 'Failure.listFullFailure(listId: $listId, maxBooks: $maxBooks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListFullFailureImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.maxBooks, maxBooks) ||
                other.maxBooks == maxBooks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, maxBooks);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListFullFailureImplCopyWith<_$ListFullFailureImpl> get copyWith =>
      __$$ListFullFailureImplCopyWithImpl<_$ListFullFailureImpl>(
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
    required TResult Function(String listId) collaborativeListNotFoundFailure,
    required TResult Function(String bookId) bookNotFoundFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String listId, int maxMembers)
        memberLimitExceededFailure,
    required TResult Function(String listId, String userId)
        alreadyMemberFailure,
    required TResult Function(String listId, String userId) notMemberFailure,
    required TResult Function(String threadId) discussionThreadNotFoundFailure,
    required TResult Function(String replyId) replyNotFoundFailure,
    required TResult Function(String listId, String bookId)
        duplicateBookFailure,
    required TResult Function(String listId, int maxBooks) listFullFailure,
  }) {
    return listFullFailure(listId, maxBooks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String listId)? collaborativeListNotFoundFailure,
    TResult? Function(String bookId)? bookNotFoundFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String listId, int maxMembers)?
        memberLimitExceededFailure,
    TResult? Function(String listId, String userId)? alreadyMemberFailure,
    TResult? Function(String listId, String userId)? notMemberFailure,
    TResult? Function(String threadId)? discussionThreadNotFoundFailure,
    TResult? Function(String replyId)? replyNotFoundFailure,
    TResult? Function(String listId, String bookId)? duplicateBookFailure,
    TResult? Function(String listId, int maxBooks)? listFullFailure,
  }) {
    return listFullFailure?.call(listId, maxBooks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String listId)? collaborativeListNotFoundFailure,
    TResult Function(String bookId)? bookNotFoundFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String listId, int maxMembers)? memberLimitExceededFailure,
    TResult Function(String listId, String userId)? alreadyMemberFailure,
    TResult Function(String listId, String userId)? notMemberFailure,
    TResult Function(String threadId)? discussionThreadNotFoundFailure,
    TResult Function(String replyId)? replyNotFoundFailure,
    TResult Function(String listId, String bookId)? duplicateBookFailure,
    TResult Function(String listId, int maxBooks)? listFullFailure,
    required TResult orElse(),
  }) {
    if (listFullFailure != null) {
      return listFullFailure(listId, maxBooks);
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
    required TResult Function(CollaborativeListNotFoundFailure value)
        collaborativeListNotFoundFailure,
    required TResult Function(BookNotFoundFailure value) bookNotFoundFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(MemberLimitExceededFailure value)
        memberLimitExceededFailure,
    required TResult Function(AlreadyMemberFailure value) alreadyMemberFailure,
    required TResult Function(NotMemberFailure value) notMemberFailure,
    required TResult Function(DiscussionThreadNotFoundFailure value)
        discussionThreadNotFoundFailure,
    required TResult Function(ReplyNotFoundFailure value) replyNotFoundFailure,
    required TResult Function(DuplicateBookFailure value) duplicateBookFailure,
    required TResult Function(ListFullFailure value) listFullFailure,
  }) {
    return listFullFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult? Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult? Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult? Function(NotMemberFailure value)? notMemberFailure,
    TResult? Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult? Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult? Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult? Function(ListFullFailure value)? listFullFailure,
  }) {
    return listFullFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(CollaborativeListNotFoundFailure value)?
        collaborativeListNotFoundFailure,
    TResult Function(BookNotFoundFailure value)? bookNotFoundFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(MemberLimitExceededFailure value)?
        memberLimitExceededFailure,
    TResult Function(AlreadyMemberFailure value)? alreadyMemberFailure,
    TResult Function(NotMemberFailure value)? notMemberFailure,
    TResult Function(DiscussionThreadNotFoundFailure value)?
        discussionThreadNotFoundFailure,
    TResult Function(ReplyNotFoundFailure value)? replyNotFoundFailure,
    TResult Function(DuplicateBookFailure value)? duplicateBookFailure,
    TResult Function(ListFullFailure value)? listFullFailure,
    required TResult orElse(),
  }) {
    if (listFullFailure != null) {
      return listFullFailure(this);
    }
    return orElse();
  }
}

abstract class ListFullFailure implements Failure {
  const factory ListFullFailure(
      {required final String listId,
      required final int maxBooks}) = _$ListFullFailureImpl;

  String get listId;
  int get maxBooks;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListFullFailureImplCopyWith<_$ListFullFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
