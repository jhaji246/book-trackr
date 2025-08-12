import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/group_reading_progress.dart' as progress;
import '../models/reading_group.dart' as group;
import 'auth_provider.dart';
import 'reading_groups_provider.dart';

/// Provider for managing group reading progress
final groupReadingProgressProvider = StateNotifierProvider<GroupReadingProgressNotifier, GroupReadingProgressState>((ref) {
  final authState = ref.watch(authProvider);
  return GroupReadingProgressNotifier(authState.user?.uid);
});

/// State for group reading progress
class GroupReadingProgressState {
  final Map<String, progress.GroupBookSelection> bookSelectionsByGroup;
  final Map<String, List<progress.MemberReadingProgress>> memberProgressByGroup;
  final Map<String, List<progress.GroupReadingChallenge>> challengesByGroup;
  final String? selectedGroupId;
  final bool isLoading;
  final String? error;
  final String? currentUserId;

  const GroupReadingProgressState({
    this.bookSelectionsByGroup = const {},
    this.memberProgressByGroup = const {},
    this.challengesByGroup = const {},
    this.selectedGroupId,
    this.isLoading = false,
    this.error,
    this.currentUserId,
  });

  GroupReadingProgressState copyWith({
    Map<String, progress.GroupBookSelection>? bookSelectionsByGroup,
    Map<String, List<progress.MemberReadingProgress>>? memberProgressByGroup,
    Map<String, List<progress.GroupReadingChallenge>>? challengesByGroup,
    String? selectedGroupId,
    bool? isLoading,
    String? error,
    String? currentUserId,
  }) {
    return GroupReadingProgressState(
      bookSelectionsByGroup: bookSelectionsByGroup ?? this.bookSelectionsByGroup,
      memberProgressByGroup: memberProgressByGroup ?? this.memberProgressByGroup,
      challengesByGroup: challengesByGroup ?? this.challengesByGroup,
      selectedGroupId: selectedGroupId ?? this.selectedGroupId,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      currentUserId: currentUserId ?? this.currentUserId,
    );
  }

  /// Get book selection for a specific group
  progress.GroupBookSelection? getBookSelectionForGroup(String groupId) {
    return bookSelectionsByGroup[groupId];
  }

  /// Get member progress for a specific group
  List<progress.MemberReadingProgress> getMemberProgressForGroup(String groupId) {
    return memberProgressByGroup[groupId] ?? [];
  }

  /// Get challenges for a specific group
  List<progress.GroupReadingChallenge> getChallengesForGroup(String groupId) {
    return challengesByGroup[groupId] ?? [];
  }

  /// Get the currently selected group's book selection
  progress.GroupBookSelection? get selectedGroupBookSelection {
    if (selectedGroupId == null) return null;
    return getBookSelectionForGroup(selectedGroupId!);
  }

  /// Get the currently selected group's member progress
  List<progress.MemberReadingProgress> get selectedGroupMemberProgress {
    if (selectedGroupId == null) return [];
    return getMemberProgressForGroup(selectedGroupId!);
  }

  /// Get active challenges across all groups
  List<progress.GroupReadingChallenge> get activeChallenges {
    final allChallenges = <progress.GroupReadingChallenge>[];
    for (final challenges in challengesByGroup.values) {
      allChallenges.addAll(challenges.where((c) => c.isActive));
    }
    return allChallenges;
  }

  /// Get groups with active book selections
  List<String> get groupsWithActiveBooks {
    return bookSelectionsByGroup.entries
        .where((entry) => entry.value.isActive)
        .map((entry) => entry.key)
        .toList();
  }
}

/// Notifier for managing group reading progress
class GroupReadingProgressNotifier extends StateNotifier<GroupReadingProgressState> {
  final String? _currentUserId;

  GroupReadingProgressNotifier(this._currentUserId) : super(const GroupReadingProgressState()) {
    if (_currentUserId != null) {
      state = state.copyWith(currentUserId: _currentUserId);
    }
  }

