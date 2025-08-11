import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/user_model.dart';
import 'package:flutter/foundation.dart'; // Added for debugPrint

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
      debugPrint('AuthProvider: Starting authentication initialization...');
      _auth = FirebaseAuth.instance;
      _googleSignIn = GoogleSignIn();
      
      // Set up auth state listener with error handling
      _auth!.authStateChanges().listen(
        (User? user) {
          try {
            debugPrint('AuthProvider: Auth state changed - User: ${user?.uid ?? 'null'}');
            state = state.copyWith(
              user: user,
              isAuthenticated: user != null,
              error: null, // Clear any previous errors
              isLoading: false, // Auth is now initialized
            );
            debugPrint('AuthProvider: State updated - isAuthenticated: ${state.isAuthenticated}, isLoading: ${state.isLoading}');
          } catch (e) {
            debugPrint('AuthProvider: Error in auth state listener: $e');
            // Handle internal Firebase errors gracefully - don't show user-facing errors for internal issues
            if (e.toString().contains('PigeonUserDetails') || 
                e.toString().contains('List<Object?>') ||
                e.toString().contains('type cast')) {
              debugPrint('Firebase type casting error in listener (handled gracefully): $e');
              // Don't set user-facing error for internal Firebase issues
              state = state.copyWith(
                isLoading: false,
                // Keep existing error state if any, don't override with internal errors
              );
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
          debugPrint('AuthProvider: Auth state listener error: $error');
          // Handle Firebase internal errors gracefully - don't show user-facing errors for internal issues
          if (error.toString().contains('PigeonUserDetails') || 
              error.toString().contains('List<Object?>') ||
              error.toString().contains('type cast')) {
            debugPrint('Firebase type casting error in listener (handled gracefully): $error');
            // Don't set user-facing error for internal Firebase issues
            state = state.copyWith(
              isLoading: false,
              // Keep existing error state if any, don't override with internal errors
            );
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
          debugPrint('AuthProvider: Timeout reached, forcing loading to false');
          state = state.copyWith(isLoading: false);
        }
      });
      
      debugPrint('AuthProvider: Authentication initialization completed successfully');
    } catch (e) {
      debugPrint('AuthProvider: Authentication initialization failed: $e');
      state = state.copyWith(
        error: 'Failed to initialize authentication: $e',
        isLoading: false,
      );
    }
  }

  Future<void> signInWithEmail(String email, String password) async {
    if (_auth == null) {
      _handleAuthError('Authentication not initialized');
      return;
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
          debugPrint('Firebase type casting error: $e');
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
      await _auth!.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
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
          default:
            // Handle PigeonUserDetails and other Firebase-specific errors
            if (e.message?.contains('PigeonUserDetails') == true || 
                e.message?.contains('type cast') == true ||
                e.message?.contains('List<Object?>') == true) {
              // For internal Firebase errors, provide a more helpful message
              errorMessage = 'Sign in temporarily unavailable. Please try again in a moment.';
              debugPrint('Firebase type casting error: $e');
            } else {
              errorMessage = 'Sign in failed: ${e.message ?? e.code}';
            }
        }
      } else {
        // Handle non-Firebase errors, including the specific PigeonUserDetails error
        if (e.toString().contains('PigeonUserDetails') || 
            e.toString().contains('List<Object?>') ||
            e.toString().contains('type cast')) {
          // For internal Firebase errors, provide a more helpful message
          errorMessage = 'Sign in temporarily unavailable. Please try again in a moment.';
          debugPrint('Firebase type casting error: $e');
        } else {
          errorMessage = 'Sign in failed: $e';
        }
      }
      
      // Instead of throwing a new exception, return the error message
      // This will be handled by the calling method
      throw FirebaseAuthException(
        code: 'custom-error',
        message: errorMessage,
      );
    }
  }

  Future<void> signInWithGoogle() async {
    if (_auth == null || _googleSignIn == null) {
      _handleAuthError('Authentication not initialized');
      return;
    }

    try {
      _setLoadingState(true);
      _clearError();
      
      await _performGoogleSignIn();
    } catch (e) {
      _handleAuthError('Google sign in failed: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performGoogleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn!.signIn();
      if (googleUser == null) {
        throw Exception('Google sign in was cancelled');
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth!.signInWithCredential(credential);
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
            // Handle PigeonUserDetails and other Firebase-specific errors
            if (e.message?.contains('PigeonUserDetails') == true || 
                e.message?.contains('type cast') == true) {
              errorMessage = 'Authentication service error. Please try again';
              debugPrint('Firebase type casting error: $e');
            } else {
              errorMessage = 'Google sign in failed: ${e.message ?? e.code}';
            }
        }
      } else if (e.toString().contains('network_error')) {
        errorMessage = 'Network error. Please check your connection';
      } else if (e.toString().contains('cancelled')) {
        errorMessage = 'Google sign in was cancelled';
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

  /// Clear error when user starts typing or takes action
  void clearAuthError() {
    if (state.error != null) {
      state = state.copyWith(error: null);
      debugPrint('AuthProvider: Error cleared');
    }
  }

  /// Clear any persistent errors and reset to clean state
  void clearAllErrors() {
    state = state.copyWith(error: null);
    debugPrint('AuthProvider: All errors cleared');
  }

  /// Clear error when user starts typing or takes action
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