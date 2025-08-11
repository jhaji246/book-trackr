import '../../shared/models/book.dart';
import '../../shared/models/user_book.dart';

class RecommendationService {
  /// Generates personalized book recommendations based on user's reading history
  static List<Book> getRecommendations(
    List<Book> availableBooks,
    List<UserBook> userBooks,
  ) {
    if (userBooks.isEmpty) {
      // If no reading history, return popular books
      return availableBooks.take(10).toList();
    }

    // Check if user has already read any books
    final readBookIds = userBooks.map((userBook) => userBook.id).toSet();
    
    // Filter out already read books
    final unreadBooks = availableBooks.where((book) => !readBookIds.contains(book.id)).toList();
    
    // For now, return first 10 unread books
    // In a real app, you'd implement more sophisticated recommendation algorithms
    return unreadBooks.take(10).toList();
  }

  /// Gets trending books based on user's preferences
  static List<Book> getTrendingBooks(List<Book> availableBooks) {
    // For now, return first 10 books
    // In a real app, you'd implement trending algorithms
    return availableBooks.take(10).toList();
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
} 