import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../models/book_model.dart';
import 'book_remote_data_source.dart';
import '../../domain/failures.dart';
import '../../../../core/services/books_api_service.dart';

/// Concrete implementation of BookRemoteDataSource
/// Integrates with the existing BooksApiService
class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  final http.Client httpClient;

  const BookRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() async {
    try {
      final apiResponse = await BooksApiService.getFeaturedBooks();
      
      if (apiResponse.isNotEmpty) {
        final books = _convertApiResponseToBooks(apiResponse);
        return Right(books);
      }
      
      return Left(ServerFailure('No featured books available'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch featured books: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> searchBooks({
    required String query,
    String? category,
    String? author,
    List<String>? genres,
    int? page,
    int? limit,
  }) async {
    try {
      final apiResponse = await BooksApiService.searchBooks(query: query);
      
      if (apiResponse.isNotEmpty) {
        final books = _convertApiResponseToBooks(apiResponse);
        return Right(books);
      }
      
      return Left(ServerFailure('No books found for query: $query'));
    } catch (e) {
      return Left(ServerFailure('Search failed: $e'));
    }
  }

  @override
  Future<Either<Failure, BookModel>> getBookById(String bookId) async {
    try {
      final apiResponse = await BooksApiService.getBookDetails(bookId);
      
      if (apiResponse.isNotEmpty) {
        final book = _convertApiResponseToBook(apiResponse, bookId);
        return Right(book);
      }
      
      return Left(ServerFailure('Book not found'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch book: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getBooksByCategory(String category) async {
    try {
      final apiResponse = await BooksApiService.searchBooks(query: category);
      
      if (apiResponse.isNotEmpty) {
        final books = _convertApiResponseToBooks(apiResponse);
        return Right(books);
      }
      
      return Left(ServerFailure('No books found for category: $category'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch books for category: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getTrendingBooks() async {
    try {
      // TODO: Implement actual trending books API
      return Left(ServerFailure('Trending books API not yet implemented'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch trending books: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getRecommendedBooks(String userId) async {
    try {
      // TODO: Implement actual recommendation API
      return Left(ServerFailure('Recommendation API not yet implemented'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch recommendations: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getBooksByGenre(String genre) async {
    try {
      final apiResponse = await BooksApiService.searchBooks(query: genre);
      
      if (apiResponse.isNotEmpty) {
        final books = _convertApiResponseToBooks(apiResponse);
        return Right(books);
      }
      
      return Left(ServerFailure('No books found for genre: $genre'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch books for genre: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getBooksByAuthor(String author) async {
    try {
      final apiResponse = await BooksApiService.searchBooks(query: author);
      
      if (apiResponse.isNotEmpty) {
        final books = _convertApiResponseToBooks(apiResponse);
        return Right(books);
      }
      
      return Left(ServerFailure('No books found for author: $author'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch books for author: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getRecentlyAddedBooks({int limit = 10}) async {
    try {
      // TODO: Implement actual recently added books API
      return Left(ServerFailure('Recently added books API not yet implemented'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch recently added books: $e'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getPopularBooks({int limit = 10}) async {
    try {
      // TODO: Implement actual popular books API
      return Left(ServerFailure('Popular books API not yet implemented'));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch popular books: $e'));
    }
  }

  // Helper methods for converting API responses
  List<BookModel> _convertApiResponseToBooks(Map<String, dynamic> apiResponse) {
    try {
      final items = apiResponse['items'] as List<dynamic>? ?? [];
      return items.map((item) {
        final volumeInfo = item['volumeInfo'] as Map<String, dynamic>? ?? {};
        final saleInfo = item['saleInfo'] as Map<String, dynamic>? ?? {};
        
        return BookModel(
          id: item['id'] as String? ?? '',
          title: volumeInfo['title'] as String? ?? 'Unknown Title',
          author: (volumeInfo['authors'] as List<dynamic>? ?? []).join(', '),
          description: volumeInfo['description'] as String? ?? 'No description available',
          isbn: _extractIsbn(volumeInfo['industryIdentifiers']),
          pageCount: volumeInfo['pageCount'] as int? ?? 0,
          publishedDate: volumeInfo['publishedDate'] as String? ?? 'Unknown',
          publisher: volumeInfo['publisher'] as String? ?? 'Unknown Publisher',
          coverUrl: volumeInfo['imageLinks']?['thumbnail'] as String? ?? '',
          genres: (volumeInfo['categories'] as List<dynamic>? ?? []).cast<String>(),
          averageRating: (volumeInfo['averageRating'] as num?)?.toDouble() ?? 0.0,
          ratingCount: volumeInfo['ratingsCount'] as int? ?? 0,
          language: volumeInfo['language'] as String? ?? 'en',
        );
      }).toList();
    } catch (e) {
      return [];
    }
  }

  BookModel _convertApiResponseToBook(Map<String, dynamic> apiResponse, String bookId) {
    final volumeInfo = apiResponse['volumeInfo'] as Map<String, dynamic>? ?? {};
    
    return BookModel(
      id: bookId,
      title: volumeInfo['title'] as String? ?? 'Unknown Title',
      author: (volumeInfo['authors'] as List<dynamic>? ?? []).join(', '),
      description: volumeInfo['description'] as String? ?? 'No description available',
      isbn: _extractIsbn(volumeInfo['industryIdentifiers']),
      pageCount: volumeInfo['pageCount'] as int? ?? 0,
      publishedDate: volumeInfo['publishedDate'] as String? ?? 'Unknown',
      publisher: volumeInfo['publisher'] as String? ?? 'Unknown Publisher',
      coverUrl: volumeInfo['imageLinks']?['thumbnail'] as String? ?? '',
      genres: (volumeInfo['categories'] as List<dynamic>? ?? []).cast<String>(),
      averageRating: (volumeInfo['averageRating'] as num?)?.toDouble() ?? 0.0,
      ratingCount: volumeInfo['ratingsCount'] as int? ?? 0,
      language: volumeInfo['language'] as String? ?? 'en',
    );
  }

  String _extractIsbn(List<dynamic>? identifiers) {
    if (identifiers == null) return '';
    
    for (final identifier in identifiers) {
      final type = identifier['type'] as String?;
      if (type == 'ISBN_13' || type == 'ISBN_10') {
        return identifier['identifier'] as String? ?? '';
      }
    }
    return '';
  }


}
