import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/group_discussion.dart';
import '../models/reading_group.dart';
import 'auth_provider.dart';
import 'reading_groups_provider.dart';

/// Provider for managing group discussions and chat
final groupDiscussionsProvider = StateNotifierProvider<GroupDiscussionsNotifier, GroupDiscussionsState>((ref) {
  final authState = ref.watch(authProvider);
  return GroupDiscussionsNotifier(authState.user?.uid);
});

/// State for group discussions and chat
class GroupDiscussionsState {
  final Map<String, GroupDiscussion> discussionsById;
  final Map<String, List<GroupDiscussion>> discussionsByGroup;
  final Map<String, List<DiscussionMessage>> messagesByDiscussion;
  final Map<String, GroupChatRoom> chatRoomsById;
  final Map<String, List<GroupChatRoom>> chatRoomsByGroup;
  final String? selectedDiscussionId;
  final String? selectedChatRoomId;
  final bool isLoading;
  final String? error;
  final String? currentUserId;

  const GroupDiscussionsState({
    this.discussionsById = const {},
    this.discussionsByGroup = const {},
    this.messagesByDiscussion = const {},
    this.chatRoomsById = const {},
    this.chatRoomsByGroup = const {},
    this.selectedDiscussionId,
    this.selectedChatRoomId,
    this.isLoading = false,
    this.error,
    this.currentUserId,
  });

  GroupDiscussionsState copyWith({
    Map<String, GroupDiscussion>? discussionsById,
    Map<String, List<GroupDiscussion>>? discussionsByGroup,
    Map<String, List<DiscussionMessage>>? messagesByDiscussion,
    Map<String, GroupChatRoom>? chatRoomsById,
    Map<String, List<GroupChatRoom>>? chatRoomsByGroup,
    String? selectedDiscussionId,
    String? selectedChatRoomId,
    bool? isLoading,
    String? error,
    String? currentUserId,
  }) {
    return GroupDiscussionsState(
      discussionsById: discussionsById ?? this.discussionsById,
      discussionsByGroup: discussionsByGroup ?? this.discussionsByGroup,
      messagesByDiscussion: messagesByDiscussion ?? this.messagesByDiscussion,
      chatRoomsById: chatRoomsById ?? this.chatRoomsById,
      chatRoomsByGroup: chatRoomsByGroup ?? this.chatRoomsByGroup,
      selectedDiscussionId: selectedDiscussionId ?? this.selectedDiscussionId,
      selectedChatRoomId: selectedChatRoomId ?? this.selectedChatRoomId,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      currentUserId: currentUserId ?? this.currentUserId,
    );
  }

  /// Get a specific discussion by ID
  GroupDiscussion? getDiscussionById(String discussionId) {
    return discussionsById[discussionId];
  }

  /// Get discussions for a specific group
  List<GroupDiscussion> getDiscussionsForGroup(String groupId) {
    return discussionsByGroup[groupId] ?? [];
  }

  /// Get messages for a specific discussion
  List<DiscussionMessage> getMessagesForDiscussion(String discussionId) {
    return messagesByDiscussion[discussionId] ?? [];
  }

  /// Get a specific chat room by ID
  GroupChatRoom? getChatRoomById(String chatRoomId) {
    return chatRoomsById[chatRoomId];
  }

  /// Get chat rooms for a specific group
  List<GroupChatRoom> getChatRoomsForGroup(String groupId) {
    return chatRoomsByGroup[groupId] ?? [];
  }

  /// Get the currently selected discussion
  GroupDiscussion? get selectedDiscussion {
    if (selectedDiscussionId == null) return null;
    return getDiscussionById(selectedDiscussionId!);
  }

  /// Get the currently selected chat room
  GroupChatRoom? get selectedChatRoom {
    if (selectedChatRoomId == null) return null;
    return getChatRoomById(selectedChatRoomId!);
  }

  /// Get active discussions for a group
  List<GroupDiscussion> getActiveDiscussionsForGroup(String groupId) {
    return getDiscussionsForGroup(groupId)
        .where((discussion) => discussion.isActive)
        .toList();
  }

