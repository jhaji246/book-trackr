import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/collaborative_list_entity.dart';

part 'collaborative_list_model.freezed.dart';
part 'collaborative_list_model.g.dart';

/// Data model for collaborative reading lists, used for JSON serialization
@freezed
class CollaborativeListModel with _$CollaborativeListModel {
  const factory CollaborativeListModel({
    /// List ID
    required String id,
    
    /// List name
    required String name,
    
    /// List description
    required String description,
    
    /// List creator ID
    required String creatorId,
    
    /// List type
    required String type,
    
    /// List visibility
    required String visibility,
    
    /// List members (user IDs)
    required List<String> memberIds,
    
    /// List moderators (user IDs)
    required List<String> moderatorIds,
    
    /// List books
    required List<CollaborativeBookModel> books,
    
    /// List tags
    required List<String> tags,
    
    /// List creation date
    required DateTime dateCreated,
    
    /// List last updated date
    required DateTime dateUpdated,
    
    /// List settings
    required CollaborativeListSettingsModel settings,
    
    /// List statistics
    required CollaborativeListStatsModel stats,
  }) = _CollaborativeListModel;

  factory CollaborativeListModel.fromJson(Map<String, dynamic> json) => _$CollaborativeListModelFromJson(json);
  
  /// Convert from domain entity
  factory CollaborativeListModel.fromEntity(CollaborativeListEntity entity) {
    return CollaborativeListModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      creatorId: entity.creatorId,
      type: entity.type.name,
      visibility: entity.visibility.name,
      memberIds: entity.memberIds,
      moderatorIds: entity.moderatorIds,
      books: entity.books.map((book) => CollaborativeBookModel.fromEntity(book)).toList(),
      tags: entity.tags,
      dateCreated: entity.dateCreated,
      dateUpdated: entity.dateUpdated,
      settings: CollaborativeListSettingsModel.fromEntity(entity.settings),
      stats: CollaborativeListStatsModel.fromEntity(entity.stats),
    );
  }

  /// Convert to domain entity
  CollaborativeListEntity toEntity() {
    return CollaborativeListEntity(
      id: id,
      name: name,
      description: description,
      creatorId: creatorId,
      type: CollaborativeListType.values.firstWhere((e) => e.name == type),
      visibility: ListVisibility.values.firstWhere((e) => e.name == visibility),
      memberIds: memberIds,
      moderatorIds: moderatorIds,
      books: books.map((book) => book.toEntity()).toList(),
      tags: tags,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      settings: settings.toEntity(),
      stats: stats.toEntity(),
    );
  }
}

/// Data model for collaborative books
@freezed
class CollaborativeBookModel with _$CollaborativeBookModel {
  const factory CollaborativeBookModel({
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
    required String status,
    
    /// User notes about the book
    String? userNotes,
    
    /// Rating given by user
    double? userRating,
    
    /// Reading progress
    ReadingProgressModel? readingProgress,
    
    /// Discussion threads
    required List<DiscussionThreadModel> discussionThreads,
  }) = _CollaborativeBookModel;

  factory CollaborativeBookModel.fromJson(Map<String, dynamic> json) => _$CollaborativeBookModelFromJson(json);
  
  /// Convert from domain entity
  factory CollaborativeBookModel.fromEntity(CollaborativeBookEntity entity) {
    return CollaborativeBookModel(
      bookId: entity.bookId,
      title: entity.title,
      author: entity.author,
      coverUrl: entity.coverUrl,
      addedByUserId: entity.addedByUserId,
      addedDate: entity.addedDate,
      status: entity.status.name,
      userNotes: entity.userNotes,
      userRating: entity.userRating,
      readingProgress: entity.readingProgress != null 
          ? ReadingProgressModel.fromEntity(entity.readingProgress!)
          : null,
      discussionThreads: entity.discussionThreads
          .map((thread) => DiscussionThreadModel.fromEntity(thread))
          .toList(),
    );
  }

