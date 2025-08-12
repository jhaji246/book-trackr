import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_profile.dart';
import '../models/book_review.dart';
import '../models/reading_list.dart';
import 'auth_provider.dart';
import 'reviews_provider.dart';
import 'reading_lists_provider.dart';

/// Provider for managing user profiles
final userProfilesProvider = StateNotifierProvider<UserProfilesNotifier, UserProfilesState>((ref) {
  final authState = ref.watch(authProvider);
  return UserProfilesNotifier(authState.user?.uid);
});

/// State for user profiles
class UserProfilesState {
  final Map<String, UserProfile> profilesById;
  final Map<String, List<String>> userConnections;
  final List<UserProfile> searchResults;
  final bool isLoading;
  final String? error;
  final String? selectedProfileId;
  final String? currentUserId;

  const UserProfilesState({
    this.profilesById = const {},
    this.userConnections = const {},
    this.searchResults = const [],
    this.isLoading = false,
    this.error,
    this.selectedProfileId,
    this.currentUserId,
  });

  UserProfilesState copyWith({
    Map<String, UserProfile>? profilesById,
    Map<String, List<String>>? userConnections,
    List<UserProfile>? searchResults,
    bool? isLoading,
    String? error,
    String? selectedProfileId,
    String? currentUserId,
  }) {
    return UserProfilesState(
      profilesById: profilesById ?? this.profilesById,
      userConnections: userConnections ?? this.userConnections,
      searchResults: searchResults ?? this.searchResults,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      selectedProfileId: selectedProfileId ?? this.selectedProfileId,
      currentUserId: currentUserId ?? this.currentUserId,
    );
  }

  /// Get a specific user profile by ID
  UserProfile? getProfileById(String userId) {
    return profilesById[userId];
  }

  /// Get the currently selected profile
  UserProfile? get selectedProfile {
    if (selectedProfileId == null) return null;
    return getProfileById(selectedProfileId!);
  }

  /// Get the current user's profile
  UserProfile? get currentUserProfile {
    if (currentUserId == null) return null;
    return getProfileById(currentUserId!);
  }

  /// Get user connections
  List<String> getUserConnections(String userId) {
    return userConnections[userId] ?? [];
  }

  /// Check if two users are connected
  bool areUsersConnected(String userId1, String userId2) {
    final connections1 = getUserConnections(userId1);
    final connections2 = getUserConnections(userId2);
    return connections1.contains(userId2) || connections2.contains(userId1);
  }

  /// Get search results
  List<UserProfile> get searchResultsList => searchResults;
}

/// Notifier for managing user profiles
class UserProfilesNotifier extends StateNotifier<UserProfilesState> {
  final String? _currentUserId;

  UserProfilesNotifier(this._currentUserId) : super(const UserProfilesState()) {
    if (_currentUserId != null) {
      state = state.copyWith(currentUserId: _currentUserId);
    }
  }

  /// Add or update a user profile
  void updateProfile(UserProfile profile) {
    final newProfilesById = Map<String, UserProfile>.from(state.profilesById);
    newProfilesById[profile.id] = profile;
    
    state = state.copyWith(
      profilesById: newProfilesById,
      error: null,
    );
  }

  /// Remove a user profile
  void removeProfile(String userId) {
    final newProfilesById = Map<String, UserProfile>.from(state.profilesById);
    newProfilesById.remove(userId);
    
    final newUserConnections = Map<String, List<String>>.from(state.userConnections);
    newUserConnections.remove(userId);
    
    state = state.copyWith(
      profilesById: newProfilesById,
      userConnections: newUserConnections,
      error: null,
    );
  }

  /// Select a user profile
  void selectProfile(String profileId) {
    state = state.copyWith(selectedProfileId: profileId);
  }

  /// Follow a user
  void followUser(String targetUserId) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    if (currentProfile == null) return;
    
    final updatedProfile = currentProfile.copyWith(
      socialConnections: currentProfile.socialConnections.copyWith(
        following: [...currentProfile.socialConnections.following, targetUserId],
      ),
    );
    
    updateProfile(updatedProfile);
    
