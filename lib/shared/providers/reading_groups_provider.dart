import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/reading_group.dart';
import '../models/user_profile.dart';
import 'auth_provider.dart';
import 'user_profiles_provider.dart';

/// Provider for managing reading groups
final readingGroupsProvider = StateNotifierProvider<ReadingGroupsNotifier, ReadingGroupsState>((ref) {
  final authState = ref.watch(authProvider);
  return ReadingGroupsNotifier(authState.user?.uid);
});

/// State for reading groups
class ReadingGroupsState {
  final Map<String, ReadingGroup> groupsById;
  final List<ReadingGroup> userGroups;
  final List<ReadingGroup> recommendedGroups;
  final List<ReadingGroup> searchResults;
  final bool isLoading;
  final String? error;
  final String? selectedGroupId;
  final String? currentUserId;

  const ReadingGroupsState({
    this.groupsById = const {},
    this.userGroups = const [],
    this.recommendedGroups = const [],
    this.searchResults = const [],
    this.isLoading = false,
    this.error,
    this.selectedGroupId,
    this.currentUserId,
  });

  ReadingGroupsState copyWith({
    Map<String, ReadingGroup>? groupsById,
    List<ReadingGroup>? userGroups,
    List<ReadingGroup>? recommendedGroups,
    List<ReadingGroup>? searchResults,
    bool? isLoading,
    String? error,
    String? selectedGroupId,
    String? currentUserId,
  }) {
    return ReadingGroupsState(
      groupsById: groupsById ?? this.groupsById,
      userGroups: userGroups ?? this.userGroups,
      recommendedGroups: recommendedGroups ?? this.recommendedGroups,
      searchResults: searchResults ?? this.searchResults,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      selectedGroupId: selectedGroupId ?? this.selectedGroupId,
      currentUserId: currentUserId ?? this.currentUserId,
    );
  }

  /// Get a specific reading group by ID
  ReadingGroup? getGroupById(String groupId) {
    return groupsById[groupId];
  }

  /// Get the currently selected group
  ReadingGroup? get selectedGroup {
    if (selectedGroupId == null) return null;
    return getGroupById(selectedGroupId!);
  }

  /// Get groups where the current user is a member
  List<ReadingGroup> get currentUserGroups {
    if (currentUserId == null) return [];
    return userGroups.where((group) => group.isMember(currentUserId!)).toList();
  }

  /// Get groups where the current user is a moderator
  List<ReadingGroup> get currentUserModeratedGroups {
    if (currentUserId == null) return [];
    return userGroups.where((group) => group.isModerator(currentUserId!)).toList();
  }

  /// Get groups where the current user is the creator
  List<ReadingGroup> get currentUserCreatedGroups {
    if (currentUserId == null) return [];
    return userGroups.where((group) => group.isCreator(currentUserId!)).toList();
  }

  /// Get search results
  List<ReadingGroup> get searchResultsList => searchResults;
}

/// Notifier for managing reading groups
class ReadingGroupsNotifier extends StateNotifier<ReadingGroupsState> {
  final String? _currentUserId;

  ReadingGroupsNotifier(this._currentUserId) : super(const ReadingGroupsState()) {
    if (_currentUserId != null) {
      state = state.copyWith(currentUserId: _currentUserId);
    }
  }

  /// Add or update a reading group
  void updateGroup(ReadingGroup group) {
    final newGroupsById = Map<String, ReadingGroup>.from(state.groupsById);
    newGroupsById[group.id] = group;
    
    // Update user groups if current user is a member
    final newUserGroups = List<ReadingGroup>.from(state.userGroups);
    final existingIndex = newUserGroups.indexWhere((g) => g.id == group.id);
    
    if (existingIndex != -1) {
      newUserGroups[existingIndex] = group;
    } else if (group.isMember(_currentUserId ?? '')) {
      newUserGroups.add(group);
    }
    
    state = state.copyWith(
      groupsById: newGroupsById,
      userGroups: newUserGroups,
      error: null,
    );
  }

  /// Remove a reading group
  void removeGroup(String groupId) {
    final newGroupsById = Map<String, ReadingGroup>.from(state.groupsById);
    newGroupsById.remove(groupId);
    
    final newUserGroups = state.userGroups.where((group) => group.id != groupId).toList();
    
    state = state.copyWith(
      groupsById: newGroupsById,
      userGroups: newUserGroups,
      selectedGroupId: state.selectedGroupId == groupId ? null : state.selectedGroupId,
      error: null,
    );
  }

  /// Select a reading group
  void selectGroup(String groupId) {
    state = state.copyWith(selectedGroupId: groupId);
  }

