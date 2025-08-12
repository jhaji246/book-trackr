import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import '../models/book_model.dart';
import 'book_local_data_source.dart';
import '../../domain/failures.dart';

/// Concrete implementation of BookLocalDataSource using Hive for local caching
class BookLocalDataSourceImpl implements BookLocalDataSource {
  static const String _booksBoxName = 'books_cache';
  static const String _featuredBooksKey = 'featured_books';
  static const String _trendingBooksKey = 'trending_books';
  static const String _recommendedBooksKey = 'recommended_books';
  static const String _searchResultsPrefix = 'search_';
  static const String _categoryBooksPrefix = 'category_';
  static const String _authorBooksPrefix = 'author_';
  static const String _genreBooksPrefix = 'genre_';

  late Box<dynamic> _booksBox;

  /// Initialize the local data source
  Future<void> initialize() async {
    if (!Hive.isBoxOpen(_booksBoxName)) {
      _booksBox = await Hive.openBox<dynamic>(_booksBoxName);
    } else {
      _booksBox = Hive.box<dynamic>(_booksBoxName);
    }
  }

  @override
  Future<Either<Failure, void>> cacheBooks(List<BookModel> books, String key) async {
    try {
      await initialize();
      
      final booksData = books.map((book) => book.toJson()).toList();
      await _booksBox.put(key, booksData);
      
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure('Failed to cache books: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getCachedBooks(String key) async {
    try {
      await initialize();
      
      final booksData = _booksBox.get(key) as List<dynamic>?;
      if (booksData == null || booksData.isEmpty) {
        return Right([]);
      }
      
      final books = booksData.map((data) => 
        BookModel.fromJson(Map<String, dynamic>.from(data))
      ).toList();
      
      return Right(books);
    } catch (e) {
      return Left(CacheFailure('Failed to get cached books: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> cacheBook(BookModel book) async {
    try {
      await initialize();
      
      final bookData = book.toJson();
      await _booksBox.put(book.id, bookData);
      
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure('Failed to cache book: $e'));
    }
  }

  @override
  Future<Either<Failure, BookModel>> getCachedBook(String bookId) async {
    try {
      await initialize();
      
      final bookData = _booksBox.get(bookId) as Map<dynamic, dynamic>?;
      if (bookData == null) {
        return Left(CacheFailure('Book not found in cache'));
      }
      
      final book = BookModel.fromJson(Map<String, dynamic>.from(bookData));
      return Right(book);
    } catch (e) {
      return Left(CacheFailure('Failed to get cached book: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> hasCachedBooks(String key) async {
    try {
      await initialize();
      
      final booksData = _booksBox.get(key);
      return Right(booksData != null && booksData.isNotEmpty);
    } catch (e) {
      return Left(CacheFailure('Failed to check cache: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearCache() async {
    try {
      await initialize();
      
      await _booksBox.clear();
      
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure('Failed to clear cache: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearCacheForKey(String key) async {
    try {
      await initialize();
      
      await _booksBox.delete(key);
      
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure('Failed to clear cache for key: $e'));
    }
  }

  @override
  Future<Either<Failure, int>> getCacheSize() async {
    try {
      await initialize();
      
      int totalSize = 0;
      for (final key in _booksBox.keys) {
        final value = _booksBox.get(key);
        if (value != null) {
          // Rough estimation of size
          totalSize += value.toString().length;
        }
      }
      
      return Right(totalSize);
    } catch (e) {
      return Left(CacheFailure('Failed to get cache size: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> isCacheAvailable() async {
    try {
      await initialize();
      return const Right(true);
    } catch (e) {
      return const Right(false);
    }
  }

  // Convenience methods for specific cache keys
  
  /// Cache featured books
  Future<Either<Failure, void>> cacheFeaturedBooks(List<BookModel> books) {
    return cacheBooks(books, _featuredBooksKey);
  }

  /// Get cached featured books
  Future<Either<Failure, List<BookModel>>> getCachedFeaturedBooks() {
    return getCachedBooks(_featuredBooksKey);
  }

  /// Cache trending books
  Future<Either<Failure, void>> cacheTrendingBooks(List<BookModel> books) {
    return cacheBooks(books, _trendingBooksKey);
  }

  /// Get cached trending books
  Future<Either<Failure, List<BookModel>>> getCachedTrendingBooks() {
    return getCachedBooks(_trendingBooksKey);
  }

  /// Cache recommended books
  Future<Either<Failure, void>> cacheRecommendedBooks(List<BookModel> books) {
    return cacheBooks(books, _recommendedBooksKey);
  }

  /// Get cached recommended books
  Future<Either<Failure, List<BookModel>>> getCachedRecommendedBooks() {
    return getCachedBooks(_recommendedBooksKey);
  }

  /// Cache search results
  Future<Either<Failure, void>> cacheSearchResults(String query, List<BookModel> books) {
    final key = '$_searchResultsPrefix${query.toLowerCase().replaceAll(' ', '_')}';
    return cacheBooks(books, key);
  }

  /// Get cached search results
  Future<Either<Failure, List<BookModel>>> getCachedSearchResults(String query) {
    final key = '$_searchResultsPrefix${query.toLowerCase().replaceAll(' ', '_')}';
    return getCachedBooks(key);
  }

  /// Cache category books
  Future<Either<Failure, void>> cacheCategoryBooks(String category, List<BookModel> books) {
    final key = '$_categoryBooksPrefix${category.toLowerCase().replaceAll(' ', '_')}';
    return cacheBooks(books, key);
  }

  /// Get cached category books
  Future<Either<Failure, List<BookModel>>> getCachedCategoryBooks(String category) {
    final key = '$_categoryBooksPrefix${category.toLowerCase().replaceAll(' ', '_')}';
    return getCachedBooks(key);
  }

  /// Cache author books
  Future<Either<Failure, void>> cacheAuthorBooks(String author, List<BookModel> books) {
    final key = '$_authorBooksPrefix${author.toLowerCase().replaceAll(' ', '_')}';
    return cacheBooks(books, key);
  }

  /// Get cached author books
  Future<Either<Failure, List<BookModel>>> getCachedAuthorBooks(String author) {
    final key = '$_authorBooksPrefix${author.toLowerCase().replaceAll(' ', '_')}';
    return getCachedBooks(key);
  }

  /// Cache genre books
  Future<Either<Failure, void>> cacheGenreBooks(String genre, List<BookModel> books) {
    final key = '$_genreBooksPrefix${genre.toLowerCase().replaceAll(' ', '_')}';
    return cacheBooks(books, key);
  }

  /// Get cached genre books
  Future<Either<Failure, List<BookModel>>> getCachedGenreBooks(String genre) {
    final key = '$_genreBooksPrefix${genre.toLowerCase().replaceAll(' ', '_')}';
    return getCachedBooks(key);
  }

  /// Check if search results are cached
  Future<Either<Failure, bool>> hasCachedSearchResults(String query) {
    final key = '$_searchResultsPrefix${query.toLowerCase().replaceAll(' ', '_')}';
    return hasCachedBooks(key);
  }

  /// Check if category books are cached
  Future<Either<Failure, bool>> hasCachedCategoryBooks(String category) {
    final key = '$_categoryBooksPrefix${category.toLowerCase().replaceAll(' ', '_')}';
    return hasCachedBooks(key);
  }

  /// Check if author books are cached
  Future<Either<Failure, bool>> hasCachedAuthorBooks(String author) {
    final key = '$_authorBooksPrefix${author.toLowerCase().replaceAll(' ', '_')}';
    return hasCachedBooks(key);
  }

  /// Check if genre books are cached
  Future<Either<Failure, bool>> hasCachedGenreBooks(String genre) {
    final key = '$_genreBooksPrefix${genre.toLowerCase().replaceAll(' ', '_')}';
    return hasCachedBooks(key);
  }
}
