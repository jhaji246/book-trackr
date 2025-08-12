// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messaging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DirectMessage _$DirectMessageFromJson(Map<String, dynamic> json) {
  return _DirectMessage.fromJson(json);
}

/// @nodoc
mixin _$DirectMessage {
  /// Unique identifier for the message
  String get id => throw _privateConstructorUsedError;

  /// ID of the sender
  String get senderId => throw _privateConstructorUsedError;

  /// ID of the recipient
  String get recipientId => throw _privateConstructorUsedError;

  /// Message content
  String get content => throw _privateConstructorUsedError;

  /// Message type
  MessageType get type => throw _privateConstructorUsedError;

  /// Message creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Whether message has been read
  bool get isRead => throw _privateConstructorUsedError;

  /// Whether message has been delivered
  bool get isDelivered => throw _privateConstructorUsedError;

  /// Message status
  MessageStatus get status => throw _privateConstructorUsedError;

  /// Reply to message ID (if this is a reply)
  String? get replyToMessageId => throw _privateConstructorUsedError;

  /// Message attachments count
  int get attachmentCount => throw _privateConstructorUsedError;

  /// Message reactions count
  int get reactionCount => throw _privateConstructorUsedError;

  /// Serializes this DirectMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DirectMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectMessageCopyWith<DirectMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectMessageCopyWith<$Res> {
  factory $DirectMessageCopyWith(
          DirectMessage value, $Res Function(DirectMessage) then) =
      _$DirectMessageCopyWithImpl<$Res, DirectMessage>;
  @useResult
  $Res call(
      {String id,
      String senderId,
      String recipientId,
      String content,
      MessageType type,
      DateTime dateCreated,
      bool isRead,
      bool isDelivered,
      MessageStatus status,
      String? replyToMessageId,
      int attachmentCount,
      int reactionCount});
}

/// @nodoc
class _$DirectMessageCopyWithImpl<$Res, $Val extends DirectMessage>
    implements $DirectMessageCopyWith<$Res> {
  _$DirectMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirectMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? type = null,
    Object? dateCreated = null,
    Object? isRead = null,
    Object? isDelivered = null,
    Object? status = null,
    Object? replyToMessageId = freezed,
    Object? attachmentCount = null,
    Object? reactionCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelivered: null == isDelivered
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      replyToMessageId: freezed == replyToMessageId
          ? _value.replyToMessageId
          : replyToMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentCount: null == attachmentCount
          ? _value.attachmentCount
          : attachmentCount // ignore: cast_nullable_to_non_nullable
              as int,
      reactionCount: null == reactionCount
          ? _value.reactionCount
          : reactionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectMessageImplCopyWith<$Res>
    implements $DirectMessageCopyWith<$Res> {
  factory _$$DirectMessageImplCopyWith(
          _$DirectMessageImpl value, $Res Function(_$DirectMessageImpl) then) =
      __$$DirectMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String senderId,
      String recipientId,
      String content,
      MessageType type,
      DateTime dateCreated,
      bool isRead,
      bool isDelivered,
      MessageStatus status,
      String? replyToMessageId,
      int attachmentCount,
      int reactionCount});
}

