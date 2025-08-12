import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_group.freezed.dart';
part 'reading_group.g.dart';

/// Represents a reading group or book club
@freezed
class ReadingGroup with _$ReadingGroup {
  const factory ReadingGroup({
    /// Unique identifier for the reading group
    required String id,
    
    /// Name of the reading group
    required String name,
    
    /// Description of the reading group
    required String description,
    
    /// URL to the group's cover image
    String? coverImageUrl,
    
    /// Group's primary genre/focus
    required String primaryGenre,
    
    /// Group's tags/categories
    required List<String> tags,
    
    /// Group's privacy level
    required GroupPrivacy privacy,
    
    /// Group's maximum member limit (null for unlimited)
    int? maxMembers,
    
    /// Current number of members
    required int memberCount,
    
    /// Group's reading pace (books per month)
    required double readingPace,
    
    /// Group's current book selection
    required GroupBookSelection currentBook,
    
    /// Group's reading schedule
    required ReadingSchedule readingSchedule,
    
    /// Group's discussion topics
    required List<DiscussionTopic> discussionTopics,
    
    /// Group's rules and guidelines
    required List<String> rules,
    
    /// Group's achievements and milestones
    required List<GroupAchievement> achievements,
    
    /// Group's moderators
    required List<String> moderators,
    
    /// Group's members
    required List<GroupMember> members,
    
    /// Group's pending join requests
    required List<JoinRequest> pendingRequests,
    
    /// Date when the group was created
    required DateTime dateCreated,
    
    /// Date when the group was last updated
    required DateTime dateUpdated,
    
    /// Whether the group is active
    required bool isActive,
    
    /// Group's status (open, closed, archived)
    required GroupStatus status,
    
    /// Group's language preference
    required String language,
    
    /// Group's timezone
    String? timezone,
    
    /// Group's meeting schedule (if applicable)
    MeetingSchedule? meetingSchedule,
  }) = _ReadingGroup;

  /// Creates a ReadingGroup instance from JSON data
  factory ReadingGroup.fromJson(Map<String, dynamic> json) => _$ReadingGroupFromJson(json);
  
  /// Creates a default reading group
  factory ReadingGroup.defaultGroup({
    required String id,
    required String name,
    required String description,
    required String creatorId,
    required String primaryGenre,
  }) {
    return ReadingGroup(
      id: id,
      name: name,
      description: description,
      primaryGenre: primaryGenre,
      tags: [primaryGenre],
      privacy: GroupPrivacy.public,
      memberCount: 1,
      readingPace: 1.0,
      currentBook: GroupBookSelection(
        bookId: '',
        title: '',
        author: '',
        coverUrl: null,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 30)),
        discussionSessions: [],
        milestones: [],
        averageRating: null,
        membersFinished: 0,
        totalMembersReading: 0,
      ),
      readingSchedule: ReadingSchedule(
        frequency: ReadingFrequency.monthly,
        booksPerPeriod: 1,
        goals: [],
        upcomingBooks: [],
        challenges: [],
      ),
      discussionTopics: [],
      rules: [
        'Be respectful to all members',
        'No spoilers without warning',
        'Stay on topic during discussions',
        'Participate actively in group activities',
      ],
      achievements: [],
      moderators: [creatorId],
      members: [
        GroupMember(
          userId: creatorId,
          displayName: 'Creator',
          profilePictureUrl: null,
          role: GroupRole.creator,
          dateJoined: DateTime.now(),
          isActive: true,
          readingProgress: 0,
          contributionScore: 0,
          lastActivity: DateTime.now(),
          readingStats: MemberReadingStats(
            booksCompleted: 0,
            pagesRead: 0,
            discussionPosts: 0,
            challengesCompleted: 0,
            attendanceRate: 0.0,
          ),
        ),
      ],
      pendingRequests: [],
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      isActive: true,
      status: GroupStatus.open,
      language: 'en',
    );
  }
}

/// Group privacy levels
enum GroupPrivacy {
  public('Public'),
  private('Private'),
  inviteOnly('Invite Only');

