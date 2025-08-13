import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';
import '../failures.dart';
import '../repositories/auth_repository.dart';

/// Use case for signing up a new user
class SignUpUseCase {
  final AuthRepository repository;

  const SignUpUseCase(this.repository);

  /// Execute the use case
  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      // Validate input parameters
      final validationResult = _validateSignUpData(email, password, displayName);
      return validationResult.fold(
        (failure) => Left(failure),
        (_) async => await repository.signUpWithEmailAndPassword(
          email: email.trim(),
          password: password,
          displayName: displayName.trim(),
        ),
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Sign up failed: $e'));
    }
  }

  /// Validate sign up data
  Either<Failure, void> _validateSignUpData(String email, String password, String displayName) {
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

    // Check if display name is provided
    if (displayName.trim().isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Display name is required',
        field: 'displayName',
      ));
    }

    // Validate email format
    if (!_isValidEmail(email.trim())) {
      return const Left(Failure.invalidInputFailure(
        message: 'Please enter a valid email address',
        field: 'email',
      ));
    }

    // Validate password strength
    final passwordValidation = _validatePasswordStrength(password);
    if (passwordValidation.isLeft()) {
      return passwordValidation;
    }

    // Validate display name length
    if (displayName.trim().length < 2) {
      return const Left(Failure.invalidInputFailure(
        message: 'Display name must be at least 2 characters long',
        field: 'displayName',
      ));
    }

    if (displayName.trim().length > 50) {
      return const Left(Failure.invalidInputFailure(
        message: 'Display name cannot exceed 50 characters',
        field: 'displayName',
      ));
    }

    return const Right(null);
  }

  /// Validate email format
  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  /// Validate password strength
  Either<Failure, void> _validatePasswordStrength(String password) {
    if (password.length < 8) {
      return const Left(Failure.weakPasswordFailure(
        message: 'Password must be at least 8 characters long',
      ));
    }

    if (!password.contains(RegExp(r'[A-Z]'))) {
      return const Left(Failure.weakPasswordFailure(
        message: 'Password must contain at least one uppercase letter',
      ));
    }

    if (!password.contains(RegExp(r'[a-z]'))) {
      return const Left(Failure.weakPasswordFailure(
        message: 'Password must contain at least one lowercase letter',
      ));
    }

    if (!password.contains(RegExp(r'[0-9]'))) {
      return const Left(Failure.weakPasswordFailure(
        message: 'Password must contain at least one number',
      ));
    }

    return const Right(null);
  }
}
