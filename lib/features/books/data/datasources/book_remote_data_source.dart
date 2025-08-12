import 'package:dartz/dartz.dart';
import '../models/book_model.dart';
import '../../domain/failures.dart';

/// Abstract interface for remote book data operations
/// This defines the contract for API-related book operations
abstract class BookRemoteDataSource {
  /// Fetches featured books from the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks();

  /// Searches for books using the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> searchBooks({
    required String query,
    String? category,
    String? author,
    List<String>? genres,
    int? page,
    int? limit,
  });

  /// Fetches a specific book by ID from the remote API
  /// Returns either a book or a failure
  Future<Either<Failure, BookModel>> getBookById(String bookId);

  /// Fetches books by category from the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getBooksByCategory(String category);

  /// Fetches trending books from the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getTrendingBooks();

  /// Fetches recommended books for a user from the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getRecommendedBooks(String userId);

  /// Fetches books by genre from the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getBooksByGenre(String genre);

  /// Fetches books by author from the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getBooksByAuthor(String author);

  /// Fetches recently added books from the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getRecentlyAddedBooks({int limit = 10});

  /// Fetches popular books based on ratings from the remote API
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookModel>>> getPopularBooks({int limit = 10});
}
