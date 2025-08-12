import 'package:dartz/dartz.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/failures.dart';

/// Abstract interface for local authentication data operations (caching)
abstract class AuthLocalDataSource {
  /// Cache user data locally
  Future<Either<Failure, void>> cacheUser(UserEntity user);

  /// Get cached user data
  Future<Either<Failure, UserEntity?>> getCachedUser();

  /// Clear cached user data
  Future<Either<Failure, void>> clearCachedUser();

  /// Cache authentication token
  Future<Either<Failure, void>> cacheAuthToken(String token);

  /// Get cached authentication token
  Future<Either<Failure, String?>> getCachedAuthToken();

  /// Clear cached authentication token
  Future<Either<Failure, void>> clearCachedAuthToken();

  /// Cache user preferences
  Future<Either<Failure, void>> cacheUserPreferences(Map<String, dynamic> preferences);

  /// Get cached user preferences
  Future<Either<Failure, Map<String, dynamic>?>> getCachedUserPreferences();

  /// Cache authentication state
  Future<Either<Failure, void>> cacheAuthState(bool isAuthenticated);

  /// Get cached authentication state
  Future<Either<Failure, bool?>> getCachedAuthState();

  /// Clear all cached authentication data
  Future<Either<Failure, void>> clearAllCachedAuthData();

  /// Check if user data is cached
  Future<Either<Failure, bool>> isUserDataCached();

  /// Get cache expiry information
  Future<Either<Failure, DateTime?>> getCacheExpiryTime();

  /// Set cache expiry time
  Future<Either<Failure, void>> setCacheExpiryTime(DateTime expiryTime);
}
