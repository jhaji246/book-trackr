import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_reading_progress.freezed.dart';
part 'group_reading_progress.g.dart';

/// Represents the current book being read by a reading group
@freezed
class GroupBookSelection with _$GroupBookSelection {
  const factory GroupBookSelection({
    /// Book ID
    required String bookId,
    
    /// Book title
    required String title,
    
    /// Book author
    required String author,
    
    /// Book cover URL
    String? coverUrl,
    
    /// Start date for reading
    required DateTime startDate,
    
    /// End date for reading
    required DateTime endDate,
    
    /// Discussion schedule
    required List<DiscussionSession> discussionSessions,
    
    /// Reading milestones
    required List<ReadingMilestone> milestones,
    
    /// Group's average rating
    double? averageRating,
    
    /// Number of members who finished the book
    required int membersFinished,
    
    /// Total number of members reading
    required int totalMembersReading,
    
    /// Current reading progress percentage
    required double currentProgress,
    
    /// Group's reading pace (pages per week)
    required int pagesPerWeek,
    
    /// Current week of reading
    required int currentWeek,
    
    /// Total weeks planned
    required int totalWeeks,
  }) = _GroupBookSelection;

  factory GroupBookSelection.fromJson(Map<String, dynamic> json) => _$GroupBookSelectionFromJson(json);
  
  /// Creates a default book selection
  factory GroupBookSelection.defaultSelection({
    required String bookId,
    required String title,
    required String author,
    String? coverUrl,
    required int totalPages,
    required int pagesPerWeek,
  }) {
    final totalWeeks = (totalPages / pagesPerWeek).ceil();
    final endDate = DateTime.now().add(Duration(days: totalWeeks * 7));
    
    return GroupBookSelection(
      bookId: bookId,
      title: title,
      author: author,
      coverUrl: coverUrl,
      startDate: DateTime.now(),
      endDate: endDate,
      discussionSessions: [],
      milestones: _createDefaultMilestones(totalPages),
      averageRating: null,
      membersFinished: 0,
      totalMembersReading: 0,
      currentProgress: 0.0,
      pagesPerWeek: pagesPerWeek,
      currentWeek: 1,
      totalWeeks: totalWeeks,
    );
  }
  
  /// Create default reading milestones
  static List<ReadingMilestone> _createDefaultMilestones(int totalPages) {
    return [
      ReadingMilestone(
        id: 'start',
        name: 'Start Reading',
        description: 'Begin reading the book',
        target: 0,
        date: DateTime.now(),
        type: MilestoneType.startReading,
        membersReached: [],
        isGroupAchieved: false,
        groupAchievementDate: null,
      ),
      ReadingMilestone(
        id: 'quarter',
        name: '25% Complete',
        description: 'Read a quarter of the book',
        target: (totalPages * 0.25).round(),
        date: DateTime.now(),
        type: MilestoneType.quarterComplete,
        membersReached: [],
        isGroupAchieved: false,
        groupAchievementDate: null,
      ),
      ReadingMilestone(
        id: 'halfway',
        name: 'Halfway Point',
        description: 'Reach the middle of the book',
        target: (totalPages * 0.5).round(),
        date: DateTime.now(),
        type: MilestoneType.halfway,
        membersReached: [],
        isGroupAchieved: false,
        groupAchievementDate: null,
      ),
      ReadingMilestone(
        id: 'three-quarters',
        name: '75% Complete',
        description: 'Almost finished with the book',
        target: (totalPages * 0.75).round(),
        date: DateTime.now(),
        type: MilestoneType.threeQuarters,
        membersReached: [],
        isGroupAchieved: false,
        groupAchievementDate: null,
      ),
      ReadingMilestone(
        id: 'finish',
        name: 'Book Completed',
        description: 'Finish reading the entire book',
        target: totalPages,
        date: DateTime.now(),
        type: MilestoneType.finished,
        membersReached: [],
        isGroupAchieved: false,
        groupAchievementDate: null,
      ),
    ];
  }
}

/// Represents a reading milestone for the group
@freezed
class ReadingMilestone with _$ReadingMilestone {
  const factory ReadingMilestone({
    /// Milestone ID
    required String id,
    
    /// Milestone name
    required String name,
    
    /// Milestone description
    required String description,
    
    /// Milestone target (e.g., page number)
    required int target,
    
    /// Milestone date
    required DateTime date,
    
    /// Milestone type
    required MilestoneType type,
    
    /// Members who reached this milestone
    required List<String> membersReached,
    
    /// Whether milestone is achieved by the group
    required bool isGroupAchieved,
    
    /// Achievement date
    DateTime? groupAchievementDate,
  }) = _ReadingMilestone;

