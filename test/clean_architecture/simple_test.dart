import 'package:flutter_test/flutter_test.dart';
import 'package:book_tracker/features/books/domain/entities/book_entity.dart';

void main() {
  group('BookEntity Tests', () {
    test('should create a BookEntity with required fields', () {
      // Arrange & Act
      final book = BookEntity(
        id: '1',
        title: 'Test Book',
        author: 'Test Author',
        description: 'Test Description',
        isbn: '1234567890',
        pageCount: 100,
        publishedDate: '2023-01-01',
        publisher: 'Test Publisher',
        coverUrl: 'https://example.com/cover.jpg',
        genres: ['Fiction'],
        averageRating: 4.5,
        ratingCount: 100,
        language: 'en',
      );

      // Assert
      expect(book.id, '1');
      expect(book.title, 'Test Book');
      expect(book.author, 'Test Author');
      expect(book.description, 'Test Description');
      expect(book.isbn, '1234567890');
      expect(book.pageCount, 100);
      expect(book.publishedDate, '2023-01-01');
      expect(book.publisher, 'Test Publisher');
      expect(book.coverUrl, 'https://example.com/cover.jpg');
      expect(book.genres, ['Fiction']);
      expect(book.averageRating, 4.5);
      expect(book.ratingCount, 100);
      expect(book.language, 'en');
    });

    test('should calculate reading progress correctly', () {
      // Arrange
      final book = BookEntity(
        id: '1',
        title: 'Test Book',
        author: 'Test Author',
        description: 'Test Description',
        isbn: '1234567890',
        pageCount: 200,
        publishedDate: '2023-01-01',
        publisher: 'Test Publisher',
        coverUrl: 'https://example.com/cover.jpg',
        genres: ['Fiction'],
        averageRating: 4.5,
        ratingCount: 100,
        language: 'en',
        currentPage: 100,
      );

      // Act & Assert
      expect(book.readingProgress, 50.0);
    });

    test('should calculate estimated time to complete correctly', () {
      // Arrange
      final book = BookEntity(
        id: '1',
        title: 'Test Book',
        author: 'Test Author',
        description: 'Test Description',
        isbn: '1234567890',
        pageCount: 200,
        publishedDate: '2023-01-01',
        publisher: 'Test Publisher',
        coverUrl: 'https://example.com/cover.jpg',
        genres: ['Fiction'],
        averageRating: 4.5,
        ratingCount: 100,
        language: 'en',
        currentPage: 100,
      );

      // Act & Assert
      // 100 remaining pages * 2 minutes per page / 60 minutes per hour = 3.33 hours
      expect(book.estimatedTimeToComplete, 3);
    });

    test('should handle reading status correctly', () {
      // Arrange
      final book = BookEntity(
        id: '1',
        title: 'Test Book',
        author: 'Test Author',
        description: 'Test Description',
        isbn: '1234567890',
        pageCount: 200,
        publishedDate: '2023-01-01',
        publisher: 'Test Publisher',
        coverUrl: 'https://example.com/cover.jpg',
        genres: ['Fiction'],
        averageRating: 4.5,
        ratingCount: 100,
        language: 'en',
        readingStatus: 'reading',
      );

      // Act & Assert
      expect(book.isCurrentlyReading, true);
      expect(book.isCompleted, false);
      expect(book.isInReadingList, false);
    });
  });
}
