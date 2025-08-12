import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';
import '../data/datasources/book_remote_data_source.dart';
import '../data/datasources/book_remote_data_source_impl.dart';
import '../data/datasources/book_local_data_source.dart';
import '../data/datasources/book_local_data_source_impl.dart';
import '../data/repositories/book_repository_impl.dart';
import '../domain/repositories/book_repository.dart';
import '../domain/usecases/get_featured_books_usecase.dart';
import '../domain/usecases/search_books_usecase.dart';
import '../domain/usecases/get_book_by_id_usecase.dart';

/// Provider for HTTP client
final httpClientProvider = Provider<http.Client>((ref) {
  return http.Client();
});

/// Provider for BookRemoteDataSource implementation
final bookRemoteDataSourceProvider = Provider<BookRemoteDataSource>((ref) {
  final httpClient = ref.read(httpClientProvider);
  return BookRemoteDataSourceImpl(httpClient: httpClient);
});

/// Provider for BookLocalDataSource implementation
final bookLocalDataSourceProvider = Provider<BookLocalDataSource>((ref) {
  return BookLocalDataSourceImpl();
});

/// Provider for BookRepository implementation
final bookRepositoryProvider = Provider<BookRepository>((ref) {
  final remoteDataSource = ref.read(bookRemoteDataSourceProvider);
  final localDataSource = ref.read(bookLocalDataSourceProvider);
  
  return BookRepositoryImpl(
    remoteDataSource: remoteDataSource,
    localDataSource: localDataSource,
  );
});

/// Provider for GetFeaturedBooksUseCase
final getFeaturedBooksUseCaseProvider = Provider<GetFeaturedBooksUseCase>((ref) {
  final repository = ref.read(bookRepositoryProvider);
  return GetFeaturedBooksUseCase(repository);
});

/// Provider for SearchBooksUseCase
final searchBooksUseCaseProvider = Provider<SearchBooksUseCase>((ref) {
  final repository = ref.read(bookRepositoryProvider);
  return SearchBooksUseCase(repository);
});

/// Provider for GetBookByIdUseCase
final getBookByIdUseCaseProvider = Provider<GetBookByIdUseCase>((ref) {
  final repository = ref.read(bookRepositoryProvider);
  return GetBookByIdUseCase(repository);
});
