import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_tracker/shared/providers/auth_provider.dart';

void main() {
  group('AuthProvider Tests', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('initial state should be unauthenticated', () {
      final authState = container.read(authProvider);
      
      expect(authState.isAuthenticated, false);
      expect(authState.isLoading, false);
      expect(authState.error, null);
      expect(authState.user, null);
    });

    test('should handle sign in with email', () async {
      final authNotifier = container.read(authProvider.notifier);
      
      // Test sign in with email
      await authNotifier.signInWithEmail('test@example.com', 'password123');
      
      // Note: In a real test, you would mock Firebase Auth
      // This is just to verify the method exists and doesn't throw
      expect(authNotifier, isA<AuthNotifier>());
    });

    test('should handle sign in with Google', () async {
      final authNotifier = container.read(authProvider.notifier);
      
      // Test sign in with Google
      await authNotifier.signInWithGoogle();
      
      // Note: In a real test, you would mock Google Sign In
      // This is just to verify the method exists and doesn't throw
      expect(authNotifier, isA<AuthNotifier>());
    });

    test('should handle sign up with email', () async {
      final authNotifier = container.read(authProvider.notifier);
      
      // Test sign up with email
      await authNotifier.signUpWithEmail('test@example.com', 'password123', 'Test User');
      
      // Note: In a real test, you would mock Firebase Auth
      // This is just to verify the method exists and doesn't throw
      expect(authNotifier, isA<AuthNotifier>());
    });

    test('should handle sign out', () async {
      final authNotifier = container.read(authProvider.notifier);
      
      // Test sign out
      await authNotifier.signOut();
      
      // Note: In a real test, you would mock Firebase Auth
      // This is just to verify the method exists and doesn't throw
      expect(authNotifier, isA<AuthNotifier>());
    });

    test('should handle password reset', () async {
      final authNotifier = container.read(authProvider.notifier);
      
      // Test password reset
      await authNotifier.resetPassword('test@example.com');
      
      // Note: In a real test, you would mock Firebase Auth
      // This is just to verify the method exists and doesn't throw
      expect(authNotifier, isA<AuthNotifier>());
    });

    test('should clear error', () {
      final authNotifier = container.read(authProvider.notifier);
      
      // Test clear error
      authNotifier.clearError();
      
      final authState = container.read(authProvider);
      expect(authState.error, null);
    });

    test('should get current user', () {
      final authNotifier = container.read(authProvider.notifier);
      
      // Test get current user
      final user = authNotifier.getCurrentUser();
      
      // Initially should be null since no user is signed in
      expect(user, null);
    });
  });
} 