import 'package:dartz/dartz.dart';
import '../entities/book_entity.dart';
import '../failures.dart';

/// Abstract interface for book data operations
/// This defines the contract that any book repository implementation must follow
abstract class BookRepository {
  /// Fetches featured books from the repository
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> getFeaturedBooks();

  /// Searches for books based on query parameters
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> searchBooks({
    required String query,
    String? category,
    String? author,
    List<String>? genres,
    int? page,
    int? limit,
  });

  /// Fetches a specific book by its ID
  /// Returns either a book or a failure
  Future<Either<Failure, BookEntity>> getBookById(String bookId);

  /// Fetches books by category
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> getBooksByCategory(String category);

  /// Fetches trending books
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> getTrendingBooks();

  /// Fetches recommended books for a user
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> getRecommendedBooks(String userId);

  /// Fetches books by genre
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> getBooksByGenre(String genre);

  /// Fetches books by author
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> getBooksByAuthor(String author);

  /// Fetches recently added books
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> getRecentlyAddedBooks({int limit = 10});

  /// Fetches popular books based on ratings
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> getPopularBooks({int limit = 10});
}
