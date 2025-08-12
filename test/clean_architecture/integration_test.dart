import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_tracker/features/books/domain/entities/book_entity.dart';
import 'package:book_tracker/features/books/domain/repositories/book_repository.dart';
import 'package:book_tracker/features/books/domain/usecases/get_featured_books_usecase.dart';
import 'package:book_tracker/features/books/domain/usecases/search_books_usecase.dart';
import 'package:book_tracker/features/books/domain/usecases/get_book_by_id_usecase.dart';
import 'package:book_tracker/features/books/data/repositories/book_repository_impl.dart';
import 'package:book_tracker/features/books/data/datasources/book_remote_data_source_impl.dart';
import 'package:book_tracker/features/books/data/datasources/book_local_data_source_impl.dart';
import 'package:book_tracker/features/books/presentation/providers/books_clean_provider.dart';
import 'dart:io' as io;
import 'package:http/http.dart' as http;

void main() {
  group('Clean Architecture Integration Tests', () {
    late ProviderContainer container;
    late BookRepository bookRepository;
    late GetFeaturedBooksUseCase getFeaturedBooksUseCase;
    late SearchBooksUseCase searchBooksUseCase;
    late GetBookByIdUseCase getBookByIdUseCase;

    setUp(() {
      // Create real implementations for integration testing
      final remoteDataSource = BookRemoteDataSourceImpl(httpClient: http.Client());
      final localDataSource = BookLocalDataSourceImpl();
      
      bookRepository = BookRepositoryImpl(
        remoteDataSource: remoteDataSource,
        localDataSource: localDataSource,
      );

      getFeaturedBooksUseCase = GetFeaturedBooksUseCase(bookRepository);
      searchBooksUseCase = SearchBooksUseCase(bookRepository);
      getBookByIdUseCase = GetBookByIdUseCase(bookRepository);

      container = ProviderContainer(
        overrides: [
          booksCleanProvider.overrideWith(
            (ref) => BooksCleanNotifier(
              getFeaturedBooksUseCase: getFeaturedBooksUseCase,
              searchBooksUseCase: searchBooksUseCase,
              getBookByIdUseCase: getBookByIdUseCase,
            ),
          ),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    group('End-to-End Data Flow', () {
      test('should load featured books through complete clean architecture stack', () async {
        // Act
        await container.read(booksCleanProvider.notifier).loadFeaturedBooks();

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.isLoading, false);
        expect(state.hasError, false);
        
        // Note: In a real app, this would return actual data
        // For now, we're testing that the architecture flows correctly
        expect(state.featuredBooks, isA<List<BookEntity>>());
      });

      test('should search books through complete clean architecture stack', () async {
        // Act
        await container.read(booksCleanProvider.notifier).searchBooks('flutter');

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.isLoading, false);
        expect(state.hasError, false);
        expect(state.searchResults, isA<List<BookEntity>>());
      });

      test('should handle errors gracefully through the stack', () async {
        // Act - Search with empty query should not cause errors
        await container.read(booksCleanProvider.notifier).searchBooks('');

        // Assert
        final state = container.read(booksCleanProvider);
        expect(state.searchResults, isEmpty);
        expect(state.hasError, false);
        expect(state.isLoading, false);
      });
    });

    group('Provider Selectors', () {
      test('should provide correct state through selectors', () {
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

        // Manually set state for testing
        container.read(booksCleanProvider.notifier).state = 
            container.read(booksCleanProvider).copyWith(featuredBooks: sampleBooks);

        // Act & Assert
        final featuredBooks = container.read(featuredBooksProvider);
        final isLoading = container.read(booksLoadingProvider);
        final hasError = container.read(booksHasErrorProvider);

        expect(featuredBooks, sampleBooks);
        expect(isLoading, false);
        expect(hasError, false);
      });
    });

    group('State Management', () {
      test('should manage loading states correctly', () async {
        // Arrange
        final notifier = container.read(booksCleanProvider.notifier);
        
        // Act - Start loading
        notifier.state = notifier.state.copyWith(isLoading: true);
        
        // Assert
        expect(container.read(booksLoadingProvider), true);
        
        // Act - Stop loading
        notifier.state = notifier.state.copyWith(isLoading: false);
        
        // Assert
        expect(container.read(booksLoadingProvider), false);
      });

      test('should manage error states correctly', () {
        // Arrange
        final notifier = container.read(booksCleanProvider.notifier);
        
        // Act - Set error
        notifier.state = notifier.state.copyWith(
          hasError: true,
          errorMessage: 'Test error',
        );
        
        // Assert
        expect(container.read(booksHasErrorProvider), true);
        expect(container.read(booksErrorProvider), 'Test error');
        
        // Act - Clear error
        notifier.clearError();
        
        // Assert
        expect(container.read(booksHasErrorProvider), false);
        expect(container.read(booksErrorProvider), null);
      });
    });

    group('Data Consistency', () {
      test('should maintain data consistency across state updates', () {
        // Arrange
        final notifier = container.read(booksCleanProvider.notifier);
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

        // Act - Update featured books
        notifier.state = notifier.state.copyWith(featuredBooks: sampleBooks);
        
        // Assert - State should be consistent
        final state = container.read(booksCleanProvider);
        expect(state.featuredBooks, sampleBooks);
        expect(state.featuredBooks.length, 1);
        expect(state.featuredBooks.first.title, 'Test Book');
        expect(state.featuredBooks.first.author, 'Test Author');
      });
    });
  });
}
