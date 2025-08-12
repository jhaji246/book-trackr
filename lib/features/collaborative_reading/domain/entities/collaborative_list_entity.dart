import 'package:freezed_annotation/freezed_annotation.dart';

part 'collaborative_list_entity.freezed.dart';
part 'collaborative_list_entity.g.dart';

/// Core business entity for collaborative reading lists
@freezed
class CollaborativeListEntity with _$CollaborativeListEntity {
  const factory CollaborativeListEntity({
    /// List ID
    required String id,
    
    /// List name
    required String name,
    
    /// List description
    required String description,
    
    /// List creator ID
    required String creatorId,
    
    /// List type
    required CollaborativeListType type,
    
    /// List visibility
    required ListVisibility visibility,
    
    /// List members (user IDs)
    required List<String> memberIds,
    
    /// List moderators (user IDs)
    required List<String> moderatorIds,
    
    /// List books
    required List<CollaborativeBookEntity> books,
    
    /// List tags
    required List<String> tags,
    
    /// List creation date
    required DateTime dateCreated,
    
    /// List last updated date
    required DateTime dateUpdated,
    
    /// List settings
    required CollaborativeListSettings settings,
    
    /// List statistics
    required CollaborativeListStats stats,
  }) = _CollaborativeListEntity;

  factory CollaborativeListEntity.fromJson(Map<String, dynamic> json) => _$CollaborativeListEntityFromJson(json);
}

/// Collaborative list type
enum CollaborativeListType {
  bookClub,
  readingChallenge,
  sharedRecommendations,
  studyGroup,
  socialReading,
  custom,
}

/// List visibility
enum ListVisibility {
  public,
  private,
  membersOnly,
  inviteOnly,
}

/// Collaborative book entity
@freezed
class CollaborativeBookEntity with _$CollaborativeBookEntity {
  const factory CollaborativeBookEntity({
    /// Book ID
    required String bookId,
    
    /// Book title
    required String title,
    
    /// Book author
    required String author,
    
    /// Book cover URL
    String? coverUrl,
    
    /// Added by user ID
    required String addedByUserId,
    
    /// Added date
    required DateTime addedDate,
    
    /// Book status in the list
    required BookListStatus status,
    
    /// User notes about the book
    String? userNotes,
    
    /// Rating given by user
    double? userRating,
    
    /// Reading progress
    ReadingProgressEntity? readingProgress,
    
    /// Discussion threads
    required List<DiscussionThreadEntity> discussionThreads,
  }) = _CollaborativeBookEntity;

  factory CollaborativeBookEntity.fromJson(Map<String, dynamic> json) => _$CollaborativeBookEntityFromJson(json);
}

/// Book status in collaborative list
enum BookListStatus {
  toRead,
  currentlyReading,
  completed,
  abandoned,
  recommended,
}

/// Reading progress entity
@freezed
class ReadingProgressEntity with _$ReadingProgressEntity {
  const factory ReadingProgressEntity({
    /// User ID
    required String userId,
    
    /// Current page
    required int currentPage,
    
    /// Total pages
    required int totalPages,
    
    /// Progress percentage
    required double progressPercentage,
    
    /// Last updated date
    required DateTime lastUpdated,
    
    /// Reading notes
    String? notes,
    
    /// Reading session duration
    Duration? sessionDuration,
  }) = _ReadingProgressEntity;

  factory ReadingProgressEntity.fromJson(Map<String, dynamic> json) => _$ReadingProgressEntityFromJson(json);
}

/// Discussion thread entity
@freezed
class DiscussionThreadEntity with _$DiscussionThreadEntity {
  const factory DiscussionThreadEntity({
    /// Thread ID
    required String id,
    
    /// Thread title
    required String title,
    
    /// Thread content
    required String content,
    
    /// Thread author ID
    required String authorId,
    
    /// Thread creation date
    required DateTime dateCreated,
    
    /// Thread last updated date
    required DateTime dateUpdated,
    
    /// Thread replies
    required List<DiscussionReplyEntity> replies,
    
    /// Thread likes
    required List<String> likedByUserIds,
    
    /// Thread tags
    required List<String> tags,
  }) = _DiscussionThreadEntity;

  factory DiscussionThreadEntity.fromJson(Map<String, dynamic> json) => _$DiscussionThreadEntityFromJson(json);
}

/// Discussion reply entity
@freezed
class DiscussionReplyEntity with _$DiscussionReplyEntity {
  const factory DiscussionReplyEntity({
    /// Reply ID
    required String id,
    
    /// Reply content
    required String content,
    
    /// Reply author ID
    required String authorId,
    
    /// Reply creation date
    required DateTime dateCreated,
    
    /// Reply last updated date
    required DateTime dateUpdated,
    
    /// Reply likes
    required List<String> likedByUserIds,
    
    /// Parent reply ID (for nested replies)
    String? parentReplyId,
  }) = _DiscussionReplyEntity;

  factory DiscussionReplyEntity.fromJson(Map<String, dynamic> json) => _$DiscussionReplyEntityFromJson(json);
}

/// Collaborative list settings
@freezed
class CollaborativeListSettings with _$CollaborativeListSettings {
  const factory CollaborativeListSettings({
    /// Allow members to add books
    required bool allowMembersToAddBooks,
    
    /// Allow members to remove books
    required bool allowMembersToRemoveBooks,
    
    /// Allow members to edit list
    required bool allowMembersToEditList,
    
    /// Allow public comments
    required bool allowPublicComments,
    
    /// Require approval for new members
    required bool requireApprovalForNewMembers,
    
    /// Maximum number of members
    int? maxMembers,
    
    /// Auto-archive completed books
    required bool autoArchiveCompletedBooks,
    
    /// Send notifications for updates
    required bool sendNotificationsForUpdates,
  }) = _CollaborativeListSettings;

  factory CollaborativeListSettings.fromJson(Map<String, dynamic> json) => _$CollaborativeListSettingsFromJson(json);
}

/// Collaborative list statistics
@freezed
class CollaborativeListStats with _$CollaborativeListStats {
  const factory CollaborativeListStats({
    /// Total books in list
    required int totalBooks,
    
    /// Completed books
    required int completedBooks,
    
    /// Currently reading
    required int currentlyReading,
    
    /// To read books
    required int toReadBooks,
    
    /// Total members
    required int totalMembers,
    
    /// Active members (last 30 days)
    required int activeMembers,
    
    /// Total discussion threads
    required int totalDiscussionThreads,
    
    /// Total replies
    required int totalReplies,
    
    /// Average rating
    required double averageRating,
    
    /// Most active member ID
    String? mostActiveMemberId,
    
    /// Last activity date
    required DateTime lastActivityDate,
  }) = _CollaborativeListStats;

  factory CollaborativeListStats.fromJson(Map<String, dynamic> json) => _$CollaborativeListStatsFromJson(json);
}