  /// Select a group for viewing progress
  void selectGroup(String groupId) {
    state = state.copyWith(selectedGroupId: groupId);
  }

  /// Add or update a book selection for a group
  void updateBookSelection(String groupId, progress.GroupBookSelection bookSelection) {
    final newBookSelectionsByGroup = Map<String, progress.GroupBookSelection>.from(state.bookSelectionsByGroup);
    newBookSelectionsByGroup[groupId] = bookSelection;
    
    state = state.copyWith(
      bookSelectionsByGroup: newBookSelectionsByGroup,
      error: null,
    );
  }

  /// Remove book selection for a group
  void removeBookSelection(String groupId) {
    final newBookSelectionsByGroup = Map<String, progress.GroupBookSelection>.from(state.bookSelectionsByGroup);
    newBookSelectionsByGroup.remove(groupId);
    
    state = state.copyWith(
      bookSelectionsByGroup: newBookSelectionsByGroup,
      error: null,
    );
  }

  /// Create a new book selection for a group
  void createBookSelection({
    required String groupId,
    required String bookId,
    required String title,
    required String author,
    String? coverUrl,
    required int totalPages,
    required int pagesPerWeek,
  }) {
    final newBookSelection = progress.GroupBookSelection.defaultSelection(
      bookId: bookId,
      title: title,
      author: author,
      coverUrl: coverUrl,
      totalPages: totalPages,
      pagesPerWeek: pagesPerWeek,
    );
    
    updateBookSelection(groupId, newBookSelection);
  }

  /// Update group reading progress
  void updateGroupProgress(String groupId, double newProgress) {
    final bookSelection = state.getBookSelectionForGroup(groupId);
    if (bookSelection == null) return;
    
    final updatedBookSelection = bookSelection.copyWith(
      currentProgress: newProgress,
      currentWeek: _calculateCurrentWeek(bookSelection.startDate, newProgress),
    );
    
    updateBookSelection(groupId, updatedBookSelection);
  }

  /// Add or update member reading progress
  void updateMemberProgress(String groupId, progress.MemberReadingProgress progress) {
    final newMemberProgressByGroup = Map<String, List<progress.MemberReadingProgress>>.from(state.memberProgressByGroup);
    final groupProgress = List<progress.MemberReadingProgress>.from(
      newMemberProgressByGroup[groupId] ?? []
    );
    
    final existingIndex = groupProgress.indexWhere((p) => p.userId == progress.userId);
    if (existingIndex != -1) {
      groupProgress[existingIndex] = progress;
    } else {
      groupProgress.add(progress);
    }
    
    newMemberProgressByGroup[groupId] = groupProgress;
    
    state = state.copyWith(
      memberProgressByGroup: newMemberProgressByGroup,
      error: null,
    );
    
    // Update group progress based on member progress
    _updateGroupProgressFromMembers(groupId);
  }

  /// Update member's current page
  void updateMemberPage(String groupId, String userId, int newPage) {
    final memberProgress = state.getMemberProgressForGroup(groupId)
        .firstWhere((p) => p.userId == userId);
    
    final bookSelection = state.getBookSelectionForGroup(groupId);
    if (bookSelection == null) return;
    
    final progressPercentage = (newPage / memberProgress.totalPages) * 100;
    final readingSpeed = _calculateReadingSpeed(memberProgress.currentPage, newPage, memberProgress.lastUpdated);
    final isOnTrack = _checkIfOnTrack(newPage, bookSelection);
    final daysOffSchedule = _calculateDaysOffSchedule(newPage, bookSelection);
    
    final updatedProgress = memberProgress.copyWith(
      currentPage: newPage,
      progressPercentage: progressPercentage,
      lastUpdated: DateTime.now(),
      readingSpeed: readingSpeed,
      isOnTrack: isOnTrack,
      daysOffSchedule: daysOffSchedule,
      status: newPage > 0 ? progress.ReadingStatus.inProgress : progress.ReadingStatus.notStarted,
    );
    
    updateMemberProgress(groupId, updatedProgress);
  }

