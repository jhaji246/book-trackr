import '../../shared/models/book.dart';
import '../../shared/models/user_book.dart';
import 'books_api_service.dart';

class RecommendationService {
  /// Generates personalized book recommendations based on user's reading history
  static Future<List<Book>> getRecommendations() async {
    try {
      // For now, get featured books as recommendations
      // TODO: Implement actual recommendation algorithm based on user preferences
      final apiResponse = await BooksApiService.getFeaturedBooks();
      final books = _convertApiResponseToBooks(apiResponse);
      if (books.isNotEmpty) return books;
      
      // Fallback to sample data if API returns empty
      return _getSampleRecommendations();
    } catch (e) {
      // Return sample data if API fails
      return _getSampleRecommendations();
    }
  }

  /// Gets trending books based on user's preferences
  static Future<List<Book>> getTrendingBooks() async {
    try {
      // Get popular books as trending books
      final apiResponse = await BooksApiService.getPopularBooks();
      final books = _convertApiResponseToBooks(apiResponse);
      if (books.isNotEmpty) return books;
      
      // Fallback to sample data if API returns empty
      return _getSampleTrendingBooks();
    } catch (e) {
      // Return sample data if API fails
      return _getSampleTrendingBooks();
    }
  }

  /// Analyzes user's reading profile to understand preferences
  static Map<String, dynamic> analyzeUserProfile(
    List<UserBook> userBooks,
    List<Book> completedBooks,
  ) {
    if (userBooks.isEmpty) {
      return {
        'favoriteGenres': [],
        'averageRating': 0.0,
        'readingPace': 0,
        'preferredAuthors': [],
      };
    }

    // Analyze genres
    final genreCounts = <String, int>{};
    for (final book in userBooks) {
      for (final genre in book.genres) {
        genreCounts[genre] = (genreCounts[genre] ?? 0) + 1;
      }
    }

    // Get favorite genres
    final favoriteGenres = genreCounts.entries
        .toList()
        ..sort((a, b) => b.value.compareTo(a.value));
    final topGenres = favoriteGenres.take(5).map((e) => e.key).toList();

    // Calculate average rating
    final totalRating = userBooks.fold<int>(0, (sum, book) => sum + book.rating);
    final averageRating = userBooks.isNotEmpty ? totalRating / userBooks.length : 0.0;

    // Analyze reading pace (books per month)
    final readingPace = _calculateReadingPace(userBooks);

    // Get preferred authors
    final authorCounts = <String, int>{};
    for (final book in userBooks) {
      authorCounts[book.author] = (authorCounts[book.author] ?? 0) + 1;
    }
    final preferredAuthors = authorCounts.entries
        .toList()
        ..sort((a, b) => b.value.compareTo(a.value));
    final topAuthors = preferredAuthors.take(5).map((e) => e.key).toList();

    return {
      'favoriteGenres': topGenres,
      'averageRating': averageRating,
      'readingPace': readingPace,
      'preferredAuthors': topAuthors,
    };
  }

  /// Calculates user's reading pace (books per month)
  static int _calculateReadingPace(List<UserBook> userBooks) {
    if (userBooks.isEmpty) return 0;

    final now = DateTime.now();
    final oldestBook = userBooks.reduce((a, b) => a.dateAdded.isBefore(b.dateAdded) ? a : b);
    final monthsSinceFirstBook = now.difference(oldestBook.dateAdded).inDays / 30;

    if (monthsSinceFirstBook <= 0) return 0;
    return (userBooks.length / monthsSinceFirstBook).round();
  }

  /// Convert API response to Book objects
  static List<Book> _convertApiResponseToBooks(Map<String, dynamic> apiResponse) {
    try {
      final items = apiResponse['items'] as List<dynamic>?;
      if (items == null || items.isEmpty) return [];

      return items.map((item) {
        final volumeInfo = item['volumeInfo'] as Map<String, dynamic>?;
        if (volumeInfo == null) return null;

        return Book(
          id: item['id'] as String? ?? '',
          title: volumeInfo['title'] as String? ?? 'Unknown Title',
          author: (volumeInfo['authors'] as List<dynamic>?)?.first as String? ?? 'Unknown Author',
          description: volumeInfo['description'] as String? ?? 'No description available',
          isbn: _extractIsbn(volumeInfo['industryIdentifiers']),
          pageCount: volumeInfo['pageCount'] as int? ?? 0,
          publishedDate: volumeInfo['publishedDate'] as String? ?? '',
          publisher: volumeInfo['publisher'] as String? ?? '',
          coverUrl: volumeInfo['imageLinks']?['thumbnail'] as String? ?? '',
          genres: _extractGenres(volumeInfo['categories']),
          averageRating: (volumeInfo['averageRating'] as num?)?.toDouble() ?? 0.0,
          ratingCount: volumeInfo['ratingsCount'] as int? ?? 0,
          language: volumeInfo['language'] as String? ?? 'en',
        );
      }).whereType<Book>().toList();
    } catch (e) {
      return [];
    }
  }

