import 'package:dartz/dartz.dart';
import '../entities/book_entity.dart';
import '../repositories/book_repository.dart';
import '../failures.dart';

/// Use case for getting a book by its ID
/// This encapsulates the business logic for fetching a specific book
class GetBookByIdUseCase {
  final BookRepository repository;

  const GetBookByIdUseCase(this.repository);

  /// Executes the use case to get a book by ID
  /// [bookId] - The unique identifier of the book
  /// Returns either a book or a failure
  Future<Either<Failure, BookEntity>> call(String bookId) async {
    try {
      // Validate input
      if (bookId.trim().isEmpty) {
        return Left(InvalidInputFailure('Book ID cannot be empty'));
      }

      return await repository.getBookById(bookId.trim());
    } catch (e) {
      return Left(ServerFailure('Failed to fetch book: $e'));
    }
  }
}
