import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

/// Represents a user's profile in the BookTrackr application
@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    /// Unique identifier for the user profile
    required String id,
    
    /// User's display name
    required String displayName,
    
    /// User's email address
    required String email,
    
    /// URL to the user's profile picture
    String? profilePictureUrl,
    
    /// User's bio/description
    String? bio,
    
    /// User's location
    String? location,
    
    /// User's website URL
    String? websiteUrl,
    
    /// User's favorite genres
    required List<String> favoriteGenres,
    
    /// User's reading preferences
    required ReadingPreferences readingPreferences,
    
    /// User's social connections
    required SocialConnections socialConnections,
    
    /// User's reading statistics
    required ReadingStats readingStats,
    
    /// User's privacy settings
    required PrivacySettings privacySettings,
    
    /// Date when the profile was created
    required DateTime dateCreated,
    
    /// Date when the profile was last updated
    required DateTime dateUpdated,
    
    /// Whether the profile is verified
    required bool isVerified,
    
    /// User's reading level/experience
    required ReadingLevel readingLevel,
    
    /// User's preferred languages
    required List<String> preferredLanguages,
    
    /// User's timezone
    String? timezone,
    
    /// User's notification preferences
    required NotificationPreferences notificationPreferences,
  }) = _UserProfile;

  /// Creates a UserProfile instance from JSON data
  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
  
  /// Creates a default user profile
  factory UserProfile.defaultProfile({
    required String id,
    required String displayName,
    required String email,
  }) {
    return UserProfile(
      id: id,
      displayName: displayName,
      email: email,
      favoriteGenres: [],
      readingPreferences: ReadingPreferences(
        preferredBookLength: BookLength.medium,
        preferredFormats: [ReadingFormat.physical],
        preferredReadingTimes: [ReadingTime.evening],
        prefersSeries: false,
        prefersFiction: true,
        readingSpeed: 30,
        readsMultipleBooks: false,
        preferredThemes: [],
        likesToReread: false,
        preferredEnvironments: ['quiet'],
      ),
      socialConnections: SocialConnections(
        following: [],
        followers: [],
        friends: [],
        blocked: [],
        blockedBy: [],
        readingGroups: [],
        moderatedGroups: [],
        socialVisibility: SocialVisibility.public,
      ),
      readingStats: ReadingStats(
        totalBooksRead: 0,
        totalPagesRead: 0,
        totalReadingTime: 0,
        averageReadingSpeed: 0,
        booksReadThisWeek: 0,
        booksReadThisMonth: 0,
        booksReadThisYear: 0,
        longestReadingStreak: 0,
        readingStreak: 0,
        averageRatingGiven: 0.0,
        reviewsWritten: 0,
        readingListsCreated: 0,
        genreCounts: {},
        authorCounts: {},
      ),
      privacySettings: PrivacySettings(
        isProfilePublic: true,
        areReadingListsVisible: true,
        areReviewsVisible: true,
        isReadingActivityVisible: true,
        canFriendsSeeDetailedStats: true,
        appearsInSearch: true,
        appearsInRecommendations: true,
        friendRequestPolicy: FriendRequestPolicy.anyone,
      ),
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      isVerified: false,
      readingLevel: ReadingLevel.beginner,
      preferredLanguages: ['en'],
      notificationPreferences: NotificationPreferences(
        pushNotifications: true,
        emailNotifications: true,
        bookRecommendations: true,
        friendRequestNotifications: true,
        readingGoalReminders: true,
        readingGroupUpdates: true,
        reviewNotifications: true,
        achievementNotifications: true,
        notificationFrequency: NotificationFrequency.immediately,
      ),
      achievements: [],
      readingProgressVisibility: ReadingProgressVisibility.public,
    );
  }
}

/// User's reading preferences
@freezed
class ReadingPreferences with _$ReadingPreferences {
  const factory ReadingPreferences({
    /// Preferred book length (short, medium, long)
    required BookLength preferredBookLength,
    
    /// Preferred reading format (physical, digital, audiobook)
    required List<ReadingFormat> preferredFormats,
    
    /// Preferred reading time (morning, afternoon, evening, night)
    required List<ReadingTime> preferredReadingTimes,
    
    /// Whether user prefers series or standalone books
    required bool prefersSeries,
    
    /// Whether user prefers fiction or non-fiction
    required bool prefersFiction,
    
    /// User's reading speed (pages per hour)
    required int readingSpeed,
    
    /// Whether user likes to read multiple books simultaneously
    required bool readsMultipleBooks,
    
    /// User's preferred book themes
    required List<String> preferredThemes,
    
    /// Whether user likes to re-read books
    required bool likesToReread,
    
    /// User's preferred reading environment
    required List<String> preferredEnvironments,
  }) = _ReadingPreferences;

