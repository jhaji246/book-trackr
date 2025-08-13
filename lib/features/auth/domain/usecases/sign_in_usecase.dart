import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';
import '../failures.dart';
import '../repositories/auth_repository.dart';

/// Use case for signing in a user with email and password
class SignInUseCase {
  final AuthRepository repository;

  const SignInUseCase(this.repository);

  /// Execute the use case
  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
  }) async {
    try {
      // Validate input parameters
      final validationResult = _validateCredentials(email, password);
      return validationResult.fold(
        (failure) => Left(failure),
        (_) async => await repository.signInWithEmailAndPassword(
          email: email.trim(),
          password: password,
        ),
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Sign in failed: $e'));
    }
  }

  /// Execute Google sign in
  Future<Either<Failure, UserEntity>> callGoogleSignIn() async {
    try {
      return await repository.signInWithGoogle();
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Google sign in failed: $e'));
    }
  }

  /// Validate email and password credentials
  Either<Failure, void> _validateCredentials(String email, String password) {
    // Check if email is provided
    if (email.trim().isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Email is required',
        field: 'email',
      ));
    }

    // Check if password is provided
    if (password.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Password is required',
        field: 'password',
      ));
    }

    // Validate email format
    if (!_isValidEmail(email.trim())) {
      return const Left(Failure.invalidInputFailure(
        message: 'Please enter a valid email address',
        field: 'email',
      ));
    }

    // Validate password length
    if (password.length < 6) {
      return const Left(Failure.invalidInputFailure(
        message: 'Password must be at least 6 characters long',
        field: 'password',
      ));
    }

    return const Right(null);
  }

  /// Check if email format is valid
  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }
}
