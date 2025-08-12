import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_discussion.freezed.dart';
part 'group_discussion.g.dart';

/// Represents a discussion topic within a reading group
@freezed
class GroupDiscussion with _$GroupDiscussion {
  const factory GroupDiscussion({
    /// Unique identifier for the discussion
    required String id,
    
    /// ID of the reading group this discussion belongs to
    required String groupId,
    
    /// Discussion title
    required String title,
    
    /// Discussion content/description
    required String content,
    
    /// Discussion category
    required DiscussionCategory category,
    
    /// Discussion creator ID
    required String creatorId,
    
    /// Discussion creation date
    required DateTime dateCreated,
    
    /// Last activity date
    required DateTime lastActivity,
    
    /// Number of replies/messages
    required int replyCount,
    
    /// Number of views
    required int viewCount,
    
    /// Discussion tags
    required List<String> tags,
    
    /// Whether discussion is pinned
    required bool isPinned,
    
    /// Whether discussion is locked
    required bool isLocked,
    
    /// Whether discussion is featured
    required bool isFeatured,
    
    /// Discussion status
    required DiscussionStatus status,
    
    /// Associated book ID (if book-specific discussion)
    String? bookId,
    
    /// Associated chapter/page (if chapter-specific)
    String? chapterReference,
    
    /// Spoiler warning level
    required SpoilerLevel spoilerLevel,
    
    /// Discussion participants
    required List<String> participants,
    
    /// Discussion moderators
    required List<String> moderators,
    
    /// Discussion rules/guidelines
    required List<String> rules,
    
    /// Discussion achievements/badges
    required List<DiscussionBadge> badges,
    
    /// Discussion quality score (0.0 - 5.0)
    @Default(0.0) double qualityScore,
    
    /// Discussion helpfulness score (0.0 - 5.0)
    @Default(0.0) double helpfulnessScore,
  }) = _GroupDiscussion;

  factory GroupDiscussion.fromJson(Map<String, dynamic> json) => _$GroupDiscussionFromJson(json);
  
  /// Creates a default discussion
  factory GroupDiscussion.defaultDiscussion({
    required String id,
    required String groupId,
    required String title,
    required String content,
    required String creatorId,
    required DiscussionCategory category,
    String? bookId,
    String? chapterReference,
  }) {
    return GroupDiscussion(
      id: id,
      groupId: groupId,
      title: title,
      content: content,
      category: category,
      creatorId: creatorId,
      dateCreated: DateTime.now(),
      lastActivity: DateTime.now(),
      replyCount: 0,
      viewCount: 0,
      tags: [],
      isPinned: false,
      isLocked: false,
      isFeatured: false,
      status: DiscussionStatus.active,
      bookId: bookId,
      chapterReference: chapterReference,
      spoilerLevel: SpoilerLevel.none,
      participants: [creatorId],
      moderators: [creatorId],
      rules: [
        'Be respectful to all participants',
        'Stay on topic',
        'No personal attacks',
        'Use spoiler warnings when appropriate',
      ],
      badges: [],
    );
  }
}

/// Discussion categories
enum DiscussionCategory {
  general('General Discussion'),
  bookDiscussion('Book Discussion'),
  chapterDiscussion('Chapter Discussion'),
  readingProgress('Reading Progress'),
  bookRecommendations('Book Recommendations'),
  readingChallenges('Reading Challenges'),
  offTopic('Off Topic'),
  announcements('Announcements'),
  questions('Questions & Help'),
  reviews('Book Reviews'),
  authorDiscussion('Author Discussion'),
  genreDiscussion('Genre Discussion');

  const DiscussionCategory(this.displayName);
  final String displayName;
}

/// Discussion status
enum DiscussionStatus {
  active('Active'),
  closed('Closed'),
  archived('Archived'),
  moderated('Under Moderation');

  const DiscussionStatus(this.displayName);
  final String displayName;
}

/// Spoiler warning levels
enum SpoilerLevel {
  none('No Spoilers'),
  minor('Minor Spoilers'),
  major('Major Spoilers'),
  ending('Ending Spoilers');

  const SpoilerLevel(this.displayName);
  final String displayName;
}

/// Discussion badge/achievement
@freezed
class DiscussionBadge with _$DiscussionBadge {
  const factory DiscussionBadge({
    /// Badge ID
    required String id,
    
    /// Badge name
    required String name,
    
    /// Badge description
    required String description,
    
    /// Badge icon
    required String icon,
    
    /// Badge category
    required BadgeCategory category,
    
    /// Badge rarity
    required BadgeRarity rarity,
    
    /// Date when badge was earned
    required DateTime dateEarned,
    
    /// Users who earned this badge
    required List<String> usersEarned,
  }) = _DiscussionBadge;

