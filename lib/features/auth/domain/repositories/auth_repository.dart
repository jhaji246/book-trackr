import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';
import '../failures.dart';

/// Abstract interface for authentication operations
/// This defines the contract that any auth repository implementation must follow
abstract class AuthRepository {
  /// Signs in a user with email and password
  /// Returns either a user or a failure
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs up a new user with email and password
  /// Returns either a user or a failure
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String displayName,
  });

  /// Signs in a user with Google
  /// Returns either a user or a failure
  Future<Either<Failure, UserEntity>> signInWithGoogle();

  /// Signs out the current user
  /// Returns either success or a failure
  Future<Either<Failure, void>> signOut();

  /// Gets the current authenticated user
  /// Returns either a user or a failure
  Future<Either<Failure, UserEntity?>> getCurrentUser();

  /// Sends a password reset email
  /// Returns either success or a failure
  Future<Either<Failure, void>> sendPasswordResetEmail(String email);

  /// Updates the user's password
  /// Returns either success or a failure
  Future<Either<Failure, void>> updatePassword(String newPassword);

  /// Updates the user's profile
  /// Returns either success or a failure
  Future<Either<Failure, void>> updateProfile({
    String? displayName,
    String? photoURL,
  });

  /// Deletes the current user account
  /// Returns either success or a failure
  Future<Either<Failure, void>> deleteAccount();

  /// Checks if the user is currently authenticated
  /// Returns either true/false or a failure
  Future<Either<Failure, bool>> isAuthenticated();

  /// Refreshes the user's authentication token
  /// Returns either success or a failure
  Future<Either<Failure, void>> refreshToken();

  /// Verifies the user's email
  /// Returns either success or a failure
  Future<Either<Failure, void>> verifyEmail();

  /// Sends email verification
  /// Returns either success or a failure
  Future<Either<Failure, void>> sendEmailVerification();

  /// Updates the user's email
  /// Returns either success or a failure
  Future<Either<Failure, void>> updateEmail(String newEmail);

  /// Links the user account with a credential
  /// Returns either success or a failure
  Future<Either<Failure, void>> linkWithCredential(dynamic credential);

  /// Unlinks the user account from a provider
  /// Returns either success or a failure
  Future<Either<Failure, void>> unlinkFromProvider(String providerId);

  /// Gets the user's authentication providers
  /// Returns either a list of providers or a failure
  Future<Either<Failure, List<String>>> getAuthProviders();
}
