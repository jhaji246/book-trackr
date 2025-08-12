import 'package:dartz/dartz.dart';
import '../entities/collaborative_list_entity.dart';
import '../failures.dart';

/// Abstract interface for collaborative reading list data operations
abstract class CollaborativeListRepository {
  /// Get all collaborative lists for a user
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsForUser(String userId);
  
  /// Get a specific collaborative list by ID
  Future<Either<Failure, CollaborativeListEntity>> getCollaborativeListById(String listId);
  
  /// Create a new collaborative list
  Future<Either<Failure, CollaborativeListEntity>> createCollaborativeList(CollaborativeListEntity list);
  
  /// Update an existing collaborative list
  Future<Either<Failure, CollaborativeListEntity>> updateCollaborativeList(CollaborativeListEntity list);
  
  /// Delete a collaborative list
  Future<Either<Failure, void>> deleteCollaborativeList(String listId);
  
  /// Add a book to a collaborative list
  Future<Either<Failure, CollaborativeListEntity>> addBookToList(String listId, CollaborativeBookEntity book);
  
  /// Remove a book from a collaborative list
  Future<Either<Failure, CollaborativeListEntity>> removeBookFromList(String listId, String bookId);
  
  /// Update book status in a list
  Future<Either<Failure, CollaborativeListEntity>> updateBookStatus(String listId, String bookId, BookListStatus status);
  
  /// Add a member to a collaborative list
  Future<Either<Failure, CollaborativeListEntity>> addMemberToList(String listId, String userId);
  
  /// Remove a member from a collaborative list
  Future<Either<Failure, CollaborativeListEntity>> removeMemberFromList(String listId, String userId);
  
  /// Promote a member to moderator
  Future<Either<Failure, CollaborativeListEntity>> promoteToModerator(String listId, String userId);
  
  /// Demote a moderator to member
  Future<Either<Failure, CollaborativeListEntity>> demoteModerator(String listId, String userId);
  
  /// Join a collaborative list
  Future<Either<Failure, CollaborativeListEntity>> joinList(String listId, String userId);
  
  /// Leave a collaborative list
  Future<Either<Failure, CollaborativeListEntity>> leaveList(String listId, String userId);
  
  /// Search collaborative lists
  Future<Either<Failure, List<CollaborativeListEntity>>> searchCollaborativeLists({
    String? searchQuery,
    CollaborativeListType? type,
    ListVisibility? visibility,
    List<String>? tags,
    String? creatorId,
    bool? isMember,
  });
  
  /// Get public collaborative lists
  Future<Either<Failure, List<CollaborativeListEntity>>> getPublicCollaborativeLists();
  
  /// Get trending collaborative lists
  Future<Either<Failure, List<CollaborativeListEntity>>> getTrendingCollaborativeLists();
  
  /// Get collaborative lists by type
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsByType(CollaborativeListType type);
  
  /// Get collaborative lists by tags
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsByTags(List<String> tags);
  
  /// Add discussion thread to a book
  Future<Either<Failure, CollaborativeListEntity>> addDiscussionThread(
    String listId,
    String bookId,
    DiscussionThreadEntity thread,
  );
  
  /// Add reply to a discussion thread
  Future<Either<Failure, CollaborativeListEntity>> addDiscussionReply(
    String listId,
    String bookId,
    String threadId,
    DiscussionReplyEntity reply,
  );
  
  /// Like/unlike a discussion thread
  Future<Either<Failure, CollaborativeListEntity>> toggleThreadLike(
    String listId,
    String bookId,
    String threadId,
    String userId,
  );
  
  /// Like/unlike a discussion reply
  Future<Either<Failure, CollaborativeListEntity>> toggleReplyLike(
    String listId,
    String bookId,
    String threadId,
    String replyId,
    String userId,
  );
  
  /// Update reading progress for a book
  Future<Either<Failure, CollaborativeListEntity>> updateReadingProgress(
    String listId,
    String bookId,
    ReadingProgressEntity progress,
  );
  
  /// Get collaborative list recommendations for a user
  Future<Either<Failure, List<CollaborativeListEntity>>> getRecommendationsForUser(String userId);
  
  /// Get collaborative list statistics
  Future<Either<Failure, Map<String, dynamic>>> getCollaborativeListStatistics(String listId);
  
  /// Get user's collaborative reading statistics
  Future<Either<Failure, Map<String, dynamic>>> getUserCollaborativeReadingStats(String userId);
}
