import 'package:dartz/dartz.dart';
import '../entities/book_entity.dart';
import '../repositories/book_repository.dart';
import '../failures.dart';

/// Use case for getting featured books
/// This encapsulates the business logic for fetching featured books
class GetFeaturedBooksUseCase {
  final BookRepository repository;

  const GetFeaturedBooksUseCase(this.repository);

  /// Executes the use case to get featured books
  /// Returns either a list of featured books or a failure
  Future<Either<Failure, List<BookEntity>>> call() async {
    try {
      return await repository.getFeaturedBooks();
    } catch (e) {
      return Left(ServerFailure('Failed to fetch featured books: $e'));
    }
  }
}
