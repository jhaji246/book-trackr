// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messaging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DirectMessageImpl _$$DirectMessageImplFromJson(Map<String, dynamic> json) =>
    _$DirectMessageImpl(
      id: json['id'] as String,
      senderId: json['senderId'] as String,
      recipientId: json['recipientId'] as String,
      content: json['content'] as String,
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      isRead: json['isRead'] as bool,
      isDelivered: json['isDelivered'] as bool,
      status: $enumDecode(_$MessageStatusEnumMap, json['status']),
      replyToMessageId: json['replyToMessageId'] as String?,
      attachmentCount: (json['attachmentCount'] as num).toInt(),
      reactionCount: (json['reactionCount'] as num).toInt(),
    );

Map<String, dynamic> _$$DirectMessageImplToJson(_$DirectMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'recipientId': instance.recipientId,
      'content': instance.content,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'isRead': instance.isRead,
      'isDelivered': instance.isDelivered,
      'status': _$MessageStatusEnumMap[instance.status]!,
      'replyToMessageId': instance.replyToMessageId,
      'attachmentCount': instance.attachmentCount,
      'reactionCount': instance.reactionCount,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.link: 'link',
  MessageType.bookReference: 'bookReference',
  MessageType.system: 'system',
};

const _$MessageStatusEnumMap = {
  MessageStatus.sent: 'sent',
  MessageStatus.delivered: 'delivered',
  MessageStatus.read: 'read',
  MessageStatus.failed: 'failed',
  MessageStatus.deleted: 'deleted',
};

_$ConversationImpl _$$ConversationImplFromJson(Map<String, dynamic> json) =>
    _$ConversationImpl(
      id: json['id'] as String,
      user1Id: json['user1Id'] as String,
      user2Id: json['user2Id'] as String,
      lastMessageContent: json['lastMessageContent'] as String?,
      lastMessageTime: json['lastMessageTime'] == null
          ? null
          : DateTime.parse(json['lastMessageTime'] as String),
      unreadCountUser1: (json['unreadCountUser1'] as num).toInt(),
      unreadCountUser2: (json['unreadCountUser2'] as num).toInt(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
      isActive: json['isActive'] as bool,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ConversationImplToJson(_$ConversationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user1Id': instance.user1Id,
      'user2Id': instance.user2Id,
      'lastMessageContent': instance.lastMessageContent,
      'lastMessageTime': instance.lastMessageTime?.toIso8601String(),
      'unreadCountUser1': instance.unreadCountUser1,
      'unreadCountUser2': instance.unreadCountUser2,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'lastActivity': instance.lastActivity.toIso8601String(),
      'isActive': instance.isActive,
      'participants': instance.participants,
    };
