import 'package:dartz/dartz.dart';
import '../../domain/entities/book_entity.dart';
import '../../domain/repositories/book_repository.dart';
import '../../domain/failures.dart';
import '../datasources/book_remote_data_source.dart';
import '../datasources/book_local_data_source.dart';
import '../models/book_model.dart';

/// Concrete implementation of BookRepository
/// Integrates remote and local data sources with caching logic
class BookRepositoryImpl implements BookRepository {
  final BookRemoteDataSource remoteDataSource;
  final BookLocalDataSource localDataSource;

  const BookRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> getFeaturedBooks() async {
    try {
      // First try to get from cache
      final cachedResult = await localDataSource.getCachedBooks('featured_books');
      if (cachedResult.isRight()) {
        final cachedBooks = cachedResult.getOrElse(() => []);
        if (cachedBooks.isNotEmpty) {
          return Right(cachedBooks.map((book) => book.toEntity()).toList());
        }
      }

      // If no cache, fetch from remote
      final remoteResult = await remoteDataSource.getFeaturedBooks();
      return remoteResult.fold(
        (failure) => Left(failure),
        (books) async {
          // Cache the results
          await localDataSource.cacheBooks(books, 'featured_books');
          return Right(books.map((book) => book.toEntity()).toList());
        },
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get featured books: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> searchBooks({
    required String query,
    String? category,
    String? author,
    List<String>? genres,
    int? page,
    int? limit,
  }) async {
    try {
      final result = await remoteDataSource.searchBooks(
        query: query,
        category: category,
        author: author,
        genres: genres,
        page: page,
        limit: limit,
      );

      return result.fold(
        (failure) => Left(failure),
        (books) => Right(books.map((book) => book.toEntity()).toList()),
      );
    } catch (e) {
      return Left(ServerFailure('Failed to search books: $e'));
    }
  }

  @override
  Future<Either<Failure, BookEntity>> getBookById(String bookId) async {
    try {
      // First try to get from cache
      final cachedResult = await localDataSource.getCachedBook(bookId);
      if (cachedResult.isRight()) {
        final cachedBook = cachedResult.getOrElse(() => throw Exception('Book not found'));
        return Right(cachedBook.toEntity());
      }

      // If no cache, fetch from remote
      final remoteResult = await remoteDataSource.getBookById(bookId);
      return remoteResult.fold(
        (failure) => Left(failure),
        (book) async {
          // Cache the result
          await localDataSource.cacheBook(book);
          return Right(book.toEntity());
        },
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get book by ID: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getBooksByCategory(String category) async {
    try {
      final result = await remoteDataSource.getBooksByCategory(category);
      return result.fold(
        (failure) => Left(failure),
        (books) => Right(books.map((book) => book.toEntity()).toList()),
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get books by category: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getTrendingBooks() async {
    try {
      final result = await remoteDataSource.getTrendingBooks();
      return result.fold(
        (failure) => Left(failure),
        (books) => Right(books.map((book) => book.toEntity()).toList()),
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get trending books: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getRecommendedBooks(String userId) async {
    try {
      final result = await remoteDataSource.getRecommendedBooks(userId);
      return result.fold(
        (failure) => Left(failure),
        (books) => Right(books.map((book) => book.toEntity()).toList()),
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get recommended books: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getBooksByGenre(String genre) async {
    try {
      final result = await remoteDataSource.getBooksByGenre(genre);
      return result.fold(
        (failure) => Left(failure),
        (books) => Right(books.map((book) => book.toEntity()).toList()),
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get books by genre: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getBooksByAuthor(String author) async {
    try {
      final result = await remoteDataSource.getBooksByAuthor(author);
      return result.fold(
        (failure) => Left(failure),
        (books) => Right(books.map((book) => book.toEntity()).toList()),
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get books by author: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getRecentlyAddedBooks({int limit = 10}) async {
    try {
      final result = await remoteDataSource.getRecentlyAddedBooks(limit: limit);
      return result.fold(
        (failure) => Left(failure),
        (books) => Right(books.map((book) => book.toEntity()).toList()),
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get recently added books: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getPopularBooks({int limit = 10}) async {
    try {
      final result = await remoteDataSource.getPopularBooks(limit: limit);
      return result.fold(
        (failure) => Left(failure),
        (books) => Right(books.map((book) => book.toEntity()).toList()),
      );
    } catch (e) {
      return Left(ServerFailure('Failed to get popular books: $e'));
    }
  }
}