  factory ReadingMilestone.fromJson(Map<String, dynamic> json) => _$ReadingMilestoneFromJson(json);
}

/// Milestone types
enum MilestoneType {
  startReading('Start Reading'),
  quarterComplete('25% Complete'),
  halfway('Halfway'),
  threeQuarters('75% Complete'),
  finished('Finished'),
  custom('Custom');

  const MilestoneType(this.displayName);
  final String displayName;
}

/// Represents a discussion session for the current book
@freezed
class DiscussionSession with _$DiscussionSession {
  const factory DiscussionSession({
    /// Session ID
    required String id,
    
    /// Session title
    required String title,
    
    /// Session description
    required String description,
    
    /// Session date and time
    required DateTime sessionDateTime,
    
    /// Session duration in minutes
    required int durationMinutes,
    
    /// Session host ID
    required String hostId,
    
    /// Session participants
    required List<String> participants,
    
    /// Session notes
    String? notes,
    
    /// Whether session is completed
    required bool isCompleted,
    
    /// Session recording URL (if applicable)
    String? recordingUrl,
    
    /// Session materials and resources
    required List<String> materials,
  }) = DiscussionSession;

  factory DiscussionSession.fromJson(Map<String, dynamic> json) => _$DiscussionSessionFromJson(json);
}

/// Represents individual member reading progress within a group
@freezed
class MemberReadingProgress with _$MemberReadingProgress {
  const factory MemberReadingProgress({
    /// User ID
    required String userId,
    
    /// User's display name
    required String displayName,
    
    /// User's profile picture URL
    String? profilePictureUrl,
    
    /// Current page number
    required int currentPage,
    
    /// Total pages in the book
    required int totalPages,
    
    /// Reading progress percentage
    required double progressPercentage,
    
    /// Reading status
    required ReadingStatus status,
    
    /// Last updated date
    required DateTime lastUpdated,
    
    /// Reading speed (pages per day)
    required double readingSpeed,
    
    /// Estimated completion date
    DateTime? estimatedCompletion,
    
    /// Reading notes
    String? notes,
    
    /// Whether user is on track with group pace
    required bool isOnTrack,
    
    /// Days ahead/behind schedule
    required int daysOffSchedule,
  }) = MemberReadingProgress;

  factory MemberReadingProgress.fromJson(Map<String, dynamic> json) => _$MemberReadingProgressFromJson(json);
  
  /// Creates a default reading progress
  factory MemberReadingProgress.defaultProgress({
    required String userId,
    required String displayName,
    String? profilePictureUrl,
    required int totalPages,
  }) {
    return MemberReadingProgress(
      userId: userId,
      displayName: displayName,
      profilePictureUrl: profilePictureUrl,
      currentPage: 0,
      totalPages: totalPages,
      progressPercentage: 0.0,
      status: ReadingStatus.notStarted,
      lastUpdated: DateTime.now(),
      readingSpeed: 0.0,
      estimatedCompletion: null,
      notes: null,
      isOnTrack: true,
      daysOffSchedule: 0,
    );
  }
}

/// Reading status for group members
enum ReadingStatus {
  notStarted('Not Started'),
  inProgress('In Progress'),
  paused('Paused'),
  completed('Completed'),
  abandoned('Abandoned');

  const ReadingStatus(this.displayName);
  final String displayName;
}

/// Represents a group reading challenge
@freezed
class GroupReadingChallenge with _$GroupReadingChallenge {
  const factory GroupReadingChallenge({
    /// Challenge ID
    required String id,
    
    /// Challenge name
    required String name,
    
    /// Challenge description
    required String description,
    
    /// Challenge start date
    required DateTime startDate,
    
    /// Challenge end date
    required DateTime endDate,
    
    /// Challenge rules
    required List<String> rules,
    
    /// Challenge participants
    required List<ChallengeParticipant> participants,
    
    /// Challenge prizes/rewards
    required List<String> rewards,
    
    /// Challenge type
    required ChallengeType type,
    
    /// Challenge difficulty
    required ChallengeDifficulty difficulty,
    
    /// Whether challenge is active
    required bool isActive,
    
    /// Challenge progress tracking
    required ChallengeProgress progress,
  }) = GroupReadingChallenge;

  factory GroupReadingChallenge.fromJson(Map<String, dynamic> json) => _$GroupReadingChallengeFromJson(json);
}

