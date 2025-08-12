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
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
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
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
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
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
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
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
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
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
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
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
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
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
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
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
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
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
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
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
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
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
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
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
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
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
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
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
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
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
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
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
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
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
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
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
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
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
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
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
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
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
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
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
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
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
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
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
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
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
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
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
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
abstract class _$$MeetingNotFoundFailureImplCopyWith<$Res> {
  factory _$$MeetingNotFoundFailureImplCopyWith(
          _$MeetingNotFoundFailureImpl value,
          $Res Function(_$MeetingNotFoundFailureImpl) then) =
      __$$MeetingNotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String meetingId});
}

/// @nodoc
class __$$MeetingNotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$MeetingNotFoundFailureImpl>
    implements _$$MeetingNotFoundFailureImplCopyWith<$Res> {
  __$$MeetingNotFoundFailureImplCopyWithImpl(
      _$MeetingNotFoundFailureImpl _value,
      $Res Function(_$MeetingNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetingId = null,
  }) {
    return _then(_$MeetingNotFoundFailureImpl(
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MeetingNotFoundFailureImpl implements MeetingNotFoundFailure {
  const _$MeetingNotFoundFailureImpl({required this.meetingId});

  @override
  final String meetingId;

  @override
  String toString() {
    return 'Failure.meetingNotFoundFailure(meetingId: $meetingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingNotFoundFailureImpl &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetingId);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingNotFoundFailureImplCopyWith<_$MeetingNotFoundFailureImpl>
      get copyWith => __$$MeetingNotFoundFailureImplCopyWithImpl<
          _$MeetingNotFoundFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
  }) {
    return meetingNotFoundFailure(meetingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
  }) {
    return meetingNotFoundFailure?.call(meetingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
    required TResult orElse(),
  }) {
    if (meetingNotFoundFailure != null) {
      return meetingNotFoundFailure(meetingId);
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
  }) {
    return meetingNotFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
  }) {
    return meetingNotFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
    required TResult orElse(),
  }) {
    if (meetingNotFoundFailure != null) {
      return meetingNotFoundFailure(this);
    }
    return orElse();
  }
}

abstract class MeetingNotFoundFailure implements Failure {
  const factory MeetingNotFoundFailure({required final String meetingId}) =
      _$MeetingNotFoundFailureImpl;

  String get meetingId;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingNotFoundFailureImplCopyWith<_$MeetingNotFoundFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetingConflictFailureImplCopyWith<$Res> {
  factory _$$MeetingConflictFailureImplCopyWith(
          _$MeetingConflictFailureImpl value,
          $Res Function(_$MeetingConflictFailureImpl) then) =
      __$$MeetingConflictFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, DateTime? conflictingTime});
}

/// @nodoc
class __$$MeetingConflictFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$MeetingConflictFailureImpl>
    implements _$$MeetingConflictFailureImplCopyWith<$Res> {
  __$$MeetingConflictFailureImplCopyWithImpl(
      _$MeetingConflictFailureImpl _value,
      $Res Function(_$MeetingConflictFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? conflictingTime = freezed,
  }) {
    return _then(_$MeetingConflictFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      conflictingTime: freezed == conflictingTime
          ? _value.conflictingTime
          : conflictingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$MeetingConflictFailureImpl implements MeetingConflictFailure {
  const _$MeetingConflictFailureImpl(
      {required this.message, this.conflictingTime});

  @override
  final String message;
  @override
  final DateTime? conflictingTime;

  @override
  String toString() {
    return 'Failure.meetingConflictFailure(message: $message, conflictingTime: $conflictingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingConflictFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.conflictingTime, conflictingTime) ||
                other.conflictingTime == conflictingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, conflictingTime);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingConflictFailureImplCopyWith<_$MeetingConflictFailureImpl>
      get copyWith => __$$MeetingConflictFailureImplCopyWithImpl<
          _$MeetingConflictFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message, String? field)
        invalidInputFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
  }) {
    return meetingConflictFailure(message, conflictingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
  }) {
    return meetingConflictFailure?.call(message, conflictingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
    required TResult orElse(),
  }) {
    if (meetingConflictFailure != null) {
      return meetingConflictFailure(message, conflictingTime);
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
  }) {
    return meetingConflictFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
  }) {
    return meetingConflictFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
    required TResult orElse(),
  }) {
    if (meetingConflictFailure != null) {
      return meetingConflictFailure(this);
    }
    return orElse();
  }
}

