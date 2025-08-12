// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      id: json['id'] as String,
      recipientId: json['recipientId'] as String,
      senderId: json['senderId'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      relatedEntityId: json['relatedEntityId'] as String?,
      relatedEntityType: json['relatedEntityType'] as String?,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      isRead: json['isRead'] as bool,
      isDelivered: json['isDelivered'] as bool,
      priority: $enumDecode(_$NotificationPriorityEnumMap, json['priority']),
      category: $enumDecode(_$NotificationCategoryEnumMap, json['category']),
      action:
          NotificationAction.fromJson(json['action'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
        _$AppNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipientId': instance.recipientId,
      'senderId': instance.senderId,
      'title': instance.title,
      'message': instance.message,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'relatedEntityId': instance.relatedEntityId,
      'relatedEntityType': instance.relatedEntityType,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'isRead': instance.isRead,
      'isDelivered': instance.isDelivered,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'category': _$NotificationCategoryEnumMap[instance.category]!,
      'action': instance.action,
      'metadata': instance.metadata,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.followRequest: 'followRequest',
  NotificationType.followAccepted: 'followAccepted',
  NotificationType.friendRequest: 'friendRequest',
  NotificationType.friendAccepted: 'friendAccepted',
  NotificationType.groupInvite: 'groupInvite',
  NotificationType.groupJoinRequest: 'groupJoinRequest',
  NotificationType.groupJoinAccepted: 'groupJoinAccepted',
  NotificationType.groupJoinRejected: 'groupJoinRejected',
  NotificationType.groupDiscussion: 'groupDiscussion',
  NotificationType.groupMessage: 'groupMessage',
  NotificationType.bookRecommendation: 'bookRecommendation',
  NotificationType.bookReview: 'bookReview',
  NotificationType.bookRating: 'bookRating',
  NotificationType.readingProgress: 'readingProgress',
  NotificationType.challengeInvite: 'challengeInvite',
  NotificationType.challengeUpdate: 'challengeUpdate',
  NotificationType.challengeCompleted: 'challengeCompleted',
  NotificationType.systemUpdate: 'systemUpdate',
  NotificationType.maintenance: 'maintenance',
  NotificationType.announcement: 'announcement',
};

const _$NotificationPriorityEnumMap = {
  NotificationPriority.low: 'low',
  NotificationPriority.normal: 'normal',
  NotificationPriority.high: 'high',
  NotificationPriority.urgent: 'urgent',
};

const _$NotificationCategoryEnumMap = {
  NotificationCategory.social: 'social',
  NotificationCategory.groups: 'groups',
  NotificationCategory.books: 'books',
  NotificationCategory.challenges: 'challenges',
  NotificationCategory.system: 'system',
};

_$NotificationActionImpl _$$NotificationActionImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationActionImpl(
      type: $enumDecode(_$ActionTypeEnumMap, json['type']),
      label: json['label'] as String,
      route: json['route'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>,
      requiresInteraction: json['requiresInteraction'] as bool,
    );

Map<String, dynamic> _$$NotificationActionImplToJson(
        _$NotificationActionImpl instance) =>
    <String, dynamic>{
      'type': _$ActionTypeEnumMap[instance.type]!,
      'label': instance.label,
      'route': instance.route,
      'parameters': instance.parameters,
      'requiresInteraction': instance.requiresInteraction,
    };

const _$ActionTypeEnumMap = {
  ActionType.none: 'none',
  ActionType.navigate: 'navigate',
  ActionType.accept: 'accept',
  ActionType.reject: 'reject',
  ActionType.reply: 'reply',
  ActionType.view: 'view',
  ActionType.dismiss: 'dismiss',
};

_$NotificationPreferencesImpl _$$NotificationPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationPreferencesImpl(
      userId: json['userId'] as String,
      pushEnabled: json['pushEnabled'] as bool,
      emailEnabled: json['emailEnabled'] as bool,
      inAppEnabled: json['inAppEnabled'] as bool,
      socialEnabled: json['socialEnabled'] as bool,
      groupEnabled: json['groupEnabled'] as bool,
      bookEnabled: json['bookEnabled'] as bool,
      challengeEnabled: json['challengeEnabled'] as bool,
      systemEnabled: json['systemEnabled'] as bool,
      quietHoursEnabled: json['quietHoursEnabled'] as bool,
      quietHoursStart: json['quietHoursStart'] as String,
      quietHoursEnd: json['quietHoursEnd'] as String,
      soundEnabled: json['soundEnabled'] as bool,
      vibrationEnabled: json['vibrationEnabled'] as bool,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$NotificationPreferencesImplToJson(
        _$NotificationPreferencesImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'pushEnabled': instance.pushEnabled,
      'emailEnabled': instance.emailEnabled,
      'inAppEnabled': instance.inAppEnabled,
      'socialEnabled': instance.socialEnabled,
      'groupEnabled': instance.groupEnabled,
      'bookEnabled': instance.bookEnabled,
      'challengeEnabled': instance.challengeEnabled,
      'systemEnabled': instance.systemEnabled,
      'quietHoursEnabled': instance.quietHoursEnabled,
      'quietHoursStart': instance.quietHoursStart,
      'quietHoursEnd': instance.quietHoursEnd,
      'soundEnabled': instance.soundEnabled,
      'vibrationEnabled': instance.vibrationEnabled,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_$NotificationTemplateImpl _$$NotificationTemplateImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationTemplateImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      titleTemplate: json['titleTemplate'] as String,
      messageTemplate: json['messageTemplate'] as String,
      category: $enumDecode(_$NotificationCategoryEnumMap, json['category']),
      priority: $enumDecode(_$NotificationPriorityEnumMap, json['priority']),
      action:
          NotificationAction.fromJson(json['action'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$NotificationTemplateImplToJson(
        _$NotificationTemplateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'titleTemplate': instance.titleTemplate,
      'messageTemplate': instance.messageTemplate,
      'category': _$NotificationCategoryEnumMap[instance.category]!,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'action': instance.action,
      'metadata': instance.metadata,
      'isActive': instance.isActive,
    };
