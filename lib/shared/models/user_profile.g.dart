// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
      favoriteGenres: (json['favoriteGenres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      readingPreferences: ReadingPreferences.fromJson(
          json['readingPreferences'] as Map<String, dynamic>),
      socialConnections: SocialConnections.fromJson(
          json['socialConnections'] as Map<String, dynamic>),
      readingStats:
          ReadingStats.fromJson(json['readingStats'] as Map<String, dynamic>),
      privacySettings: PrivacySettings.fromJson(
          json['privacySettings'] as Map<String, dynamic>),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      isVerified: json['isVerified'] as bool,
      readingLevel: $enumDecode(_$ReadingLevelEnumMap, json['readingLevel']),
      preferredLanguages: (json['preferredLanguages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      timezone: json['timezone'] as String?,
      notificationPreferences: NotificationPreferences.fromJson(
          json['notificationPreferences'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'email': instance.email,
      'profilePictureUrl': instance.profilePictureUrl,
      'bio': instance.bio,
      'location': instance.location,
      'websiteUrl': instance.websiteUrl,
      'favoriteGenres': instance.favoriteGenres,
      'readingPreferences': instance.readingPreferences,
      'socialConnections': instance.socialConnections,
      'readingStats': instance.readingStats,
      'privacySettings': instance.privacySettings,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'isVerified': instance.isVerified,
      'readingLevel': _$ReadingLevelEnumMap[instance.readingLevel]!,
      'preferredLanguages': instance.preferredLanguages,
      'timezone': instance.timezone,
      'notificationPreferences': instance.notificationPreferences,
    };

const _$ReadingLevelEnumMap = {
  ReadingLevel.beginner: 'beginner',
  ReadingLevel.intermediate: 'intermediate',
  ReadingLevel.advanced: 'advanced',
  ReadingLevel.expert: 'expert',
};

_$ReadingPreferencesImpl _$$ReadingPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingPreferencesImpl(
      preferredBookLength:
          $enumDecode(_$BookLengthEnumMap, json['preferredBookLength']),
      preferredFormats: (json['preferredFormats'] as List<dynamic>)
          .map((e) => $enumDecode(_$ReadingFormatEnumMap, e))
          .toList(),
      preferredReadingTimes: (json['preferredReadingTimes'] as List<dynamic>)
          .map((e) => $enumDecode(_$ReadingTimeEnumMap, e))
          .toList(),
      prefersSeries: json['prefersSeries'] as bool,
      prefersFiction: json['prefersFiction'] as bool,
      readingSpeed: (json['readingSpeed'] as num).toInt(),
      readsMultipleBooks: json['readsMultipleBooks'] as bool,
      preferredThemes: (json['preferredThemes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      likesToReread: json['likesToReread'] as bool,
      preferredEnvironments: (json['preferredEnvironments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ReadingPreferencesImplToJson(
        _$ReadingPreferencesImpl instance) =>
    <String, dynamic>{
      'preferredBookLength': _$BookLengthEnumMap[instance.preferredBookLength]!,
      'preferredFormats': instance.preferredFormats
          .map((e) => _$ReadingFormatEnumMap[e]!)
          .toList(),
      'preferredReadingTimes': instance.preferredReadingTimes
          .map((e) => _$ReadingTimeEnumMap[e]!)
          .toList(),
      'prefersSeries': instance.prefersSeries,
      'prefersFiction': instance.prefersFiction,
      'readingSpeed': instance.readingSpeed,
      'readsMultipleBooks': instance.readsMultipleBooks,
      'preferredThemes': instance.preferredThemes,
      'likesToReread': instance.likesToReread,
      'preferredEnvironments': instance.preferredEnvironments,
    };

const _$BookLengthEnumMap = {
  BookLength.short: 'short',
  BookLength.medium: 'medium',
  BookLength.long: 'long',
};

const _$ReadingFormatEnumMap = {
  ReadingFormat.physical: 'physical',
  ReadingFormat.digital: 'digital',
  ReadingFormat.audiobook: 'audiobook',
};

const _$ReadingTimeEnumMap = {
  ReadingTime.morning: 'morning',
  ReadingTime.afternoon: 'afternoon',
  ReadingTime.evening: 'evening',
  ReadingTime.night: 'night',
};

_$SocialConnectionsImpl _$$SocialConnectionsImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialConnectionsImpl(
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      friends:
          (json['friends'] as List<dynamic>).map((e) => e as String).toList(),
      blocked:
          (json['blocked'] as List<dynamic>).map((e) => e as String).toList(),
      blockedBy:
          (json['blockedBy'] as List<dynamic>).map((e) => e as String).toList(),
      readingGroups: (json['readingGroups'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      moderatedGroups: (json['moderatedGroups'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      socialVisibility:
          $enumDecode(_$SocialVisibilityEnumMap, json['socialVisibility']),
    );

Map<String, dynamic> _$$SocialConnectionsImplToJson(
        _$SocialConnectionsImpl instance) =>
    <String, dynamic>{
      'following': instance.following,
      'followers': instance.followers,
      'friends': instance.friends,
      'blocked': instance.blocked,
      'blockedBy': instance.blockedBy,
      'readingGroups': instance.readingGroups,
      'moderatedGroups': instance.moderatedGroups,
      'socialVisibility': _$SocialVisibilityEnumMap[instance.socialVisibility]!,
    };

const _$SocialVisibilityEnumMap = {
  SocialVisibility.public: 'public',
  SocialVisibility.friendsOnly: 'friendsOnly',
  SocialVisibility.private: 'private',
};

_$ReadingStatsImpl _$$ReadingStatsImplFromJson(Map<String, dynamic> json) =>
    _$ReadingStatsImpl(
      totalBooksRead: (json['totalBooksRead'] as num).toInt(),
      totalPagesRead: (json['totalPagesRead'] as num).toInt(),
      totalReadingTime: (json['totalReadingTime'] as num).toInt(),
      averageReadingSpeed: (json['averageReadingSpeed'] as num).toDouble(),
      booksReadThisYear: (json['booksReadThisYear'] as num).toInt(),
      booksReadThisMonth: (json['booksReadThisMonth'] as num).toInt(),
      booksReadThisWeek: (json['booksReadThisWeek'] as num).toInt(),
      readingStreak: (json['readingStreak'] as num).toInt(),
      longestReadingStreak: (json['longestReadingStreak'] as num).toInt(),
      genreCounts: Map<String, int>.from(json['genreCounts'] as Map),
      authorCounts: Map<String, int>.from(json['authorCounts'] as Map),
      averageRatingGiven: (json['averageRatingGiven'] as num).toDouble(),
      reviewsWritten: (json['reviewsWritten'] as num).toInt(),
      readingListsCreated: (json['readingListsCreated'] as num).toInt(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => ReadingAchievement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReadingStatsImplToJson(_$ReadingStatsImpl instance) =>
    <String, dynamic>{
      'totalBooksRead': instance.totalBooksRead,
      'totalPagesRead': instance.totalPagesRead,
      'totalReadingTime': instance.totalReadingTime,
      'averageReadingSpeed': instance.averageReadingSpeed,
      'booksReadThisYear': instance.booksReadThisYear,
      'booksReadThisMonth': instance.booksReadThisMonth,
      'booksReadThisWeek': instance.booksReadThisWeek,
      'readingStreak': instance.readingStreak,
      'longestReadingStreak': instance.longestReadingStreak,
      'genreCounts': instance.genreCounts,
      'authorCounts': instance.authorCounts,
      'averageRatingGiven': instance.averageRatingGiven,
      'reviewsWritten': instance.reviewsWritten,
      'readingListsCreated': instance.readingListsCreated,
      'achievements': instance.achievements,
    };

_$PrivacySettingsImpl _$$PrivacySettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivacySettingsImpl(
      isProfilePublic: json['isProfilePublic'] as bool,
      isReadingActivityVisible: json['isReadingActivityVisible'] as bool,
      areReviewsVisible: json['areReviewsVisible'] as bool,
      areReadingListsVisible: json['areReadingListsVisible'] as bool,
      canFriendsSeeDetailedStats: json['canFriendsSeeDetailedStats'] as bool,
      appearsInSearch: json['appearsInSearch'] as bool,
      appearsInRecommendations: json['appearsInRecommendations'] as bool,
      friendRequestPolicy: $enumDecode(
          _$FriendRequestPolicyEnumMap, json['friendRequestPolicy']),
      readingProgressVisibility: $enumDecode(_$ReadingProgressVisibilityEnumMap,
          json['readingProgressVisibility']),
    );

Map<String, dynamic> _$$PrivacySettingsImplToJson(
        _$PrivacySettingsImpl instance) =>
    <String, dynamic>{
      'isProfilePublic': instance.isProfilePublic,
      'isReadingActivityVisible': instance.isReadingActivityVisible,
      'areReviewsVisible': instance.areReviewsVisible,
      'areReadingListsVisible': instance.areReadingListsVisible,
      'canFriendsSeeDetailedStats': instance.canFriendsSeeDetailedStats,
      'appearsInSearch': instance.appearsInSearch,
      'appearsInRecommendations': instance.appearsInRecommendations,
      'friendRequestPolicy':
          _$FriendRequestPolicyEnumMap[instance.friendRequestPolicy]!,
      'readingProgressVisibility': _$ReadingProgressVisibilityEnumMap[
          instance.readingProgressVisibility]!,
    };

const _$FriendRequestPolicyEnumMap = {
  FriendRequestPolicy.anyone: 'anyone',
  FriendRequestPolicy.friendsOfFriends: 'friendsOfFriends',
  FriendRequestPolicy.friendsOnly: 'friendsOnly',
  FriendRequestPolicy.noOne: 'noOne',
};

const _$ReadingProgressVisibilityEnumMap = {
  ReadingProgressVisibility.everyone: 'everyone',
  ReadingProgressVisibility.friends: 'friends',
  ReadingProgressVisibility.friendsOfFriends: 'friendsOfFriends',
  ReadingProgressVisibility.noOne: 'noOne',
};

_$NotificationPreferencesImpl _$$NotificationPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationPreferencesImpl(
      emailNotifications: json['emailNotifications'] as bool,
      pushNotifications: json['pushNotifications'] as bool,
      friendRequestNotifications: json['friendRequestNotifications'] as bool,
      readingGoalReminders: json['readingGoalReminders'] as bool,
      bookRecommendations: json['bookRecommendations'] as bool,
      readingGroupUpdates: json['readingGroupUpdates'] as bool,
      reviewNotifications: json['reviewNotifications'] as bool,
      achievementNotifications: json['achievementNotifications'] as bool,
      notificationFrequency: $enumDecode(
          _$NotificationFrequencyEnumMap, json['notificationFrequency']),
    );

Map<String, dynamic> _$$NotificationPreferencesImplToJson(
        _$NotificationPreferencesImpl instance) =>
    <String, dynamic>{
      'emailNotifications': instance.emailNotifications,
      'pushNotifications': instance.pushNotifications,
      'friendRequestNotifications': instance.friendRequestNotifications,
      'readingGoalReminders': instance.readingGoalReminders,
      'bookRecommendations': instance.bookRecommendations,
      'readingGroupUpdates': instance.readingGroupUpdates,
      'reviewNotifications': instance.reviewNotifications,
      'achievementNotifications': instance.achievementNotifications,
      'notificationFrequency':
          _$NotificationFrequencyEnumMap[instance.notificationFrequency]!,
    };

const _$NotificationFrequencyEnumMap = {
  NotificationFrequency.immediately: 'immediately',
  NotificationFrequency.hourly: 'hourly',
  NotificationFrequency.daily: 'daily',
  NotificationFrequency.weekly: 'weekly',
  NotificationFrequency.never: 'never',
};

_$ReadingAchievementImpl _$$ReadingAchievementImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingAchievementImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      dateEarned: DateTime.parse(json['dateEarned'] as String),
      category: $enumDecode(_$AchievementCategoryEnumMap, json['category']),
      rarity: $enumDecode(_$AchievementRarityEnumMap, json['rarity']),
      progress: (json['progress'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReadingAchievementImplToJson(
        _$ReadingAchievementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'dateEarned': instance.dateEarned.toIso8601String(),
      'category': _$AchievementCategoryEnumMap[instance.category]!,
      'rarity': _$AchievementRarityEnumMap[instance.rarity]!,
      'progress': instance.progress,
    };

const _$AchievementCategoryEnumMap = {
  AchievementCategory.reading: 'reading',
  AchievementCategory.social: 'social',
  AchievementCategory.collection: 'collection',
  AchievementCategory.challenge: 'challenge',
  AchievementCategory.special: 'special',
};

const _$AchievementRarityEnumMap = {
  AchievementRarity.common: 'common',
  AchievementRarity.uncommon: 'uncommon',
  AchievementRarity.rare: 'rare',
  AchievementRarity.epic: 'epic',
  AchievementRarity.legendary: 'legendary',
};
