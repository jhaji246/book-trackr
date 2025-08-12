// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_discussion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupDiscussionImpl _$$GroupDiscussionImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupDiscussionImpl(
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      category: $enumDecode(_$DiscussionCategoryEnumMap, json['category']),
      creatorId: json['creatorId'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
      replyCount: (json['replyCount'] as num).toInt(),
      viewCount: (json['viewCount'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isPinned: json['isPinned'] as bool,
      isLocked: json['isLocked'] as bool,
      isFeatured: json['isFeatured'] as bool,
      status: $enumDecode(_$DiscussionStatusEnumMap, json['status']),
      bookId: json['bookId'] as String?,
      chapterReference: json['chapterReference'] as String?,
      spoilerLevel: $enumDecode(_$SpoilerLevelEnumMap, json['spoilerLevel']),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      moderators: (json['moderators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rules: (json['rules'] as List<dynamic>).map((e) => e as String).toList(),
      badges: (json['badges'] as List<dynamic>)
          .map((e) => DiscussionBadge.fromJson(e as Map<String, dynamic>))
          .toList(),
      qualityScore: (json['qualityScore'] as num?)?.toDouble() ?? 0.0,
      helpfulnessScore: (json['helpfulnessScore'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$GroupDiscussionImplToJson(
        _$GroupDiscussionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'title': instance.title,
      'content': instance.content,
      'category': _$DiscussionCategoryEnumMap[instance.category]!,
      'creatorId': instance.creatorId,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'lastActivity': instance.lastActivity.toIso8601String(),
      'replyCount': instance.replyCount,
      'viewCount': instance.viewCount,
      'tags': instance.tags,
      'isPinned': instance.isPinned,
      'isLocked': instance.isLocked,
      'isFeatured': instance.isFeatured,
      'status': _$DiscussionStatusEnumMap[instance.status]!,
      'bookId': instance.bookId,
      'chapterReference': instance.chapterReference,
      'spoilerLevel': _$SpoilerLevelEnumMap[instance.spoilerLevel]!,
      'participants': instance.participants,
      'moderators': instance.moderators,
      'rules': instance.rules,
      'badges': instance.badges,
      'qualityScore': instance.qualityScore,
      'helpfulnessScore': instance.helpfulnessScore,
    };

const _$DiscussionCategoryEnumMap = {
  DiscussionCategory.general: 'general',
  DiscussionCategory.bookDiscussion: 'bookDiscussion',
  DiscussionCategory.chapterDiscussion: 'chapterDiscussion',
  DiscussionCategory.readingProgress: 'readingProgress',
  DiscussionCategory.bookRecommendations: 'bookRecommendations',
  DiscussionCategory.readingChallenges: 'readingChallenges',
  DiscussionCategory.offTopic: 'offTopic',
  DiscussionCategory.announcements: 'announcements',
  DiscussionCategory.questions: 'questions',
  DiscussionCategory.reviews: 'reviews',
  DiscussionCategory.authorDiscussion: 'authorDiscussion',
  DiscussionCategory.genreDiscussion: 'genreDiscussion',
};

const _$DiscussionStatusEnumMap = {
  DiscussionStatus.active: 'active',
  DiscussionStatus.closed: 'closed',
  DiscussionStatus.archived: 'archived',
  DiscussionStatus.moderated: 'moderated',
};

const _$SpoilerLevelEnumMap = {
  SpoilerLevel.none: 'none',
  SpoilerLevel.minor: 'minor',
  SpoilerLevel.major: 'major',
  SpoilerLevel.ending: 'ending',
};

_$DiscussionBadgeImpl _$$DiscussionBadgeImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionBadgeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      category: $enumDecode(_$BadgeCategoryEnumMap, json['category']),
      rarity: $enumDecode(_$BadgeRarityEnumMap, json['rarity']),
      dateEarned: DateTime.parse(json['dateEarned'] as String),
      usersEarned: (json['usersEarned'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DiscussionBadgeImplToJson(
        _$DiscussionBadgeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'category': _$BadgeCategoryEnumMap[instance.category]!,
      'rarity': _$BadgeRarityEnumMap[instance.rarity]!,
      'dateEarned': instance.dateEarned.toIso8601String(),
      'usersEarned': instance.usersEarned,
    };

const _$BadgeCategoryEnumMap = {
  BadgeCategory.participation: 'participation',
  BadgeCategory.quality: 'quality',
  BadgeCategory.helpfulness: 'helpfulness',
  BadgeCategory.creativity: 'creativity',
  BadgeCategory.leadership: 'leadership',
  BadgeCategory.special: 'special',
};

const _$BadgeRarityEnumMap = {
  BadgeRarity.common: 'common',
  BadgeRarity.uncommon: 'uncommon',
  BadgeRarity.rare: 'rare',
  BadgeRarity.epic: 'epic',
  BadgeRarity.legendary: 'legendary',
};

_$DiscussionMessageImpl _$$DiscussionMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionMessageImpl(
      id: json['id'] as String,
      discussionId: json['discussionId'] as String,
      groupId: json['groupId'] as String,
      authorId: json['authorId'] as String,
      content: json['content'] as String,
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateEdited: json['dateEdited'] == null
          ? null
          : DateTime.parse(json['dateEdited'] as String),
      isEdited: json['isEdited'] as bool,
      status: $enumDecode(_$MessageStatusEnumMap, json['status']),
      parentMessageId: json['parentMessageId'] as String?,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => MessageAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      reactions: (json['reactions'] as List<dynamic>)
          .map((e) => MessageReaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata:
          MessageMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      hasSpoilers: json['hasSpoilers'] as bool,
      spoilerWarning: json['spoilerWarning'] as String?,
      moderationNotes: json['moderationNotes'] as String?,
    );

Map<String, dynamic> _$$DiscussionMessageImplToJson(
        _$DiscussionMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discussionId': instance.discussionId,
      'groupId': instance.groupId,
      'authorId': instance.authorId,
      'content': instance.content,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateEdited': instance.dateEdited?.toIso8601String(),
      'isEdited': instance.isEdited,
      'status': _$MessageStatusEnumMap[instance.status]!,
      'parentMessageId': instance.parentMessageId,
      'attachments': instance.attachments,
      'reactions': instance.reactions,
      'metadata': instance.metadata,
      'hasSpoilers': instance.hasSpoilers,
      'spoilerWarning': instance.spoilerWarning,
      'moderationNotes': instance.moderationNotes,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.link: 'link',
  MessageType.bookReference: 'bookReference',
  MessageType.chapterReference: 'chapterReference',
  MessageType.spoilerWarning: 'spoilerWarning',
  MessageType.system: 'system',
  MessageType.announcement: 'announcement',
};

const _$MessageStatusEnumMap = {
  MessageStatus.active: 'active',
  MessageStatus.edited: 'edited',
  MessageStatus.deleted: 'deleted',
  MessageStatus.moderated: 'moderated',
  MessageStatus.flagged: 'flagged',
};

_$MessageAttachmentImpl _$$MessageAttachmentImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageAttachmentImpl(
      id: json['id'] as String,
      type: $enumDecode(_$AttachmentTypeEnumMap, json['type']),
      url: json['url'] as String,
      filename: json['filename'] as String,
      sizeBytes: (json['sizeBytes'] as num).toInt(),
      mimeType: json['mimeType'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MessageAttachmentImplToJson(
        _$MessageAttachmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$AttachmentTypeEnumMap[instance.type]!,
      'url': instance.url,
      'filename': instance.filename,
      'sizeBytes': instance.sizeBytes,
      'mimeType': instance.mimeType,
      'thumbnailUrl': instance.thumbnailUrl,
      'metadata': instance.metadata,
    };

const _$AttachmentTypeEnumMap = {
  AttachmentType.image: 'image',
  AttachmentType.document: 'document',
  AttachmentType.link: 'link',
  AttachmentType.bookCover: 'bookCover',
  AttachmentType.audio: 'audio',
  AttachmentType.video: 'video',
};

_$MessageReactionImpl _$$MessageReactionImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageReactionImpl(
      id: json['id'] as String,
      type: $enumDecode(_$ReactionTypeEnumMap, json['type']),
      userId: json['userId'] as String,
      count: (json['count'] as num).toInt(),
      users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
    );

Map<String, dynamic> _$$MessageReactionImplToJson(
        _$MessageReactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ReactionTypeEnumMap[instance.type]!,
      'userId': instance.userId,
      'count': instance.count,
      'users': instance.users,
      'dateCreated': instance.dateCreated.toIso8601String(),
    };

const _$ReactionTypeEnumMap = {
  ReactionType.like: 'like',
  ReactionType.love: 'love',
  ReactionType.laugh: 'laugh',
  ReactionType.wow: 'wow',
  ReactionType.sad: 'sad',
  ReactionType.angry: 'angry',
  ReactionType.helpful: 'helpful',
  ReactionType.unhelpful: 'unhelpful',
  ReactionType.bookmark: 'bookmark',
  ReactionType.share: 'share',
};

_$MessageMetadataImpl _$$MessageMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageMetadataImpl(
      isPinned: json['isPinned'] as bool,
      isFeatured: json['isFeatured'] as bool,
      viewCount: (json['viewCount'] as num).toInt(),
      replyCount: (json['replyCount'] as num).toInt(),
      shareCount: (json['shareCount'] as num).toInt(),
      bookmarkCount: (json['bookmarkCount'] as num).toInt(),
      qualityScore: (json['qualityScore'] as num).toDouble(),
      helpfulnessScore: (json['helpfulnessScore'] as num).toDouble(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      language: json['language'] as String,
      sentiment: $enumDecode(_$SentimentEnumMap, json['sentiment']),
    );

Map<String, dynamic> _$$MessageMetadataImplToJson(
        _$MessageMetadataImpl instance) =>
    <String, dynamic>{
      'isPinned': instance.isPinned,
      'isFeatured': instance.isFeatured,
      'viewCount': instance.viewCount,
      'replyCount': instance.replyCount,
      'shareCount': instance.shareCount,
      'bookmarkCount': instance.bookmarkCount,
      'qualityScore': instance.qualityScore,
      'helpfulnessScore': instance.helpfulnessScore,
      'tags': instance.tags,
      'language': instance.language,
      'sentiment': _$SentimentEnumMap[instance.sentiment]!,
    };

const _$SentimentEnumMap = {
  Sentiment.positive: 'positive',
  Sentiment.negative: 'negative',
  Sentiment.neutral: 'neutral',
  Sentiment.mixed: 'mixed',
};

_$GroupChatRoomImpl _$$GroupChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$GroupChatRoomImpl(
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ChatRoomTypeEnumMap, json['type']),
      privacy: $enumDecode(_$ChatRoomPrivacyEnumMap, json['privacy']),
      maxParticipants: (json['maxParticipants'] as num?)?.toInt(),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      moderators: (json['moderators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rules: (json['rules'] as List<dynamic>).map((e) => e as String).toList(),
      isActive: json['isActive'] as bool,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
      status: $enumDecode(_$ChatRoomStatusEnumMap, json['status']),
      discussionId: json['discussionId'] as String?,
      bookId: json['bookId'] as String?,
      settings:
          ChatRoomSettings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupChatRoomImplToJson(_$GroupChatRoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'name': instance.name,
      'description': instance.description,
      'type': _$ChatRoomTypeEnumMap[instance.type]!,
      'privacy': _$ChatRoomPrivacyEnumMap[instance.privacy]!,
      'maxParticipants': instance.maxParticipants,
      'participants': instance.participants,
      'moderators': instance.moderators,
      'rules': instance.rules,
      'isActive': instance.isActive,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'lastActivity': instance.lastActivity.toIso8601String(),
      'status': _$ChatRoomStatusEnumMap[instance.status]!,
      'discussionId': instance.discussionId,
      'bookId': instance.bookId,
      'settings': instance.settings,
    };

const _$ChatRoomTypeEnumMap = {
  ChatRoomType.general: 'general',
  ChatRoomType.bookDiscussion: 'bookDiscussion',
  ChatRoomType.chapterChat: 'chapterChat',
  ChatRoomType.readingProgress: 'readingProgress',
  ChatRoomType.offTopic: 'offTopic',
  ChatRoomType.announcements: 'announcements',
  ChatRoomType.help: 'help',
  ChatRoomType.social: 'social',
};

const _$ChatRoomPrivacyEnumMap = {
  ChatRoomPrivacy.public: 'public',
  ChatRoomPrivacy.private: 'private',
  ChatRoomPrivacy.inviteOnly: 'inviteOnly',
  ChatRoomPrivacy.moderatorOnly: 'moderatorOnly',
};

const _$ChatRoomStatusEnumMap = {
  ChatRoomStatus.active: 'active',
  ChatRoomStatus.paused: 'paused',
  ChatRoomStatus.closed: 'closed',
  ChatRoomStatus.archived: 'archived',
};

_$ChatRoomSettingsImpl _$$ChatRoomSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatRoomSettingsImpl(
      allowFileSharing: json['allowFileSharing'] as bool,
      allowImages: json['allowImages'] as bool,
      allowLinks: json['allowLinks'] as bool,
      allowSpoilers: json['allowSpoilers'] as bool,
      enableReactions: json['enableReactions'] as bool,
      allowEditing: json['allowEditing'] as bool,
      allowDeletion: json['allowDeletion'] as bool,
      messageRetentionDays: (json['messageRetentionDays'] as num).toInt(),
      requireModeration: json['requireModeration'] as bool,
      enableProfanityFilter: json['enableProfanityFilter'] as bool,
      enableAutoModeration: json['enableAutoModeration'] as bool,
    );

Map<String, dynamic> _$$ChatRoomSettingsImplToJson(
        _$ChatRoomSettingsImpl instance) =>
    <String, dynamic>{
      'allowFileSharing': instance.allowFileSharing,
      'allowImages': instance.allowImages,
      'allowLinks': instance.allowLinks,
      'allowSpoilers': instance.allowSpoilers,
      'enableReactions': instance.enableReactions,
      'allowEditing': instance.allowEditing,
      'allowDeletion': instance.allowDeletion,
      'messageRetentionDays': instance.messageRetentionDays,
      'requireModeration': instance.requireModeration,
      'enableProfanityFilter': instance.enableProfanityFilter,
      'enableAutoModeration': instance.enableAutoModeration,
    };