  /// Get trending discussions for a group
  List<GroupDiscussion> getTrendingDiscussionsForGroup(String groupId) {
    final discussions = getDiscussionsForGroup(groupId);
    discussions.sort((a, b) => b.engagementScore.compareTo(a.engagementScore));
    return discussions.take(5).toList();
  }

  /// Get pinned discussions for a group
  List<GroupDiscussion> getPinnedDiscussionsForGroup(String groupId) {
    return getDiscussionsForGroup(groupId)
        .where((discussion) => discussion.isPinned)
        .toList();
  }

  /// Get recent messages for a discussion
  List<DiscussionMessage> getRecentMessagesForDiscussion(String discussionId, {int limit = 50}) {
    final messages = getMessagesForDiscussion(discussionId);
    messages.sort((a, b) => b.dateCreated.compareTo(a.dateCreated));
    return messages.take(limit).toList();
  }
}

/// Notifier for managing group discussions and chat
class GroupDiscussionsNotifier extends StateNotifier<GroupDiscussionsState> {
  final String? _currentUserId;

  GroupDiscussionsNotifier(this._currentUserId) : super(const GroupDiscussionsState()) {
    if (_currentUserId != null) {
      state = state.copyWith(currentUserId: _currentUserId);
    }
  }

  /// Add or update a group discussion
  void updateDiscussion(GroupDiscussion discussion) {
    final newDiscussionsById = Map<String, GroupDiscussion>.from(state.discussionsById);
    newDiscussionsById[discussion.id] = discussion;
    
    final newDiscussionsByGroup = Map<String, List<GroupDiscussion>>.from(state.discussionsByGroup);
    final groupDiscussions = List<GroupDiscussion>.from(
      newDiscussionsByGroup[discussion.groupId] ?? []
    );
    
    final existingIndex = groupDiscussions.indexWhere((d) => d.id == discussion.id);
    if (existingIndex != -1) {
      groupDiscussions[existingIndex] = discussion;
    } else {
      groupDiscussions.add(discussion);
    }
    
    newDiscussionsByGroup[discussion.groupId] = groupDiscussions;
    
    state = state.copyWith(
      discussionsById: newDiscussionsById,
      discussionsByGroup: newDiscussionsByGroup,
      error: null,
    );
  }

  /// Remove a group discussion
  void removeDiscussion(String discussionId) {
    final discussion = state.getDiscussionById(discussionId);
    if (discussion == null) return;
    
    final newDiscussionsById = Map<String, GroupDiscussion>.from(state.discussionsById);
    newDiscussionsById.remove(discussionId);
    
    final newDiscussionsByGroup = Map<String, List<GroupDiscussion>>.from(state.discussionsByGroup);
    final groupDiscussions = newDiscussionsByGroup[discussion.groupId] ?? [];
    newDiscussionsByGroup[discussion.groupId] = groupDiscussions
        .where((d) => d.id != discussionId)
        .toList();
    
    final newMessagesByDiscussion = Map<String, List<DiscussionMessage>>.from(state.messagesByDiscussion);
    newMessagesByDiscussion.remove(discussionId);
    
    state = state.copyWith(
      discussionsById: newDiscussionsById,
      discussionsByGroup: newDiscussionsByGroup,
      messagesByDiscussion: newMessagesByDiscussion,
      selectedDiscussionId: state.selectedDiscussionId == discussionId ? null : state.selectedDiscussionId,
      error: null,
    );
  }

  /// Select a discussion
  void selectDiscussion(String discussionId) {
    state = state.copyWith(selectedDiscussionId: discussionId);
  }

  /// Create a new discussion
  void createDiscussion({
    required String groupId,
    required String title,
    required String content,
    required DiscussionCategory category,
    String? bookId,
    String? chapterReference,
    SpoilerLevel spoilerLevel = SpoilerLevel.none,
    List<String>? tags,
  }) {
    if (_currentUserId == null) return;
    
    final newDiscussion = GroupDiscussion.defaultDiscussion(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      groupId: groupId,
      title: title,
      content: content,
      creatorId: _currentUserId!,
      category: category,
      bookId: bookId,
      chapterReference: chapterReference,
    ).copyWith(
      spoilerLevel: spoilerLevel,
      tags: tags ?? [],
    );
    
    updateDiscussion(newDiscussion);
  }

