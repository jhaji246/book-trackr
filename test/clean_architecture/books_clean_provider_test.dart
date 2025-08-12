import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:book_tracker/features/books/domain/entities/book_entity.dart';
import 'package:book_tracker/features/books/domain/repositories/book_repository.dart';
import 'package:book_tracker/features/books/domain/usecases/get_featured_books_usecase.dart';
import 'package:book_tracker/features/books/domain/usecases/search_books_usecase.dart';
import 'package:book_tracker/features/books/domain/usecases/get_book_by_id_usecase.dart';
import 'package:book_tracker/features/books/presentation/providers/books_clean_provider.dart';

import 'books_clean_provider_test.mocks.dart';

@GenerateMocks([
  GetFeaturedBooksUseCase,
  SearchBooksUseCase,
  GetBookByIdUseCase,
])
void main() {
  group('BooksCleanProvider Tests', () {
    late MockGetFeaturedBooksUseCase mockGetFeaturedBooksUseCase;
    late MockSearchBooksUseCase mockSearchBooksUseCase;
    late MockGetBookByIdUseCase mockGetBookByIdUseCase;
    late ProviderContainer container;

    setUp(() {
      mockGetFeaturedBooksUseCase = MockGetFeaturedBooksUseCase();
      mockSearchBooksUseCase = MockSearchBooksUseCase();
      mockGetBookByIdUseCase = MockGetBookByIdUseCase();

      container = ProviderContainer(
        overrides: [
          booksCleanProvider.overrideWith(
            (ref) => BooksCleanNotifier(
              getFeaturedBooksUseCase: mockGetFeaturedBooksUseCase,
              searchBooksUseCase: mockSearchBooksUseCase,
              getBookByIdUseCase: mockGetBookByIdUseCase,
            ),
          ),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    group('Initial State', () {
      test('should have initial state with empty lists and no loading', () {
        final state = container.read(booksCleanProvider);
        
        expect(state.featuredBooks, isEmpty);
        expect(state.searchResults, isEmpty);
        expect(state.trendingBooks, isEmpty);
        expect(state.recommendedBooks, isEmpty);
        expect(state.isLoading, false);
        expect(state.hasError, false);
        expect(state.errorMessage, null);
      });
    });

    group('Load Featured Books', () {
      test('should load featured books successfully', () async {
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
          BookEntity(
            id: '2',
            title: 'Test Book 2',
            author: 'Test Author 2',
            description: 'Test Description 2',
            isbn: '0987654321',
            pageCount: 200,
            publishedDate: '2023-02-01',
            publisher: 'Test Publisher 2',
            coverUrl: 'https://example.com/cover2.jpg',
            genres: ['Non-Fiction'],
            averageRating: 4.0,
            ratingCount: 50,
            language: 'en',
          ),
        ];

        when(mockGetFeaturedBooksUseCase())
            .thenAnswer((_) async => Right(sampleBooks));

        // Act
        await container.read(booksCleanProvider.notifier).loadFeaturedBooks();

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.featuredBooks, sampleBooks);
        expect(state.isLoading, false);
        expect(state.hasError, false);
        expect(state.errorMessage, null);
        
        verify(mockGetFeaturedBooksUseCase()).called(1);
      });

      test('should handle error when loading featured books fails', () async {
        // Arrange
        when(mockGetFeaturedBooksUseCase())
            .thenAnswer((_) async => Left(ServerFailure('API Error')));

        // Act
        await container.read(booksCleanProvider.notifier).loadFeaturedBooks();

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.featuredBooks, isEmpty);
        expect(state.isLoading, false);
        expect(state.hasError, true);
        expect(state.errorMessage, contains('ServerFailure'));
        
        verify(mockGetFeaturedBooksUseCase()).called(1);
      });
    });

    group('Search Books', () {
      test('should search books successfully', () async {
        // Arrange
        final searchQuery = 'test query';
        final searchResults = [
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

        when(mockSearchBooksUseCase(query: searchQuery))
            .thenAnswer((_) async => Right(searchResults));

        // Act
        await container.read(booksCleanProvider.notifier).searchBooks(searchQuery);

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.searchResults, searchResults);
        expect(state.isLoading, false);
        expect(state.hasError, false);
        expect(state.errorMessage, null);
        
        verify(mockSearchBooksUseCase(query: searchQuery)).called(1);
      });

      test('should handle empty search query', () async {
        // Act
        await container.read(booksCleanProvider.notifier).searchBooks('');

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.searchResults, isEmpty);
        expect(state.isLoading, false);
        expect(state.hasError, false);
        
        verifyNever(mockSearchBooksUseCase(query: anyNamed('query')));
      });

      test('should handle search error', () async {
        // Arrange
        when(mockSearchBooksUseCase(query: 'test'))
            .thenAnswer((_) async => Left(ServerFailure('Search failed')));

        // Act
        await container.read(booksCleanProvider.notifier).searchBooks('test');

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.searchResults, isEmpty);
        expect(state.isLoading, false);
        expect(state.hasError, true);
        expect(state.errorMessage, contains('ServerFailure'));
        
        verify(mockSearchBooksUseCase(query: 'test')).called(1);
      });
    });

    group('Get Book By ID', () {
      test('should get book by ID successfully', () async {
        // Arrange
        final bookId = '123';
        final book = BookEntity(
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

        when(mockGetBookByIdUseCase(bookId))
            .thenAnswer((_) async => Right(book));

        // Act
        final result = await container.read(booksCleanProvider.notifier).getBookById(bookId);

        // Assert
        expect(result, book);
        expect(container.read(booksCleanProvider).hasError, false);
        
        verify(mockGetBookByIdUseCase(bookId)).called(1);
      });

      test('should handle error when getting book by ID fails', () async {
        // Arrange
        when(mockGetBookByIdUseCase('123'))
            .thenAnswer((_) async => Left(ServerFailure('Book not found')));

        // Act
        final result = await container.read(booksCleanProvider.notifier).getBookById('123');

        // Assert
        expect(result, null);
        final state = container.read(booksCleanProvider);
        expect(state.hasError, true);
        expect(state.errorMessage, contains('ServerFailure'));
        
        verify(mockGetBookByIdUseCase('123')).called(1);
      });
    });

    group('Utility Methods', () {
      test('should clear search results', () {
        // Arrange
        container.read(booksCleanProvider.notifier).state = 
            container.read(booksCleanProvider).copyWith(searchResults: ['dummy']);

        // Act
        container.read(booksCleanProvider.notifier).clearSearchResults();

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.searchResults, isEmpty);
      });

      test('should clear error', () {
        // Arrange
        container.read(booksCleanProvider.notifier).state = 
            container.read(booksCleanProvider).copyWith(
              hasError: true,
              errorMessage: 'Test error',
            );

        // Act
        container.read(booksCleanProvider.notifier).clearError();

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.hasError, false);
        expect(state.errorMessage, null);
      });

      test('should refresh data', () async {
        // Arrange
        when(mockGetFeaturedBooksUseCase())
            .thenAnswer((_) async => Right([]));

        // Act
        await container.read(booksCleanProvider.notifier).refresh();

        // Assert
        verify(mockGetFeaturedBooksUseCase()).called(1);
      });
    });

    group('Provider Selectors', () {
      test('should provide featured books correctly', () {
        // Arrange
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

        container.read(booksCleanProvider.notifier).state = 
            container.read(booksCleanProvider).copyWith(featuredBooks: sampleBooks);

        // Act & Assert
        final featuredBooks = container.read(featuredBooksProvider);
        expect(featuredBooks, sampleBooks);
      });

      test('should provide loading state correctly', () {
        // Arrange
        container.read(booksCleanProvider.notifier).state = 
            container.read(booksCleanProvider).copyWith(isLoading: true);

        // Act & Assert
        final isLoading = container.read(booksLoadingProvider);
        expect(isLoading, true);
      });

      test('should provide error state correctly', () {
        // Arrange
        container.read(booksCleanProvider.notifier).state = 
            container.read(booksCleanProvider).copyWith(
              hasError: true,
              errorMessage: 'Test error',
            );

        // Act & Assert
        final hasError = container.read(booksHasErrorProvider);
        final errorMessage = container.read(booksErrorProvider);
        
        expect(hasError, true);
        expect(errorMessage, 'Test error');
      });
    });
  });
}
