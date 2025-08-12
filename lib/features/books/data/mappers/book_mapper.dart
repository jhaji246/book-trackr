import '../../domain/entities/book_entity.dart';
import '../../../../shared/models/book.dart';

/// Mapper class for converting between Book (old) and BookEntity (new) models
/// This enables smooth migration from old architecture to clean architecture
class BookMapper {
  
  /// Convert BookEntity to Book (for backward compatibility)
  static Book entityToBook(BookEntity entity) {
    return Book(
      id: entity.id,
      title: entity.title,
      author: entity.author,
      description: entity.description,
      isbn: entity.isbn,
      pageCount: entity.pageCount,
      publishedDate: entity.publishedDate,
      publisher: entity.publisher,
      coverUrl: entity.coverUrl,
      genres: entity.genres,
      averageRating: entity.averageRating,
      ratingCount: entity.ratingCount,
      language: entity.language,
    );
  }

  /// Convert Book to BookEntity (for new architecture)
  static BookEntity bookToEntity(Book book) {
    return BookEntity(
      id: book.id,
      title: book.title,
      author: book.author,
      description: book.description,
      isbn: book.isbn,
      pageCount: book.pageCount,
      publishedDate: book.publishedDate,
      publisher: book.publisher,
      coverUrl: book.coverUrl,
      genres: book.genres,
      averageRating: book.averageRating,
      ratingCount: book.ratingCount,
      language: book.language,
      // Map additional fields if available
      currentPage: null, // Book model doesn't have this
      readingStatus: null, // Book model doesn't have this
      dateAdded: null, // Book model doesn't have this
    );
  }

  /// Convert list of BookEntity to list of Book
  static List<Book> entitiesToBooks(List<BookEntity> entities) {
    return entities.map((entity) => entityToBook(entity)).toList();
  }

  /// Convert list of Book to list of BookEntity
  static List<BookEntity> booksToEntities(List<Book> books) {
    return books.map((book) => bookToEntity(book)).toList();
  }

  /// Create a BookEntity from minimal required data
  static BookEntity createFromMinimalData({
    required String id,
    required String title,
    required String author,
    String description = '',
    String isbn = '',
    int pageCount = 0,
    String publishedDate = '',
    String publisher = '',
    String coverUrl = '',
    List<String> genres = const [],
    double averageRating = 0.0,
    int ratingCount = 0,
    String language = 'en',
  }) {
    return BookEntity(
      id: id,
      title: title,
      author: author,
      description: description,
      isbn: isbn,
      pageCount: pageCount,
      publishedDate: publishedDate,
      publisher: publisher,
      coverUrl: coverUrl,
      genres: genres,
      averageRating: averageRating,
      ratingCount: ratingCount,
      language: language,
    );
  }

  /// Check if two BookEntity objects are equal
  static bool areEqual(BookEntity entity1, BookEntity entity2) {
    return entity1.id == entity2.id &&
           entity1.title == entity2.title &&
           entity1.author == entity2.author &&
           entity1.isbn == entity2.isbn;
  }

  /// Merge two BookEntity objects, preferring non-empty values from entity2
  static BookEntity merge(BookEntity entity1, BookEntity entity2) {
    return BookEntity(
      id: entity1.id,
      title: entity2.title.isNotEmpty ? entity2.title : entity1.title,
      author: entity2.author.isNotEmpty ? entity2.author : entity1.author,
      description: entity2.description.isNotEmpty ? entity2.description : entity1.description,
      isbn: entity2.isbn.isNotEmpty ? entity2.isbn : entity1.isbn,
      pageCount: entity2.pageCount > 0 ? entity2.pageCount : entity1.pageCount,
      publishedDate: entity2.publishedDate.isNotEmpty ? entity2.publishedDate : entity1.publishedDate,
      publisher: entity2.publisher.isNotEmpty ? entity2.publisher : entity1.publisher,
      coverUrl: entity2.coverUrl.isNotEmpty ? entity2.coverUrl : entity1.coverUrl,
      genres: entity2.genres.isNotEmpty ? entity2.genres : entity1.genres,
      averageRating: entity2.averageRating > 0 ? entity2.averageRating : entity1.averageRating,
      ratingCount: entity2.ratingCount > 0 ? entity2.ratingCount : entity1.ratingCount,
      language: entity2.language.isNotEmpty ? entity2.language : entity1.language,
      currentPage: entity2.currentPage ?? entity1.currentPage,
      readingStatus: entity2.readingStatus ?? entity1.readingStatus,
      dateAdded: entity2.dateAdded ?? entity1.dateAdded,
    );
  }

  /// Validate if a BookEntity has all required fields
  static bool isValid(BookEntity entity) {
    return entity.id.isNotEmpty &&
           entity.title.isNotEmpty &&
           entity.author.isNotEmpty;
  }

  /// Get a summary of the book for display purposes
  static String getSummary(BookEntity entity) {
    final parts = <String>[];
    
    if (entity.title.isNotEmpty) parts.add(entity.title);
    if (entity.author.isNotEmpty) parts.add('by ${entity.author}');
    if (entity.pageCount > 0) parts.add('${entity.pageCount} pages');
    if (entity.averageRating > 0) parts.add('${entity.averageRating}★');
    
    return parts.join(' • ');
  }

  /// Get reading progress as a percentage string
  static String getReadingProgressText(BookEntity entity) {
    if (entity.currentPage == null || entity.currentPage == 0) {
      return 'Not started';
    }
    
    final progress = entity.readingProgress;
    if (progress >= 100) {
      return 'Completed';
    }
    
    return '${progress.toStringAsFixed(1)}% (${entity.currentPage}/${entity.pageCount} pages)';
  }

  /// Get estimated time to complete as a human-readable string
  static String getEstimatedTimeText(BookEntity entity) {
    final hours = entity.estimatedTimeToComplete;
    
    if (hours < 1) {
      return 'Less than 1 hour';
    } else if (hours == 1) {
      return 'About 1 hour';
    } else if (hours < 24) {
      return 'About $hours hours';
    } else {
      final days = (hours / 24).ceil();
      return 'About $days days';
    }
  }
}