  const GroupPrivacy(this.displayName);
  final String displayName;
}

/// Group status
enum GroupStatus {
  open('Open'),
  closed('Closed'),
  archived('Archived');

  const GroupStatus(this.displayName);
  final String displayName;
}

/// Group member roles
enum GroupRole {
  creator('Creator'),
  moderator('Moderator'),
  member('Member'),
  guest('Guest');

  const GroupRole(this.displayName);
  final String displayName;
}

/// Group book selection
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
  }) = _GroupBookSelection;

  factory GroupBookSelection.fromJson(Map<String, dynamic> json) => _$GroupBookSelectionFromJson(json);
}

/// Reading schedule for the group
@freezed
class ReadingSchedule with _$ReadingSchedule {
  const factory ReadingSchedule({
    /// How often the group reads books
    required ReadingFrequency frequency,
    
    /// Number of books per period
    required int booksPerPeriod,
    
    /// Group's reading goals
    required List<ReadingGoal> goals,
    
    /// Upcoming book selections
    required List<UpcomingBook> upcomingBooks,
    
    /// Reading challenges
    required List<ReadingChallenge> challenges,
  }) = ReadingSchedule;

  factory ReadingSchedule.fromJson(Map<String, dynamic> json) => _$ReadingScheduleFromJson(json);
}

/// Reading frequency
enum ReadingFrequency {
  weekly('Weekly'),
  biweekly('Bi-weekly'),
  monthly('Monthly'),
  quarterly('Quarterly'),
  custom('Custom');

  const ReadingFrequency(this.displayName);
  final String displayName;
}

/// Reading goal
@freezed
class ReadingGoal with _$ReadingGoal {
  const factory ReadingGoal({
    /// Goal ID
    required String id,
    
    /// Goal description
    required String description,
    
    /// Goal target
    required int target,
    
    /// Goal progress
    required int progress,
    
    /// Goal deadline
    required DateTime deadline,
    
    /// Whether the goal is achieved
    required bool isAchieved,
  }) = _ReadingGoal;

  factory ReadingGoal.fromJson(Map<String, dynamic> json) => _$ReadingGoalFromJson(json);
}

/// Upcoming book selection
@freezed
class UpcomingBook with _$UpcomingBook {
  const factory UpcomingBook({
    /// Book ID
    required String bookId,
    
    /// Book title
    required String title,
    
    /// Book author
    required String author,
    
    /// Book cover URL
    String? coverUrl,
    
    /// Planned start date
    required DateTime plannedStartDate,
    
    /// Planned end date
    required DateTime plannedEndDate,
    
    /// Number of votes for this book
    required int votes,
    
    /// Members who voted for this book
    required List<String> voters,
  }) = _UpcomingBook;

  factory UpcomingBook.fromJson(Map<String, dynamic> json) => _$UpcomingBookFromJson(json);
}

/// Reading challenge
@freezed
class ReadingChallenge with _$ReadingChallenge {
  const factory ReadingChallenge({
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
  }) = _ReadingChallenge;

  factory ReadingChallenge.fromJson(Map<String, dynamic> json) => _$ReadingChallengeFromJson(json);
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
  }) = _ChallengeParticipant;

  factory ChallengeParticipant.fromJson(Map<String, dynamic> json) => _$ChallengeParticipantFromJson(json);
}

/// Discussion topic
@freezed
class DiscussionTopic with _$DiscussionTopic {
  const factory DiscussionTopic({
    /// Topic ID
    required String id,
    
    /// Topic title
    required String title,
    
    /// Topic description
    required String description,
    
    /// Topic creator ID
    required String creatorId,
    
    /// Topic creation date
    required DateTime dateCreated,
    
    /// Topic last activity date
    required DateTime lastActivity,
    
    /// Number of replies
    required int replyCount,
    
    /// Topic tags
    required List<String> tags,
    
    /// Whether topic is pinned
    required bool isPinned,
    
    /// Whether topic is locked
    required bool isLocked,
    
    /// Topic category
    required TopicCategory category,
  }) = _DiscussionTopic;

