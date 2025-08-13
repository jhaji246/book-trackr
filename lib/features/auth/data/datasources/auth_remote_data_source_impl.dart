import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/failures.dart';
import 'auth_remote_data_source.dart';

/// Concrete implementation of remote authentication data operations
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthRemoteDataSourceImpl({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
       _googleSignIn = googleSignIn ?? GoogleSignIn();

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      // Firebase is always initialized in the constructor
      
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      if (userCredential.user == null) {
        return Left(Failure.authFailure(message: 'Sign in failed: No user returned'));
      }

      final user = userCredential.user!;
      
      // Validate that the user object has the required properties
      if (user.uid.isEmpty) {
        return Left(Failure.authFailure(message: 'Sign in failed: Invalid user data'));
      }
      
      // Additional safety check for Firebase User object
      try {
        // Test basic property access to catch PigeonUserDetails errors early
        final testUid = user.uid;
        
        if (testUid.isEmpty) {
          return Left(Failure.authFailure(message: 'Sign in failed: Invalid user data'));
        }
      } catch (userAccessError) {
        // Handle PigeonUserDetails and other Firebase User access errors
        if (userAccessError.toString().contains('PigeonUserDetails') ||
            userAccessError.toString().contains('List<Object?>') ||
            userAccessError.toString().contains('type cast')) {
          return Left(Failure.authFailure(
            message: 'Authentication service error. Please try again.',
          ));
        }
        return Left(Failure.authFailure(
          message: 'Failed to access user data: $userAccessError',
        ));
      }
      
      try {
        final userEntity = _convertFirebaseUserToEntity(user);
        return Right(userEntity);
      } catch (conversionError) {
        // Handle conversion errors specifically
        if (conversionError.toString().contains('PigeonUserDetails') ||
            conversionError.toString().contains('List<Object?>') ||
            conversionError.toString().contains('type cast')) {
          return Left(Failure.authFailure(
            message: 'Authentication service error. Please try again.',
          ));
        }
        return Left(Failure.serverFailure(
          message: 'Failed to process user data: $conversionError',
        ));
      }
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
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
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      if (userCredential.user == null) {
        return Left(Failure.authFailure(message: 'Sign up failed: No user returned'));
      }

      final user = userCredential.user!;
      
      // Update display name
      await user.updateDisplayName(displayName);
      
      return Right(_convertFirebaseUserToEntity(user));
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Sign up failed: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      // Firebase is always initialized in the constructor
      
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return Left(Failure.authFailure(message: 'Google sign in was cancelled'));
      }

      final googleAuth = await googleUser.authentication;
      if (googleAuth.accessToken == null || googleAuth.idToken == null) {
        return Left(Failure.authFailure(message: 'Google authentication failed: Missing tokens'));
      }
      
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _firebaseAuth.signInWithCredential(credential);
      
      if (userCredential.user == null) {
        return Left(Failure.authFailure(message: 'Google sign in failed: No user returned'));
      }

      final user = userCredential.user!;
      
      // Validate that the user object has the required properties
      if (user.uid.isEmpty) {
        return Left(Failure.authFailure(message: 'Google sign in failed: Invalid user data'));
      }
      
      // Additional safety check for Firebase User object
      try {
        // Test basic property access to catch PigeonUserDetails errors early
        final testUid = user.uid;
        
        if (testUid.isEmpty) {
          return Left(Failure.authFailure(message: 'Google sign in failed: Invalid user data'));
        }
      } catch (userAccessError) {
        // Handle PigeonUserDetails and other Firebase User access errors
        if (userAccessError.toString().contains('PigeonUserDetails') ||
            userAccessError.toString().contains('List<Object?>') ||
            userAccessError.toString().contains('type cast')) {
          return Left(Failure.authFailure(
            message: 'Authentication service error. Please try again.',
          ));
        }
        return Left(Failure.authFailure(
          message: 'Failed to access user data: $userAccessError',
        ));
      }
      
      try {
        final userEntity = _convertFirebaseUserToEntity(user);
        return Right(userEntity);
      } catch (conversionError) {
        // Handle conversion errors specifically
        if (conversionError.toString().contains('PigeonUserDetails') ||
            conversionError.toString().contains('List<Object?>') ||
            conversionError.toString().contains('type cast')) {
          return Left(Failure.authFailure(
            message: 'Authentication service error. Please try again.',
          ));
        }
        return Left(Failure.serverFailure(
          message: 'Failed to process user data: $conversionError',
        ));
      }
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Google sign in failed: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
      return const Right(null);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Sign out failed: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> getCurrentUser() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) return const Right(null);
      
      return Right(_convertFirebaseUserToEntity(user));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get current user: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to send password reset email: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> updatePassword(String newPassword) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      await user.updatePassword(newPassword);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
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
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      await user.updateDisplayName(displayName);
      if (photoURL != null) {
        await user.updatePhotoURL(photoURL);
      }
      
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update profile: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      await user.delete();
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to delete account: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> isAuthenticated() async {
    try {
      final user = _firebaseAuth.currentUser;
      return Right(user != null);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to check authentication: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> refreshToken() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      await user.getIdToken(true);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to refresh token: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> verifyEmail() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      if (user.emailVerified) {
        return Left(Failure.authFailure(message: 'Email is already verified'));
      }
      
      await user.sendEmailVerification();
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to verify email: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> sendEmailVerification() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      await user.sendEmailVerification();
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to send email verification: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> updateEmail(String newEmail) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      await user.updateEmail(newEmail);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to update email: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> linkWithCredential(dynamic credential) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      await user.linkWithCredential(credential);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to link credential: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> unlinkFromProvider(String providerId) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      await user.unlink(providerId);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to unlink provider: $e'));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAuthProviders() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure.authFailure(message: 'No user is currently signed in'));
      }
      
      final providers = user.providerData.map((info) => info.providerId).toList();
      return Right(providers);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get auth providers: $e'));
    }
  }

  /// Convert Firebase User to UserEntity
  UserEntity _convertFirebaseUserToEntity(User user) {
    try {
      // Safely extract user metadata with null checks
      DateTime? creationTime;
      DateTime? lastSignInTime;
      
      try {
        creationTime = user.metadata.creationTime;
      } catch (e) {
        // If metadata access fails, use current time
        creationTime = DateTime.now();
      }
      
      try {
        lastSignInTime = user.metadata.lastSignInTime;
      } catch (e) {
        // If metadata access fails, use current time
        lastSignInTime = DateTime.now();
      }
      
      return UserEntity(
        uid: user.uid,
        email: user.email ?? '',
        displayName: user.displayName ?? '',
        photoURL: user.photoURL,
        createdAt: creationTime ?? DateTime.now(),
        lastLoginAt: lastSignInTime ?? DateTime.now(),
        emailVerified: user.emailVerified,
        roles: ['user'], // Default role
        preferences: {}, // Empty preferences for now
        profile: null, // No profile for now
      );
    } catch (e) {
      // If conversion fails, create a minimal user entity
      return UserEntity(
        uid: user.uid,
        email: user.email ?? '',
        displayName: user.displayName ?? '',
        photoURL: user.photoURL,
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
        emailVerified: user.emailVerified,
        roles: ['user'],
        preferences: {},
        profile: null,
      );
    }
  }

  /// Handle Firebase Auth exceptions and convert to appropriate failures
  Failure _handleFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return Failure.userNotFoundFailure(message: 'No user found with this email');
      case 'wrong-password':
        return Failure.invalidCredentialsFailure(message: 'Wrong password');
      case 'email-already-in-use':
        return Failure.emailAlreadyInUseFailure(message: 'Email is already in use');
      case 'weak-password':
        return Failure.weakPasswordFailure(message: 'Password is too weak');
      case 'invalid-email':
        return Failure.invalidEmailFailure(message: 'Invalid email address');
      case 'too-many-requests':
        return Failure.tooManyRequestsFailure(message: 'Too many requests. Please try again later');
      case 'user-disabled':
        return Failure.accountDisabledFailure(message: 'Account has been disabled');
      case 'operation-not-allowed':
        return Failure.operationNotAllowedFailure(message: 'Operation not allowed');
      case 'requires-recent-login':
        return Failure.requiresRecentLoginFailure(message: 'Please sign in again to continue');
      default:
        return Failure.authFailure(message: e.message ?? 'Authentication failed');
    }
  }
}
