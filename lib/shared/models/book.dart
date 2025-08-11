import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

/// Represents a book in the BookTrackr application.
/// 
/// This model contains all the essential information about a book including
/// its metadata, ratings, and categorization details.
/// 
/// Example usage:
/// ```dart
/// final book = Book(
///   id: 'book-123',
///   title: 'The Great Gatsby',
///   author: 'F. Scott Fitzgerald',
///   coverUrl: 'https://example.com/cover.jpg',
///   isbn: '978-0743273565',
///   pageCount: 180,
///   publishedDate: '1925-04-10',
///   description: 'A story of the fabulously wealthy Jay Gatsby...',
///   genres: ['Fiction', 'Classic'],
///   averageRating: 4.2,
///   publisher: 'Scribner',
///   language: 'en',
///   ratingCount: 1250,
/// );
/// ```
@freezed
class Book with _$Book {
  const factory Book({
    /// Unique identifier for the book
    required String id,
    
    /// Title of the book
    required String title,
    
    /// Author(s) of the book
    required String author,
    
    /// URL to the book's cover image
    required String coverUrl,
    
    /// International Standard Book Number
    required String isbn,
    
    /// Total number of pages in the book
    required int pageCount,
    
    /// Publication date in ISO format (YYYY-MM-DD)
    required String publishedDate,
    
    /// Brief description or summary of the book
    required String description,
    
    /// List of genres the book belongs to
    required List<String> genres,
    
    /// Average rating from all users (0.0 to 5.0)
    required double averageRating,
    
    /// Publisher of the book
    required String publisher,
    
    /// Language code (e.g., 'en' for English)
    required String language,
    
    /// Total number of ratings received
    required int ratingCount,
  }) = _Book;

  /// Creates a Book instance from JSON data
  /// 
  /// This is typically used when deserializing data from APIs or local storage.
  /// 
  /// Throws [FormatException] if the JSON structure is invalid.
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
} 