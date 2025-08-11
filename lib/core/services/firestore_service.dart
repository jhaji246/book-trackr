import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../shared/models/user_book.dart';
import '../../shared/models/reading_status.dart';

/// Service class for handling all Firebase Firestore operations.
/// 
/// This service provides a centralized interface for all database operations
/// including user profiles, bookshelf management, reading progress tracking,
/// and data synchronization between local and cloud storage.
/// 
/// The service uses Firebase Firestore as the backend database and provides
/// methods for CRUD operations on user data and book collections.
/// 
/// Example usage:
/// ```dart
/// // Create a user profile
/// await FirestoreService.createUserProfile(
///   userId: 'user123',
///   displayName: 'John Doe',
///   email: 'john@example.com',
/// );
/// 
/// // Add a book to user's shelf
/// await FirestoreService.addBookToShelf(
///   userId: 'user123',
///   userBook: userBook,
/// );
/// ```
class FirestoreService {
  /// Firebase Firestore instance - lazy loaded
  static FirebaseFirestore? _firestore;
  static FirebaseFirestore get _firestoreInstance {
    _firestore ??= FirebaseFirestore.instance;
    return _firestore!;
  }
  
  /// Firebase Auth instance for user authentication - lazy loaded
  static FirebaseAuth? _auth;
  static FirebaseAuth get _authInstance {
    _auth ??= FirebaseAuth.instance;
    return _auth!;
  }

  /// Collection reference for user profiles
  static CollectionReference get _usersCollection => _firestoreInstance.collection('users');
  
  /// Collection reference for user bookshelves
  static CollectionReference get _bookshelvesCollection => _firestoreInstance.collection('bookshelves');
  
  /// Collection reference for reading progress tracking
  static CollectionReference get _readingProgressCollection => _firestoreInstance.collection('reading_progress');

  /// Gets the current authenticated user's ID
  /// 
  /// Returns null if no user is currently signed in.
  static String? get _currentUserId => _authInstance.currentUser?.uid;

  /// Creates a new user profile in Firestore.
  /// 
  /// This method is typically called after a user signs up for the first time.
  /// It initializes the user's profile with default values for reading goals
  /// and statistics.
  /// 
  /// Parameters:
  /// - [userId]: The unique identifier for the user
  /// - [displayName]: The user's display name
  /// - [email]: The user's email address
  /// 
  /// Throws [Exception] if the profile creation fails.
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

  /// Retrieves a user's profile from Firestore.
  /// 
  /// Returns the user's profile data including reading goals, statistics,
  /// and personal information.
  /// 
  /// Parameters:
  /// - [userId]: The unique identifier for the user
  /// 
  /// Returns a [Map<String, dynamic>] containing the user's profile data,
  /// or null if the user doesn't exist.
  /// 
  /// Throws [Exception] if the retrieval fails.
  static Future<Map<String, dynamic>?> getUserProfile(String userId) async {
    try {
      final doc = await _usersCollection.doc(userId).get();
      return doc.data() as Map<String, dynamic>?;
    } catch (e) {
      throw Exception('Failed to get user profile: $e');
    }
  }

  /// Updates a user's profile in Firestore.
  /// 
  /// This method allows updating specific fields in the user's profile
  /// without overwriting the entire document.
  /// 
  /// Parameters:
  /// - [userId]: The unique identifier for the user
  /// - [data]: A map containing the fields to update
  /// 
  /// Throws [Exception] if the update fails.
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

  /// Adds a book to the user's bookshelf
  static Future<void> addBookToShelf({
    required String userId,
    required UserBook userBook,
  }) async {
    try {
      final userDoc = _firestoreInstance.collection('users').doc(userId);
      final bookshelfCollection = userDoc.collection('bookshelf');
      
      await bookshelfCollection.doc(userBook.id).set({
        'id': userBook.id,
        'title': userBook.title,
        'author': userBook.author,
        'description': userBook.description,
        'coverUrl': userBook.coverUrl,
        'averageRating': userBook.averageRating,
        'ratingCount': userBook.ratingCount,
        'pageCount': userBook.pageCount,
        'isbn': userBook.isbn,
        'publishedDate': userBook.publishedDate,
        'genres': userBook.genres,
        'publisher': userBook.publisher,
        'language': userBook.language,
        'status': userBook.status.toString(),
        'dateAdded': userBook.dateAdded.toIso8601String(),
        'dateStarted': userBook.dateStarted?.toIso8601String(),
        'dateCompleted': userBook.dateCompleted?.toIso8601String(),
        'currentPage': userBook.currentPage,
        'notes': userBook.notes,
        'rating': userBook.rating,
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

  /// Syncs a user book to the cloud
  static Future<void> syncUserBook(UserBook userBook) async {
    try {
      // TODO: Implement actual Firestore sync
      // For now, just a placeholder
    } catch (e) {
      // Handle sync error
    }
  }

  /// Removes a user book from the cloud
  static Future<void> removeUserBook(String bookId) async {
    try {
      // TODO: Implement actual Firestore removal
      // For now, just a placeholder
    } catch (e) {
      // Handle removal error
    }
  }

  /// Syncs local data with the cloud
  static Future<void> syncLocalDataWithCloud({
    required String userId,
    required List<UserBook> localBooks,
  }) async {
    try {
      // TODO: Implement actual cloud sync
      // For now, just a placeholder
    } catch (e) {
      // Handle sync error
    }
  }
} 