  /// Update discussion content
  void updateDiscussionContent(String discussionId, {
    String? title,
    String? content,
    DiscussionCategory? category,
    SpoilerLevel? spoilerLevel,
    List<String>? tags,
  }) {
    final discussion = state.getDiscussionById(discussionId);
    if (discussion == null) return;
    
    // Check if current user can edit
    if (!discussion.canEdit(_currentUserId ?? '')) return;
    
    final updatedDiscussion = discussion.copyWith(
      title: title ?? discussion.title,
      content: content ?? discussion.content,
      category: category ?? discussion.category,
      spoilerLevel: spoilerLevel ?? discussion.spoilerLevel,
      tags: tags ?? discussion.tags,
      lastActivity: DateTime.now(),
    );
    
    updateDiscussion(updatedDiscussion);
  }

  /// Pin/unpin a discussion
  void toggleDiscussionPin(String discussionId) {
    final discussion = state.getDiscussionById(discussionId);
    if (discussion == null) return;
    
    // Check if current user can pin
    if (!discussion.canPin(_currentUserId ?? '')) return;
    
    final updatedDiscussion = discussion.copyWith(
      isPinned: !discussion.isPinned,
      lastActivity: DateTime.now(),
    );
    
    updateDiscussion(updatedDiscussion);
  }

  /// Lock/unlock a discussion
  void toggleDiscussionLock(String discussionId) {
    final discussion = state.getDiscussionById(discussionId);
    if (discussion == null) return;
    
    // Check if current user can lock
    if (!discussion.canLock(_currentUserId ?? '')) return;
    
    final updatedDiscussion = discussion.copyWith(
      isLocked: !discussion.isLocked,
      lastActivity: DateTime.now(),
    );
    
    updateDiscussion(updatedDiscussion);
  }

  /// Close a discussion
  void closeDiscussion(String discussionId) {
    final discussion = state.getDiscussionById(discussionId);
    if (discussion == null) return;
    
    // Check if current user can moderate
    if (!discussion.canModerate(_currentUserId ?? '')) return;
    
    final updatedDiscussion = discussion.copyWith(
      status: DiscussionStatus.closed,
      lastActivity: DateTime.now(),
    );
    
    updateDiscussion(updatedDiscussion);
  }

  /// Add a message to a discussion
  void addMessage(String discussionId, {
    required String content,
    String? parentMessageId,
    bool hasSpoilers = false,
    String? spoilerWarning,
    MessageType type = MessageType.text,
  }) {
    if (_currentUserId == null) return;
    
    final discussion = state.getDiscussionById(discussionId);
    if (discussion == null || discussion.isLocked) return;
    
    final newMessage = DiscussionMessage.defaultMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      discussionId: discussionId,
      groupId: discussion.groupId,
      authorId: _currentUserId!,
      content: content,
      parentMessageId: parentMessageId,
      hasSpoilers: hasSpoilers,
      spoilerWarning: spoilerWarning,
    ).copyWith(type: type);
    
    // Update messages
    final newMessagesByDiscussion = Map<String, List<DiscussionMessage>>.from(state.messagesByDiscussion);
    final messages = List<DiscussionMessage>.from(
      newMessagesByDiscussion[discussionId] ?? []
    );
    messages.add(newMessage);
    newMessagesByDiscussion[discussionId] = messages;
    
    // Update discussion
    final updatedDiscussion = discussion.copyWith(
      replyCount: discussion.replyCount + 1,
      lastActivity: DateTime.now(),
      participants: discussion.participants.contains(_currentUserId!)
          ? discussion.participants
          : [...discussion.participants, _currentUserId!],
    );
    
    state = state.copyWith(
      messagesByDiscussion: newMessagesByDiscussion,
      error: null,
    );
    