  /// Extract ISBN from industry identifiers
  static String _extractIsbn(List<dynamic>? identifiers) {
    if (identifiers == null) return '';
    
    for (final identifier in identifiers) {
      final type = identifier['type'] as String?;
      if (type == 'ISBN_13' || type == 'ISBN_10') {
        return identifier['identifier'] as String? ?? '';
      }
    }
    return '';
  }

  /// Extract genres from categories
  static List<String> _extractGenres(List<dynamic>? categories) {
    if (categories == null) return [];
    
    return categories
        .map((category) => category as String?)
        .whereType<String>()
        .take(3) // Limit to 3 genres
        .toList();
  }

  /// Sample recommendations for fallback
  static List<Book> _getSampleRecommendations() {
    return [
      Book(
        id: 'sample_rec_1',
        title: 'The Midnight Library',
        author: 'Matt Haig',
        description: 'Between life and death there is a library, and within that library, the shelves go on forever.',
        isbn: '9780525559474',
        pageCount: 288,
        publishedDate: '2020-08-13',
        publisher: 'Viking',
        coverUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
        genres: ['Fiction', 'Fantasy', 'Philosophy'],
        averageRating: 4.2,
        ratingCount: 890,
        language: 'en',
      ),
      Book(
        id: 'sample_rec_2',
        title: 'Project Hail Mary',
        author: 'Andy Weir',
        description: 'A lone astronaut must save humanity from extinction in this science fiction thriller.',
        isbn: '9780593135204',
        pageCount: 496,
        publishedDate: '2021-05-04',
        publisher: 'Ballantine Books',
        coverUrl: 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=400',
        genres: ['Science Fiction', 'Thriller', 'Adventure'],
        averageRating: 4.4,
        ratingCount: 1200,
        language: 'en',
      ),
      Book(
        id: 'sample_rec_3',
        title: 'Klara and the Sun',
        author: 'Kazuo Ishiguro',
        description: 'A story about the nature of love and humanity through the eyes of an artificial friend.',
        isbn: '9780593318171',
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

  /// Sample trending books for fallback
  static List<Book> _getSampleTrendingBooks() {
    return [
      Book(
        id: 'sample_trend_1',
        title: 'Tomorrow, and Tomorrow, and Tomorrow',
        author: 'Gabrielle Zevin',
        description: 'A modern love story about two friends finding their way through life.',
        isbn: '9780593321201',
        pageCount: 416,
        publishedDate: '2022-07-05',
        publisher: 'Knopf',
        coverUrl: 'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400',
        genres: ['Fiction', 'Contemporary', 'Romance'],
        averageRating: 4.3,
        ratingCount: 2100,
        language: 'en',
      ),
      Book(
        id: 'sample_trend_2',
        title: 'Lessons in Chemistry',
        author: 'Bonnie Garmus',
        description: 'A scientist in the 1960s becomes a single mother and a cooking show host.',
        isbn: '9780385547345',
        pageCount: 400,
        publishedDate: '2022-04-05',
        publisher: 'Doubleday',
        coverUrl: 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?w=400',
        genres: ['Fiction', 'Historical Fiction', 'Women'],
        averageRating: 4.4,
        ratingCount: 1800,
        language: 'en',
      ),
      Book(
        id: 'sample_trend_3',
        title: 'The Seven Husbands of Evelyn Hugo',
        author: 'Taylor Jenkins Reid',
        description: 'A legendary film actress reflects on her scandalous life.',
        isbn: '9781501161939',
        pageCount: 400,
        publishedDate: '2017-06-13',
        publisher: 'Atria Books',
        coverUrl: 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=400',
        genres: ['Fiction', 'Historical Fiction', 'Romance'],
        averageRating: 4.5,
        ratingCount: 3200,
        language: 'en',
      ),
    ];
  }
} 