/// @nodoc
class __$$DirectMessageImplCopyWithImpl<$Res>
    extends _$DirectMessageCopyWithImpl<$Res, _$DirectMessageImpl>
    implements _$$DirectMessageImplCopyWith<$Res> {
  __$$DirectMessageImplCopyWithImpl(
      _$DirectMessageImpl _value, $Res Function(_$DirectMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DirectMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? content = null,
    Object? type = null,
    Object? dateCreated = null,
    Object? isRead = null,
    Object? isDelivered = null,
    Object? status = null,
    Object? replyToMessageId = freezed,
    Object? attachmentCount = null,
    Object? reactionCount = null,
  }) {
    return _then(_$DirectMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelivered: null == isDelivered
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      replyToMessageId: freezed == replyToMessageId
          ? _value.replyToMessageId
          : replyToMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentCount: null == attachmentCount
          ? _value.attachmentCount
          : attachmentCount // ignore: cast_nullable_to_non_nullable
              as int,
      reactionCount: null == reactionCount
          ? _value.reactionCount
          : reactionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectMessageImpl implements _DirectMessage {
  const _$DirectMessageImpl(
      {required this.id,
      required this.senderId,
      required this.recipientId,
      required this.content,
      required this.type,
      required this.dateCreated,
      required this.isRead,
      required this.isDelivered,
      required this.status,
      this.replyToMessageId,
      required this.attachmentCount,
      required this.reactionCount});

  factory _$DirectMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectMessageImplFromJson(json);

  /// Unique identifier for the message
  @override
  final String id;

  /// ID of the sender
  @override
  final String senderId;

  /// ID of the recipient
  @override
  final String recipientId;

  /// Message content
  @override
  final String content;

  /// Message type
  @override
  final MessageType type;

  /// Message creation date
  @override
  final DateTime dateCreated;

  /// Whether message has been read
  @override
  final bool isRead;

  /// Whether message has been delivered
  @override
  final bool isDelivered;

  /// Message status
  @override
  final MessageStatus status;

  /// Reply to message ID (if this is a reply)
  @override
  final String? replyToMessageId;

  /// Message attachments count
  @override
  final int attachmentCount;

  /// Message reactions count
  @override
  final int reactionCount;

  @override
  String toString() {
    return 'DirectMessage(id: $id, senderId: $senderId, recipientId: $recipientId, content: $content, type: $type, dateCreated: $dateCreated, isRead: $isRead, isDelivered: $isDelivered, status: $status, replyToMessageId: $replyToMessageId, attachmentCount: $attachmentCount, reactionCount: $reactionCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.isDelivered, isDelivered) ||
                other.isDelivered == isDelivered) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.replyToMessageId, replyToMessageId) ||
                other.replyToMessageId == replyToMessageId) &&
            (identical(other.attachmentCount, attachmentCount) ||
                other.attachmentCount == attachmentCount) &&
            (identical(other.reactionCount, reactionCount) ||
                other.reactionCount == reactionCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      senderId,
      recipientId,
      content,
      type,
      dateCreated,
      isRead,
      isDelivered,
      status,
      replyToMessageId,
      attachmentCount,
      reactionCount);

  /// Create a copy of DirectMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectMessageImplCopyWith<_$DirectMessageImpl> get copyWith =>
      __$$DirectMessageImplCopyWithImpl<_$DirectMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectMessageImplToJson(
      this,
    );
  }
}

abstract class _DirectMessage implements DirectMessage {
  const factory _DirectMessage(
      {required final String id,
      required final String senderId,
      required final String recipientId,
      required final String content,
      required final MessageType type,
      required final DateTime dateCreated,
      required final bool isRead,
      required final bool isDelivered,
      required final MessageStatus status,
      final String? replyToMessageId,
      required final int attachmentCount,
      required final int reactionCount}) = _$DirectMessageImpl;

  factory _DirectMessage.fromJson(Map<String, dynamic> json) =
      _$DirectMessageImpl.fromJson;

  /// Unique identifier for the message
  @override
  String get id;

  /// ID of the sender
  @override
  String get senderId;

  /// ID of the recipient
  @override
  String get recipientId;

  /// Message content
  @override
  String get content;

  /// Message type
  @override
  MessageType get type;

  /// Message creation date
  @override
  DateTime get dateCreated;

  /// Whether message has been read
  @override
  bool get isRead;

  /// Whether message has been delivered
  @override
  bool get isDelivered;

  /// Message status
  @override
  MessageStatus get status;

  /// Reply to message ID (if this is a reply)
  @override
  String? get replyToMessageId;

  /// Message attachments count
  @override
  int get attachmentCount;

  /// Message reactions count
  @override
  int get reactionCount;

  /// Create a copy of DirectMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectMessageImplCopyWith<_$DirectMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return _Conversation.fromJson(json);
}

