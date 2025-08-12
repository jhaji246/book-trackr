import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/messaging.dart';
import 'auth_provider.dart';

/// Provider for managing direct messaging
final messagingProvider = StateNotifierProvider<MessagingNotifier, MessagingState>((ref) {
  final authState = ref.watch(authProvider);
  return MessagingNotifier(authState.user?.uid);
});

/// State for messaging
class MessagingState {
  final Map<String, Conversation> conversationsById;
  final Map<String, List<DirectMessage>> messagesByConversation;
  final String? selectedConversationId;
  final bool isLoading;
  final String? error;
  final String? currentUserId;

  const MessagingState({
    this.conversationsById = const {},
    this.messagesByConversation = const {},
    this.selectedConversationId,
    this.isLoading = false,
    this.error,
    this.currentUserId,
  });

  MessagingState copyWith({
    Map<String, Conversation>? conversationsById,
    Map<String, List<DirectMessage>>? messagesByConversation,
    String? selectedConversationId,
    bool? isLoading,
    String? error,
    String? currentUserId,
  }) {
    return MessagingState(
      conversationsById: conversationsById ?? this.conversationsById,
      messagesByConversation: messagesByConversation ?? this.messagesByConversation,
      selectedConversationId: selectedConversationId ?? this.selectedConversationId,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      currentUserId: currentUserId ?? this.currentUserId,
    );
  }

  /// Get a specific conversation by ID
  Conversation? getConversationById(String conversationId) {
    return conversationsById[conversationId];
  }

  /// Get conversations for the current user
  List<Conversation> get currentUserConversations {
    if (currentUserId == null) return [];
    return conversationsById.values
        .where((conversation) => conversation.participants.contains(currentUserId!))
        .toList();
  }

  /// Get messages for a specific conversation
  List<DirectMessage> getMessagesForConversation(String conversationId) {
    return messagesByConversation[conversationId] ?? [];
  }

  /// Get the currently selected conversation
  Conversation? get selectedConversation {
    if (selectedConversationId == null) return null;
    return getConversationById(selectedConversationId!);
  }

  /// Get conversations with unread messages
  List<Conversation> get conversationsWithUnreadMessages {
    if (currentUserId == null) return [];
    return currentUserConversations
        .where((conversation) => conversation.hasUnreadMessages(currentUserId!))
        .toList();
  }

  /// Get recent conversations
  List<Conversation> get recentConversations {
    final conversations = List<Conversation>.from(currentUserConversations);
    conversations.sort((a, b) => b.lastActivity.compareTo(a.lastActivity));
    return conversations;
  }
}

/// Notifier for managing messaging
class MessagingNotifier extends StateNotifier<MessagingState> {
  final String? _currentUserId;

  MessagingNotifier(this._currentUserId) : super(const MessagingState()) {
    if (_currentUserId != null) {
      state = state.copyWith(currentUserId: _currentUserId);
    }
  }

  /// Add or update a conversation
  void updateConversation(Conversation conversation) {
    final newConversationsById = Map<String, Conversation>.from(state.conversationsById);
    newConversationsById[conversation.id] = conversation;
    
    state = state.copyWith(
      conversationsById: newConversationsById,
      error: null,
    );
  }

  /// Remove a conversation
  void removeConversation(String conversationId) {
    final newConversationsById = Map<String, Conversation>.from(state.conversationsById);
    newConversationsById.remove(conversationId);
    
    final newMessagesByConversation = Map<String, List<DirectMessage>>.from(state.messagesByConversation);
    newMessagesByConversation.remove(conversationId);
    
    state = state.copyWith(
      conversationsById: newConversationsById,
      messagesByConversation: newMessagesByConversation,
      selectedConversationId: state.selectedConversationId == conversationId ? null : state.selectedConversationId,
      error: null,
    );
  }

  /// Select a conversation
  void selectConversation(String conversationId) {
    state = state.copyWith(selectedConversationId: conversationId);
  }

  /// Create a new conversation
  void createConversation(String otherUserId) {
    if (_currentUserId == null) return;
    
    final conversationId = _getConversationId(_currentUserId!, otherUserId);
    
    // Check if conversation already exists
    if (state.conversationsById.containsKey(conversationId)) return;
    
    final newConversation = Conversation.defaultConversation(
      id: conversationId,
      user1Id: _currentUserId!,
      user2Id: otherUserId,
    );
    
    updateConversation(newConversation);
  }

  /// Send a message
  void sendMessage(String recipientId, String content, {String? replyToMessageId}) {
    if (_currentUserId == null) return;
    
    // Create conversation if it doesn't exist
    createConversation(recipientId);
    
    final conversationId = _getConversationId(_currentUserId!, recipientId);
    
    final newMessage = DirectMessage.defaultMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      senderId: _currentUserId!,
      recipientId: recipientId,
      content: content,
      replyToMessageId: replyToMessageId,
    );
    
    // Add message to conversation
    final newMessagesByConversation = Map<String, List<DirectMessage>>.from(state.messagesByConversation);
    final messages = List<DirectMessage>.from(
      newMessagesByConversation[conversationId] ?? []
    );
    messages.add(newMessage);
    newMessagesByConversation[conversationId] = messages;
    
    // Update conversation
    final conversation = state.getConversationById(conversationId);
    if (conversation != null) {
      final updatedConversation = conversation.copyWith(
        lastMessageContent: content,
        lastMessageTime: DateTime.now(),
        lastActivity: DateTime.now(),
        unreadCountUser2: conversation.unreadCountUser2 + 1,
      );
      
      state = state.copyWith(
        messagesByConversation: newMessagesByConversation,
        error: null,
      );
      
      updateConversation(updatedConversation);
    }
  }

  /// Mark messages as read
  void markMessagesAsRead(String conversationId) {
    if (_currentUserId == null) return;
    
    final conversation = state.getConversationById(conversationId);
    if (conversation == null) return;
    
    // Update unread count
    final updatedConversation = conversation.copyWith(
      unreadCountUser1: _currentUserId == conversation.user1Id ? 0 : conversation.unreadCountUser1,
      unreadCountUser2: _currentUserId == conversation.user2Id ? 0 : conversation.unreadCountUser2,
    );
    
    updateConversation(updatedConversation);
  }

  /// Edit a message
  void editMessage(String conversationId, String messageId, String newContent) {
    if (_currentUserId == null) return;
    
    final messages = state.getMessagesForConversation(conversationId);
    final messageIndex = messages.indexWhere((m) => m.id == messageId);
    if (messageIndex == -1) return;
    
    final message = messages[messageIndex];
    if (!message.canEdit(_currentUserId!)) return;
    
    // TODO: Implement message editing
    // For now, just show a snackbar
  }

  /// Delete a message
  void deleteMessage(String conversationId, String messageId) {
    if (_currentUserId == null) return;
    
    final messages = state.getMessagesForConversation(conversationId);
    final messageIndex = messages.indexWhere((m) => m.id == messageId);
    if (messageIndex == -1) return;
    
    final message = messages[messageIndex];
    if (!message.canDelete(_currentUserId!)) return;
    
    // TODO: Implement message deletion
    // For now, just show a snackbar
  }

  /// Get conversation ID for two users
  String _getConversationId(String user1Id, String user2Id) {
    // Sort user IDs to ensure consistent conversation ID
    final sortedIds = [user1Id, user2Id]..sort();
    return '${sortedIds[0]}_${sortedIds[1]}';
  }

  /// Set error message
  void setError(String error) {
    state = state.copyWith(error: error);
  }

  /// Clear error message
  void clearError() {
    state = state.copyWith(error: null);
  }
}