/// Challenge types
enum ChallengeType {
  readingSprint('Reading Sprint'),
  bookCount('Book Count'),
  pageCount('Page Count'),
  genreExploration('Genre Exploration'),
  authorFocus('Author Focus'),
  timeBased('Time Based'),
  collaborative('Collaborative');

  const ChallengeType(this.displayName);
  final String displayName;
}

/// Challenge difficulty levels
enum ChallengeDifficulty {
  easy('Easy'),
  medium('Medium'),
  hard('Hard'),
  expert('Expert');

  const ChallengeDifficulty(this.displayName);
  final String displayName;
}

/// Challenge participant
@freezed
class ChallengeParticipant with _$ChallengeParticipant {
  const factory ChallengeParticipant({
    /// User ID
    required String userId,
    
    /// User's display name
    required String displayName,
    
    /// User's progress
    required int progress,
    
    /// User's rank
    required int rank,
    
    /// Whether user completed the challenge
    required bool isCompleted,
    
    /// Completion date
    DateTime? completionDate,
    
    /// User's score/points
    required int score,
  }) = ChallengeParticipant;

  factory ChallengeParticipant.fromJson(Map<String, dynamic> json) => _$ChallengeParticipantFromJson(json);
}

/// Challenge progress tracking
@freezed
class ChallengeProgress with _$ChallengeProgress {
  const factory ChallengeProgress({
    /// Total participants
    required int totalParticipants,
    
    /// Participants who completed
    required int participantsCompleted,
    
    /// Average progress percentage
    required double averageProgress,
    
    /// Challenge leaderboard
    required List<ChallengeParticipant> leaderboard,
    
    /// Group's overall progress
    required double groupProgress,
    
    /// Days remaining
    required int daysRemaining,
    
    /// Whether challenge is on track
    required bool isOnTrack,
  }) = ChallengeProgress;

  factory ChallengeProgress.fromJson(Map<String, dynamic> json) => _$ChallengeProgressFromJson(json);
}

/// Extension methods for GroupBookSelection
extension GroupBookSelectionExtension on GroupBookSelection {
  /// Check if book selection is active
  bool get isActive => DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate);
  
  /// Check if book selection is completed
  bool get isCompleted => DateTime.now().isAfter(endDate);
  
  /// Get days remaining
  int get daysRemaining => endDate.difference(DateTime.now()).inDays;
  
  /// Get weeks remaining
  int get weeksRemaining => (daysRemaining / 7).ceil();
  
  /// Check if group is on track
  bool get isOnTrack => currentProgress >= (currentWeek / totalWeeks);
  
  /// Get next milestone
  ReadingMilestone? get nextMilestone {
    final unachieved = milestones.where((m) => !m.isGroupAchieved).toList();
    if (unachieved.isEmpty) return null;
    
    unachieved.sort((a, b) => a.target.compareTo(b.target));
    return unachieved.first;
  }
  
  /// Get completed milestones
  List<ReadingMilestone> get completedMilestones {
    return milestones.where((m) => m.isGroupAchieved).toList();
  }
  
  /// Get upcoming discussion sessions
  List<DiscussionSession> get upcomingSessions {
    final now = DateTime.now();
    return discussionSessions
        .where((session) => session.sessionDateTime.isAfter(now))
        .toList()
      ..sort((a, b) => a.sessionDateTime.compareTo(b.sessionDateTime));
  }
  
  /// Get completed discussion sessions
  List<DiscussionSession> get completedSessions {
    return discussionSessions.where((session) => session.isCompleted).toList();
  }
}

/// Extension methods for MemberReadingProgress
extension MemberReadingProgressExtension on MemberReadingProgress {
  /// Check if user is ahead of schedule
  bool get isAhead => daysOffSchedule > 0;
  
  /// Check if user is behind schedule
  bool get isBehind => daysOffSchedule < 0;
  
  /// Get reading pace status
  String get paceStatus {
    if (isOnTrack) return 'On Track';
    if (isAhead) return '${daysOffSchedule} days ahead';
    return '${daysOffSchedule.abs()} days behind';
  }
  
  /// Get estimated completion date
  DateTime? get estimatedCompletionDate {
    if (readingSpeed <= 0) return null;
    final remainingPages = totalPages - currentPage;
    final daysToComplete = remainingPages / readingSpeed;
    return DateTime.now().add(Duration(days: daysToComplete.ceil()));
  }
  
  /// Check if user should receive encouragement
  bool get needsEncouragement => isBehind && daysOffSchedule.abs() > 3;
  
  /// Check if user should receive congratulations
  bool get deservesCongratulations => isAhead && daysOffSchedule > 2;
}