/// @nodoc
mixin _$Conversation {
  /// Unique identifier for the conversation
  String get id => throw _privateConstructorUsedError;

  /// ID of the first user
  String get user1Id => throw _privateConstructorUsedError;

  /// ID of the second user
  String get user2Id => throw _privateConstructorUsedError;

  /// Last message content
  String? get lastMessageContent => throw _privateConstructorUsedError;

  /// Last message timestamp
  DateTime? get lastMessageTime => throw _privateConstructorUsedError;

  /// Number of unread messages for user1
  int get unreadCountUser1 => throw _privateConstructorUsedError;

  /// Number of unread messages for user2
  int get unreadCountUser2 => throw _privateConstructorUsedError;

  /// Conversation creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Last activity date
  DateTime get lastActivity => throw _privateConstructorUsedError;

  /// Whether conversation is active
  bool get isActive => throw _privateConstructorUsedError;

  /// Conversation participants
  List<String> get participants => throw _privateConstructorUsedError;

  /// Serializes this Conversation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res, Conversation>;
  @useResult
  $Res call(
      {String id,
      String user1Id,
      String user2Id,
      String? lastMessageContent,
      DateTime? lastMessageTime,
      int unreadCountUser1,
      int unreadCountUser2,
      DateTime dateCreated,
      DateTime lastActivity,
      bool isActive,
      List<String> participants});
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res, $Val extends Conversation>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1Id = null,
    Object? user2Id = null,
    Object? lastMessageContent = freezed,
    Object? lastMessageTime = freezed,
    Object? unreadCountUser1 = null,
    Object? unreadCountUser2 = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? isActive = null,
    Object? participants = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user1Id: null == user1Id
          ? _value.user1Id
          : user1Id // ignore: cast_nullable_to_non_nullable
              as String,
      user2Id: null == user2Id
          ? _value.user2Id
          : user2Id // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageContent: freezed == lastMessageContent
          ? _value.lastMessageContent
          : lastMessageContent // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTime: freezed == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unreadCountUser1: null == unreadCountUser1
          ? _value.unreadCountUser1
          : unreadCountUser1 // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCountUser2: null == unreadCountUser2
          ? _value.unreadCountUser2
          : unreadCountUser2 // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationImplCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$ConversationImplCopyWith(
          _$ConversationImpl value, $Res Function(_$ConversationImpl) then) =
      __$$ConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String user1Id,
      String user2Id,
      String? lastMessageContent,
      DateTime? lastMessageTime,
      int unreadCountUser1,
      int unreadCountUser2,
      DateTime dateCreated,
      DateTime lastActivity,
      bool isActive,
      List<String> participants});
}

