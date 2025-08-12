import 'package:get_it/get_it.dart';
import '../data/datasources/meeting_local_data_source.dart';
import '../data/datasources/meeting_local_data_source_impl.dart';
import '../data/datasources/meeting_remote_data_source.dart';
import '../data/datasources/meeting_remote_data_source_impl.dart';
import '../data/repositories/meeting_repository_impl.dart';
import '../domain/repositories/meeting_repository.dart';
import '../domain/usecases/create_meeting_usecase.dart';
import '../domain/usecases/get_meetings_usecase.dart';

/// Dependency injection configuration for the meetings feature
class MeetingsDI {
  static final GetIt _getIt = GetIt.instance;

  /// Initialize all dependencies for the meetings feature
  static Future<void> initialize() async {
    // Data Sources
    _getIt.registerLazySingleton<MeetingRemoteDataSource>(
      () => MeetingRemoteDataSourceImpl(),
    );

    _getIt.registerLazySingletonAsync<MeetingLocalDataSource>(
      () async {
        final localDataSource = MeetingLocalDataSourceImpl();
        await localDataSource.initialize();
        return localDataSource;
      },
    );

    // Repository
    _getIt.registerLazySingleton<MeetingRepository>(
      () => MeetingRepositoryImpl(
        remoteDataSource: _getIt<MeetingRemoteDataSource>(),
        localDataSource: _getIt<MeetingLocalDataSource>(),
      ),
    );

    // Use Cases
    _getIt.registerLazySingleton<CreateMeetingUseCase>(
      () => CreateMeetingUseCase(_getIt<MeetingRepository>()),
    );

    _getIt.registerLazySingleton<GetMeetingsUseCase>(
      () => GetMeetingsUseCase(_getIt<MeetingRepository>()),
    );
  }

  /// Get a dependency instance
  static T get<T extends Object>() {
    return _getIt<T>();
  }

  /// Check if a dependency is registered
  static bool isRegistered<T extends Object>() {
    return _getIt.isRegistered<T>();
  }

  /// Reset all meetings dependencies (useful for testing)
  static Future<void> reset() async {
    if (_getIt.isRegistered<MeetingLocalDataSource>()) {
      final localDataSource = _getIt<MeetingLocalDataSource>();
      await localDataSource.clearAllCachedMeetings();
    }
    
    await _getIt.reset();
  }

  /// Initialize local data source (useful for testing)
  static Future<void> initializeLocalDataSource() async {
    if (_getIt.isRegistered<MeetingLocalDataSource>()) {
      final localDataSource = _getIt<MeetingLocalDataSource>();
      await localDataSource.initialize();
    }
  }
}