  /// Mark milestone as achieved by a member
  void markMilestoneAchieved(String groupId, String milestoneId, String userId) {
    final bookSelection = state.getBookSelectionForGroup(groupId);
    if (bookSelection == null) return;
    
    final updatedMilestones = bookSelection.milestones.map((milestone) {
      if (milestone.id == milestoneId) {
        final membersReached = List<String>.from(milestone.membersReached);
        if (!membersReached.contains(userId)) {
          membersReached.add(userId);
        }
        
        final isGroupAchieved = membersReached.length >= (bookSelection.totalMembersReading * 0.5);
        
        return milestone.copyWith(
          membersReached: membersReached,
          isGroupAchieved: isGroupAchieved,
          groupAchievementDate: isGroupAchieved ? DateTime.now() : milestone.groupAchievementDate,
        );
      }
      return milestone;
    }).toList();
    
    final updatedBookSelection = bookSelection.copyWith(
      milestones: updatedMilestones,
    );
    
    updateBookSelection(groupId, updatedBookSelection);
  }

  /// Add or update a reading challenge
  void updateChallenge(String groupId, progress.GroupReadingChallenge challenge) {
    final newChallengesByGroup = Map<String, List<progress.GroupReadingChallenge>>.from(state.challengesByGroup);
    final groupChallenges = List<progress.GroupReadingChallenge>.from(
      newChallengesByGroup[groupId] ?? []
    );
    
    final existingIndex = groupChallenges.indexWhere((c) => c.id == challenge.id);
    if (existingIndex != -1) {
      groupChallenges[existingIndex] = challenge;
    } else {
      groupChallenges.add(challenge);
    }
    
    newChallengesByGroup[groupId] = groupChallenges;
    
    state = state.copyWith(
      challengesByGroup: newChallengesByGroup,
      error: null,
    );
  }

  /// Create a new reading challenge
  void createChallenge({
    required String groupId,
    required String name,
    required String description,
    required progress.ChallengeType type,
    required progress.ChallengeDifficulty difficulty,
    required DateTime startDate,
    required DateTime endDate,
    required List<String> rules,
    required List<String> rewards,
  }) {
    final newChallenge = progress.GroupReadingChallenge(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      description: description,
      startDate: startDate,
      endDate: endDate,
      rules: rules,
      participants: [],
      rewards: rewards,
      type: type,
      difficulty: difficulty,
      isActive: true,
      progress: progress.ChallengeProgress(
        totalParticipants: 0,
        participantsCompleted: 0,
        averageProgress: 0.0,
        leaderboard: [],
        groupProgress: 0.0,
        daysRemaining: endDate.difference(DateTime.now()).inDays,
        isOnTrack: true,
      ),
    );
    
    updateChallenge(groupId, newChallenge);
  }

  /// Join a reading challenge
  void joinChallenge(String groupId, String challengeId) {
    if (_currentUserId == null) return;
    
    final challenges = state.getChallengesForGroup(groupId);
    final challenge = challenges.firstWhere((c) => c.id == challengeId);
    
    final newParticipant = progress.ChallengeParticipant(
      userId: _currentUserId!,
      displayName: 'Current User', // TODO: Get from user profile
      progress: 0,
      rank: challenge.participants.length + 1,
      isCompleted: false,
      score: 0,
    );
    
    final updatedParticipants = [...challenge.participants, newParticipant];
    final updatedProgress = challenge.progress.copyWith(
      totalParticipants: updatedParticipants.length,
    );
    
    final updatedChallenge = challenge.copyWith(
      participants: updatedParticipants,
      progress: updatedProgress,
    );
    
    updateChallenge(groupId, updatedChallenge);
  }

