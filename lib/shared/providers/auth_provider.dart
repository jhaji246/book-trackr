import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/user_model.dart';
import 'package:flutter/foundation.dart'; // Added for debugPrint
import 'package:firebase_core/firebase_core.dart'; // Added for Firebase.app()

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
            print('Auth state changed: ${user?.email ?? 'No user'}');
            
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
                print('User authenticated successfully: ${user?.email}');
              } else {
                print('User signed out');
              }
            } else {
              // Just update loading state if no other changes
              if (state.isLoading) {
                state = state.copyWith(isLoading: false);
              }
            }
          } catch (e) {
            print('Error in auth state listener: $e');
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
          print('Auth state listener error: $error');
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
      // Handle internal Firebase errors gracefully - don't show user-facing errors for internal issues
      if (e.toString().contains('PigeonUserDetails') || 
          e.toString().contains('List<Object?>') ||
          e.toString().contains('type cast')) {
        // Don't set user-facing error for internal Firebase issues
        state = state.copyWith(isLoading: false, error: null); // Ensure error is null
      } else {
        // Only set user-facing errors for non-internal issues
        state = state.copyWith(
          error: 'Failed to initialize authentication: $e',
          isLoading: false,
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

  /// Get a helpful error message for Firebase configuration issues
  String _getFirebaseConfigErrorMessage() {
    return 'Firebase is not properly configured. Please:\n'
           '1. Copy env.example to .env\n'
           '2. Fill in your Firebase project credentials\n'
           '3. Restart the app\n\n'
           'Or run: ./scripts/setup-firebase.sh';
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

    try {
      print('Attempting email sign in for: $email');
      _setLoadingState(true);
      _clearError();
      
      await _performEmailSignIn(email, password);
      print('Email sign in completed successfully');
      
    } catch (e) {
      print('Email sign in error: $e');
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
      final userCredential = await _auth!.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      
      // If we get here, sign in was successful
      // The auth state listener will handle updating the state
      print('Sign in successful for user: ${userCredential.user?.email}');
      
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

      final userCredential = await _auth!.signInWithCredential(credential);
      
      // If we get here, sign in was successful
      print('Google sign in successful for user: ${userCredential.user?.email}');
      
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

  /// Clear all errors and reset to clean state
  void clearAllErrors() {
    state = state.copyWith(
      error: null,
      isLoading: false,
    );
  }

  /// Clear authentication error
  void clearAuthError() {
    if (state.error != null) {
      state = state.copyWith(error: null);
    }
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