import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_entity.freezed.dart';

/// Core Book entity representing a book in the business domain
/// This is the pure business object without any external dependencies
@freezed
class BookEntity with _$BookEntity {
  const factory BookEntity({
    required String id,
    required String title,
    required String author,
    required String description,
    required String isbn,
    required int pageCount,
    required String publishedDate,
    required String publisher,
    required String coverUrl,
    required List<String> genres,
    required double averageRating,
    required int ratingCount,
    required String language,
    String? readingStatus,
    int? currentPage,
    DateTime? dateAdded,
    DateTime? dateStarted,
    DateTime? dateCompleted,
  }) = _BookEntity;

  const BookEntity._();

  /// Creates a BookEntity from a Book model
  factory BookEntity.fromBook(dynamic book) {
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
    );
  }

  /// Checks if the book is currently being read
  bool get isCurrentlyReading => readingStatus == 'reading';

  /// Checks if the book has been completed
  bool get isCompleted => readingStatus == 'completed';

  /// Checks if the book is in the reading list
  bool get isInReadingList => readingStatus == 'want_to_read';

  /// Calculates reading progress percentage
  double get readingProgress {
    if (currentPage == null || pageCount <= 0) return 0.0;
    return (currentPage! / pageCount) * 100;
  }

  /// Gets the estimated time to complete reading
  int get estimatedTimeToComplete {
    if (currentPage == null || pageCount <= 0) return 0;
    final remainingPages = pageCount - currentPage!;
    // Average reading speed: 1 page per 2 minutes
    return (remainingPages * 2 / 60).round();
  }
}