  factory DiscussionBadge.fromJson(Map<String, dynamic> json) => _$DiscussionBadgeFromJson(json);
}

/// Badge categories
enum BadgeCategory {
  participation('Participation'),
  quality('Quality'),
  helpfulness('Helpfulness'),
  creativity('Creativity'),
  leadership('Leadership'),
  special('Special');

  const BadgeCategory(this.displayName);
  final String displayName;
}

/// Badge rarity
enum BadgeRarity {
  common('Common'),
  uncommon('Uncommon'),
  rare('Rare'),
  epic('Epic'),
  legendary('Legendary');

  const BadgeRarity(this.displayName);
  final String displayName;
}

/// Represents a message/reply in a group discussion
@freezed
class DiscussionMessage with _$DiscussionMessage {
  const factory DiscussionMessage({
    /// Unique identifier for the message
    required String id,
    
    /// ID of the discussion this message belongs to
    required String discussionId,
    
    /// ID of the reading group
    required String groupId,
    
    /// Message author ID
    required String authorId,
    
    /// Message content
    required String content,
    
    /// Message type
    required MessageType type,
    
    /// Message creation date
    required DateTime dateCreated,
    
    /// Message last edit date
    DateTime? dateEdited,
    
    /// Whether message is edited
    required bool isEdited,
    
    /// Message status
    required MessageStatus status,
    
    /// Parent message ID (for replies)
    String? parentMessageId,
    
    /// Message attachments
    required List<MessageAttachment> attachments,
    
    /// Message reactions
    required List<MessageReaction> reactions,
    
    /// Message metadata
    required MessageMetadata metadata,
    
    /// Whether message contains spoilers
    required bool hasSpoilers,
    
    /// Spoiler warning text
    String? spoilerWarning,
    
    /// Message moderation notes
    String? moderationNotes,
  }) = _DiscussionMessage;

  factory DiscussionMessage.fromJson(Map<String, dynamic> json) => _$DiscussionMessageFromJson(json);
  
  /// Creates a default message
  factory DiscussionMessage.defaultMessage({
    required String id,
    required String discussionId,
    required String groupId,
    required String authorId,
    required String content,
    String? parentMessageId,
    bool hasSpoilers = false,
    String? spoilerWarning,
  }) {
    return DiscussionMessage(
      id: id,
      discussionId: discussionId,
      groupId: groupId,
      authorId: authorId,
      content: content,
      type: MessageType.text,
      dateCreated: DateTime.now(),
      isEdited: false,
      status: MessageStatus.active,
      parentMessageId: parentMessageId,
      attachments: [],
      reactions: [],
      metadata: MessageMetadata(
        isPinned: false,
        isFeatured: false,
        viewCount: 0,
        replyCount: 0,
        shareCount: 0,
        bookmarkCount: 0,
        qualityScore: 0.0,
        helpfulnessScore: 0.0,
        tags: [],
        language: 'en',
        sentiment: Sentiment.neutral,
      ),
      hasSpoilers: hasSpoilers,
      spoilerWarning: spoilerWarning,
    );
  }
}

/// Message types
enum MessageType {
  text('Text'),
  image('Image'),
  link('Link'),
  bookReference('Book Reference'),
  chapterReference('Chapter Reference'),
  spoilerWarning('Spoiler Warning'),
  system('System Message'),
  announcement('Announcement');

  const MessageType(this.displayName);
  final String displayName;
}

/// Message status
enum MessageStatus {
  active('Active'),
  edited('Edited'),
  deleted('Deleted'),
  moderated('Under Moderation'),
  flagged('Flagged');

  const MessageStatus(this.displayName);
  final String displayName;
}

/// Message attachment
@freezed
class MessageAttachment with _$MessageAttachment {
  const factory MessageAttachment({
    /// Attachment ID
    required String id,
    
    /// Attachment type
    required AttachmentType type,
    
    /// Attachment URL
    required String url,
    
    /// Attachment filename
    required String filename,
    
    /// Attachment size in bytes
    required int sizeBytes,
    
    /// Attachment MIME type
    required String mimeType,
    
    /// Attachment thumbnail URL
    String? thumbnailUrl,
    
    /// Attachment metadata
    required Map<String, dynamic> metadata,
  }) = _MessageAttachment;

  factory MessageAttachment.fromJson(Map<String, dynamic> json) => _$MessageAttachmentFromJson(json);
}

/// Attachment types
enum AttachmentType {
  image('Image'),
  document('Document'),
  link('Link'),
  bookCover('Book Cover'),
  audio('Audio'),
  video('Video');

  const AttachmentType(this.displayName);
  final String displayName;
}

