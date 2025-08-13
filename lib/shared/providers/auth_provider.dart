import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/user_model.dart';
import 'package:firebase_core/firebase_core.dart'; // Added for Firebase.app()
import '../../core/app_initializer.dart'; // Added for AppInitializer
import '../../features/auth/di/auth_di.dart';
import '../../features/auth/domain/usecases/sign_in_usecase.dart';
import '../../features/auth/domain/usecases/sign_up_usecase.dart';
import '../../features/auth/domain/failures.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});

class AuthState {
  final User? user;
  final bool isLoading;
  final String? error;
  final bool isAuthenticated;

  const AuthState({
    this.user,
    this.isLoading = true, // Start with loading true
    this.error,
    this.isAuthenticated = false,
  });

  AuthState copyWith({
    User? user,
    bool? isLoading,
    String? error,
    bool? isAuthenticated,
  }) {
    return AuthState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  FirebaseAuth? _auth;
  GoogleSignIn? _googleSignIn;

  AuthNotifier() : super(const AuthState()) {
    // Don't initialize auth immediately - wait for Firebase to be ready
  }

  /// Initialize auth after Firebase is ready
  Future<void> initializeAuth() async {
    try {
      // Check if Firebase is properly configured first
      if (!_isFirebaseAvailable()) {
        state = state.copyWith(
          isLoading: false,
          error: null, // Don't show error immediately, only when auth is attempted
        );
        return;
      }

      _auth = FirebaseAuth.instance;
      _googleSignIn = GoogleSignIn();
      
      // Set up auth state listener with error handling
      _auth!.authStateChanges().listen(
        (User? user) {
          try {
            // Only update state if there's an actual change to prevent unnecessary rebuilds
            final newIsAuthenticated = user != null;
            if (state.isAuthenticated != newIsAuthenticated || state.user?.uid != user?.uid) {
              state = state.copyWith(
                user: user,
                isAuthenticated: newIsAuthenticated,
                error: null, // Clear any previous errors on successful auth
                isLoading: false, // Auth is now initialized
              );
              
              if (newIsAuthenticated) {
                // User authenticated successfully
              } else {
                // User signed out
              }
            } else {
              // Just update loading state if no other changes
              if (state.isLoading) {
                state = state.copyWith(isLoading: false);
              }
            }
          } catch (e) {
            // Handle internal Firebase errors gracefully - don't show user-facing errors for internal issues
            if (e.toString().contains('PigeonUserDetails') || 
                e.toString().contains('List<Object?>') ||
                e.toString().contains('type cast')) {
              // Don't set user-facing error for internal Firebase issues
              if (state.isLoading) {
                state = state.copyWith(isLoading: false, error: null); // Ensure error is null
              }
            } else {
              // Only set user-facing errors for non-internal issues
              state = state.copyWith(
                error: 'Authentication error: $e',
                isLoading: false,
              );
            }
          }
        },
        onError: (error) {
          // Handle Firebase internal errors gracefully - don't show user-facing errors for internal issues
          if (error.toString().contains('PigeonUserDetails') || 
              error.toString().contains('List<Object?>') ||
              error.toString().contains('type cast')) {
            // Don't set user-facing error for internal Firebase issues
            if (state.isLoading) {
              state = state.copyWith(isLoading: false, error: null); // Ensure error is null
            }
          } else {
            // Only set user-facing errors for non-internal issues
            state = state.copyWith(
              error: 'Authentication error: $error',
              isLoading: false,
            );
          }
        },
      );
      
      // Add a timeout to prevent infinite loading
      Future.delayed(const Duration(seconds: 10), () {
        if (state.isLoading) {
          state = state.copyWith(isLoading: false, error: null); // Ensure error is null
        }
      });
      
    } catch (e) {
      // Handle initialization errors gracefully
      if (e.toString().contains('Firebase configuration is incomplete') ||
          e.toString().contains('Firebase not configured')) {
        // Firebase is not configured - this is expected in development
        state = state.copyWith(
          isLoading: false,
          error: null, // Don't show error for missing Firebase config
        );
      } else if (e.toString().contains('PigeonUserDetails') || 
                 e.toString().contains('List<Object?>') ||
                 e.toString().contains('type cast')) {
        // Don't set user-facing error for internal Firebase issues
        state = state.copyWith(
          isLoading: false,
          error: null,
        );
      } else {
        // For other initialization errors, show a helpful message
        state = state.copyWith(
          isLoading: false,
          error: 'Authentication service not available. Please check your connection and try again.',
        );
      }
    }
  }

  /// Check if Firebase is available and properly configured
  bool _isFirebaseAvailable() {
    try {
      // Try to access Firebase to see if it's initialized
      Firebase.app();
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Check if the authentication service is ready
  bool _isAuthServiceReady() {
    return AuthDI.isRegistered<SignInUseCase>() && 
           AuthDI.isRegistered<SignUpUseCase>();
  }

  /// Wait for the authentication service to be ready
  Future<bool> _waitForAuthServiceReady({int maxRetries = 3, int delayMs = 500}) async {
    for (int i = 0; i < maxRetries; i++) {
      if (_isAuthServiceReady()) {
        return true;
      }
      await Future.delayed(Duration(milliseconds: delayMs));
    }
    return false;
  }

  /// Get a helpful error message for Firebase configuration issues
  String _getFirebaseConfigErrorMessage() {
    if (!AppInitializer.isFirebaseConfigured) {
      return 'Firebase is not properly configured. Please check your configuration.';
    }
    
    if (!AppInitializer.isFirebaseInitialized) {
      return 'Firebase failed to initialize. Please check your connection and try again.';
    }
    
    return 'Firebase is not available. Please try again later.';
  }

  Future<void> signInWithEmail(String email, String password) async {
    if (!_isFirebaseAvailable()) {
      _handleAuthError(_getFirebaseConfigErrorMessage());
      return;
    }

    if (_auth == null) {
      _handleAuthError('Authentication not initialized');
      return;
    }

    // Wait for auth service to be ready
    if (!_isAuthServiceReady()) {
      final isReady = await _waitForAuthServiceReady();
      if (!isReady) {
        _handleAuthError('Authentication service not ready. Please try again.');
        return;
      }
    }

    try {
  
      _setLoadingState(true);
      _clearError();
      
      await _performEmailSignIn(email, password);
      
      
    } catch (e) {

      // Handle the error based on its type
      if (e is FirebaseAuthException) {
        if (e.code == 'custom-error') {
          // This is our custom error message from _performEmailSignIn
          _handleAuthError(e.message ?? 'Sign in failed');
        } else {
          // This is a standard Firebase error
          _handleAuthError('Sign in failed: ${e.message ?? e.code}');
        }
      } else {
        // Handle other types of errors
        String errorMessage = 'Email sign in failed';
        if (e.toString().contains('PigeonUserDetails') || 
            e.toString().contains('List<Object?>') ||
            e.toString().contains('type cast')) {
          errorMessage = 'Authentication service error. Please try again';
        } else if (e.toString().contains('Firebase configuration is incomplete') ||
                   e.toString().contains('Firebase not configured')) {
          errorMessage = 'Firebase is not configured. Please check your configuration.';
        } else if (e.toString().contains('network') || e.toString().contains('connection')) {
          errorMessage = 'Network error. Please check your connection and try again.';
        } else if (e.toString().contains('google-services.json') || 
                   e.toString().contains('GoogleServicesJson')) {
          errorMessage = 'Google Services configuration error. Please check your setup.';
        } else if (e.toString().contains('permission') || e.toString().contains('denied')) {
          errorMessage = 'Permission denied. Please check your app permissions.';
        } else {
          errorMessage = 'Sign in failed: $e';
        }
        _handleAuthError(errorMessage);
      }
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performEmailSignIn(String email, String password) async {
    try {
      // Check if DI is initialized
      if (!AuthDI.isRegistered<SignInUseCase>()) {
        _handleAuthError('Authentication service not ready. Please try again.');
        return;
      }
      
      // Use the DI-based sign in use case
      final signInUseCase = AuthDI.get<SignInUseCase>();
      final result = await signInUseCase.call(
        email: email.trim(),
        password: password,
      );
      
      result.fold(
        (failure) {
          // Handle failure
          String errorMessage = 'Sign in failed';
          if (failure is InvalidCredentialsFailure) {
            errorMessage = 'Invalid email or password';
          } else if (failure is UserNotFoundFailure) {
            errorMessage = 'No user found with this email address';
          } else if (failure is AccountDisabledFailure) {
            errorMessage = 'This account has been disabled';
          } else if (failure is TooManyRequestsFailure) {
            errorMessage = 'Too many failed attempts. Please try again later';
          } else if (failure is InvalidEmailFailure) {
            errorMessage = 'Invalid email address';
          } else {
            errorMessage = failure.message;
          }
          _handleAuthError(errorMessage);
        },
        (user) {
          // Sign in successful - the auth state listener will handle updating the state
        },
      );
      
    } catch (e) {
      // Handle specific Firebase Auth errors
      String errorMessage = 'Email sign in failed';
      
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case 'user-not-found':
            errorMessage = 'No user found with this email address';
            break;
          case 'wrong-password':
            errorMessage = 'Incorrect password';
            break;
          case 'invalid-email':
            errorMessage = 'Invalid email address';
            break;
          case 'user-disabled':
            errorMessage = 'This account has been disabled';
            break;
          case 'too-many-requests':
            errorMessage = 'Too many failed attempts. Please try again later';
            break;
          case 'network-request-failed':
            errorMessage = 'Network error. Please check your connection';
            break;
          case 'invalid-credential':
            errorMessage = 'Invalid email or password';
            break;
          case 'operation-not-allowed':
            errorMessage = 'Email/password sign in is not enabled';
            break;
          default:
            // For other Firebase errors, provide the actual error message
            errorMessage = 'Sign in failed: ${e.message ?? e.code}';
        }
      } else {
        // Handle non-Firebase errors
        if (e.toString().contains('PigeonUserDetails') || 
            e.toString().contains('List<Object?>') ||
            e.toString().contains('type cast')) {
          errorMessage = 'Authentication service error. Please try again';
        } else {
          errorMessage = 'Sign in failed: $e';
        }
      }
      
      // Throw the error with the proper message
      throw FirebaseAuthException(
        code: 'custom-error',
        message: errorMessage,
      );
    }
  }

  Future<void> signInWithGoogle() async {
    if (!_isFirebaseAvailable()) {
      _handleAuthError(_getFirebaseConfigErrorMessage());
      return;
    }

    if (_auth == null || _googleSignIn == null) {
      _handleAuthError('Authentication not initialized');
      return;
    }

    // Wait for auth service to be ready
    if (!_isAuthServiceReady()) {
      final isReady = await _waitForAuthServiceReady();
      if (!isReady) {
        _handleAuthError('Authentication service not ready. Please try again.');
        return;
      }
    }

    try {
      _setLoadingState(true);
      _clearError();
      
      await _performGoogleSignIn();
    } catch (e) {
      // Don't show error for user cancellation - this is normal behavior
      if (e.toString().contains('cancelled') || e.toString().contains('Google sign in was cancelled')) {
        // User cancelled the sign-in process - this is not an error
        _clearError();
        return;
      }
      _handleAuthError('Google sign in failed: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performGoogleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn!.signIn();
      if (googleUser == null) {
        // User cancelled the sign-in process - this is normal, not an error
        return;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth!.signInWithCredential(credential);
      
      // If we get here, sign in was successful
      
      
    } catch (e) {
      // Handle specific Google Sign-In and Firebase errors
      String errorMessage = 'Google sign in failed';
      
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case 'account-exists-with-different-credential':
            errorMessage = 'An account already exists with this email using a different sign-in method';
            break;
          case 'invalid-credential':
            errorMessage = 'Invalid Google credentials. Please try again';
            break;
          case 'operation-not-allowed':
            errorMessage = 'Google sign in is not enabled for this app';
            break;
          case 'user-disabled':
            errorMessage = 'This account has been disabled';
            break;
          case 'network-request-failed':
            errorMessage = 'Network error. Please check your connection';
            break;
          default:
            // For other Firebase errors, provide the actual error message
            errorMessage = 'Google sign in failed: ${e.message ?? e.code}';
        }
      } else if (e.toString().contains('network_error')) {
        errorMessage = 'Network error. Please check your connection';
      } else if (e.toString().contains('cancelled')) {
        // User cancellation is not an error - just return
        return;
      } else {
        errorMessage = 'Google sign in failed: $e';
      }
      
      throw Exception(errorMessage);
    }
  }

  Future<void> signUpWithEmail(String email, String password, String displayName) async {
    if (_auth == null) {
      _handleAuthError('Authentication not initialized');
      return;
    }

    try {
      _setLoadingState(true);
      _clearError();
      
      await _performEmailSignUp(email, password, displayName);
    } catch (e) {
      _handleAuthError('Email sign up failed: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performEmailSignUp(String email, String password, String displayName) async {
    final userCredential = await _auth!.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );

    await _updateUserProfile(userCredential.user, displayName);
  }

  Future<void> _updateUserProfile(User? user, String displayName) async {
    if (user != null) {
      await user.updateDisplayName(displayName);
    }
  }

  Future<void> signOut() async {
    if (_auth == null || _googleSignIn == null) {
      _handleAuthError('Authentication not initialized');
      return;
    }

    try {
      _setLoadingState(true);
      _clearError();
      
      await _performSignOut();
    } catch (e) {
      _handleAuthError('Sign out failed: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performSignOut() async {
    await Future.wait([
      _auth!.signOut(),
      _googleSignIn!.signOut(),
    ]);
  }

  Future<void> resetPassword(String email) async {
    if (_auth == null) {
      _handleAuthError('Authentication not initialized');
      return;
    }

    try {
      _setLoadingState(true);
      _clearError();
      
      await _performPasswordReset(email);
    } catch (e) {
      _handleAuthError('Password reset failed: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performPasswordReset(String email) async {
    await _auth!.sendPasswordResetEmail(email: email.trim());
  }

  void _setLoadingState(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void _clearError() {
    state = state.copyWith(error: null);
  }

  void _handleAuthError(String errorMessage) {
    state = state.copyWith(error: errorMessage);
  }

  /// Clear authentication error
  void clearAuthError() {
    state = state.copyWith(error: null);
  }

  /// Clear all errors and reset state
  void clearAllErrors() {
    state = state.copyWith(error: null, isLoading: false);
  }

  /// Clear error (alias for clearAuthError)
  void clearError() {
    clearAuthError();
  }

  UserModel? getCurrentUser() {
    final user = state.user;
    if (user == null) return null;

    return UserModel(
      id: user.uid,
      email: user.email ?? '',
      displayName: user.displayName ?? '',
      photoURL: user.photoURL,
      isEmailVerified: user.emailVerified,
    );
  }
} 