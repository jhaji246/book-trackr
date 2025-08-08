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

    test('should have proper state structure', () {
      // Test that we can create an AuthState
      const authState = AuthState();
      
      expect(authState.isLoading, false);
      expect(authState.user, null);
      expect(authState.error, null);
      expect(authState.isAuthenticated, false);
      expect(authState.isInitialized, false);
    });

    test('should copy state with new values', () {
      const originalState = AuthState();
      final newState = originalState.copyWith(
        isLoading: true,
        error: 'Test error',
      );
      
      expect(newState.isLoading, true);
      expect(newState.error, 'Test error');
      expect(newState.isAuthenticated, originalState.isAuthenticated);
      expect(newState.user, originalState.user);
    });

    test('should handle state equality correctly', () {
      const state1 = AuthState();
      const state2 = AuthState();
      final state3 = AuthState().copyWith(isLoading: true);
      
      expect(state1, equals(state2));
      expect(state1, isNot(equals(state3)));
    });
  });
} 