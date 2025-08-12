import 'package:dartz/dartz.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/failures.dart';

/// Abstract interface for remote authentication data operations
abstract class AuthRemoteDataSource {
  /// Signs in a user with email and password
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs up a new user with email and password
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String displayName,
  });

  /// Signs in a user with Google
  Future<Either<Failure, UserEntity>> signInWithGoogle();

  /// Signs out the current user
  Future<Either<Failure, void>> signOut();

  /// Gets the current authenticated user
  Future<Either<Failure, UserEntity?>> getCurrentUser();

  /// Sends a password reset email
  Future<Either<Failure, void>> sendPasswordResetEmail(String email);

  /// Updates the user's password
  Future<Either<Failure, void>> updatePassword(String newPassword);

  /// Updates the user's profile
  Future<Either<Failure, void>> updateProfile({
    String? displayName,
    String? photoURL,
  });

  /// Deletes the current user account
  Future<Either<Failure, void>> deleteAccount();

  /// Checks if the user is currently authenticated
  Future<Either<Failure, bool>> isAuthenticated();

  /// Refreshes the user's authentication token
  Future<Either<Failure, void>> refreshToken();

  /// Verifies the user's email
  Future<Either<Failure, void>> verifyEmail();

  /// Sends email verification
  Future<Either<Failure, void>> sendEmailVerification();

  /// Updates the user's email
  Future<Either<Failure, void>> updateEmail(String newEmail);

  /// Links the user account with a credential
  Future<Either<Failure, void>> linkWithCredential(dynamic credential);

  /// Unlinks the user account from a provider
  Future<Either<Failure, void>> unlinkFromProvider(String providerId);

  /// Gets the user's authentication providers
  Future<Either<Failure, List<String>>> getAuthProviders();
}
