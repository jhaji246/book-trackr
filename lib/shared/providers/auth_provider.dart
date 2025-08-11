import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/user_model.dart';

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
    this.isLoading = false,
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
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthNotifier() : super(const AuthState()) {
    _initializeAuth();
  }

  void _initializeAuth() {
    _auth.authStateChanges().listen((User? user) {
      state = state.copyWith(
        user: user,
        isAuthenticated: user != null,
        error: null,
      );
    });
  }

  Future<void> signInWithEmail(String email, String password) async {
    try {
      _setLoadingState(true);
      _clearError();
      
      await _performEmailSignIn(email, password);
    } catch (e) {
      _handleAuthError('Email sign in failed: $e');
    } finally {
      _setLoadingState(false);
    }
  }

  Future<void> _performEmailSignIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );
  }

  Future<void> signInWithGoogle() async {
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
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      throw Exception('Google sign in was cancelled');
    }

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await _auth.signInWithCredential(credential);
  }

  Future<void> signUpWithEmail(String email, String password, String displayName) async {
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
    final userCredential = await _auth.createUserWithEmailAndPassword(
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
      _auth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  Future<void> resetPassword(String email) async {
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
    await _auth.sendPasswordResetEmail(email: email.trim());
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

  void clearError() {
    _clearError();
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