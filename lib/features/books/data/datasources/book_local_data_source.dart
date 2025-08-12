import 'package:dartz/dartz.dart';
import '../models/book_model.dart';
import '../../domain/failures.dart';

/// Abstract interface for local book data operations
/// This defines the contract for local storage and caching operations
abstract class BookLocalDataSource {
  /// Caches a list of books locally
  /// Returns either success or a failure
  Future<Either<Failure, void>> cacheBooks(List<BookModel> books, String key);

  /// Retrieves cached books by key
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getCachedBooks(String key);

  /// Caches a single book locally
  /// Returns either success or a failure
  Future<Either<Failure, void>> cacheBook(BookModel book);

  /// Retrieves a cached book by ID
  /// Returns either a book or a failure
  Future<Either<Failure, BookModel>> getCachedBook(String bookId);

  /// Checks if books are cached for a given key
  /// Returns either true/false or a failure
  Future<Either<Failure, bool>> hasCachedBooks(String key);

  /// Clears all cached books
  /// Returns either success or a failure
  Future<Either<Failure, void>> clearCache();

  /// Clears cached books for a specific key
  /// Returns either success or a failure
  Future<Either<Failure, void>> clearCacheForKey(String key);

  /// Gets the cache size in bytes
  /// Returns either the size or a failure
  Future<Either<Failure, int>> getCacheSize();

  /// Checks if cache is available and accessible
  /// Returns either true/false or a failure
  Future<Either<Failure, bool>> isCacheAvailable();
}