/// @nodoc
class __$$ConversationImplCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res, _$ConversationImpl>
    implements _$$ConversationImplCopyWith<$Res> {
  __$$ConversationImplCopyWithImpl(
      _$ConversationImpl _value, $Res Function(_$ConversationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1Id = null,
    Object? user2Id = null,
    Object? lastMessageContent = freezed,
    Object? lastMessageTime = freezed,
    Object? unreadCountUser1 = null,
    Object? unreadCountUser2 = null,
    Object? dateCreated = null,
    Object? lastActivity = null,
    Object? isActive = null,
    Object? participants = null,
  }) {
    return _then(_$ConversationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user1Id: null == user1Id
          ? _value.user1Id
          : user1Id // ignore: cast_nullable_to_non_nullable
              as String,
      user2Id: null == user2Id
          ? _value.user2Id
          : user2Id // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageContent: freezed == lastMessageContent
          ? _value.lastMessageContent
          : lastMessageContent // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTime: freezed == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unreadCountUser1: null == unreadCountUser1
          ? _value.unreadCountUser1
          : unreadCountUser1 // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCountUser2: null == unreadCountUser2
          ? _value.unreadCountUser2
          : unreadCountUser2 // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationImpl implements _Conversation {
  const _$ConversationImpl(
      {required this.id,
      required this.user1Id,
      required this.user2Id,
      this.lastMessageContent,
      this.lastMessageTime,
      required this.unreadCountUser1,
      required this.unreadCountUser2,
      required this.dateCreated,
      required this.lastActivity,
      required this.isActive,
      required final List<String> participants})
      : _participants = participants;

  factory _$ConversationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationImplFromJson(json);

  /// Unique identifier for the conversation
  @override
  final String id;

  /// ID of the first user
  @override
  final String user1Id;

  /// ID of the second user
  @override
  final String user2Id;

  /// Last message content
  @override
  final String? lastMessageContent;

  /// Last message timestamp
  @override
  final DateTime? lastMessageTime;

  /// Number of unread messages for user1
  @override
  final int unreadCountUser1;

  /// Number of unread messages for user2
  @override
  final int unreadCountUser2;

  /// Conversation creation date
  @override
  final DateTime dateCreated;

  /// Last activity date
  @override
  final DateTime lastActivity;

  /// Whether conversation is active
  @override
  final bool isActive;

  /// Conversation participants
  final List<String> _participants;

  /// Conversation participants
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'Conversation(id: $id, user1Id: $user1Id, user2Id: $user2Id, lastMessageContent: $lastMessageContent, lastMessageTime: $lastMessageTime, unreadCountUser1: $unreadCountUser1, unreadCountUser2: $unreadCountUser2, dateCreated: $dateCreated, lastActivity: $lastActivity, isActive: $isActive, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user1Id, user1Id) || other.user1Id == user1Id) &&
            (identical(other.user2Id, user2Id) || other.user2Id == user2Id) &&
            (identical(other.lastMessageContent, lastMessageContent) ||
                other.lastMessageContent == lastMessageContent) &&
            (identical(other.lastMessageTime, lastMessageTime) ||
                other.lastMessageTime == lastMessageTime) &&
            (identical(other.unreadCountUser1, unreadCountUser1) ||
                other.unreadCountUser1 == unreadCountUser1) &&
            (identical(other.unreadCountUser2, unreadCountUser2) ||
                other.unreadCountUser2 == unreadCountUser2) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user1Id,
      user2Id,
      lastMessageContent,
      lastMessageTime,
      unreadCountUser1,
      unreadCountUser2,
      dateCreated,
      lastActivity,
      isActive,
      const DeepCollectionEquality().hash(_participants));

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationImplCopyWith<_$ConversationImpl> get copyWith =>
      __$$ConversationImplCopyWithImpl<_$ConversationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationImplToJson(
      this,
    );
  }
}

abstract class _Conversation implements Conversation {
  const factory _Conversation(
      {required final String id,
      required final String user1Id,
      required final String user2Id,
      final String? lastMessageContent,
      final DateTime? lastMessageTime,
      required final int unreadCountUser1,
      required final int unreadCountUser2,
      required final DateTime dateCreated,
      required final DateTime lastActivity,
      required final bool isActive,
      required final List<String> participants}) = _$ConversationImpl;

  factory _Conversation.fromJson(Map<String, dynamic> json) =
      _$ConversationImpl.fromJson;

  /// Unique identifier for the conversation
  @override
  String get id;

  /// ID of the first user
  @override
  String get user1Id;

  /// ID of the second user
  @override
  String get user2Id;

  /// Last message content
  @override
  String? get lastMessageContent;

  /// Last message timestamp
  @override
  DateTime? get lastMessageTime;

  /// Number of unread messages for user1
  @override
  int get unreadCountUser1;

  /// Number of unread messages for user2
  @override
  int get unreadCountUser2;

  /// Conversation creation date
  @override
  DateTime get dateCreated;

  /// Last activity date
  @override
  DateTime get lastActivity;

  /// Whether conversation is active
  @override
  bool get isActive;

  /// Conversation participants
  @override
  List<String> get participants;

  /// Create a copy of Conversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationImplCopyWith<_$ConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
