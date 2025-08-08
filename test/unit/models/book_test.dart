import 'package:flutter_test/flutter_test.dart';
import 'package:book_tracker/shared/models/book.dart';

void main() {
  group('Book Model Tests', () {
    test('should create a book with all required fields', () {
      const book = Book(
        id: 'test-1',
        title: 'Test Book',
        author: 'Test Author',
        coverUrl: 'https://example.com/cover.jpg',
        isbn: '978-0-123456-47-2',
        pageCount: 300,
        publishedDate: '2023-01-01',
        description: 'A test book',
        genres: ['Fiction', 'Test'],
        averageRating: 4.5,
        publisher: 'Test Publisher',
        language: 'en',
        ratingCount: 100,
      );

      expect(book.id, 'test-1');
      expect(book.title, 'Test Book');
      expect(book.author, 'Test Author');
      expect(book.coverUrl, 'https://example.com/cover.jpg');
      expect(book.isbn, '978-0-123456-47-2');
      expect(book.pageCount, 300);
      expect(book.publishedDate, '2023-01-01');
      expect(book.description, 'A test book');
      expect(book.genres, ['Fiction', 'Test']);
      expect(book.averageRating, 4.5);
      expect(book.publisher, 'Test Publisher');
      expect(book.language, 'en');
      expect(book.ratingCount, 100);
    });

    test('should create book from JSON', () {
      final json = {
        'id': 'test-1',
        'title': 'Test Book',
        'author': 'Test Author',
        'coverUrl': 'https://example.com/cover.jpg',
        'isbn': '978-0-123456-47-2',
        'pageCount': 300,
        'publishedDate': '2023-01-01',
        'description': 'A test book',
        'genres': ['Fiction', 'Test'],
        'averageRating': 4.5,
        'publisher': 'Test Publisher',
        'language': 'en',
        'ratingCount': 100,
      };

      final book = Book.fromJson(json);

      expect(book.id, 'test-1');
      expect(book.title, 'Test Book');
      expect(book.author, 'Test Author');
    });

    test('should convert book to JSON', () {
      const book = Book(
        id: 'test-1',
        title: 'Test Book',
        author: 'Test Author',
        coverUrl: 'https://example.com/cover.jpg',
        isbn: '978-0-123456-47-2',
        pageCount: 300,
        publishedDate: '2023-01-01',
        description: 'A test book',
        genres: ['Fiction', 'Test'],
        averageRating: 4.5,
        publisher: 'Test Publisher',
        language: 'en',
        ratingCount: 100,
      );

      final json = book.toJson();

      expect(json['id'], 'test-1');
      expect(json['title'], 'Test Book');
      expect(json['author'], 'Test Author');
      expect(json['genres'], ['Fiction', 'Test']);
      expect(json['averageRating'], 4.5);
    });

    test('should copy book with new values', () {
      const originalBook = Book(
        id: 'test-1',
        title: 'Test Book',
        author: 'Test Author',
        coverUrl: 'https://example.com/cover.jpg',
        isbn: '978-0-123456-47-2',
        pageCount: 300,
        publishedDate: '2023-01-01',
        description: 'A test book',
        genres: ['Fiction', 'Test'],
        averageRating: 4.5,
        publisher: 'Test Publisher',
        language: 'en',
        ratingCount: 100,
      );

      final copiedBook = originalBook.copyWith(
        title: 'Updated Book',
        author: 'Updated Author',
        averageRating: 5.0,
      );

      expect(copiedBook.id, 'test-1'); // Unchanged
      expect(copiedBook.title, 'Updated Book'); // Changed
      expect(copiedBook.author, 'Updated Author'); // Changed
      expect(copiedBook.averageRating, 5.0); // Changed
      expect(copiedBook.genres, ['Fiction', 'Test']); // Unchanged
    });

    test('should compare books correctly', () {
      const book1 = Book(
        id: 'test-1',
        title: 'Test Book',
        author: 'Test Author',
        coverUrl: 'https://example.com/cover.jpg',
        isbn: '978-0-123456-47-2',
        pageCount: 300,
        publishedDate: '2023-01-01',
        description: 'A test book',
        genres: ['Fiction', 'Test'],
        averageRating: 4.5,
        publisher: 'Test Publisher',
        language: 'en',
        ratingCount: 100,
      );

      const book2 = Book(
        id: 'test-1',
        title: 'Test Book',
        author: 'Test Author',
        coverUrl: 'https://example.com/cover.jpg',
        isbn: '978-0-123456-47-2',
        pageCount: 300,
        publishedDate: '2023-01-01',
        description: 'A test book',
        genres: ['Fiction', 'Test'],
        averageRating: 4.5,
        publisher: 'Test Publisher',
        language: 'en',
        ratingCount: 100,
      );

      const book3 = Book(
        id: 'test-2',
        title: 'Different Book',
        author: 'Different Author',
        coverUrl: 'https://example.com/cover.jpg',
        isbn: '978-0-123456-47-2',
        pageCount: 300,
        publishedDate: '2023-01-01',
        description: 'A test book',
        genres: ['Fiction', 'Test'],
        averageRating: 4.5,
        publisher: 'Test Publisher',
        language: 'en',
        ratingCount: 100,
      );

      expect(book1, equals(book2));
      expect(book1, isNot(equals(book3)));
    });
  });

  group('UserBook Model Tests', () {
    test('should create a user book with default values', () {
      const book = Book(
        id: 'test-1',
        title: 'Test Book',
        author: 'Test Author',
        coverUrl: 'https://example.com/cover.jpg',
        isbn: '978-0-123456-47-2',
        pageCount: 300,
        publishedDate: '2023-01-01',
        description: 'A test book',
        genres: ['Fiction', 'Test'],
        averageRating: 4.5,
        publisher: 'Test Publisher',
        language: 'en',
        ratingCount: 100,
      );

      final userBook = UserBook(
        book: book,
        status: const BookStatus.wantToRead(),
      );

      expect(userBook.book, equals(book));
      expect(userBook.status, const BookStatus.wantToRead());
      expect(userBook.rating, 0);
      expect(userBook.review, '');
      expect(userBook.currentPage, 0);
      // createdAt and updatedAt are nullable, so they might be null initially
      expect(userBook.createdAt, isA<DateTime?>());
      expect(userBook.updatedAt, isA<DateTime?>());
    });

    test('should create a user book with custom values', () {
      const book = Book(
        id: 'test-1',
        title: 'Test Book',
        author: 'Test Author',
        coverUrl: 'https://example.com/cover.jpg',
        isbn: '978-0-123456-47-2',
        pageCount: 300,
        publishedDate: '2023-01-01',
        description: 'A test book',
        genres: ['Fiction', 'Test'],
        averageRating: 4.5,
        publisher: 'Test Publisher',
        language: 'en',
        ratingCount: 100,
      );

      final now = DateTime.now();
      final userBook = UserBook(
        book: book,
        status: const BookStatus.reading(),
        rating: 5,
        review: 'Great book!',
        currentPage: 150,
        createdAt: now,
        updatedAt: now,
      );

      expect(userBook.book, equals(book));
      expect(userBook.status, const BookStatus.reading());
      expect(userBook.rating, 5);
      expect(userBook.review, 'Great book!');
      expect(userBook.currentPage, 150);
      expect(userBook.createdAt, now);
      expect(userBook.updatedAt, now);
    });
  });

  group('BookStatus Tests', () {
    test('should create different book statuses', () {
      const wantToRead = BookStatus.wantToRead();
      const reading = BookStatus.reading();
      const completed = BookStatus.completed();
      const dnf = BookStatus.dnf();

      expect(wantToRead, isA<BookStatus>());
      expect(reading, isA<BookStatus>());
      expect(completed, isA<BookStatus>());
      expect(dnf, isA<BookStatus>());

      expect(wantToRead, isNot(equals(reading)));
      expect(reading, isNot(equals(completed)));
      expect(completed, isNot(equals(dnf)));
    });

    test('should convert book status to and from JSON', () {
      const status = BookStatus.reading();
      
      final json = status.toJson();
      final fromJson = BookStatus.fromJson(json);
      
      expect(fromJson, equals(status));
    });
  });
} 