    updateDiscussion(updatedDiscussion);
  }

  /// Edit a message
  void editMessage(String discussionId, String messageId, String newContent) {
    if (_currentUserId == null) return;
    
    final messages = state.getMessagesForDiscussion(discussionId);
    final messageIndex = messages.indexWhere((m) => m.id == messageId);
    if (messageIndex == -1) return;
    
    final message = messages[messageIndex];
    if (!message.canEdit(_currentUserId!)) return;
    
    final updatedMessage = message.copyWith(
      content: newContent,
      dateEdited: DateTime.now(),
      isEdited: true,
    );
    
    final newMessagesByDiscussion = Map<String, List<DiscussionMessage>>.from(state.messagesByDiscussion);
    final updatedMessages = List<DiscussionMessage>.from(messages);
    updatedMessages[messageIndex] = updatedMessage;
    newMessagesByDiscussion[discussionId] = updatedMessages;
    
    state = state.copyWith(
      messagesByDiscussion: newMessagesByDiscussion,
      error: null,
    );
  }

  /// Delete a message
  void deleteMessage(String discussionId, String messageId) {
    if (_currentUserId == null) return;
    
    final messages = state.getMessagesForDiscussion(discussionId);
    final messageIndex = messages.indexWhere((m) => m.id == messageId);
    if (messageIndex == -1) return;
    
    final message = messages[messageIndex];
    if (!message.canDelete(_currentUserId!)) return;
    
    final updatedMessage = message.copyWith(status: MessageStatus.deleted);
    
    final newMessagesByDiscussion = Map<String, List<DiscussionMessage>>.from(state.messagesByDiscussion);
    final updatedMessages = List<DiscussionMessage>.from(messages);
    updatedMessages[messageIndex] = updatedMessage;
    newMessagesByDiscussion[discussionId] = updatedMessages;
    
    state = state.copyWith(
      messagesByDiscussion: newMessagesByDiscussion,
      error: null,
    );
  }

  /// Add a reaction to a message
  void addReaction(String discussionId, String messageId, ReactionType reactionType) {
    if (_currentUserId == null) return;
    
    final messages = state.getMessagesForDiscussion(discussionId);
    final messageIndex = messages.indexWhere((m) => m.id == messageId);
    if (messageIndex == -1) return;
    
    final message = messages[messageIndex];
    final existingReactionIndex = message.reactions.indexWhere((r) => r.type == reactionType);
    
    List<MessageReaction> updatedReactions;
    if (existingReactionIndex != -1) {
      // Update existing reaction
      final existingReaction = message.reactions[existingReactionIndex];
      if (existingReaction.users.contains(_currentUserId!)) {
        // Remove user's reaction
        final updatedUsers = existingReaction.users.where((id) => id != _currentUserId).toList();
        final updatedReaction = existingReaction.copyWith(
          count: existingReaction.count - 1,
          users: updatedUsers,
        );
        updatedReactions = List<MessageReaction>.from(message.reactions);
        updatedReactions[existingReactionIndex] = updatedReaction;
      } else {
        // Add user to reaction
        final updatedUsers = [...existingReaction.users, _currentUserId!];
        final updatedReaction = existingReaction.copyWith(
          count: existingReaction.count + 1,
          users: updatedUsers,
        );
        updatedReactions = List<MessageReaction>.from(message.reactions);
        updatedReactions[existingReactionIndex] = updatedReaction;
      }
    } else {
      // Create new reaction
      final newReaction = MessageReaction(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        type: reactionType,
        userId: _currentUserId!,
        count: 1,
        users: [_currentUserId!],
        dateCreated: DateTime.now(),
      );
      updatedReactions = [...message.reactions, newReaction];
    }
    
    final updatedMessage = message.copyWith(reactions: updatedReactions);
    
    final newMessagesByDiscussion = Map<String, List<DiscussionMessage>>.from(state.messagesByDiscussion);
    final updatedMessages = List<DiscussionMessage>.from(messages);
    updatedMessages[messageIndex] = updatedMessage;
    newMessagesByDiscussion[discussionId] = updatedMessages;
    
    state = state.copyWith(
      messagesByDiscussion: newMessagesByDiscussion,
      error: null,
    );
  }

  /// Add or update a chat room
  void updateChatRoom(GroupChatRoom chatRoom) {
    final newChatRoomsById = Map<String, GroupChatRoom>.from(state.chatRoomsById);
    newChatRoomsById[chatRoom.id] = chatRoom;
    
    final newChatRoomsByGroup = Map<String, List<GroupChatRoom>>.from(state.chatRoomsByGroup);
    final groupChatRooms = List<GroupChatRoom>.from(
      newChatRoomsByGroup[chatRoom.groupId] ?? []
    );
    
    final existingIndex = groupChatRooms.indexWhere((r) => r.id == chatRoom.id);
    if (existingIndex != -1) {
      groupChatRooms[existingIndex] = chatRoom;
    } else {
      groupChatRooms.add(chatRoom);
    }
    
    newChatRoomsByGroup[chatRoom.groupId] = groupChatRooms;
    
    state = state.copyWith(
      chatRoomsById: newChatRoomsById,
      chatRoomsByGroup: newChatRoomsByGroup,
      error: null,
    );
  }

  /// Select a chat room
  void selectChatRoom(String chatRoomId) {
    state = state.copyWith(selectedChatRoomId: chatRoomId);
  }

  /// Create a new chat room
  void createChatRoom({
    required String groupId,
    required String name,
    required String description,
    required ChatRoomType type,
    ChatRoomPrivacy privacy = ChatRoomPrivacy.public,
    int? maxParticipants,
    String? discussionId,
    String? bookId,
  }) {
    if (_currentUserId == null) return;
    
    final newChatRoom = GroupChatRoom(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      groupId: groupId,
      name: name,
      description: description,
      type: type,
      privacy: privacy,
      maxParticipants: maxParticipants,
      participants: [_currentUserId!],
      moderators: [_currentUserId!],
      rules: [
        'Be respectful to all participants',
        'Stay on topic',
        'No personal attacks',
        'Use spoiler warnings when appropriate',
      ],
      isActive: true,
      dateCreated: DateTime.now(),
      lastActivity: DateTime.now(),
      status: ChatRoomStatus.active,
      discussionId: discussionId,
      bookId: bookId,
      settings: const ChatRoomSettings(
        allowFileSharing: true,
        allowImages: true,
        allowLinks: true,
        allowSpoilers: true,
        enableReactions: true,
        allowEditing: true,
        allowDeletion: false,
        messageRetentionDays: 30,
        requireModeration: false,
        enableProfanityFilter: true,
        enableAutoModeration: false,
      ),
    );
    
    updateChatRoom(newChatRoom);
  }

  /// Join a chat room
  void joinChatRoom(String chatRoomId) {
    if (_currentUserId == null) return;
    
    final chatRoom = state.getChatRoomById(chatRoomId);
    if (chatRoom == null || !chatRoom.isActive) return;
    
    if (chatRoom.participants.contains(_currentUserId!)) return;
    
    final updatedChatRoom = chatRoom.copyWith(
      participants: [...chatRoom.participants, _currentUserId!],
      lastActivity: DateTime.now(),
    );
    
    updateChatRoom(updatedChatRoom);
  }

  /// Leave a chat room
  void leaveChatRoom(String chatRoomId) {
    if (_currentUserId == null) return;
    
    final chatRoom = state.getChatRoomById(chatRoomId);
    if (chatRoom == null) return;
    
    if (!chatRoom.participants.contains(_currentUserId!)) return;
    
    final updatedParticipants = chatRoom.participants
        .where((id) => id != _currentUserId)
        .toList();
    
    final updatedChatRoom = chatRoom.copyWith(
      participants: updatedParticipants,
      lastActivity: DateTime.now(),
    );
    
    updateChatRoom(updatedChatRoom);
  }

  /// Search discussions
  void searchDiscussions(String query, {String? groupId}) {
    if (query.isEmpty) return;
    
    final discussions = groupId != null
        ? state.getDiscussionsForGroup(groupId)
        : state.discussionsById.values.toList();
    
    final results = discussions.where((discussion) {
      final lowercaseQuery = query.toLowerCase();
      return discussion.title.toLowerCase().contains(lowercaseQuery) ||
             discussion.content.toLowerCase().contains(lowercaseQuery) ||
             discussion.tags.any((tag) => tag.toLowerCase().contains(lowercaseQuery));
    }).toList();
    
    // Sort by relevance and activity
    results.sort((a, b) {
      // Exact title matches first
      final aExactMatch = a.title.toLowerCase() == query.toLowerCase();
      final bExactMatch = b.title.toLowerCase() == query.toLowerCase();
      
      if (aExactMatch && !bExactMatch) return -1;
      if (!aExactMatch && bExactMatch) return 1;
      
      // Then by engagement score
      return b.engagementScore.compareTo(a.engagementScore);
    });
    
    // TODO: Update state with search results
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