/// Message reaction
@freezed
class MessageReaction with _$MessageReaction {
  const factory MessageReaction({
    /// Reaction ID
    required String id,
    
    /// Reaction type
    required ReactionType type,
    
    /// User ID who reacted
    required String userId,
    
    /// Reaction count
    required int count,
    
    /// Users who reacted
    required List<String> users,
    
    /// Reaction date
    required DateTime dateCreated,
  }) = _MessageReaction;

  factory MessageReaction.fromJson(Map<String, dynamic> json) => _$MessageReactionFromJson(json);
}

/// Reaction types
enum ReactionType {
  like('👍'),
  love('❤️'),
  laugh('😂'),
  wow('😮'),
  sad('😢'),
  angry('😠'),
  helpful('✅'),
  unhelpful('❌'),
  bookmark('🔖'),
  share('📤');

  const ReactionType(this.emoji);
  final String emoji;
}

/// Message metadata
@freezed
class MessageMetadata with _$MessageMetadata {
  const factory MessageMetadata({
    /// Whether message is pinned
    required bool isPinned,
    
    /// Whether message is featured
    required bool isFeatured,
    
    /// Message view count
    required int viewCount,
    
    /// Message reply count
    required int replyCount,
    
    /// Message share count
    required int shareCount,
    
    /// Message bookmark count
    required int bookmarkCount,
    
    /// Message quality score
    required double qualityScore,
    
    /// Message helpfulness score
    required double helpfulnessScore,
    
    /// Message tags
    required List<String> tags,
    
    /// Message language
    required String language,
    
    /// Message sentiment
    required Sentiment sentiment,
  }) = _MessageMetadata;

  factory MessageMetadata.fromJson(Map<String, dynamic> json) => _$MessageMetadataFromJson(json);
}

/// Message sentiment
enum Sentiment {
  positive('Positive'),
  negative('Negative'),
  neutral('Neutral'),
  mixed('Mixed');

  const Sentiment(this.displayName);
  final String displayName;
}

/// Represents a chat room within a reading group
@freezed
class GroupChatRoom with _$GroupChatRoom {
  const factory GroupChatRoom({
    /// Chat room ID
    required String id,
    
    /// Reading group ID
    required String groupId,
    
    /// Chat room name
    required String name,
    
    /// Chat room description
    required String description,
    
    /// Chat room type
    required ChatRoomType type,
    
    /// Chat room privacy
    required ChatRoomPrivacy privacy,
    
    /// Maximum participants
    int? maxParticipants,
    
    /// Current participants
    required List<String> participants,
    
    /// Chat room moderators
    required List<String> moderators,
    
    /// Chat room rules
    required List<String> rules,
    
    /// Whether chat room is active
    required bool isActive,
    
    /// Chat room creation date
    required DateTime dateCreated,
    
    /// Last activity date
    required DateTime lastActivity,
    
    /// Chat room status
    required ChatRoomStatus status,
    
    /// Associated discussion ID (if discussion-based)
    String? discussionId,
    
    /// Associated book ID (if book-specific)
    String? bookId,
    
    /// Chat room settings
    required ChatRoomSettings settings,
  }) = _GroupChatRoom;

  factory GroupChatRoom.fromJson(Map<String, dynamic> json) => _$GroupChatRoomFromJson(json);
}

/// Chat room types
enum ChatRoomType {
  general('General Chat'),
  bookDiscussion('Book Discussion'),
  chapterChat('Chapter Chat'),
  readingProgress('Reading Progress'),
  offTopic('Off Topic'),
  announcements('Announcements'),
  help('Help & Support'),
  social('Social Chat');

  const ChatRoomType(this.displayName);
  final String displayName;
}

/// Chat room privacy
enum ChatRoomPrivacy {
  public('Public'),
  private('Private'),
  inviteOnly('Invite Only'),
  moderatorOnly('Moderator Only');

  const ChatRoomPrivacy(this.displayName);
  final String displayName;
}

/// Chat room status
enum ChatRoomStatus {
  active('Active'),
  paused('Paused'),
  closed('Closed'),
  archived('Archived');

  const ChatRoomStatus(this.displayName);
  final String displayName;
}

/// Chat room settings
@freezed
class ChatRoomSettings with _$ChatRoomSettings {
  const factory ChatRoomSettings({
    /// Whether file sharing is allowed
    required bool allowFileSharing,
    
    /// Whether images are allowed
    required bool allowImages,
    
    /// Whether links are allowed
    required bool allowLinks,
    
    /// Whether spoilers are allowed
    required bool allowSpoilers,
    
    /// Whether reactions are enabled
    required bool enableReactions,
    
    /// Whether editing is allowed
    required bool allowEditing,
    
    /// Whether deletion is allowed
    required bool allowDeletion,
    
    /// Message retention days
    required int messageRetentionDays,
    
    /// Whether moderation is required
    required bool requireModeration,
    
    /// Whether profanity filter is enabled
    required bool enableProfanityFilter,
    
    /// Whether auto-moderation is enabled
    required bool enableAutoModeration,
  }) = _ChatRoomSettings;

