import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../models/book_model.dart';
import 'book_remote_data_source.dart';
import '../../domain/failures.dart';
import '../../../../core/services/books_api_service.dart';

/// Concrete implementation of BookRemoteDataSource
/// Integrates with the existing BooksApiService and provides sample data as fallback
class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  final http.Client httpClient;

  const BookRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() async {
    try {
      // Try to get from API first
      final apiResponse = await BooksApiService.getFeaturedBooks();
      
      if (apiResponse.isNotEmpty) {
        final books = _convertApiResponseToBooks(apiResponse);
        return Right(books);
      }
      
      // Fallback to sample data if API fails
      return Right(_getSampleFeaturedBooks());
    } catch (e) {
      // Return sample data on error
      return Right(_getSampleFeaturedBooks());
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
      
      // Fallback to sample search results
      return Right(_getSampleSearchResults(query));
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
      
      // Fallback to sample category books
      return Right(_getSampleCategoryBooks(category));
    } catch (e) {
      return Right(_getSampleCategoryBooks(category));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getTrendingBooks() async {
    try {
      // For now, return sample trending books
      // TODO: Implement actual trending books API
      return Right(_getSampleTrendingBooks());
    } catch (e) {
      return Right(_getSampleTrendingBooks());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getRecommendedBooks(String userId) async {
    try {
      // For now, return sample recommendations
      // TODO: Implement actual recommendation API
      return Right(_getSampleRecommendedBooks());
    } catch (e) {
      return Right(_getSampleRecommendedBooks());
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
      
      return Right(_getSampleGenreBooks(genre));
    } catch (e) {
      return Right(_getSampleGenreBooks(genre));
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
      
      return Right(_getSampleAuthorBooks(author));
    } catch (e) {
      return Right(_getSampleAuthorBooks(author));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getRecentlyAddedBooks({int limit = 10}) async {
    try {
      // For now, return sample recently added books
      final books = _getSampleRecentlyAddedBooks();
      return Right(books.take(limit).toList());
    } catch (e) {
      return Right(_getSampleRecentlyAddedBooks().take(limit).toList());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getPopularBooks({int limit = 10}) async {
    try {
      // For now, return sample popular books
      final books = _getSamplePopularBooks();
      return Right(books.take(limit).toList());
    } catch (e) {
      return Right(_getSamplePopularBooks().take(limit).toList());
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

  // Sample data methods
  List<BookModel> _getSampleFeaturedBooks() {
    return [
      BookModel(
        id: 'sample_1',
        title: 'The Great Gatsby',
        author: 'F. Scott Fitzgerald',
        description: 'A story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan.',
        isbn: '978-0743273565',
        pageCount: 180,
        publishedDate: '1925-04-10',
        publisher: 'Scribner',
        coverUrl: 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=400',
        genres: ['Fiction', 'Classic', 'Romance'],
        averageRating: 4.5,
        ratingCount: 1250,
        language: 'en',
      ),
      BookModel(
        id: 'sample_2',
        title: 'To Kill a Mockingbird',
        author: 'Harper Lee',
        description: 'The story of young Scout Finch and her father Atticus in a racially divided Alabama town.',
        isbn: '978-0446310789',
        pageCount: 281,
        publishedDate: '1960-07-11',
        publisher: 'Grand Central Publishing',
        coverUrl: 'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=400',
        genres: ['Fiction', 'Classic', 'Historical'],
        averageRating: 4.8,
        ratingCount: 2100,
        language: 'en',
      ),
      BookModel(
        id: 'sample_3',
        title: '1984',
        author: 'George Orwell',
        description: 'A dystopian novel about totalitarianism and surveillance society.',
        isbn: '978-0451524935',
        pageCount: 328,
        publishedDate: '1949-06-08',
        publisher: 'Signet Classic',
        coverUrl: 'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400',
        genres: ['Fiction', 'Dystopian', 'Political'],
        averageRating: 4.6,
        ratingCount: 1800,
        language: 'en',
      ),
    ];
  }

  List<BookModel> _getSampleSearchResults(String query) {
    // Return sample books that match the search query
    final allBooks = _getSampleFeaturedBooks();
    return allBooks.where((book) => 
      book.title.toLowerCase().contains(query.toLowerCase()) ||
      book.author.toLowerCase().contains(query.toLowerCase())
    ).toList();
  }

  List<BookModel> _getSampleCategoryBooks(String category) {
    // Return sample books for the given category
    return _getSampleFeaturedBooks().where((book) => 
      book.genres.any((genre) => genre.toLowerCase().contains(category.toLowerCase()))
    ).toList();
  }

  List<BookModel> _getSampleTrendingBooks() {
    return [
      BookModel(
        id: 'trending_1',
        title: 'The Midnight Library',
        author: 'Matt Haig',
        description: 'Between life and death there is a library, and within that library, the shelves go on forever.',
        isbn: '978-0525559474',
        pageCount: 288,
        publishedDate: '2020-08-13',
        publisher: 'Viking',
        coverUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
        genres: ['Fiction', 'Fantasy', 'Philosophy'],
        averageRating: 4.2,
        ratingCount: 890,
        language: 'en',
      ),
      BookModel(
        id: 'trending_2',
        title: 'Project Hail Mary',
        author: 'Andy Weir',
        description: 'A lone astronaut must save humanity from extinction in this science fiction thriller.',
        isbn: '978-0593135204',
        pageCount: 496,
        publishedDate: '2021-05-04',
        publisher: 'Ballantine Books',
        coverUrl: 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=400',
        genres: ['Science Fiction', 'Thriller', 'Adventure'],
        averageRating: 4.4,
        ratingCount: 1200,
        language: 'en',
      ),
    ];
  }

  List<BookModel> _getSampleRecommendedBooks() {
    return [
      BookModel(
        id: 'rec_1',
        title: 'The Seven Husbands of Evelyn Hugo',
        author: 'Taylor Jenkins Reid',
        description: 'A reclusive Hollywood legend reveals her life story to an unknown journalist.',
        isbn: '978-1501161939',
        pageCount: 400,
        publishedDate: '2017-06-13',
        publisher: 'Atria Books',
        coverUrl: 'https://images.unsplash.com/photo-1513475382585-d06e58bcb0e0?w=400',
        genres: ['Fiction', 'Historical Fiction', 'Romance'],
        averageRating: 4.3,
        ratingCount: 950,
        language: 'en',
      ),
    ];
  }

  List<BookModel> _getSampleGenreBooks(String genre) {
    return _getSampleFeaturedBooks().where((book) => 
      book.genres.any((g) => g.toLowerCase().contains(genre.toLowerCase()))
    ).toList();
  }

  List<BookModel> _getSampleAuthorBooks(String author) {
    return _getSampleFeaturedBooks().where((book) => 
      book.author.toLowerCase().contains(author.toLowerCase())
    ).toList();
  }

  List<BookModel> _getSampleRecentlyAddedBooks() {
    return [
      BookModel(
        id: 'recent_1',
        title: 'Klara and the Sun',
        author: 'Kazuo Ishiguro',
        description: 'A story about the nature of love and humanity through the eyes of an artificial friend.',
        isbn: '978-0593318171',
        pageCount: 320,
        publishedDate: '2021-03-02',
        publisher: 'Knopf',
        coverUrl: 'https://images.unsplash.com/photo-1513475382585-d06e58bcb0e0?w=400',
        genres: ['Fiction', 'Science Fiction', 'Literary Fiction'],
        averageRating: 4.1,
        ratingCount: 750,
        language: 'en',
      ),
    ];
  }

  List<BookModel> _getSamplePopularBooks() {
    return [
      BookModel(
        id: 'popular_1',
        title: 'The Silent Patient',
        author: 'Alex Michaelides',
        description: 'A psychological thriller about a woman who shoots her husband and then never speaks again.',
        isbn: '978-1250301697',
        pageCount: 352,
        publishedDate: '2019-02-05',
        publisher: 'Celadon Books',
        coverUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
        genres: ['Thriller', 'Psychological Fiction', 'Mystery'],
        averageRating: 4.5,
        ratingCount: 2100,
        language: 'en',
      ),
    ];
  }
}
