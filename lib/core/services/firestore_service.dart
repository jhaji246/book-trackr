import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import '../../shared/models/book.dart';

class FirestoreService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

  // Collection references
  static CollectionReference get _usersCollection => _firestore.collection('users');
  static CollectionReference get _bookshelvesCollection => _firestore.collection('bookshelves');
  static CollectionReference get _readingProgressCollection => _firestore.collection('reading_progress');

  // Get current user ID
  static String? get _currentUserId => _auth.currentUser?.uid;

  // User Profile Operations
  static Future<void> createUserProfile({
    required String userId,
    required String displayName,
    required String email,
  }) async {
    try {
      await _usersCollection.doc(userId).set({
        'displayName': displayName,
        'email': email,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
        'readingGoals': {
          'booksPerYear': 0,
          'pagesPerDay': 0,
          'currentStreak': 0,
        },
        'statistics': {
          'totalBooksRead': 0,
          'totalPagesRead': 0,
          'averageRating': 0.0,
          'favoriteGenres': [],
        },
      });
    } catch (e) {
      throw Exception('Failed to create user profile: $e');
    }
  }

  static Future<Map<String, dynamic>?> getUserProfile(String userId) async {
    try {
      final doc = await _usersCollection.doc(userId).get();
      return doc.data() as Map<String, dynamic>?;
    } catch (e) {
      throw Exception('Failed to get user profile: $e');
    }
  }

  static Future<void> updateUserProfile({
    required String userId,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _usersCollection.doc(userId).update({
        ...data,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to update user profile: $e');
    }
  }

  // Bookshelf Operations
  static Future<void> addBookToShelf({
    required String userId,
    required UserBook userBook,
  }) async {
    try {
      final docRef = _bookshelvesCollection.doc();
      await docRef.set({
        'userId': userId,
        'bookId': userBook.book.id,
        'status': userBook.status.toString().split('.').last,
        'rating': userBook.rating,
        'review': userBook.review,
        'currentPage': userBook.currentPage,
        'totalPages': userBook.book.pageCount,
        'addedAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
        'bookData': {
          'title': userBook.book.title,
          'author': userBook.book.author,
          'coverUrl': userBook.book.coverUrl,
          'isbn': userBook.book.isbn,
          'pageCount': userBook.book.pageCount,
          'publishedDate': userBook.book.publishedDate,
          'description': userBook.book.description,
          'genres': userBook.book.genres,
          'averageRating': userBook.book.averageRating,
        },
      });
    } catch (e) {
      throw Exception('Failed to add book to shelf: $e');
    }
  }

  static Future<void> updateBookInShelf({
    required String userId,
    required String bookId,
    required Map<String, dynamic> data,
  }) async {
    try {
      final query = await _bookshelvesCollection
          .where('userId', isEqualTo: userId)
          .where('bookId', isEqualTo: bookId)
          .get();

      if (query.docs.isNotEmpty) {
        await query.docs.first.reference.update({
          ...data,
          'updatedAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      throw Exception('Failed to update book in shelf: $e');
    }
  }

  static Future<void> removeBookFromShelf({
    required String userId,
    required String bookId,
  }) async {
    try {
      final query = await _bookshelvesCollection
          .where('userId', isEqualTo: userId)
          .where('bookId', isEqualTo: bookId)
          .get();

      if (query.docs.isNotEmpty) {
        await query.docs.first.reference.delete();
      }
    } catch (e) {
      throw Exception('Failed to remove book from shelf: $e');
    }
  }

  static Future<List<Map<String, dynamic>>> getUserBookshelf(String userId) async {
    try {
      final query = await _bookshelvesCollection
          .where('userId', isEqualTo: userId)
          .orderBy('updatedAt', descending: true)
          .get();

      return query.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        data['id'] = doc.id;
        return data;
      }).toList();
    } catch (e) {
      throw Exception('Failed to get user bookshelf: $e');
    }
  }

  // Reading Progress Operations
  static Future<void> updateReadingProgress({
    required String userId,
    required String bookId,
    required int currentPage,
    required int totalPages,
  }) async {
    try {
      final docRef = _readingProgressCollection.doc();
      await docRef.set({
        'userId': userId,
        'bookId': bookId,
        'currentPage': currentPage,
        'totalPages': totalPages,
        'progress': (currentPage / totalPages * 100).round(),
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to update reading progress: $e');
    }
  }

  static Future<Map<String, dynamic>?> getReadingProgress({
    required String userId,
    required String bookId,
  }) async {
    try {
      final query = await _readingProgressCollection
          .where('userId', isEqualTo: userId)
          .where('bookId', isEqualTo: bookId)
          .orderBy('updatedAt', descending: true)
          .limit(1)
          .get();

      if (query.docs.isNotEmpty) {
        final data = query.docs.first.data() as Map<String, dynamic>;
        data['id'] = query.docs.first.id;
        return data;
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get reading progress: $e');
    }
  }

  // Reading Goals Operations
  static Future<void> updateReadingGoals({
    required String userId,
    required Map<String, dynamic> goals,
  }) async {
    try {
      await _usersCollection.doc(userId).update({
        'readingGoals': goals,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to update reading goals: $e');
    }
  }

  static Future<Map<String, dynamic>?> getReadingGoals(String userId) async {
    try {
      final doc = await _usersCollection.doc(userId).get();
      final data = doc.data() as Map<String, dynamic>?;
      return data?['readingGoals'] as Map<String, dynamic>?;
    } catch (e) {
      throw Exception('Failed to get reading goals: $e');
    }
  }

  // Statistics Operations
  static Future<void> updateUserStatistics({
    required String userId,
    required Map<String, dynamic> statistics,
  }) async {
    try {
      await _usersCollection.doc(userId).update({
        'statistics': statistics,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to update user statistics: $e');
    }
  }

  // Real-time listeners
  static Stream<QuerySnapshot> getUserBookshelfStream(String userId) {
    return _bookshelvesCollection
        .where('userId', isEqualTo: userId)
        .orderBy('updatedAt', descending: true)
        .snapshots();
  }

  static Stream<DocumentSnapshot> getUserProfileStream(String userId) {
    return _usersCollection.doc(userId).snapshots();
  }

  // Sync local data with cloud
  static Future<void> syncLocalDataWithCloud({
    required String userId,
    required List<UserBook> localBooks,
  }) async {
    try {
      // Get cloud bookshelf
      final cloudBooks = await getUserBookshelf(userId);
      
      // Create maps for easy comparison
      final localBookMap = {
        for (var book in localBooks) book.book.id: book
      };
      
      final cloudBookMap = {
        for (var book in cloudBooks) book['bookId']: book
      };

      // Add new local books to cloud
      for (final localBook in localBooks) {
        if (!cloudBookMap.containsKey(localBook.book.id)) {
          await addBookToShelf(userId: userId, userBook: localBook);
        }
      }

      // Update existing books if local is newer
      for (final localBook in localBooks) {
        if (cloudBookMap.containsKey(localBook.book.id)) {
          final cloudBook = cloudBookMap[localBook.book.id]!;
          final cloudUpdatedAt = cloudBook['updatedAt'] as Timestamp;
          final localUpdatedAt = localBook.updatedAt ?? DateTime.now();
          
          if (localUpdatedAt.isAfter(cloudUpdatedAt.toDate())) {
            await updateBookInShelf(
              userId: userId,
              bookId: localBook.book.id,
              data: {
                'status': localBook.status.toString().split('.').last,
                'rating': localBook.rating,
                'review': localBook.review,
                'currentPage': localBook.currentPage,
              },
            );
          }
        }
      }
    } catch (e) {
      throw Exception('Failed to sync local data with cloud: $e');
    }
  }
} 