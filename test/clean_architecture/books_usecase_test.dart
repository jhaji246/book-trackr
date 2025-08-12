import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dartz/dartz.dart';
import 'package:book_tracker/features/books/domain/entities/book_entity.dart';
import 'package:book_tracker/features/books/domain/repositories/book_repository.dart';
import 'package:book_tracker/features/books/domain/usecases/get_featured_books_usecase.dart';
import 'package:book_tracker/features/books/domain/usecases/search_books_usecase.dart';
import 'package:book_tracker/features/books/domain/usecases/get_book_by_id_usecase.dart';

import 'books_usecase_test.mocks.dart';

@GenerateMocks([BookRepository])
void main() {
  group('Books Use Cases Tests', () {
    late MockBookRepository mockRepository;
    late GetFeaturedBooksUseCase getFeaturedBooksUseCase;
    late SearchBooksUseCase searchBooksUseCase;
    late GetBookByIdUseCase getBookByIdUseCase;

    setUp(() {
      mockRepository = MockBookRepository();
      getFeaturedBooksUseCase = GetFeaturedBooksUseCase(mockRepository);
      searchBooksUseCase = SearchBooksUseCase(mockRepository);
      getBookByIdUseCase = GetBookByIdUseCase(mockRepository);
    });

    group('GetFeaturedBooksUseCase', () {
      test('should get featured books from repository', () async {
        // Arrange
        final sampleBooks = [
          BookEntity(
            id: '1',
            title: 'Test Book 1',
            author: 'Test Author 1',
            description: 'Test Description 1',
            isbn: '1234567890',
            pageCount: 100,
            publishedDate: '2023-01-01',
            publisher: 'Test Publisher',
            coverUrl: 'https://example.com/cover1.jpg',
            genres: ['Fiction'],
            averageRating: 4.5,
            ratingCount: 100,
            language: 'en',
          ),
        ];

        when(mockRepository.getFeaturedBooks())
            .thenAnswer((_) async => Right(sampleBooks));

        // Act
        final result = await getFeaturedBooksUseCase();

        // Assert
        expect(result, Right(sampleBooks));
        verify(mockRepository.getFeaturedBooks()).called(1);
      });

      test('should return failure when repository fails', () async {
        // Arrange
        when(mockRepository.getFeaturedBooks())
            .thenAnswer((_) async => Left(ServerFailure('API Error')));

        // Act
        final result = await getFeaturedBooksUseCase();

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<ServerFailure>());
        verify(mockRepository.getFeaturedBooks()).called(1);
      });
    });

    group('SearchBooksUseCase', () {
      test('should search books with valid query', () async {
        // Arrange
        final searchQuery = 'test query';
        final sampleBooks = [
          BookEntity(
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
          ),
        ];

        when(mockRepository.searchBooks(query: searchQuery))
            .thenAnswer((_) async => Right(sampleBooks));

        // Act
        final result = await searchBooksUseCase(query: searchQuery);

        // Assert
        expect(result, Right(sampleBooks));
        verify(mockRepository.searchBooks(query: searchQuery)).called(1);
      });

      test('should return failure for empty query', () async {
        // Act
        final result = await searchBooksUseCase(query: '');

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<InvalidInputFailure>());
        verifyNever(mockRepository.searchBooks(query: anyNamed('query')));
      });

      test('should return failure for whitespace-only query', () async {
        // Act
        final result = await searchBooksUseCase(query: '   ');

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<InvalidInputFailure>());
        verifyNever(mockRepository.searchBooks(query: anyNamed('query')));
      });

      test('should validate page number', () async {
        // Act
        final result = await searchBooksUseCase(query: 'test', page: 0);

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<InvalidInputFailure>());
        verifyNever(mockRepository.searchBooks(query: anyNamed('query')));
      });

      test('should validate limit', () async {
        // Act
        final result = await searchBooksUseCase(query: 'test', limit: 0);

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<InvalidInputFailure>());
        verifyNever(mockRepository.searchBooks(query: anyNamed('query')));
      });
    });

    group('GetBookByIdUseCase', () {
      test('should get book by valid ID', () async {
        // Arrange
        final bookId = '123';
        final sampleBook = BookEntity(
          id: bookId,
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

        when(mockRepository.getBookById(bookId))
            .thenAnswer((_) async => Right(sampleBook));

        // Act
        final result = await getBookByIdUseCase(bookId);

        // Assert
        expect(result, Right(sampleBook));
        verify(mockRepository.getBookById(bookId)).called(1);
      });

      test('should return failure for empty ID', () async {
        // Act
        final result = await getBookByIdUseCase('');

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<InvalidInputFailure>());
        verifyNever(mockRepository.getBookById(any));
      });

      test('should return failure for whitespace-only ID', () async {
        // Act
        final result = await getBookByIdUseCase('   ');

        // Assert
        expect(result.isLeft(), true);
        expect(result.fold(id, id), isA<InvalidInputFailure>());
        verifyNever(mockRepository.getBookById(any));
      });
    });
  });
}