  factory DiscussionTopic.fromJson(Map<String, dynamic> json) => _$DiscussionTopicFromJson(json);
}

/// Topic categories
enum TopicCategory {
  general('General Discussion'),
  bookDiscussion('Book Discussion'),
  readingProgress('Reading Progress'),
  recommendations('Book Recommendations'),
  offTopic('Off Topic'),
  announcements('Announcements');

  const TopicCategory(this.displayName);
  final String displayName;
}

/// Discussion session
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
  }) = _DiscussionSession;

  factory DiscussionSession.fromJson(Map<String, dynamic> json) => _$DiscussionSessionFromJson(json);
}

/// Reading milestone
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

/// Group member
@freezed
class GroupMember with _$GroupMember {
  const factory GroupMember({
    /// User ID
    required String userId,
    
    /// User's display name
    required String displayName,
    
    /// User's profile picture URL
    String? profilePictureUrl,
    
    /// User's role in the group
    required GroupRole role,
    
    /// Date when user joined the group
    required DateTime dateJoined,
    
    /// Whether user is active
    required bool isActive,
    
    /// User's reading progress
    required int readingProgress,
    
    /// User's contribution score
    required int contributionScore,
    
    /// User's last activity date
    required DateTime lastActivity,
    
    /// User's reading statistics
    required MemberReadingStats readingStats,
  }) = _GroupMember;

  factory GroupMember.fromJson(Map<String, dynamic> json) => _$GroupMemberFromJson(json);
}

/// Member reading statistics
@freezed
class MemberReadingStats with _$MemberReadingStats {
  const factory MemberReadingStats({
    /// Books completed with the group
    required int booksCompleted,
    
    /// Pages read with the group
    required int pagesRead,
    
    /// Discussion posts made
    required int discussionPosts,
    
    /// Reading challenges completed
    required int challengesCompleted,
    
    /// Attendance rate for discussions
    required double attendanceRate,
  }) = _MemberReadingStats;

  factory MemberReadingStats.fromJson(Map<String, dynamic> json) => _$MemberReadingStatsFromJson(json);
}

/// Join request
@freezed
class JoinRequest with _$JoinRequest {
  const factory JoinRequest({
    /// Request ID
    required String id,
    
    /// User ID requesting to join
    required String userId,
    
    /// User's display name
    required String displayName,
    
    /// User's profile picture URL
    String? profilePictureUrl,
    
    /// User's message/request
    String? message,
    
    /// Request date
    required DateTime requestDate,
    
    /// Request status
    required RequestStatus status,
    
    /// Moderator who processed the request
    String? processedBy,
    
    /// Processing date
    DateTime? processedDate,
    
    /// Processing notes
    String? processingNotes,
  }) = _JoinRequest;

  factory JoinRequest.fromJson(Map<String, dynamic> json) => _$JoinRequestFromJson(json);
}

/// Request status
enum RequestStatus {
  pending('Pending'),
  approved('Approved'),
  rejected('Rejected');

  const RequestStatus(this.displayName);
  final String displayName;
}

/// Group achievement
@freezed
class GroupAchievement with _$GroupAchievement {
  const factory GroupAchievement({
    /// Achievement ID
    required String id,
    
    /// Achievement name
    required String name,
    
    /// Achievement description
    required String description,
    
    /// Achievement icon
    required String icon,
    
    /// Achievement category
    required AchievementCategory category,
    
    /// Achievement rarity
    required AchievementRarity rarity,
    
    /// Date when achievement was earned
    required DateTime dateEarned,
    
    /// Members who earned this achievement
    required List<String> membersEarned,
  }) = _GroupAchievement;

  factory GroupAchievement.fromJson(Map<String, dynamic> json) => _$GroupAchievementFromJson(json);
}

/// Achievement categories
enum AchievementCategory {
  reading('Reading'),
  social('Social'),
  discussion('Discussion'),
  challenge('Challenge'),
  milestone('Milestone'),
  special('Special');

  const AchievementCategory(this.displayName);
  final String displayName;
}

/// Achievement rarity
enum AchievementRarity {
  common('Common'),
  uncommon('Uncommon'),
  rare('Rare'),
  epic('Epic'),
  legendary('Legendary');

