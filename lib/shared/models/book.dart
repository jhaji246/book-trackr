import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String id,
    required String title,
    required String author,
    required String coverUrl,
    required String isbn,
    required int pageCount,
    required String publishedDate,
    required String description,
    required List<String> genres,
    required double averageRating,
    required String publisher,
    required String language,
    required int ratingCount,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
class UserBook with _$UserBook {
  const factory UserBook({
    required Book book,
    required BookStatus status,
    @Default(0) int rating,
    @Default('') String review,
    @Default(0) int currentPage,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserBook;

  factory UserBook.fromJson(Map<String, dynamic> json) => _$UserBookFromJson(json);
}

@freezed
class BookStatus with _$BookStatus {
  const factory BookStatus.wantToRead() = _WantToRead;
  const factory BookStatus.reading() = _Reading;
  const factory BookStatus.completed() = _Completed;
  const factory BookStatus.dnf() = _Dnf;

  factory BookStatus.fromJson(Map<String, dynamic> json) => _$BookStatusFromJson(json);
} 