  /// Convert to domain entity
  CollaborativeBookEntity toEntity() {
    return CollaborativeBookEntity(
      bookId: bookId,
      title: title,
      author: author,
      coverUrl: coverUrl,
      addedByUserId: addedByUserId,
      addedDate: addedDate,
      status: BookListStatus.values.firstWhere((e) => e.name == status),
      userNotes: userNotes,
      userRating: userRating,
      readingProgress: readingProgress?.toEntity(),
      discussionThreads: discussionThreads.map((thread) => thread.toEntity()).toList(),
    );
  }
}

/// Data model for reading progress
@freezed
class ReadingProgressModel with _$ReadingProgressModel {
  const factory ReadingProgressModel({
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
    
    /// Reading session duration in minutes
    int? sessionDurationMinutes,
  }) = _ReadingProgressModel;

  factory ReadingProgressModel.fromJson(Map<String, dynamic> json) => _$ReadingProgressModelFromJson(json);
  
  /// Convert from domain entity
  factory ReadingProgressModel.fromEntity(ReadingProgressEntity entity) {
    return ReadingProgressModel(
      userId: entity.userId,
      currentPage: entity.currentPage,
      totalPages: entity.totalPages,
      progressPercentage: entity.progressPercentage,
      lastUpdated: entity.lastUpdated,
      notes: entity.notes,
      sessionDurationMinutes: entity.sessionDuration?.inMinutes,
    );
  }

  /// Convert to domain entity
  ReadingProgressEntity toEntity() {
    return ReadingProgressEntity(
      userId: userId,
      currentPage: currentPage,
      totalPages: totalPages,
      progressPercentage: progressPercentage,
      lastUpdated: lastUpdated,
      notes: notes,
      sessionDuration: sessionDurationMinutes != null 
          ? Duration(minutes: sessionDurationMinutes!)
          : null,
    );
  }
}

/// Data model for discussion threads
@freezed
class DiscussionThreadModel with _$DiscussionThreadModel {
  const factory DiscussionThreadModel({
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
    required List<DiscussionReplyModel> replies,
    
    /// Thread likes
    required List<String> likedByUserIds,
    
    /// Thread tags
    required List<String> tags,
  }) = _DiscussionThreadModel;

  factory DiscussionThreadModel.fromJson(Map<String, dynamic> json) => _$DiscussionThreadModelFromJson(json);
  
  /// Convert from domain entity
  factory DiscussionThreadModel.fromEntity(DiscussionThreadEntity entity) {
    return DiscussionThreadModel(
      id: entity.id,
      title: entity.title,
      content: entity.content,
      authorId: entity.authorId,
      dateCreated: entity.dateCreated,
      dateUpdated: entity.dateUpdated,
      replies: entity.replies.map((reply) => DiscussionReplyModel.fromEntity(reply)).toList(),
      likedByUserIds: entity.likedByUserIds,
      tags: entity.tags,
    );
  }

  /// Convert to domain entity
  DiscussionThreadEntity toEntity() {
    return DiscussionThreadEntity(
      id: id,
      title: title,
      content: content,
      authorId: authorId,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      replies: replies.map((reply) => reply.toEntity()).toList(),
      likedByUserIds: likedByUserIds,
      tags: tags,
    );
  }
}

/// Data model for discussion replies
@freezed
class DiscussionReplyModel with _$DiscussionReplyModel {
  const factory DiscussionReplyModel({
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
  }) = _DiscussionReplyModel;

  factory DiscussionReplyModel.fromJson(Map<String, dynamic> json) => _$DiscussionReplyModelFromJson(json);
  
  /// Convert from domain entity
  factory DiscussionReplyModel.fromEntity(DiscussionReplyEntity entity) {
    return DiscussionReplyModel(
      id: entity.id,
      content: entity.content,
      authorId: entity.authorId,
      dateCreated: entity.dateCreated,
      dateUpdated: entity.dateUpdated,
      likedByUserIds: entity.likedByUserIds,
      parentReplyId: entity.parentReplyId,
    );
  }