abstract class MeetingConflictFailure implements Failure {
  const factory MeetingConflictFailure(
      {required final String message,
      final DateTime? conflictingTime}) = _$MeetingConflictFailureImpl;

  String get message;
  DateTime? get conflictingTime;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingConflictFailureImplCopyWith<_$MeetingConflictFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
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
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
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
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
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
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
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
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
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
abstract class _$$ReminderFailureImplCopyWith<$Res> {
  factory _$$ReminderFailureImplCopyWith(_$ReminderFailureImpl value,
          $Res Function(_$ReminderFailureImpl) then) =
      __$$ReminderFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? reminderType});
}

/// @nodoc
class __$$ReminderFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ReminderFailureImpl>
    implements _$$ReminderFailureImplCopyWith<$Res> {
  __$$ReminderFailureImplCopyWithImpl(
      _$ReminderFailureImpl _value, $Res Function(_$ReminderFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? reminderType = freezed,
  }) {
    return _then(_$ReminderFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      reminderType: freezed == reminderType
          ? _value.reminderType
          : reminderType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReminderFailureImpl implements ReminderFailure {
  const _$ReminderFailureImpl({required this.message, this.reminderType});

  @override
  final String message;
  @override
  final String? reminderType;

  @override
  String toString() {
    return 'Failure.reminderFailure(message: $message, reminderType: $reminderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reminderType, reminderType) ||
                other.reminderType == reminderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, reminderType);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderFailureImplCopyWith<_$ReminderFailureImpl> get copyWith =>
      __$$ReminderFailureImplCopyWithImpl<_$ReminderFailureImpl>(
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
    required TResult Function(String meetingId) meetingNotFoundFailure,
    required TResult Function(String message, DateTime? conflictingTime)
        meetingConflictFailure,
    required TResult Function(String message, String? requiredPermission)
        permissionFailure,
    required TResult Function(String message, String? reminderType)
        reminderFailure,
  }) {
    return reminderFailure(message, reminderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? networkFailure,
    TResult? Function(String message)? cacheFailure,
    TResult? Function(String message, String? field)? invalidInputFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String meetingId)? meetingNotFoundFailure,
    TResult? Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult? Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult? Function(String message, String? reminderType)? reminderFailure,
  }) {
    return reminderFailure?.call(message, reminderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message, String? field)? invalidInputFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String meetingId)? meetingNotFoundFailure,
    TResult Function(String message, DateTime? conflictingTime)?
        meetingConflictFailure,
    TResult Function(String message, String? requiredPermission)?
        permissionFailure,
    TResult Function(String message, String? reminderType)? reminderFailure,
    required TResult orElse(),
  }) {
    if (reminderFailure != null) {
      return reminderFailure(message, reminderType);
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
    required TResult Function(MeetingNotFoundFailure value)
        meetingNotFoundFailure,
    required TResult Function(MeetingConflictFailure value)
        meetingConflictFailure,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(ReminderFailure value) reminderFailure,
  }) {
    return reminderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(InvalidInputFailure value)? invalidInputFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult? Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(ReminderFailure value)? reminderFailure,
  }) {
    return reminderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(MeetingNotFoundFailure value)? meetingNotFoundFailure,
    TResult Function(MeetingConflictFailure value)? meetingConflictFailure,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(ReminderFailure value)? reminderFailure,
    required TResult orElse(),
  }) {
    if (reminderFailure != null) {
      return reminderFailure(this);
    }
    return orElse();
  }
}

abstract class ReminderFailure implements Failure {
  const factory ReminderFailure(
      {required final String message,
      final String? reminderType}) = _$ReminderFailureImpl;

  String get message;
  String? get reminderType;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReminderFailureImplCopyWith<_$ReminderFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
