import 'package:dartz/dartz.dart';
import '../../domain/entities/collaborative_list_entity.dart';
import '../../domain/failures.dart';
import 'collaborative_list_remote_data_source.dart';

/// Concrete implementation of CollaborativeListRemoteDataSource with sample data
class CollaborativeListRemoteDataSourceImpl implements CollaborativeListRemoteDataSource {
  @override
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsForUser(String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 600));
      
      // Return sample collaborative lists for the user
      final lists = _generateSampleCollaborativeLists();
      return Right(lists);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to fetch collaborative lists: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> getCollaborativeListById(String listId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Return sample collaborative list
      final list = _generateSampleCollaborativeList(listId);
      return Right(list);
    } catch (e) {
      return Left(Failure.collaborativeListNotFoundFailure(listId: listId));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> createCollaborativeList(CollaborativeListEntity list) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 800));
      
      // Return the created list with generated ID
      final createdList = list.copyWith(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        dateCreated: DateTime.now(),
        dateUpdated: DateTime.now(),
      );
      
      return Right(createdList);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to create collaborative list: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> updateCollaborativeList(CollaborativeListEntity list) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 600));
      
      // Return updated list
      final updatedList = list.copyWith(
        dateUpdated: DateTime.now(),
      );
      
      return Right(updatedList);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update collaborative list: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCollaborativeList(String listId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Simulate successful deletion
      return const Right(null);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to delete collaborative list: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> addBookToList(String listId, CollaborativeBookEntity book) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Get the list and add book
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          final updatedBooks = [...list.books, book];
          final updatedList = list.copyWith(
            books: updatedBooks,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to add book to list: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> removeBookFromList(String listId, String bookId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Get the list and remove book
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          final updatedBooks = list.books.where((b) => b.bookId != bookId).toList();
          final updatedList = list.copyWith(
            books: updatedBooks,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to remove book from list: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> updateBookStatus(String listId, String bookId, BookListStatus status) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Get the list and update book status
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          final updatedBooks = list.books.map((book) {
            if (book.bookId == bookId) {
              return book.copyWith(status: status);
            }
            return book;
          }).toList();
          
          final updatedList = list.copyWith(
            books: updatedBooks,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update book status: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> addMemberToList(String listId, String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Get the list and add member
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          if (list.memberIds.contains(userId)) {
            return Left(Failure.alreadyMemberFailure(listId: listId, userId: userId));
          }
          
          final updatedMembers = [...list.memberIds, userId];
          final updatedList = list.copyWith(
            memberIds: updatedMembers,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to add member to list: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> removeMemberFromList(String listId, String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Get the list and remove member
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          if (!list.memberIds.contains(userId)) {
            return Left(Failure.notMemberFailure(listId: listId, userId: userId));
          }
          
          final updatedMembers = list.memberIds.where((id) => id != userId).toList();
          final updatedList = list.copyWith(
            memberIds: updatedMembers,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to remove member from list: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> promoteToModerator(String listId, String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Get the list and promote member
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          if (!list.memberIds.contains(userId)) {
            return Left(Failure.notMemberFailure(listId: listId, userId: userId));
          }
          
          if (list.moderatorIds.contains(userId)) {
            return Right(list); // Already a moderator
          }
          
          final updatedModerators = [...list.moderatorIds, userId];
          final updatedList = list.copyWith(
            moderatorIds: updatedModerators,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to promote member: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> demoteModerator(String listId, String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Get the list and demote moderator
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          if (!list.moderatorIds.contains(userId)) {
            return Right(list); // Not a moderator
          }
          
          final updatedModerators = list.moderatorIds.where((id) => id != userId).toList();
          final updatedList = list.copyWith(
            moderatorIds: updatedModerators,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to demote moderator: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> joinList(String listId, String userId) async {
    try {
      return await addMemberToList(listId, userId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to join list: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> leaveList(String listId, String userId) async {
    try {
      return await removeMemberFromList(listId, userId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to leave list: $e'));
    }
  }

  @override
  Future<Either<Failure, List<CollaborativeListEntity>>> searchCollaborativeLists({
    String? searchQuery,
    CollaborativeListType? type,
    ListVisibility? visibility,
    List<String>? tags,
    String? creatorId,
    bool? isMember,
  }) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 700));
      
      // Get all lists and filter
      final allLists = _generateSampleCollaborativeLists();
      var filtered = allLists;
      
      if (searchQuery != null && searchQuery.isNotEmpty) {
        final query = searchQuery.toLowerCase();
        filtered = filtered.where((list) =>
          list.name.toLowerCase().contains(query) ||
          list.description.toLowerCase().contains(query)
        ).toList();
      }
      
      if (type != null) {
        filtered = filtered.where((list) => list.type == type).toList();
      }
      
      if (visibility != null) {
        filtered = filtered.where((list) => list.visibility == visibility).toList();
      }
      
      if (tags != null && tags.isNotEmpty) {
        filtered = filtered.where((list) =>
          tags.any((tag) => list.tags.contains(tag))
        ).toList();
      }
      
      if (creatorId != null) {
        filtered = filtered.where((list) => list.creatorId == creatorId).toList();
      }
      
      return Right(filtered);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to search collaborative lists: $e'));
    }
  }

  @override
  Future<Either<Failure, List<CollaborativeListEntity>>> getPublicCollaborativeLists() async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Return public lists
      final allLists = _generateSampleCollaborativeLists();
      final publicLists = allLists.where((list) => 
        list.visibility == ListVisibility.public
      ).toList();
      
      return Right(publicLists);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get public collaborative lists: $e'));
    }
  }

  @override
  Future<Either<Failure, List<CollaborativeListEntity>>> getTrendingCollaborativeLists() async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Return trending lists (sorted by activity)
      final allLists = _generateSampleCollaborativeLists();
      final trendingLists = allLists
        .where((list) => list.stats.lastActivityDate.isAfter(
          DateTime.now().subtract(const Duration(days: 7))
        ))
        .toList()
        ..sort((a, b) => b.stats.lastActivityDate.compareTo(a.stats.lastActivityDate));
      
      return Right(trendingLists.take(10).toList());
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get trending collaborative lists: $e'));
    }
  }

  @override
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsByType(CollaborativeListType type) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Return lists by type
      final allLists = _generateSampleCollaborativeLists();
      final typeLists = allLists.where((list) => list.type == type).toList();
      
      return Right(typeLists);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get collaborative lists by type: $e'));
    }
  }

  @override
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsByTags(List<String> tags) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 400));
      
      // Return lists by tags
      final allLists = _generateSampleCollaborativeLists();
      final tagLists = allLists.where((list) =>
        tags.any((tag) => list.tags.contains(tag))
      ).toList();
      
      return Right(tagLists);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get collaborative lists by tags: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> addDiscussionThread(
    String listId,
    String bookId,
    DiscussionThreadEntity thread,
  ) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 600));
      
      // Get the list and add discussion thread
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          final bookIndex = list.books.indexWhere((book) => book.bookId == bookId);
          if (bookIndex == -1) {
            return Left(Failure.bookNotFoundFailure(bookId: bookId));
          }
          
          final updatedBooks = List<CollaborativeBookEntity>.from(list.books);
          final book = updatedBooks[bookIndex];
          final updatedBook = book.copyWith(
            discussionThreads: [...book.discussionThreads, thread],
          );
          updatedBooks[bookIndex] = updatedBook;
          
          final updatedList = list.copyWith(
            books: updatedBooks,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to add discussion thread: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> addDiscussionReply(
    String listId,
    String bookId,
    String threadId,
    DiscussionReplyEntity reply,
  ) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Get the list and add reply
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          final bookIndex = list.books.indexWhere((book) => book.bookId == bookId);
          if (bookIndex == -1) {
            return Left(Failure.bookNotFoundFailure(bookId: bookId));
          }
          
          final updatedBooks = List<CollaborativeBookEntity>.from(list.books);
          final book = updatedBooks[bookIndex];
          
          final threadIndex = book.discussionThreads.indexWhere((thread) => thread.id == threadId);
          if (threadIndex == -1) {
            return Left(Failure.discussionThreadNotFoundFailure(threadId: threadId));
          }
          
          final thread = book.discussionThreads[threadIndex];
          final updatedThread = thread.copyWith(
            replies: [...thread.replies, reply],
          );
          
          final updatedBook = book.copyWith(
            discussionThreads: List<DiscussionThreadEntity>.from(book.discussionThreads)
              ..[threadIndex] = updatedThread,
          );
          updatedBooks[bookIndex] = updatedBook;
          
          final updatedList = list.copyWith(
            books: updatedBooks,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to add discussion reply: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> toggleThreadLike(
    String listId,
    String bookId,
    String threadId,
    String userId,
  ) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 300));
      
      // Get the list and toggle like
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          final bookIndex = list.books.indexWhere((book) => book.bookId == bookId);
          if (bookIndex == -1) {
            return Left(Failure.bookNotFoundFailure(bookId: bookId));
          }
          
          final updatedBooks = List<CollaborativeBookEntity>.from(list.books);
          final book = updatedBooks[bookIndex];
          
          final threadIndex = book.discussionThreads.indexWhere((thread) => thread.id == threadId);
          if (threadIndex == -1) {
            return Left(Failure.discussionThreadNotFoundFailure(threadId: threadId));
          }
          
          final thread = book.discussionThreads[threadIndex];
          final updatedLikedByUserIds = List<String>.from(thread.likedByUserIds);
          
          if (updatedLikedByUserIds.contains(userId)) {
            updatedLikedByUserIds.remove(userId);
          } else {
            updatedLikedByUserIds.add(userId);
          }
          
          final updatedThread = thread.copyWith(
            likedByUserIds: updatedLikedByUserIds,
          );
          
          final updatedBook = book.copyWith(
            discussionThreads: List<DiscussionThreadEntity>.from(book.discussionThreads)
              ..[threadIndex] = updatedThread,
          );
          updatedBooks[bookIndex] = updatedBook;
          
          final updatedList = list.copyWith(
            books: updatedBooks,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to toggle thread like: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> toggleReplyLike(
    String listId,
    String bookId,
    String threadId,
    String replyId,
    String userId,
  ) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 300));
      
      // Get the list and toggle reply like
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          final bookIndex = list.books.indexWhere((book) => book.bookId == bookId);
          if (bookIndex == -1) {
            return Left(Failure.bookNotFoundFailure(bookId: bookId));
          }
          
          final updatedBooks = List<CollaborativeBookEntity>.from(list.books);
          final book = updatedBooks[bookIndex];
          
          final threadIndex = book.discussionThreads.indexWhere((thread) => thread.id == threadId);
          if (threadIndex == -1) {
            return Left(Failure.discussionThreadNotFoundFailure(threadId: threadId));
          }
          
          final thread = book.discussionThreads[threadIndex];
          final replyIndex = thread.replies.indexWhere((reply) => reply.id == replyId);
          if (replyIndex == -1) {
            return Left(Failure.replyNotFoundFailure(replyId: replyId));
          }
          
          final reply = thread.replies[replyIndex];
          final updatedLikedByUserIds = List<String>.from(reply.likedByUserIds);
          
          if (updatedLikedByUserIds.contains(userId)) {
            updatedLikedByUserIds.remove(userId);
          } else {
            updatedLikedByUserIds.add(userId);
          }
          
          final updatedReply = reply.copyWith(
            likedByUserIds: updatedLikedByUserIds,
          );
          
          final updatedThread = thread.copyWith(
            replies: List<DiscussionReplyEntity>.from(thread.replies)
              ..[replyIndex] = updatedReply,
          );
          
          final updatedBook = book.copyWith(
            discussionThreads: List<DiscussionThreadEntity>.from(book.discussionThreads)
              ..[threadIndex] = updatedThread,
          );
          updatedBooks[bookIndex] = updatedBook;
          
          final updatedList = list.copyWith(
            books: updatedBooks,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to toggle reply like: $e'));
    }
  }

  @override
  Future<Either<Failure, CollaborativeListEntity>> updateReadingProgress(
    String listId,
    String bookId,
    ReadingProgressEntity progress,
  ) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Get the list and update reading progress
      final listResult = await getCollaborativeListById(listId);
      return listResult.fold(
        (failure) => Left(failure),
        (list) {
          final bookIndex = list.books.indexWhere((book) => book.bookId == bookId);
          if (bookIndex == -1) {
            return Left(Failure.bookNotFoundFailure(bookId: bookId));
          }
          
          final updatedBooks = List<CollaborativeBookEntity>.from(list.books);
          final book = updatedBooks[bookIndex];
          final updatedBook = book.copyWith(
            readingProgress: progress,
          );
          updatedBooks[bookIndex] = updatedBook;
          
          final updatedList = list.copyWith(
            books: updatedBooks,
            dateUpdated: DateTime.now(),
          );
          return Right(updatedList);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update reading progress: $e'));
    }
  }

  @override
  Future<Either<Failure, List<CollaborativeListEntity>>> getRecommendationsForUser(String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 800));
      
      // Return personalized recommendations
      final allLists = _generateSampleCollaborativeLists();
      final recommendations = allLists
        .where((list) => list.visibility == ListVisibility.public)
        .take(5)
        .toList();
      
      return Right(recommendations);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get recommendations: $e'));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getCollaborativeListStatistics(String listId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 600));
      
      // Return sample statistics
      return Right({
        'totalBooks': 25,
        'completedBooks': 12,
        'currentlyReading': 8,
        'toReadBooks': 5,
        'totalMembers': 15,
        'activeMembers': 12,
        'totalDiscussionThreads': 45,
        'totalReplies': 120,
        'averageRating': 4.2,
        'mostActiveMemberId': 'user-2',
        'lastActivityDate': DateTime.now().toIso8601String(),
      });
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get list statistics: $e'));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getUserCollaborativeReadingStats(String userId) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 600));
      
      // Return sample user statistics
      return Right({
        'totalListsJoined': 8,
        'totalBooksRead': 45,
        'totalPagesRead': 12500,
        'averageRating': 4.1,
        'favoriteGenres': ['Fantasy', 'Mystery', 'Science Fiction'],
        'readingStreak': 15,
        'totalDiscussionPosts': 23,
        'totalLikesReceived': 67,
      });
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get user statistics: $e'));
    }
  }

  /// Generate sample collaborative lists for demonstration
  List<CollaborativeListEntity> _generateSampleCollaborativeLists() {
    return [
      _generateSampleCollaborativeList(
        'list-1',
        name: 'Fantasy Book Club',
        description: 'A monthly book club focused on fantasy literature from classic to contemporary.',
        type: CollaborativeListType.bookClub,
        visibility: ListVisibility.public,
        tags: ['Fantasy', 'Book Club', 'Monthly'],
      ),
      _generateSampleCollaborativeList(
        'list-2',
        name: '2024 Reading Challenge',
        description: 'Join us for a year-long reading challenge with monthly themes and goals.',
        type: CollaborativeListType.readingChallenge,
        visibility: ListVisibility.public,
        tags: ['Reading Challenge', '2024', 'Monthly Themes'],
      ),
      _generateSampleCollaborativeList(
        'list-3',
        name: 'Mystery & Thriller Recommendations',
        description: 'Share and discover the best mystery and thriller books.',
        type: CollaborativeListType.sharedRecommendations,
        visibility: ListVisibility.membersOnly,
        tags: ['Mystery', 'Thriller', 'Recommendations'],
      ),
      _generateSampleCollaborativeList(
        'list-4',
        name: 'Classic Literature Study Group',
        description: 'Deep dive into classic literature with weekly discussions and analysis.',
        type: CollaborativeListType.studyGroup,
        visibility: ListVisibility.inviteOnly,
        tags: ['Classics', 'Study Group', 'Literature'],
      ),
      _generateSampleCollaborativeList(
        'list-5',
        name: 'Science Fiction Enthusiasts',
        description: 'Explore the vast universe of science fiction together.',
        type: CollaborativeListType.socialReading,
        visibility: ListVisibility.public,
        tags: ['Science Fiction', 'Social', 'Discussion'],
      ),
    ];
  }

  /// Generate a sample collaborative list
  CollaborativeListEntity _generateSampleCollaborativeList(
    String id, {
    String? name,
    String? description,
    CollaborativeListType? type,
    ListVisibility? visibility,
    List<String>? tags,
  }) {
    final now = DateTime.now();
    
    return CollaborativeListEntity(
      id: id,
      name: name ?? 'Sample Collaborative List',
      description: description ?? 'This is a sample collaborative reading list for demonstration purposes.',
      creatorId: 'user-1',
      type: type ?? CollaborativeListType.custom,
      visibility: visibility ?? ListVisibility.public,
      memberIds: ['user-1', 'user-2', 'user-3', 'user-4'],
      moderatorIds: ['user-1', 'user-2'],
      books: _generateSampleCollaborativeBooks(),
      tags: tags ?? ['Sample', 'Demo'],
      dateCreated: now.subtract(const Duration(days: 30)),
      dateUpdated: now.subtract(const Duration(days: 2)),
      settings: _generateSampleSettings(),
      stats: _generateSampleStats(),
    );
  }

  /// Generate sample collaborative books
  List<CollaborativeBookEntity> _generateSampleCollaborativeBooks() {
    return [
      _generateSampleCollaborativeBook(
        'book-1',
        title: 'The Great Gatsby',
        author: 'F. Scott Fitzgerald',
        status: BookListStatus.completed,
        userRating: 4.5,
      ),
      _generateSampleCollaborativeBook(
        'book-2',
        title: '1984',
        author: 'George Orwell',
        status: BookListStatus.currentlyReading,
        userRating: 4.0,
      ),
      _generateSampleCollaborativeBook(
        'book-3',
        title: 'Pride and Prejudice',
        author: 'Jane Austen',
        status: BookListStatus.toRead,
        userRating: null,
      ),
    ];
  }

  /// Generate a sample collaborative book
  CollaborativeBookEntity _generateSampleCollaborativeBook(
    String bookId, {
    String? title,
    String? author,
    BookListStatus? status,
    double? userRating,
  }) {
    final now = DateTime.now();
    
    return CollaborativeBookEntity(
      bookId: bookId,
      title: title ?? 'Sample Book',
      author: author ?? 'Sample Author',
      coverUrl: null,
      addedByUserId: 'user-1',
      addedDate: now.subtract(const Duration(days: 15)),
      status: status ?? BookListStatus.toRead,
      userNotes: 'Looking forward to reading this!',
      userRating: userRating,
      readingProgress: status == BookListStatus.currentlyReading
          ? _generateSampleReadingProgress()
          : null,
      discussionThreads: _generateSampleDiscussionThreads(),
    );
  }

  /// Generate sample reading progress
  ReadingProgressEntity _generateSampleReadingProgress() {
    return const ReadingProgressEntity(
      userId: 'user-2',
      currentPage: 150,
      totalPages: 300,
      progressPercentage: 50.0,
      lastUpdated: null,
      notes: 'Really enjoying this book so far!',
      sessionDuration: Duration(minutes: 45),
    );
  }

  /// Generate sample discussion threads
  List<DiscussionThreadEntity> _generateSampleDiscussionThreads() {
    return [
      _generateSampleDiscussionThread(
        'thread-1',
        title: 'Initial Thoughts',
        content: 'What did everyone think of the opening chapters?',
        authorId: 'user-1',
      ),
      _generateSampleDiscussionThread(
        'thread-2',
        title: 'Character Analysis',
        content: 'Let\'s discuss the main character\'s development.',
        authorId: 'user-3',
      ),
    ];
  }

  /// Generate a sample discussion thread
  DiscussionThreadEntity _generateSampleDiscussionThread(
    String id, {
    String? title,
    String? content,
    String? authorId,
  }) {
    final now = DateTime.now();
    
    return DiscussionThreadEntity(
      id: id,
      title: title ?? 'Sample Thread',
      content: content ?? 'This is a sample discussion thread.',
      authorId: authorId ?? 'user-1',
      dateCreated: now.subtract(const Duration(days: 5)),
      dateUpdated: now.subtract(const Duration(days: 5)),
      replies: _generateSampleReplies(),
      likedByUserIds: ['user-2', 'user-4'],
      tags: ['Discussion', 'Sample'],
    );
  }

  /// Generate sample replies
  List<DiscussionReplyEntity> _generateSampleReplies() {
    return [
      _generateSampleReply(
        'reply-1',
        content: 'Great question! I found the opening very engaging.',
        authorId: 'user-2',
      ),
      _generateSampleReply(
        'reply-2',
        content: 'I agree, the pacing is perfect.',
        authorId: 'user-4',
      ),
    ];
  }

  /// Generate a sample reply
  DiscussionReplyEntity _generateSampleReply(
    String id, {
    String? content,
    String? authorId,
  }) {
    final now = DateTime.now();
    
    return DiscussionReplyEntity(
      id: id,
      content: content ?? 'Sample reply content.',
      authorId: authorId ?? 'user-1',
      dateCreated: now.subtract(const Duration(days: 4)),
      dateUpdated: now.subtract(const Duration(days: 4)),
      likedByUserIds: ['user-1'],
      parentReplyId: null,
    );
  }

  /// Generate sample settings
  CollaborativeListSettings _generateSampleSettings() {
    return const CollaborativeListSettings(
      allowMembersToAddBooks: true,
      allowMembersToRemoveBooks: false,
      allowMembersToEditList: false,
      allowPublicComments: true,
      requireApprovalForNewMembers: false,
      maxMembers: 50,
      autoArchiveCompletedBooks: true,
      sendNotificationsForUpdates: true,
    );
  }

  /// Generate sample statistics
  CollaborativeListStats _generateSampleStats() {
    return CollaborativeListStats(
      totalBooks: 25,
      completedBooks: 12,
      currentlyReading: 8,
      toReadBooks: 5,
      totalMembers: 15,
      activeMembers: 12,
      totalDiscussionThreads: 45,
      totalReplies: 120,
      averageRating: 4.2,
      mostActiveMemberId: 'user-2',
      lastActivityDate: DateTime.now().subtract(const Duration(hours: 6)),
    );
  }
}
