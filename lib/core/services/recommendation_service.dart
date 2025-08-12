import '../../shared/models/book.dart';
import '../../shared/models/user_book.dart';

class RecommendationService {
  /// Generates personalized book recommendations based on user's reading history
  static List<Book> getRecommendations() {
    try {
      // TODO: Implement actual recommendation algorithm
      // For now, return sample recommendations
      return _getSampleRecommendations();
    } catch (e) {
      return _getSampleRecommendations();
    }
  }

  /// Gets trending books based on user's preferences
  static List<Book> getTrendingBooks() {
    try {
      // TODO: Implement actual trending books logic
      // For now, return sample trending books
      return _getSampleTrendingBooks();
    } catch (e) {
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

  /// Returns sample personalized recommendations
  static List<Book> _getSampleRecommendations() {
    return [
      Book(
        id: 'rec1',
        title: 'The Midnight Library',
        author: 'Matt Haig',
        description: 'Between life and death there is a library, and within that library, the shelves go on forever.',
        isbn: '9780525559474',
        pageCount: 288,
        publishedDate: '2020-08-13',
        publisher: 'Viking',
        coverUrl: 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=150&h=200&fit=crop&crop=center',
        genres: ['Fiction', 'Fantasy', 'Contemporary'],
        averageRating: 4.2,
        ratingCount: 1250,
        language: 'en',
      ),
      Book(
        id: 'rec2',
        title: 'Project Hail Mary',
        author: 'Andy Weir',
        description: 'Ryland Grace is the sole survivor on a desperate, last-chance mission.',
        isbn: '9780593135204',
        pageCount: 496,
        publishedDate: '2021-05-04',
        publisher: 'Ballantine Books',
        coverUrl: 'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=150&h=200&fit=crop&crop=center',
        genres: ['Science Fiction', 'Adventure', 'Space'],
        averageRating: 4.5,
        ratingCount: 890,
        language: 'en',
      ),
      Book(
        id: 'rec3',
        title: 'Klara and the Sun',
        author: 'Kazuo Ishiguro',
        description: 'From the bestselling author of Never Let Me Go and The Remains of the Day.',
        isbn: '9780593318171',
        pageCount: 320,
        publishedDate: '2021-03-02',
        publisher: 'Knopf',
        coverUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=200&fit=crop&crop=center',
        genres: ['Fiction', 'Science Fiction', 'Literary'],
        averageRating: 4.1,
        ratingCount: 750,
        language: 'en',
      ),
    ];
  }

  /// Returns sample trending books
  static List<Book> _getSampleTrendingBooks() {
    return [
      Book(
        id: 'trend1',
        title: 'Tomorrow, and Tomorrow, and Tomorrow',
        author: 'Gabrielle Zevin',
        description: 'A modern love story about two friends finding their way through life.',
        isbn: '9780593321201',
        pageCount: 416,
        publishedDate: '2022-07-05',
        publisher: 'Knopf',
        coverUrl: 'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=150&h=200&fit=crop&crop=center',
        genres: ['Fiction', 'Contemporary', 'Romance'],
        averageRating: 4.3,
        ratingCount: 2100,
        language: 'en',
      ),
      Book(
        id: 'trend2',
        title: 'Lessons in Chemistry',
        author: 'Bonnie Garmus',
        description: 'A scientist in the 1960s becomes a single mother and a cooking show host.',
        isbn: '9780385547345',
        pageCount: 400,
        publishedDate: '2022-04-05',
        publisher: 'Doubleday',
        coverUrl: 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?w=150&h=200&fit=crop&crop=center',
        genres: ['Fiction', 'Historical Fiction', 'Women'],
        averageRating: 4.4,
        ratingCount: 1800,
        language: 'en',
      ),
      Book(
        id: 'trend3',
        title: 'The Seven Husbands of Evelyn Hugo',
        author: 'Taylor Jenkins Reid',
        description: 'A legendary film actress reflects on her scandalous life.',
        isbn: '9781501161939',
        pageCount: 400,
        publishedDate: '2017-06-13',
        publisher: 'Atria Books',
        coverUrl: 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=150&h=200&fit=crop&crop=center',
        genres: ['Fiction', 'Historical Fiction', 'Romance'],
        averageRating: 4.5,
        ratingCount: 3200,
        language: 'en',
      ),
    ];
  }
} 