  const AchievementRarity(this.displayName);
  final String displayName;
}

/// Meeting schedule
@freezed
class MeetingSchedule with _$MeetingSchedule {
  const factory MeetingSchedule({
    /// Meeting frequency
    required MeetingFrequency frequency,
    
    /// Meeting day of week
    required int dayOfWeek,
    
    /// Meeting time
    required String meetingTime,
    
    /// Meeting duration in minutes
    required int durationMinutes,
    
    /// Meeting platform (Zoom, Discord, etc.)
    required String platform,
    
    /// Meeting link
    String? meetingLink,
    
    /// Meeting notes
    String? notes,
  }) = _MeetingSchedule;

  factory MeetingSchedule.fromJson(Map<String, dynamic> json) => _$MeetingScheduleFromJson(json);
}

/// Meeting frequency
enum MeetingFrequency {
  weekly('Weekly'),
  biweekly('Bi-weekly'),
  monthly('Monthly'),
  custom('Custom');

  const MeetingFrequency(this.displayName);
  final String displayName;
}

/// Extension methods for ReadingGroup
extension ReadingGroupExtension on ReadingGroup {
  /// Check if group is full
  bool get isFull {
    if (maxMembers == null) return false;
    return memberCount >= maxMembers!;
  }
  
  /// Check if group is accepting new members
  bool get isAcceptingMembers {
    return isActive && status == GroupStatus.open && !isFull;
  }
  
  /// Get group's current reading progress
  double get currentReadingProgress {
    if (currentBook.totalMembersReading == 0) return 0.0;
    return currentBook.membersFinished / currentBook.totalMembersReading;
  }
  
  /// Check if user is a member
  bool isMember(String userId) {
    return members.any((member) => member.userId == userId);
  }
  
  /// Check if user is a moderator
  bool isModerator(String userId) {
    return moderators.contains(userId);
  }
  
  /// Check if user is the creator
  bool isCreator(String userId) {
    return members.any((member) => 
        member.userId == userId && member.role == GroupRole.creator);
  }
  
  /// Get user's role in the group
  GroupRole? getUserRole(String userId) {
    try {
      return members.firstWhere((member) => member.userId == userId).role;
    } catch (e) {
      return null;
    }
  }
  
  /// Get user's member info
  GroupMember? getMemberInfo(String userId) {
    try {
      return members.firstWhere((member) => member.userId == userId);
    } catch (e) {
      return null;
    }
  }
  
  /// Check if user has pending join request
  bool hasPendingRequest(String userId) {
    return pendingRequests.any((request) => 
        request.userId == userId && request.status == RequestStatus.pending);
  }
  
  /// Get active discussion topics
  List<DiscussionTopic> get activeDiscussionTopics {
    return discussionTopics
        .where((topic) => !topic.isLocked)
        .toList()
      ..sort((a, b) => b.lastActivity.compareTo(a.lastActivity));
  }
  
  /// Get pinned discussion topics
  List<DiscussionTopic> get pinnedTopics {
    return discussionTopics.where((topic) => topic.isPinned).toList();
  }
  
  /// Get upcoming discussion sessions
  List<DiscussionSession> get upcomingSessions {
    final now = DateTime.now();
    return currentBook.discussionSessions
        .where((session) => session.sessionDateTime.isAfter(now))
        .toList()
      ..sort((a, b) => a.sessionDateTime.compareTo(b.sessionDateTime));
  }
  
  /// Get group's reading goals progress
  List<ReadingGoal> get activeGoals {
    return readingSchedule.goals
        .where((goal) => !goal.isAchieved && goal.deadline.isAfter(DateTime.now()))
        .toList()
      ..sort((a, b) => a.deadline.compareTo(b.deadline));
  }
  
  /// Get group's completed goals
  List<ReadingGoal> get completedGoals {
    return readingSchedule.goals
        .where((goal) => goal.isAchieved)
        .toList()
      ..sort((a, b) => b.deadline.compareTo(a.deadline));
  }
}