  /// Update challenge progress for a participant
  void updateChallengeProgress(String groupId, String challengeId, String userId, int progress) {
    final challenges = state.getChallengesForGroup(groupId);
    final challenge = challenges.firstWhere((c) => c.id == challengeId);
    
    final updatedParticipants = challenge.participants.map((participant) {
      if (participant.userId == userId) {
        final isCompleted = progress >= 100; // Assuming 100% is completion
        return participant.copyWith(
          progress: progress,
          isCompleted: isCompleted,
          completionDate: isCompleted ? DateTime.now() : participant.completionDate,
          score: _calculateChallengeScore(progress, challenge.difficulty),
        );
      }
      return participant;
    }).toList();
    
    // Update leaderboard
    updatedParticipants.sort((a, b) => b.score.compareTo(a.score));
    final updatedLeaderboard = updatedParticipants.asMap().entries.map((entry) {
      return entry.value.copyWith(rank: entry.key + 1);
    }).toList();
    
    final updatedProgress = challenge.progress.copyWith(
      participantsCompleted: updatedParticipants.where((p) => p.isCompleted).length,
      averageProgress: updatedParticipants.map((p) => p.progress).reduce((a, b) => a + b) / updatedParticipants.length,
      leaderboard: updatedLeaderboard,
    );
    
    final updatedChallenge = challenge.copyWith(
      participants: updatedParticipants,
      progress: updatedProgress,
    );
    
    updateChallenge(groupId, updatedChallenge);
  }

  /// Calculate current week based on start date and progress
  int _calculateCurrentWeek(DateTime startDate, double progress) {
    final daysSinceStart = DateTime.now().difference(startDate).inDays;
    return (daysSinceStart / 7).ceil();
  }

  /// Calculate reading speed in pages per day
  double _calculateReadingSpeed(int oldPage, int newPage, DateTime lastUpdated) {
    final daysSinceUpdate = DateTime.now().difference(lastUpdated).inDays;
    if (daysSinceUpdate == 0) return 0.0;
    return (newPage - oldPage) / daysSinceUpdate;
  }

  /// Check if member is on track with group pace
  bool _checkIfOnTrack(int currentPage, progress.GroupBookSelection bookSelection) {
    final expectedPage = (bookSelection.currentProgress * bookSelection.totalPages).round();
    return currentPage >= expectedPage;
  }

  /// Calculate days ahead/behind schedule
  int _calculateDaysOffSchedule(int currentPage, progress.GroupBookSelection bookSelection) {
    final expectedPage = (bookSelection.currentProgress * bookSelection.totalPages).round();
    final pageDifference = currentPage - expectedPage;
    final daysDifference = (pageDifference / bookSelection.pagesPerWeek * 7).round();
    return daysDifference;
  }

  /// Update group progress based on member progress
  void _updateGroupProgressFromMembers(String groupId) {
    final memberProgress = state.getMemberProgressForGroup(groupId);
    if (memberProgress.isEmpty) return;
    
    final averageProgress = memberProgress.map((p) => p.progressPercentage).reduce((a, b) => a + b) / memberProgress.length;
    final membersFinished = memberProgress.where((p) => p.status == progress.ReadingStatus.completed).length;
    
    final bookSelection = state.getBookSelectionForGroup(groupId);
    if (bookSelection == null) return;
    
    final updatedBookSelection = bookSelection.copyWith(
      currentProgress: averageProgress / 100,
      membersFinished: membersFinished,
      totalMembersReading: memberProgress.length,
    );
    
    updateBookSelection(groupId, updatedBookSelection);
  }

  /// Calculate challenge score based on progress and difficulty
  int _calculateChallengeScore(int progress, progress.ChallengeDifficulty difficulty) {
    final baseScore = progress;
    final difficultyMultiplier = switch (difficulty) {
      progress.ChallengeDifficulty.easy => 1.0,
      progress.ChallengeDifficulty.medium => 1.5,
      progress.ChallengeDifficulty.hard => 2.0,
      progress.ChallengeDifficulty.expert => 3.0,
    };
    return (baseScore * difficultyMultiplier).round();
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
