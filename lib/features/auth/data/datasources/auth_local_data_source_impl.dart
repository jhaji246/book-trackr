import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/failures.dart';
import 'auth_local_data_source.dart';

/// Concrete implementation of local authentication data operations
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const String _userKey = 'cached_user';
  static const String _authStateKey = 'auth_state';
  static const String _authTokenKey = 'auth_token';
  static const String _userPreferencesKey = 'user_preferences';
  static const String _cacheExpiryKey = 'cache_expiry';

  late SharedPreferences _prefs;
  bool _isInitialized = false;

  @override
  Future<void> initialize() async {
    if (!_isInitialized) {
      _prefs = await SharedPreferences.getInstance();
      _isInitialized = true;
    }
  }

  @override
  Future<Either<Failure, void>> cacheUser(UserEntity user) async {
    try {
      if (!_isInitialized) await initialize();
      
      final userJson = {
        'uid': user.uid,
        'email': user.email,
        'displayName': user.displayName,
        'photoURL': user.photoURL,
        'createdAt': user.createdAt.toIso8601String(),
        'lastLoginAt': user.lastLoginAt.toIso8601String(),
        'emailVerified': user.emailVerified,
        'roles': user.roles,
        'preferences': user.preferences,
        'profile': user.profile,
      };
      
      await _prefs.setString(_userKey, userJson.toString());
      await _prefs.setBool(_authStateKey, true);
      await _setCacheExpiry();
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to cache user: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> getCachedUser() async {
    try {
      if (!_isInitialized) await initialize();
      
      final userString = _prefs.getString(_userKey);
      if (userString == null) return const Right(null);
      
      // For now, return null as we need to implement proper JSON parsing
      // This is a temporary fix to get the app running
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached user: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearCachedUser() async {
    try {
      if (!_isInitialized) await initialize();
      
      await _prefs.remove(_userKey);
      await _prefs.setBool(_authStateKey, false);
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to clear cached user: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> cacheAuthToken(String token) async {
    try {
      if (!_isInitialized) await initialize();
      
      await _prefs.setString(_authTokenKey, token);
      await _setCacheExpiry();
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to cache auth token: $e'));
    }
  }

  @override
  Future<Either<Failure, String?>> getCachedAuthToken() async {
    try {
      if (!_isInitialized) await initialize();
      
      return Right(_prefs.getString(_authTokenKey));
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached auth token: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearCachedAuthToken() async {
    try {
      if (!_isInitialized) await initialize();
      
      await _prefs.remove(_authTokenKey);
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to clear cached auth token: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> cacheUserPreferences(Map<String, dynamic> preferences) async {
    try {
      if (!_isInitialized) await initialize();
      
      // Convert preferences to string for storage
      final preferencesString = preferences.toString();
      await _prefs.setString(_userPreferencesKey, preferencesString);
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to cache user preferences: $e'));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>?>> getCachedUserPreferences() async {
    try {
      if (!_isInitialized) await initialize();
      
      final preferencesString = _prefs.getString(_userPreferencesKey);
      if (preferencesString == null) return const Right(null);
      
      // For now, return empty map as we need to implement proper parsing
      // This is a temporary fix to get the app running
      return const Right({});
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached user preferences: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> cacheAuthState(bool isAuthenticated) async {
    try {
      if (!_isInitialized) await initialize();
      
      await _prefs.setBool(_authStateKey, isAuthenticated);
      if (isAuthenticated) {
        await _setCacheExpiry();
      }
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to cache auth state: $e'));
    }
  }

  @override
  Future<Either<Failure, bool?>> getCachedAuthState() async {
    try {
      if (!_isInitialized) await initialize();
      
      return Right(_prefs.getBool(_authStateKey));
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cached auth state: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearAllCachedAuthData() async {
    try {
      if (!_isInitialized) await initialize();
      
      await _prefs.remove(_userKey);
      await _prefs.remove(_authStateKey);
      await _prefs.remove(_authTokenKey);
      await _prefs.remove(_userPreferencesKey);
      await _prefs.remove(_cacheExpiryKey);
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to clear all cached auth data: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> isUserDataCached() async {
    try {
      if (!_isInitialized) await initialize();
      
      final hasUser = _prefs.containsKey(_userKey);
      final hasAuthState = _prefs.containsKey(_authStateKey);
      
      return Right(hasUser && hasAuthState);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to check if user data is cached: $e'));
    }
  }

  @override
  Future<Either<Failure, DateTime?>> getCacheExpiryTime() async {
    try {
      if (!_isInitialized) await initialize();
      
      final expiryString = _prefs.getString(_cacheExpiryKey);
      if (expiryString == null) return const Right(null);
      
      return Right(DateTime.parse(expiryString));
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to get cache expiry time: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> setCacheExpiryTime(DateTime expiryTime) async {
    try {
      if (!_isInitialized) await initialize();
      
      await _prefs.setString(_cacheExpiryKey, expiryTime.toIso8601String());
      
      return const Right(null);
    } catch (e) {
      return Left(Failure.cacheFailure(message: 'Failed to set cache expiry time: $e'));
    }
  }

  Future<void> _setCacheExpiry() async {
    final expiryTime = DateTime.now().add(const Duration(hours: 24));
    await setCacheExpiryTime(expiryTime);
  }
}