  factory ChatRoomSettings.fromJson(Map<String, dynamic> json) => _$ChatRoomSettingsFromJson(json);
}

/// Extension methods for GroupDiscussion
extension GroupDiscussionExtension on GroupDiscussion {
  /// Check if discussion is active
  bool get isActive => status == DiscussionStatus.active;
  
  /// Check if discussion is book-specific
  bool get isBookSpecific => bookId != null;
  
  /// Check if discussion is chapter-specific
  bool get isChapterSpecific => chapterReference != null;
  
  /// Check if discussion has spoilers
  bool get hasSpoilers => spoilerLevel != SpoilerLevel.none;
  
  /// Get discussion age
  Duration get age => DateTime.now().difference(dateCreated);
  
  /// Get discussion age in days
  int get ageInDays => age.inDays;
  
  /// Get discussion age in hours
  int get ageInHours => age.inHours;
  
  /// Get discussion age in minutes
  int get ageInMinutes => age.inMinutes;
  
  /// Check if discussion is recent (within 24 hours)
  bool get isRecent => ageInHours < 24;
  
  /// Check if discussion is trending (high activity)
  bool get isTrending => replyCount > 10 && ageInDays < 7;
  
  /// Get discussion engagement score
  double get engagementScore {
    final activityScore = replyCount * 2 + viewCount * 0.1;
    final timeScore = 1.0 / (ageInDays + 1);
    return activityScore * timeScore;
  }
  
  /// Check if user is participant
  bool isParticipant(String userId) => participants.contains(userId);
  
  /// Check if user is moderator
  bool isModerator(String userId) => moderators.contains(userId);
  
  /// Check if user can edit discussion
  bool canEdit(String userId) => creatorId == userId || isModerator(userId);
  
  /// Check if user can delete discussion
  bool canDelete(String userId) => creatorId == userId || isModerator(userId);
  
  /// Check if user can pin discussion
  bool canPin(String userId) => isModerator(userId);
  
  /// Check if user can lock discussion
  bool canLock(String userId) => isModerator(userId);
  
  /// Check if user can moderate discussion
  bool canModerate(String userId) => isModerator(userId);
}

/// Extension methods for DiscussionMessage
extension DiscussionMessageExtension on DiscussionMessage {
  /// Check if message is active
  bool get isActive => status == MessageStatus.active;
  
  /// Check if message is edited
  bool get isEdited => dateEdited != null;
  
  /// Check if message is a reply
  bool get isReply => parentMessageId != null;
  
  /// Check if message is a top-level message
  bool get isTopLevel => parentMessageId == null;
  
  /// Check if message has attachments
  bool get hasAttachments => attachments.isNotEmpty;
  
  /// Check if message has reactions
  bool get hasReactions => reactions.isNotEmpty;
  
  /// Get message age
  Duration get age => DateTime.now().difference(dateCreated);
  
  /// Get message age in minutes
  int get ageInMinutes => age.inMinutes;
  
  /// Get message age in hours
  int get ageInHours => age.inHours;
  
  /// Get message age in days
  int get ageInDays => age.inDays;
  
  /// Check if message is recent (within 1 hour)
  bool get isRecent => ageInMinutes < 60;
  
  /// Check if message is new (within 10 minutes)
  bool get isNew => ageInMinutes < 10;
  
  /// Get total reaction count
  int get totalReactions => reactions.fold(0, (sum, reaction) => sum + reaction.count);
  
  /// Get most popular reaction
  MessageReaction? get mostPopularReaction {
    if (reactions.isEmpty) return null;
    return reactions.reduce((a, b) => a.count > b.count ? a : b);
  }
  
  /// Check if user can edit message
  bool canEdit(String userId) => authorId == userId;
  
  /// Check if user can delete message
  bool canDelete(String userId) => authorId == userId;
  
  /// Check if user can moderate message
  bool canModerate(String userId) => false; // TODO: Implement moderation permissions
  
  /// Get message quality indicator
  String get qualityIndicator {
    if (qualityScore >= 0.8) return '⭐ High Quality';
    if (qualityScore >= 0.6) return '✨ Good Quality';
    if (qualityScore >= 0.4) return '📝 Average Quality';
    return '📄 Basic Quality';
  }
  
  /// Get message helpfulness indicator
  String get helpfulnessIndicator {
    if (helpfulnessScore >= 0.8) return '✅ Very Helpful';
    if (helpfulnessScore >= 0.6) return '👍 Helpful';
    if (helpfulnessScore >= 0.4) return '🤔 Somewhat Helpful';
    return '❓ Not Very Helpful';
  }
}
