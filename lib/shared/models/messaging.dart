import 'package:freezed_annotation/freezed_annotation.dart';

part 'messaging.freezed.dart';
part 'messaging.g.dart';

/// Represents a direct message between users
@freezed
class DirectMessage with _$DirectMessage {
  const factory DirectMessage({
    /// Unique identifier for the message
    required String id,
    
    /// ID of the sender
    required String senderId,
    
    /// ID of the recipient
    required String recipientId,
    
    /// Message content
    required String content,
    
    /// Message type
    required MessageType type,
    
    /// Message creation date
    required DateTime dateCreated,
    
    /// Whether message has been read
    required bool isRead,
    
    /// Whether message has been delivered
    required bool isDelivered,
    
    /// Message status
    required MessageStatus status,
    
    /// Reply to message ID (if this is a reply)
    String? replyToMessageId,
    
    /// Message attachments count
    required int attachmentCount,
    
    /// Message reactions count
    required int reactionCount,
  }) = _DirectMessage;

  factory DirectMessage.fromJson(Map<String, dynamic> json) => _$DirectMessageFromJson(json);
  
  /// Creates a default message
  factory DirectMessage.defaultMessage({
    required String id,
    required String senderId,
    required String recipientId,
    required String content,
    String? replyToMessageId,
  }) {
    return DirectMessage(
      id: id,
      senderId: senderId,
      recipientId: recipientId,
      content: content,
      type: MessageType.text,
      dateCreated: DateTime.now(),
      isRead: false,
      isDelivered: false,
      status: MessageStatus.sent,
      replyToMessageId: replyToMessageId,
      attachmentCount: 0,
      reactionCount: 0,
    );
  }
}

/// Message types for direct messages
enum MessageType {
  text('Text'),
  image('Image'),
  link('Link'),
  bookReference('Book Reference'),
  system('System Message');

  const MessageType(this.displayName);
  final String displayName;
}

/// Message status for direct messages
enum MessageStatus {
  sent('Sent'),
  delivered('Delivered'),
  read('Read'),
  failed('Failed'),
  deleted('Deleted');

  const MessageStatus(this.displayName);
  final String displayName;
}

/// Represents a conversation between two users
@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    /// Unique identifier for the conversation
    required String id,
    
    /// ID of the first user
    required String user1Id,
    
    /// ID of the second user
    required String user2Id,
    
    /// Last message content
    String? lastMessageContent,
    
    /// Last message timestamp
    DateTime? lastMessageTime,
    
    /// Number of unread messages for user1
    required int unreadCountUser1,
    
    /// Number of unread messages for user2
    required int unreadCountUser2,
    
    /// Conversation creation date
    required DateTime dateCreated,
    
    /// Last activity date
    required DateTime lastActivity,
    
    /// Whether conversation is active
    required bool isActive,
    
    /// Conversation participants
    required List<String> participants,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);
  
  /// Creates a default conversation
  factory Conversation.defaultConversation({
    required String id,
    required String user1Id,
    required String user2Id,
  }) {
    return Conversation(
      id: id,
      user1Id: user1Id,
      user2Id: user2Id,
      lastMessageContent: null,
      lastMessageTime: null,
      unreadCountUser1: 0,
      unreadCountUser2: 0,
      dateCreated: DateTime.now(),
      lastActivity: DateTime.now(),
      isActive: true,
      participants: [user1Id, user2Id],
    );
  }
}

/// Extension methods for DirectMessage
extension DirectMessageExtension on DirectMessage {
  /// Check if message is from current user
  bool isFromUser(String userId) => senderId == userId;
  
  /// Check if message is to current user
  bool isToUser(String userId) => recipientId == userId;
  
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
  
  /// Check if user can edit message
  bool canEdit(String userId) => senderId == userId;
  
  /// Check if user can delete message
  bool canDelete(String userId) => senderId == userId;
}

/// Extension methods for Conversation
extension ConversationExtension on Conversation {
  /// Get the other user ID
  String getOtherUserId(String currentUserId) {
    if (user1Id == currentUserId) return user2Id;
    if (user2Id == currentUserId) return user1Id;
    return currentUserId;
  }
  
  /// Get unread count for current user
  int getUnreadCount(String userId) {
    if (user1Id == userId) return unreadCountUser1;
    if (user2Id == userId) return unreadCountUser2;
    return 0;
  }
  
  /// Check if conversation has unread messages
  bool hasUnreadMessages(String userId) => getUnreadCount(userId) > 0;
  
  /// Get conversation age
  Duration get age => DateTime.now().difference(dateCreated);
  
  /// Get conversation age in days
  int get ageInDays => age.inDays;
  
  /// Check if conversation is recent (within 7 days)
  bool get isRecent => ageInDays < 7;
}