  /// Create a new reading group
  void createGroup({
    required String name,
    required String description,
    required String primaryGenre,
    List<String>? tags,
    GroupPrivacy privacy = GroupPrivacy.public,
    int? maxMembers,
    double readingPace = 1.0,
  }) {
    if (_currentUserId == null) return;
    
    final newGroup = ReadingGroup.defaultGroup(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      description: description,
      creatorId: _currentUserId!,
      primaryGenre: primaryGenre,
    ).copyWith(
      tags: tags ?? [primaryGenre],
      privacy: privacy,
      maxMembers: maxMembers,
      readingPace: readingPace,
    );
    
    updateGroup(newGroup);
  }

  /// Join a reading group
  void joinGroup(String groupId) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null || !group.isAcceptingMembers) return;
    
    // Check if user is already a member
    if (group.isMember(_currentUserId!)) return;
    
    // Check if user has a pending request
    if (group.hasPendingRequest(_currentUserId!)) return;
    
    // Create join request
    final joinRequest = JoinRequest(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      userId: _currentUserId!,
      displayName: 'Current User', // TODO: Get from user profile
      requestDate: DateTime.now(),
      status: RequestStatus.pending,
    );
    
    final updatedGroup = group.copyWith(
      pendingRequests: [...group.pendingRequests, joinRequest],
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Leave a reading group
  void leaveGroup(String groupId) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null) return;
    
    // Check if user is a member
    if (!group.isMember(_currentUserId!)) return;
    
    // Check if user is the creator (creators cannot leave, only delete the group)
    if (group.isCreator(_currentUserId!)) return;
    
    // Remove user from members
    final updatedMembers = group.members
        .where((member) => member.userId != _currentUserId)
        .toList();
    
    final updatedGroup = group.copyWith(
      members: updatedMembers,
      memberCount: updatedMembers.length,
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Approve a join request
  void approveJoinRequest(String groupId, String requestId) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null) return;
    
    // Check if current user is a moderator
    if (!group.isModerator(_currentUserId!)) return;
    
    final request = group.pendingRequests.firstWhere((r) => r.id == requestId);
    if (request.status != RequestStatus.pending) return;
    
    // Update request status
    final updatedRequests = group.pendingRequests.map((r) {
      if (r.id == requestId) {
        return r.copyWith(
          status: RequestStatus.approved,
          processedBy: _currentUserId,
          processedDate: DateTime.now(),
        );
      }
      return r;
    }).toList();
    
    // Add user to members
    final newMember = GroupMember(
      userId: request.userId,
      displayName: request.displayName,
      profilePictureUrl: request.profilePictureUrl,
      role: GroupRole.member,
      dateJoined: DateTime.now(),
      isActive: true,
      readingProgress: 0,
      contributionScore: 0,
      lastActivity: DateTime.now(),
      readingStats: const MemberReadingStats(
        booksCompleted: 0,
        pagesRead: 0,
        discussionPosts: 0,
        challengesCompleted: 0,
        attendanceRate: 0.0,
      ),
    );
    
    final updatedGroup = group.copyWith(
      pendingRequests: updatedRequests,
      members: [...group.members, newMember],
      memberCount: group.members.length + 1,
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Reject a join request
  void rejectJoinRequest(String groupId, String requestId, {String? reason}) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null) return;
    
    // Check if current user is a moderator
    if (!group.isModerator(_currentUserId!)) return;
    
    final updatedRequests = group.pendingRequests.map((r) {
      if (r.id == requestId) {
        return r.copyWith(
          status: RequestStatus.rejected,
          processedBy: _currentUserId,
          processedDate: DateTime.now(),
          processingNotes: reason,
        );
      }
      return r;
    }).toList();
    
    final updatedGroup = group.copyWith(
      pendingRequests: updatedRequests,
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Add a discussion topic
  void addDiscussionTopic(String groupId, {
    required String title,
    required String description,
    required TopicCategory category,
    List<String>? tags,
  }) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null) return;
    
    // Check if user is a member
    if (!group.isMember(_currentUserId!)) return;
    
    final newTopic = DiscussionTopic(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      description: description,
      creatorId: _currentUserId!,
      dateCreated: DateTime.now(),
      lastActivity: DateTime.now(),
      replyCount: 0,
      tags: tags ?? [],
      isPinned: false,
      isLocked: false,
      category: category,
    );
    
    final updatedGroup = group.copyWith(
      discussionTopics: [...group.discussionTopics, newTopic],
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Pin/unpin a discussion topic
  void toggleTopicPin(String groupId, String topicId) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null) return;
    
    // Check if current user is a moderator
    if (!group.isModerator(_currentUserId!)) return;
    
    final updatedTopics = group.discussionTopics.map((topic) {
      if (topic.id == topicId) {
        return topic.copyWith(isPinned: !topic.isPinned);
      }
      return topic;
    }).toList();
    
    final updatedGroup = group.copyWith(
      discussionTopics: updatedTopics,
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Lock/unlock a discussion topic
  void toggleTopicLock(String groupId, String topicId) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null) return;
    
    // Check if current user is a moderator
    if (!group.isModerator(_currentUserId!)) return;
    
    final updatedTopics = group.discussionTopics.map((topic) {
      if (topic.id == topicId) {
        return topic.copyWith(isLocked: !topic.isLocked);
      }
      return topic;
    }).toList();
    
    final updatedGroup = group.copyWith(
      discussionTopics: updatedTopics,
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Add a reading goal to the group
  void addReadingGoal(String groupId, {
    required String description,
    required int target,
    required DateTime deadline,
  }) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null) return;
    
    // Check if current user is a moderator
    if (!group.isModerator(_currentUserId!)) return;
    
    final newGoal = ReadingGoal(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      description: description,
      target: target,
      progress: 0,
      deadline: deadline,
      isAchieved: false,
    );
    
    final updatedGoals = [...group.readingSchedule.goals, newGoal];
    final updatedSchedule = group.readingSchedule.copyWith(goals: updatedGoals);
    
    final updatedGroup = group.copyWith(
      readingSchedule: updatedSchedule,
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Update reading goal progress
  void updateGoalProgress(String groupId, String goalId, int progress) {
    if (_currentUserId == null) return;
    
    final group = state.getGroupById(groupId);
    if (group == null) return;
    
    // Check if user is a member
    if (!group.isMember(_currentUserId!)) return;
    
    final updatedGoals = group.readingSchedule.goals.map((goal) {
      if (goal.id == goalId) {
        final isAchieved = progress >= goal.target;
        return goal.copyWith(
          progress: progress,
          isAchieved: isAchieved,
        );
      }
      return goal;
    }).toList();
    
    final updatedSchedule = group.readingSchedule.copyWith(goals: updatedGoals);
    
    final updatedGroup = group.copyWith(
      readingSchedule: updatedSchedule,
      dateUpdated: DateTime.now(),
    );
    
    updateGroup(updatedGroup);
  }

  /// Search for reading groups
  void searchGroups(String query) {
    if (query.isEmpty) {
      state = state.copyWith(searchResults: []);
      return;
    }
    
    final results = state.groupsById.values.where((group) {
      final lowercaseQuery = query.toLowerCase();
      return group.name.toLowerCase().contains(lowercaseQuery) ||
             group.description.toLowerCase().contains(lowercaseQuery) ||
             group.primaryGenre.toLowerCase().contains(lowercaseQuery) ||
             group.tags.any((tag) => tag.toLowerCase().contains(lowercaseQuery));
    }).toList();
    
    // Sort by relevance and activity
    results.sort((a, b) {
      // Exact name matches first
      final aExactMatch = a.name.toLowerCase() == query.toLowerCase();
      final bExactMatch = b.name.toLowerCase() == query.toLowerCase();
      
      if (aExactMatch && !bExactMatch) return -1;
      if (!aExactMatch && bExactMatch) return 1;
      
      // Then by member count and activity
      if (a.memberCount != b.memberCount) {
        return b.memberCount.compareTo(a.memberCount);
      }
      
      return b.dateUpdated.compareTo(a.dateUpdated);
    });
    
    state = state.copyWith(
      searchResults: results,
      error: null,
    );
  }

  /// Clear search results
  void clearSearch() {
    state = state.copyWith(searchResults: []);
  }

  /// Get recommended groups for the current user
  void loadRecommendedGroups() {
    if (_currentUserId == null) return;
    
    // TODO: Implement recommendation algorithm
    // For now, return public groups that match user's favorite genres
    final userProfile = state.groupsById[_currentUserId];
    if (userProfile == null) return;
    
    final userGenres = userProfile.favoriteGenres;
    final recommendations = state.groupsById.values.where((group) {
      return group.privacy == GroupPrivacy.public &&
             group.isActive &&
             group.status == GroupStatus.open &&
             !group.isMember(_currentUserId!) &&
             group.tags.any((tag) => userGenres.contains(tag));
    }).toList();
    
    // Sort by relevance and popularity
    recommendations.sort((a, b) {
      // Genre overlap count
      final aOverlap = a.tags.where((tag) => userGenres.contains(tag)).length;
      final bOverlap = b.tags.where((tag) => userGenres.contains(tag)).length;
      
      if (aOverlap != bOverlap) return bOverlap.compareTo(aOverlap);
      
      // Then by member count
      return b.memberCount.compareTo(a.memberCount);
    });
    
    state = state.copyWith(
      recommendedGroups: recommendations.take(10).toList(),
      error: null,
    );
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
