import 'package:dartz/dartz.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/failures.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_data_source.dart';
import '../datasources/auth_remote_data_source.dart';

/// Concrete implementation of AuthRepository
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  const AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      // Attempt to sign in with remote data source
      final result = await _remoteDataSource.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // If successful, cache the user data
      result.fold(
        (failure) => null,
        (user) async {
          await _localDataSource.cacheUser(user);
          await _localDataSource.cacheAuthState(true);
        },
      );

      return result;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Sign in failed: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      // Attempt to sign up with remote data source
      final result = await _remoteDataSource.signUpWithEmailAndPassword(
        email: email,
        password: password,
        displayName: displayName,
      );

      // If successful, cache the user data
      result.fold(
        (failure) => null,
        (user) async {
          await _localDataSource.cacheUser(user);
          await _localDataSource.cacheAuthState(true);
        },
      );

      return result;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Sign up failed: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      // Attempt to sign in with Google
      final result = await _remoteDataSource.signInWithGoogle();

      // If successful, cache the user data
      result.fold(
        (failure) => null,
        (user) async {
          await _localDataSource.cacheUser(user);
          await _localDataSource.cacheAuthState(true);
        },
      );

      return result;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Google sign in failed: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      // Sign out from remote data source
      final result = await _remoteDataSource.signOut();

      // Clear local cache regardless of remote result
      await _localDataSource.clearAllCachedAuthData();

      return result;
    } catch (e) {
      // Even if remote sign out fails, clear local cache
      await _localDataSource.clearAllCachedAuthData();
      return Left(Failure.serverFailure(message: 'Sign out failed: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> getCurrentUser() async {
    try {
      // First try to get from local cache
      final cachedUser = await _localDataSource.getCachedUser();
      
      if (cachedUser.isRight() && cachedUser.getOrElse(() => null) != null) {
        return cachedUser;
      }

      // If no cached user, try to get from remote
      final remoteUser = await _remoteDataSource.getCurrentUser();
      
      // If remote user exists, cache it
      remoteUser.fold(
        (failure) => null,
        (user) async {
          if (user != null) {
            await _localDataSource.cacheUser(user);
            await _localDataSource.cacheAuthState(true);
          }
        },
      );

      return remoteUser;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get current user: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> sendPasswordResetEmail(String email) async {
    try {
      return await _remoteDataSource.sendPasswordResetEmail(email);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to send password reset email: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> updatePassword(String newPassword) async {
    try {
      return await _remoteDataSource.updatePassword(newPassword);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update password: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> updateProfile({
    String? displayName,
    String? photoURL,
  }) async {
    try {
      final result = await _remoteDataSource.updateProfile(
        displayName: displayName,
        photoURL: photoURL,
      );

      // If successful, update cached user data
      result.fold(
        (failure) => null,
        (_) async {
          final currentUser = await _localDataSource.getCachedUser();
          if (currentUser.isRight() && currentUser.getOrElse(() => null) != null) {
            final user = currentUser.getOrElse(() => null)!;
            final updatedUser = UserEntity(
              uid: user.uid,
              email: user.email,
              displayName: displayName ?? user.displayName,
              photoURL: photoURL ?? user.photoURL,
              createdAt: user.createdAt,
              lastLoginAt: user.lastLoginAt,
              emailVerified: user.emailVerified,
              roles: user.roles,
              preferences: user.preferences,
              profile: user.profile,
            );
            await _localDataSource.cacheUser(updatedUser);
          }
        },
      );

      return result;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update profile: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    try {
      final result = await _remoteDataSource.deleteAccount();
      
      // Clear local cache regardless of remote result
      await _localDataSource.clearAllCachedAuthData();
      
      return result;
    } catch (e) {
      // Even if remote delete fails, clear local cache
      await _localDataSource.clearAllCachedAuthData();
      return Left(Failure.serverFailure(message: 'Failed to delete account: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> isAuthenticated() async {
    try {
      // First check local cache
      final cachedState = await _localDataSource.getCachedAuthState();
      if (cachedState.isRight() && cachedState.getOrElse(() => null) != null) {
        return cachedState;
      }

      // If no cached state, check remote
      final remoteState = await _remoteDataSource.isAuthenticated();
      
      // Cache the result
      remoteState.fold(
        (failure) => null,
        (isAuth) async {
          await _localDataSource.cacheAuthState(isAuth);
        },
      );

      return remoteState;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to check authentication: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> refreshToken() async {
    try {
      return await _remoteDataSource.refreshToken();
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to refresh token: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> verifyEmail() async {
    try {
      return await _remoteDataSource.verifyEmail();
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to verify email: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> sendEmailVerification() async {
    try {
      return await _remoteDataSource.sendEmailVerification();
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to send email verification: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> updateEmail(String newEmail) async {
    try {
      final result = await _remoteDataSource.updateEmail(newEmail);
      
      // If successful, update cached user data
      result.fold(
        (failure) => null,
        (_) async {
          final currentUser = await _localDataSource.getCachedUser();
          if (currentUser.isRight() && currentUser.getOrElse(() => null) != null) {
            final user = currentUser.getOrElse(() => null)!;
            final updatedUser = UserEntity(
              uid: user.uid,
              email: newEmail,
              displayName: user.displayName,
              photoURL: user.photoURL,
              createdAt: user.createdAt,
              lastLoginAt: user.lastLoginAt,
              emailVerified: false, // Email verification required for new email
              roles: user.roles,
              preferences: user.preferences,
              profile: user.profile,
            );
            await _localDataSource.cacheUser(updatedUser);
          }
        },
      );

      return result;
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update email: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> linkWithCredential(dynamic credential) async {
    try {
      return await _remoteDataSource.linkWithCredential(credential);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to link credential: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> unlinkFromProvider(String providerId) async {
    try {
      return await _remoteDataSource.unlinkFromProvider(providerId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to unlink provider: $e'));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAuthProviders() async {
    try {
      return await _remoteDataSource.getAuthProviders();
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get auth providers: $e'));
    }
  }
}