  factory ReadingPreferences.fromJson(Map<String, dynamic> json) => _$ReadingPreferencesFromJson(json);
}

/// User's social connections
@freezed
class SocialConnections with _$SocialConnections {
  const factory SocialConnections({
    /// List of user IDs that this user is following
    required List<String> following,
    
    /// List of user IDs that are following this user
    required List<String> followers,
    
    /// List of user IDs that are friends with this user
    required List<String> friends,
    
    /// List of user IDs that this user has blocked
    required List<String> blocked,
    
    /// List of user IDs that have blocked this user
    required List<String> blockedBy,
    
    /// List of reading group IDs that this user is a member of
    required List<String> readingGroups,
    
    /// List of reading group IDs that this user moderates
    required List<String> moderatedGroups,
    
    /// User's social visibility settings
    required SocialVisibility socialVisibility,
  }) = _SocialConnections;

  factory SocialConnections.fromJson(Map<String, dynamic> json) => _$SocialConnectionsFromJson(json);
}

/// User's reading statistics
@freezed
class ReadingStats with _$ReadingStats {
  const factory ReadingStats({
    /// Total number of books read
    required int totalBooksRead,
    
    /// Total number of pages read
    required int totalPagesRead,
    
    /// Total reading time in minutes
    required int totalReadingTime,
    
    /// Average reading speed (pages per hour)
    required double averageReadingSpeed,
    
    /// Number of books read this year
    required int booksReadThisYear,
    
    /// Number of books read this month
    required int booksReadThisMonth,
    
    /// Number of books read this week
    required int booksReadThisWeek,
    
    /// User's reading streak (consecutive days)
    required int readingStreak,
    
    /// Longest reading streak
    required int longestReadingStreak,
    
    /// User's favorite genres (with counts)
    required Map<String, int> genreCounts,
    
    /// User's favorite authors (with counts)
    required Map<String, int> authorCounts,
    
    /// User's average rating given
    required double averageRatingGiven,
    
    /// Number of reviews written
    required int reviewsWritten,
    
    /// Number of reading lists created
    required int readingListsCreated,
    
    /// User's reading goals and achievements
    required List<ReadingAchievement> achievements,
  }) = _ReadingStats;

  factory ReadingStats.fromJson(Map<String, dynamic> json) => _$ReadingStatsFromJson(json);
}

/// User's privacy settings
@freezed
class PrivacySettings with _$PrivacySettings {
  const factory PrivacySettings({
    /// Whether the profile is public
    required bool isProfilePublic,
    
    /// Whether reading activity is visible to others
    required bool isReadingActivityVisible,
    
    /// Whether reviews are visible to others
    required bool areReviewsVisible,
    
    /// Whether reading lists are visible to others
    required bool areReadingListsVisible,
    
    /// Whether friends can see detailed reading stats
    required bool canFriendsSeeDetailedStats,
    
    /// Whether the profile appears in search results
    required bool appearsInSearch,
    
    /// Whether the profile appears in recommendations
    required bool appearsInRecommendations,
    
    /// Who can send friend requests
    required FriendRequestPolicy friendRequestPolicy,
    
    /// Who can see the user's reading progress
    required ReadingProgressVisibility readingProgressVisibility,
  }) = _PrivacySettings;

  factory PrivacySettings.fromJson(Map<String, dynamic> json) => _$PrivacySettingsFromJson(json);
}

/// User's notification preferences
@freezed
class NotificationPreferences with _$NotificationPreferences {
  const factory NotificationPreferences({
    /// Whether to receive email notifications
    required bool emailNotifications,
    
    /// Whether to receive push notifications
    required bool pushNotifications,
    
    /// Whether to receive friend request notifications
    required bool friendRequestNotifications,
    
    /// Whether to receive reading goal reminders
    required bool readingGoalReminders,
    
    /// Whether to receive book recommendations
    required bool bookRecommendations,
    
    /// Whether to receive reading group updates
    required bool readingGroupUpdates,
    
    /// Whether to receive review notifications
    required bool reviewNotifications,
    
    /// Whether to receive achievement notifications
    required bool achievementNotifications,
    
    /// Notification frequency
    required NotificationFrequency notificationFrequency,
  }) = _NotificationPreferences;

  factory NotificationPreferences.fromJson(Map<String, dynamic> json) => _$NotificationPreferencesFromJson(json);
}

/// Reading achievement
@freezed
class ReadingAchievement with _$ReadingAchievement {
  const factory ReadingAchievement({
    /// Achievement ID
    required String id,
    
    /// Achievement name
    required String name,
    
    /// Achievement description
    required String description,
    
    /// Achievement icon
    required String icon,
    
    /// Date when achievement was earned
    required DateTime dateEarned,
    
    /// Achievement category
    required AchievementCategory category,
    
    /// Achievement rarity
    required AchievementRarity rarity,
    
    /// Achievement progress (0.0 to 1.0)
    required double progress,
  }) = _ReadingAchievement;