  /// Convert to domain entity
  DiscussionReplyEntity toEntity() {
    return DiscussionReplyEntity(
      id: id,
      content: content,
      authorId: authorId,
      dateCreated: dateCreated,
      dateUpdated: dateUpdated,
      likedByUserIds: likedByUserIds,
      parentReplyId: parentReplyId,
    );
  }
}

/// Data model for collaborative list settings
@freezed
class CollaborativeListSettingsModel with _$CollaborativeListSettingsModel {
  const factory CollaborativeListSettingsModel({
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
  }) = _CollaborativeListSettingsModel;

  factory CollaborativeListSettingsModel.fromJson(Map<String, dynamic> json) => _$CollaborativeListSettingsModelFromJson(json);
  
  /// Convert from domain entity
  factory CollaborativeListSettingsModel.fromEntity(CollaborativeListSettings entity) {
    return CollaborativeListSettingsModel(
      allowMembersToAddBooks: entity.allowMembersToAddBooks,
      allowMembersToRemoveBooks: entity.allowMembersToRemoveBooks,
      allowMembersToEditList: entity.allowMembersToEditList,
      allowPublicComments: entity.allowPublicComments,
      requireApprovalForNewMembers: entity.requireApprovalForNewMembers,
      maxMembers: entity.maxMembers,
      autoArchiveCompletedBooks: entity.autoArchiveCompletedBooks,
      sendNotificationsForUpdates: entity.sendNotificationsForUpdates,
    );
  }

  /// Convert to domain entity
  CollaborativeListSettings toEntity() {
    return CollaborativeListSettings(
      allowMembersToAddBooks: allowMembersToAddBooks,
      allowMembersToRemoveBooks: allowMembersToRemoveBooks,
      allowMembersToEditList: allowMembersToEditList,
      allowPublicComments: allowPublicComments,
      requireApprovalForNewMembers: requireApprovalForNewMembers,
      maxMembers: maxMembers,
      autoArchiveCompletedBooks: autoArchiveCompletedBooks,
      sendNotificationsForUpdates: sendNotificationsForUpdates,
    );
  }
}

/// Data model for collaborative list statistics
@freezed
class CollaborativeListStatsModel with _$CollaborativeListStatsModel {
  const factory CollaborativeListStatsModel({
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
  }) = _CollaborativeListStatsModel;

  factory CollaborativeListStatsModel.fromJson(Map<String, dynamic> json) => _$CollaborativeListStatsModelFromJson(json);
  
  /// Convert from domain entity
  factory CollaborativeListStatsModel.fromEntity(CollaborativeListStats entity) {
    return CollaborativeListStatsModel(
      totalBooks: entity.totalBooks,
      completedBooks: entity.completedBooks,
      currentlyReading: entity.currentlyReading,
      toReadBooks: entity.toReadBooks,
      totalMembers: entity.totalMembers,
      activeMembers: entity.activeMembers,
      totalDiscussionThreads: entity.totalDiscussionThreads,
      totalReplies: entity.totalReplies,
      averageRating: entity.averageRating,
      mostActiveMemberId: entity.mostActiveMemberId,
      lastActivityDate: entity.lastActivityDate,
    );
  }

  /// Convert to domain entity
  CollaborativeListStats toEntity() {
    return CollaborativeListStats(
      totalBooks: totalBooks,
      completedBooks: completedBooks,
      currentlyReading: currentlyReading,
      toReadBooks: toReadBooks,
      totalMembers: totalMembers,
      activeMembers: activeMembers,
      totalDiscussionThreads: totalDiscussionThreads,
      totalReplies: totalReplies,
      averageRating: averageRating,
      mostActiveMemberId: mostActiveMemberId,
      lastActivityDate: lastActivityDate,
    );
  }
}
