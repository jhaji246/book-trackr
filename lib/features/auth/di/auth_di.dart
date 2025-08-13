import 'package:get_it/get_it.dart';
import '../data/datasources/auth_local_data_source.dart';
import '../data/datasources/auth_local_data_source_impl.dart';
import '../data/datasources/auth_remote_data_source.dart';
import '../data/datasources/auth_remote_data_source_impl.dart';
import '../data/repositories/auth_repository_impl.dart';
import '../domain/repositories/auth_repository.dart';
import '../domain/usecases/sign_in_usecase.dart';
import '../domain/usecases/sign_up_usecase.dart';

/// Dependency injection configuration for the auth feature
class AuthDI {
  static final GetIt _getIt = GetIt.instance;

  /// Initialize all auth dependencies
  static Future<void> initialize() async {
    // Register data sources
    _getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(),
    );

    // Initialize local data source first
    final localDataSource = AuthLocalDataSourceImpl();
    await localDataSource.initialize();
    
    _getIt.registerLazySingleton<AuthLocalDataSource>(
      () => localDataSource,
    );

    // Register repository
    _getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteDataSource: _getIt<AuthRemoteDataSource>(),
        localDataSource: _getIt<AuthLocalDataSource>(),
      ),
    );

    // Register use cases
    _getIt.registerLazySingleton<SignInUseCase>(
      () => SignInUseCase(_getIt<AuthRepository>()),
    );

    _getIt.registerLazySingleton<SignUpUseCase>(
      () => SignUpUseCase(_getIt<AuthRepository>()),
    );
  }

  /// Get an instance of a registered dependency
  static T get<T extends Object>() {
    return _getIt.get<T>();
  }

  /// Check if a dependency is registered
  static bool isRegistered<T extends Object>() {
    return _getIt.isRegistered<T>();
  }

  /// Reset all registered dependencies
  static void reset() {
    _getIt.reset();
  }
}
