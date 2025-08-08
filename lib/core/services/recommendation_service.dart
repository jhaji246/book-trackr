import 'dart:math';
import '../../shared/models/book.dart';
import '../../shared/providers/bookshelf_provider.dart';

class RecommendationService {
  static const int _maxRecommendations = 10;
  static const double _genreWeight = 0.4;
  static const double _authorWeight = 0.3;
  static const double _ratingWeight = 0.2;
  static const double _popularityWeight = 0.1;

  // Generate personalized recommendations
  static List<Book> getRecommendations(
    List<Book> availableBooks,
    List<UserBook> userBooks,
    List<Book> completedBooks,
  ) {
    if (userBooks.isEmpty) {
      return _getPopularBooks(availableBooks);
    }

    final userProfile = analyzeUserProfile(userBooks, completedBooks);
    final recommendations = <Book>[];
    final scores = <Book, double>{};

    for (final book in availableBooks) {
      // Skip books user already has
      if (userBooks.any((userBook) => userBook.book.id == book.id)) {
        continue;
      }

      final score = _calculateRecommendationScore(book, userProfile);
      scores[book] = score;
    }

    // Sort by score and return top recommendations
    final sortedBooks = scores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return sortedBooks
        .take(_maxRecommendations)
        .map((entry) => entry.key)
        .toList();
  }

  // Analyze user's reading preferences
  static UserProfile analyzeUserProfile(
    List<UserBook> userBooks,
    List<Book> completedBooks,
  ) {
    final genreCounts = <String, int>{};
    final authorCounts = <String, int>{};
    final totalRating = completedBooks.fold<double>(
      0.0,
      (sum, book) => sum + book.averageRating,
    );
    final averageRating = completedBooks.isNotEmpty
        ? totalRating / completedBooks.length
        : 0.0;

    // Analyze genres and authors from completed books
    for (final book in completedBooks) {
      for (final genre in book.genres) {
        genreCounts[genre] = (genreCounts[genre] ?? 0) + 1;
      }
      authorCounts[book.author] = (authorCounts[book.author] ?? 0) + 1;
    }

    // Get top genres and authors
    final topGenres = _getTopItems(genreCounts, 5);
    final topAuthors = _getTopItems(authorCounts, 5);

    return UserProfile(
      favoriteGenres: topGenres,
      favoriteAuthors: topAuthors,
      averageRating: averageRating,
      totalBooksRead: completedBooks.length,
    );
  }

  // Calculate recommendation score for a book
  static double _calculateRecommendationScore(Book book, UserProfile profile) {
    double score = 0.0;

    // Genre matching
    for (final genre in book.genres) {
      if (profile.favoriteGenres.contains(genre)) {
        score += _genreWeight;
        break;
      }
    }

    // Author matching
    if (profile.favoriteAuthors.contains(book.author)) {
      score += _authorWeight;
    }

    // Rating preference
    final ratingDifference = (book.averageRating - profile.averageRating).abs();
    if (ratingDifference <= 1.0) {
      score += _ratingWeight;
    }

    // Popularity boost
    if (book.ratingCount > 1000) {
      score += _popularityWeight;
    }

    // Random factor for variety
    score += Random().nextDouble() * 0.1;

    return score;
  }

  // Get popular books for new users
  static List<Book> _getPopularBooks(List<Book> availableBooks) {
    final sortedBooks = List<Book>.from(availableBooks)
      ..sort((a, b) => b.ratingCount.compareTo(a.ratingCount));
    
    return sortedBooks.take(_maxRecommendations).toList();
  }

  // Get top items from a map
  static List<String> _getTopItems(Map<String, int> counts, int limit) {
    final sorted = counts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    
    return sorted.take(limit).map((entry) => entry.key).toList();
  }

  // Get recommendation reasons
  static List<String> getRecommendationReasons(
    Book book,
    UserProfile profile,
  ) {
    final reasons = <String>[];

    // Genre reasons
    for (final genre in book.genres) {
      if (profile.favoriteGenres.contains(genre)) {
        reasons.add('You enjoy $genre books');
        break;
      }
    }

    // Author reasons
    if (profile.favoriteAuthors.contains(book.author)) {
      reasons.add('You liked other books by ${book.author}');
    }

    // Rating reasons
    if ((book.averageRating - profile.averageRating).abs() <= 1.0) {
      reasons.add('Matches your rating preferences');
    }

    // Popularity reasons
    if (book.ratingCount > 1000) {
      reasons.add('Highly rated by readers');
    }

    // Default reason
    if (reasons.isEmpty) {
      reasons.add('Based on your reading history');
    }

    return reasons;
  }

  // Get trending books
  static List<Book> getTrendingBooks(List<Book> availableBooks) {
    final sortedBooks = List<Book>.from(availableBooks)
      ..sort((a, b) {
        // Sort by rating count and average rating
        final scoreA = a.ratingCount * a.averageRating;
        final scoreB = b.ratingCount * b.averageRating;
        return scoreB.compareTo(scoreA);
      });
    
    return sortedBooks.take(5).toList();
  }

  // Get similar books
  static List<Book> getSimilarBooks(
    Book targetBook,
    List<Book> availableBooks,
    int limit,
  ) {
    final similarBooks = <Book>[];
    final scores = <Book, double>{};

    for (final book in availableBooks) {
      if (book.id == targetBook.id) continue;

      double score = 0.0;

      // Genre similarity
      for (final genre in targetBook.genres) {
        if (book.genres.contains(genre)) {
          score += 0.3;
        }
      }

      // Author similarity
      if (book.author == targetBook.author) {
        score += 0.4;
      }

      // Rating similarity
      final ratingDiff = (book.averageRating - targetBook.averageRating).abs();
      if (ratingDiff <= 1.0) {
        score += 0.2;
      }

      // Publisher similarity
      if (book.publisher == targetBook.publisher) {
        score += 0.1;
      }

      scores[book] = score;
    }

    final sortedBooks = scores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return sortedBooks
        .take(limit)
        .map((entry) => entry.key)
        .toList();
  }
}

// User profile for recommendations
class UserProfile {
  final List<String> favoriteGenres;
  final List<String> favoriteAuthors;
  final double averageRating;
  final int totalBooksRead;

  const UserProfile({
    required this.favoriteGenres,
    required this.favoriteAuthors,
    required this.averageRating,
    required this.totalBooksRead,
  });
} 