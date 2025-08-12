import 'package:dartz/dartz.dart';
import '../entities/book_entity.dart';
import '../repositories/book_repository.dart';
import '../failures.dart';

/// Use case for searching books
/// This encapsulates the business logic for searching books with input validation
class SearchBooksUseCase {
  final BookRepository repository;

  const SearchBooksUseCase(this.repository);

  /// Executes the use case to search for books
  /// [query] - The search query string
  /// [category] - Optional category filter
  /// [author] - Optional author filter
  /// [genres] - Optional genre filters
  /// [page] - Optional page number for pagination
  /// [limit] - Optional limit for results per page
  /// Returns either a list of books or a failure
  Future<Either<Failure, List<BookEntity>>> call({
    required String query,
    String? category,
    String? author,
    List<String>? genres,
    int? page,
    int? limit,
  }) async {
    try {
      // Validate input
      if (query.trim().isEmpty) {
        return Left(InvalidInputFailure('Search query cannot be empty'));
      }

      if (page != null && page < 1) {
        return Left(InvalidInputFailure('Page number must be greater than 0'));
      }

      if (limit != null && (limit < 1 || limit > 100)) {
        return Left(InvalidInputFailure('Limit must be between 1 and 100'));
      }

      return await repository.searchBooks(
        query: query.trim(),
        category: category,
        author: author,
        genres: genres,
        page: page,
        limit: limit,
      );
    } catch (e) {
      return Left(ServerFailure('Failed to search books: $e'));
    }
  }
}