  factory ReadingAchievement.fromJson(Map<String, dynamic> json) => _$ReadingAchievementFromJson(json);
}

/// Enums for various user preferences and settings

enum BookLength {
  short('Short (< 200 pages)'),
  medium('Medium (200-500 pages)'),
  long('Long (> 500 pages)');

  const BookLength(this.displayName);
  final String displayName;
}

enum ReadingFormat {
  physical('Physical Book'),
  digital('Digital Book'),
  audiobook('Audiobook');

  const ReadingFormat(this.displayName);
  final String displayName;
}

enum ReadingTime {
  morning('Morning'),
  afternoon('Afternoon'),
  evening('Evening'),
  night('Night');

  const ReadingTime(this.displayName);
  final String displayName;
}

enum ReadingLevel {
  beginner('Beginner'),
  intermediate('Intermediate'),
  advanced('Advanced'),
  expert('Expert');

  const ReadingLevel(this.displayName);
  final String displayName;
}

enum SocialVisibility {
  public('Public'),
  friendsOnly('Friends Only'),
  private('Private');

  const SocialVisibility(this.displayName);
  final String displayName;
}

enum FriendRequestPolicy {
  anyone('Anyone'),
  friendsOfFriends('Friends of Friends'),
  friendsOnly('Friends Only'),
  noOne('No One');

  const FriendRequestPolicy(this.displayName);
  final String displayName;
}

enum ReadingProgressVisibility {
  everyone('Everyone'),
  friends('Friends'),
  friendsOfFriends('Friends of Friends'),
  noOne('No One');

  const ReadingProgressVisibility(this.displayName);
  final String displayName;
}

enum NotificationFrequency {
  immediately('Immediately'),
  hourly('Hourly'),
  daily('Daily'),
  weekly('Weekly'),
  never('Never');

  const NotificationFrequency(this.displayName);
  final String displayName;
}

enum AchievementCategory {
  reading('Reading'),
  social('Social'),
  collection('Collection'),
  challenge('Challenge'),
  special('Special');

  const AchievementCategory(this.displayName);
  final String displayName;
}

enum AchievementRarity {
  common('Common'),
  uncommon('Uncommon'),
  rare('Rare'),
  epic('Epic'),
  legendary('Legendary');

  const AchievementRarity(this.displayName);
  final String displayName;
}

/// Extension methods for UserProfile
extension UserProfileExtension on UserProfile {
  /// Get the number of followers
  int get followerCount => socialConnections.followers.length;
  
  /// Get the number of people being followed
  int get followingCount => socialConnections.following.length;
  
  /// Get the number of friends
  int get friendCount => socialConnections.friends.length;
  
  /// Check if user is following another user
  bool isFollowing(String userId) {
    return socialConnections.following.contains(userId);
  }
  
  /// Check if user is followed by another user
  bool isFollowedBy(String userId) {
    return socialConnections.followers.contains(userId);
  }
  
  /// Check if user is friends with another user
  bool isFriendsWith(String userId) {
    return socialConnections.friends.contains(userId);
  }
  
  /// Check if user has blocked another user
  bool hasBlocked(String userId) {
    return socialConnections.blocked.contains(userId);
  }
  
  /// Check if user is blocked by another user
  bool isBlockedBy(String userId) {
    return socialConnections.blockedBy.contains(userId);
  }
  
  /// Get reading progress percentage for the year
  double get yearlyReadingProgress {
    // TODO: Implement reading goal calculation
    return 0.0;
  }
  
  /// Get reading progress percentage for the month
  double get monthlyReadingProgress {
    // TODO: Implement reading goal calculation
    return 0.0;
  }
  
  /// Get user's top genre
  String? get topGenre {
    if (readingStats.genreCounts.isEmpty) return null;
    
    final entries = readingStats.genreCounts.entries.toList();
    entries.sort((a, b) => b.value.compareTo(a.value));
    return entries.first.key;
  }
  
  /// Get user's top author
  String? get topAuthor {
    if (readingStats.authorCounts.isEmpty) return null;
    
    final entries = readingStats.authorCounts.entries.toList();
    entries.sort((a, b) => b.value.compareTo(a.value));
    return entries.first.key;
  }
  
  /// Check if profile is searchable
  bool get isSearchable {
    return privacySettings.isProfilePublic && privacySettings.appearsInSearch;
  }
  
  /// Check if reading activity is visible to friends
  bool get isReadingActivityVisibleToFriends {
    return privacySettings.isReadingActivityVisible && 
           (privacySettings.readingProgressVisibility == ReadingProgressVisibility.friends ||
            privacySettings.readingProgressVisibility == ReadingProgressVisibility.everyone);
  }
}
