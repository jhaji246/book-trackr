import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  @HiveType(typeId: 0)
  const factory Book({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String author,
    @HiveField(3) String? description,
    @HiveField(4) String? coverUrl,
    @HiveField(5) double? averageRating,
    @HiveField(6) int? ratingCount,
    @HiveField(7) int? pageCount,
    @HiveField(8) String? isbn,
    @HiveField(9) DateTime? publishedDate,
    @HiveField(10) List<String>? genres,
    @HiveField(11) String? publisher,
    @HiveField(12) String? language,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
class UserBook with _$UserBook {
  @HiveType(typeId: 1)
  const factory UserBook({
    @HiveField(0) required String id,
    @HiveField(1) required String bookId,
    @HiveField(2) required String userId,
    @HiveField(3) required BookStatus status,
    @HiveField(4) int? currentPage,
    @HiveField(5) double? rating,
    @HiveField(6) String? review,
    @HiveField(7) DateTime? createdAt,
    @HiveField(8) DateTime? updatedAt,
  }) = _UserBook;

  factory UserBook.fromJson(Map<String, dynamic> json) => _$UserBookFromJson(json);
}

@HiveType(typeId: 2)
enum BookStatus {
  @HiveField(0)
  wantToRead,
  @HiveField(1)
  reading,
  @HiveField(2)
  completed,
  @HiveField(3)
  dnf,
} 