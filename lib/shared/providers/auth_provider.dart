import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import '../models/user.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});

class AuthState {
  final bool isLoading;
  final firebase_auth.User? user;
  final String? error;
  final bool isAuthenticated;
  final bool isInitialized;

  const AuthState({
    this.isLoading = false,
    this.user,
    this.error,
    this.isAuthenticated = false,
    this.isInitialized = false,
  });

  AuthState copyWith({
    bool? isLoading,
    firebase_auth.User? user,
    String? error,
    bool? isAuthenticated,
    bool? isInitialized,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      error: error ?? this.error,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthNotifier() : super(const AuthState()) {
    _init();
  }

  void _init() {
    // Check if user is already signed in
    final currentUser = _auth.currentUser;
    if (currentUser != null) {
      print('User already signed in: ${currentUser.email}');
      state = state.copyWith(
        user: currentUser,
        isAuthenticated: true,
        isInitialized: true,
      );
    } else {
      print('No user signed in');
      state = state.copyWith(isInitialized: true);
    }

    // Listen to auth state changes
    _auth.authStateChanges().listen((firebase_auth.User? user) {
      print('Auth state changed: ${user?.email ?? 'null'}');
      if (user != null) {
        state = state.copyWith(
          user: user,
          isAuthenticated: true,
          error: null,
          isInitialized: true,
        );
      } else {
        state = state.copyWith(
          user: null,
          isAuthenticated: false,
          error: null,
          isInitialized: true,
        );
      }
    });
  }

  // Check if user is already signed in
  bool get isUserSignedIn => _auth.currentUser != null;

  Future<void> signInWithEmail(String email, String password) async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      state = state.copyWith(
        isLoading: false,
        user: userCredential.user,
        isAuthenticated: true,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found with this email.';
          break;
        case 'wrong-password':
          errorMessage = 'Wrong password provided.';
          break;
        case 'invalid-email':
          errorMessage = 'Invalid email address.';
          break;
        case 'user-disabled':
          errorMessage = 'This account has been disabled.';
          break;
        default:
          errorMessage = 'Failed to sign in: ${e.message}';
      }
      state = state.copyWith(isLoading: false, error: errorMessage);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'An unexpected error occurred.');
    }
  }

  Future<void> signUpWithEmail(String email, String password, String displayName) async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      // Update display name
      await userCredential.user?.updateDisplayName(displayName);
      
      state = state.copyWith(
        isLoading: false,
        user: userCredential.user,
        isAuthenticated: true,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'weak-password':
          errorMessage = 'The password provided is too weak.';
          break;
        case 'email-already-in-use':
          errorMessage = 'An account already exists with this email.';
          break;
        case 'invalid-email':
          errorMessage = 'Invalid email address.';
          break;
        default:
          errorMessage = 'Failed to create account: ${e.message}';
      }
      state = state.copyWith(isLoading: false, error: errorMessage);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'An unexpected error occurred.');
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      
      if (googleUser == null) {
        state = state.copyWith(isLoading: false);
        return;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Create a new credential
      final credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the credential
      final userCredential = await _auth.signInWithCredential(credential);
      
      state = state.copyWith(
        isLoading: false,
        user: userCredential.user,
        isAuthenticated: true,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'account-exists-with-different-credential':
          errorMessage = 'An account already exists with the same email address but different sign-in credentials.';
          break;
        case 'invalid-credential':
          errorMessage = 'Invalid credentials provided.';
          break;
        case 'operation-not-allowed':
          errorMessage = 'Google Sign-In is not enabled.';
          break;
        default:
          errorMessage = 'Failed to sign in with Google: ${e.message}';
      }
      state = state.copyWith(isLoading: false, error: errorMessage);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Failed to sign in with Google.');
    }
  }

  Future<void> signOut() async {
    try {
      state = state.copyWith(isLoading: true);
      
      await Future.wait([
        _auth.signOut(),
        _googleSignIn.signOut(),
      ]);
      
      state = state.copyWith(
        isLoading: false,
        user: null,
        isAuthenticated: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to sign out.',
      );
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      await _auth.sendPasswordResetEmail(email: email);
      
      state = state.copyWith(isLoading: false);
    } on firebase_auth.FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found with this email address.';
          break;
        case 'invalid-email':
          errorMessage = 'Invalid email address.';
          break;
        default:
          errorMessage = 'Failed to send password reset email: ${e.message}';
      }
      state = state.copyWith(isLoading: false, error: errorMessage);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'An unexpected error occurred.');
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
} 