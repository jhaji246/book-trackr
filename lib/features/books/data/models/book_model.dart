import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/book_entity.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

/// Data model for Book representing the API response structure
/// This is used for JSON serialization/deserialization
@freezed
class BookModel with _$BookModel {
  const factory BookModel({
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
  }) = _BookModel;

  const BookModel._();

  /// Creates a BookModel from JSON
  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

  /// Converts BookModel to BookEntity (domain object)
  BookEntity toEntity() {
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
      readingStatus: readingStatus,
      currentPage: currentPage,
      dateAdded: dateAdded,
      dateStarted: dateStarted,
      dateCompleted: dateCompleted,
    );
  }

  /// Creates a BookModel from BookEntity
  factory BookModel.fromEntity(BookEntity entity) {
    return BookModel(
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
      readingStatus: entity.readingStatus,
      currentPage: entity.currentPage,
      dateAdded: entity.dateAdded,
      dateStarted: entity.dateStarted,
      dateCompleted: entity.dateCompleted,
    );
  }
}