    // Update target user's followers
    final targetProfile = state.getProfileById(targetUserId);
    if (targetProfile != null) {
      final updatedTargetProfile = targetProfile.copyWith(
        socialConnections: targetProfile.socialConnections.copyWith(
          followers: [...targetProfile.socialConnections.followers, _currentUserId!],
        ),
      );
      updateProfile(updatedTargetProfile);
    }
  }

  /// Unfollow a user
  void unfollowUser(String targetUserId) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    if (currentProfile == null) return;
    
    final updatedProfile = currentProfile.copyWith(
      socialConnections: currentProfile.socialConnections.copyWith(
        following: currentProfile.socialConnections.following
            .where((id) => id != targetUserId)
            .toList(),
      ),
    );
    
    updateProfile(updatedProfile);
    
    // Update target user's followers
    final targetProfile = state.getProfileById(targetUserId);
    if (targetProfile != null) {
      final updatedTargetProfile = targetProfile.copyWith(
        socialConnections: targetProfile.socialConnections.copyWith(
          followers: targetProfile.socialConnections.followers
              .where((id) => id != _currentUserId)
              .toList(),
        ),
      );
      updateProfile(updatedTargetProfile);
    }
  }

  /// Send friend request
  void sendFriendRequest(String targetUserId) {
    // TODO: Implement friend request system
    // This would typically involve creating a friend request record
    // and notifying the target user
  }

  /// Accept friend request
  void acceptFriendRequest(String requesterId) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    final requesterProfile = state.getProfileById(requesterId);
    
    if (currentProfile == null || requesterProfile == null) return;
    
    // Add to current user's friends
    final updatedCurrentProfile = currentProfile.copyWith(
      socialConnections: currentProfile.socialConnections.copyWith(
        friends: [...currentProfile.socialConnections.friends, requesterId],
      ),
    );
    
    // Add to requester's friends
    final updatedRequesterProfile = requesterProfile.copyWith(
      socialConnections: requesterProfile.socialConnections.copyWith(
        friends: [...requesterProfile.socialConnections.friends, _currentUserId!],
      ),
    );
    
    updateProfile(updatedCurrentProfile);
    updateProfile(updatedRequesterProfile);
  }

  /// Remove friend
  void removeFriend(String friendId) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    final friendProfile = state.getProfileById(friendId);
    
    if (currentProfile == null || friendProfile == null) return;
    
    // Remove from current user's friends
    final updatedCurrentProfile = currentProfile.copyWith(
      socialConnections: currentProfile.socialConnections.copyWith(
        friends: currentProfile.socialConnections.friends
            .where((id) => id != friendId)
            .toList(),
      ),
    );
    
    // Remove from friend's friends
    final updatedFriendProfile = friendProfile.copyWith(
      socialConnections: friendProfile.socialConnections.copyWith(
        friends: friendProfile.socialConnections.friends
            .where((id) => id != _currentUserId)
            .toList(),
      ),
    );
    
    updateProfile(updatedCurrentProfile);
    updateProfile(updatedFriendProfile);
  }

  /// Block a user
  void blockUser(String targetUserId) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    if (currentProfile == null) return;
    
    final updatedProfile = currentProfile.copyWith(
      socialConnections: currentProfile.socialConnections.copyWith(
        blocked: [...currentProfile.socialConnections.blocked, targetUserId],
        // Remove from following and friends if present
        following: currentProfile.socialConnections.following
            .where((id) => id != targetUserId)
            .toList(),
        friends: currentProfile.socialConnections.friends
            .where((id) => id != targetUserId)
            .toList(),
      ),
    );
    
    updateProfile(updatedProfile);
  }

  /// Unblock a user
  void unblockUser(String targetUserId) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    if (currentProfile == null) return;
    
    final updatedProfile = currentProfile.copyWith(
      socialConnections: currentProfile.socialConnections.copyWith(
        blocked: currentProfile.socialConnections.blocked
            .where((id) => id != targetUserId)
            .toList(),
      ),
    );
    
    updateProfile(updatedProfile);
  }

  /// Search for users
  void searchUsers(String query) {
    if (query.isEmpty) {
      state = state.copyWith(searchResults: []);
      return;
    }
    
    final results = state.profilesById.values.where((profile) {
      final lowercaseQuery = query.toLowerCase();
      return profile.displayName.toLowerCase().contains(lowercaseQuery) ||
             (profile.bio?.toLowerCase().contains(lowercaseQuery) ?? false) ||
             profile.favoriteGenres.any((genre) => 
                 genre.toLowerCase().contains(lowercaseQuery));
    }).toList();
    
    // Sort by relevance (exact name matches first)
    results.sort((a, b) {
      final aExactMatch = a.displayName.toLowerCase() == query.toLowerCase();
      final bExactMatch = b.displayName.toLowerCase() == query.toLowerCase();
      
      if (aExactMatch && !bExactMatch) return -1;
      if (!aExactMatch && bExactMatch) return 1;
      
      return a.displayName.compareTo(b.displayName);
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

  /// Get recommended users to follow
  List<UserProfile> getRecommendedUsers() {
    if (_currentUserId == null) return [];
    
    final currentProfile = state.currentUserProfile;
    if (currentProfile == null) return [];
    
    final currentUserGenres = currentProfile.favoriteGenres;
    final following = currentProfile.socialConnections.following;
    
    return state.profilesById.values.where((profile) {
      // Don't recommend current user or already following
      if (profile.id == _currentUserId || following.contains(profile.id)) {
        return false;
      }
      
      // Check if profile is public and searchable
      if (!profile.isSearchable) return false;
      
      // Check for genre overlap
      final hasGenreOverlap = profile.favoriteGenres
          .any((genre) => currentUserGenres.contains(genre));
      
      return hasGenreOverlap;
    }).toList()
      ..sort((a, b) {
        // Sort by genre overlap count
        final aOverlap = a.favoriteGenres
            .where((genre) => currentUserGenres.contains(genre))
            .length;
        final bOverlap = b.favoriteGenres
            .where((genre) => currentUserGenres.contains(genre))
            .length;
        
        if (aOverlap != bOverlap) return bOverlap.compareTo(aOverlap);
        
        // Then by follower count
        return b.followerCount.compareTo(a.followerCount);
      });
  }

  /// Get user's reading activity feed
  List<Map<String, dynamic>> getUserActivityFeed(String userId) {
    // TODO: Implement activity feed
    // This would combine reading progress updates, reviews, list changes, etc.
    return [];
  }

  /// Get mutual friends between two users
  List<UserProfile> getMutualFriends(String userId1, String userId2) {
    final profile1 = state.getProfileById(userId1);
    final profile2 = state.getProfileById(userId2);
    
    if (profile1 == null || profile2 == null) return [];
    
    final friends1 = profile1.socialConnections.friends;
    final friends2 = profile2.socialConnections.friends;
    
    final mutualIds = friends1.where((id) => friends2.contains(id)).toList();
    
    return mutualIds
        .map((id) => state.getProfileById(id))
        .where((profile) => profile != null)
        .cast<UserProfile>()
        .toList();
  }

  /// Update user's reading preferences
  void updateReadingPreferences(ReadingPreferences preferences) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    if (currentProfile == null) return;
    
    final updatedProfile = currentProfile.copyWith(
      readingPreferences: preferences,
      dateUpdated: DateTime.now(),
    );
    
    updateProfile(updatedProfile);
  }

  /// Update user's privacy settings
  void updatePrivacySettings(PrivacySettings settings) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    if (currentProfile == null) return;
    
    final updatedProfile = currentProfile.copyWith(
      privacySettings: settings,
      dateUpdated: DateTime.now(),
    );
    
    updateProfile(updatedProfile);
  }

  /// Update user's notification preferences
  void updateNotificationPreferences(NotificationPreferences preferences) {
    if (_currentUserId == null) return;
    
    final currentProfile = state.currentUserProfile;
    if (currentProfile == null) return;
    
    final updatedProfile = currentProfile.copyWith(
      notificationPreferences: preferences,
      dateUpdated: DateTime.now(),
    );
    
    updateProfile(updatedProfile);
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
