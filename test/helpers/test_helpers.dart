import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:book_tracker/shared/models/book.dart';
import 'package:book_tracker/shared/models/user.dart';

/// Test helper class for common testing utilities
class TestHelpers {
  /// Creates a test app with Riverpod
  static Widget createTestApp({
    required Widget child,
    List<Override> overrides = const [],
  }) {
    return ProviderScope(
      overrides: overrides,
      child: MaterialApp(
        home: child,
      ),
    );
  }

  /// Creates a test app with navigation
  static Widget createTestAppWithNavigation({
    required Widget child,
    List<Override> overrides = const [],
  }) {
    return ProviderScope(
      overrides: overrides,
      child: MaterialApp(
        home: Scaffold(
          body: child,
        ),
      ),
    );
  }

  /// Creates a mock book for testing
  static Book createMockBook({
    String? id,
    String? title,
    String? author,
    String? coverUrl,
  }) {
    return Book(
      id: id ?? 'test-book-1',
      title: title ?? 'Test Book',
      author: author ?? 'Test Author',
      coverUrl: coverUrl ?? 'https://example.com/cover.jpg',
      isbn: '978-0-123456-47-2',
      pageCount: 300,
      publishedDate: '2023-01-01',
      description: 'A test book for unit testing',
      genres: ['Fiction', 'Test'],
      averageRating: 4.5,
      publisher: 'Test Publisher',
      language: 'en',
      ratingCount: 100,
    );
  }

  /// Creates a mock user for testing
  static User createMockUser({
    String? id,
    String? email,
    String? displayName,
  }) {
    return User(
      id: id ?? 'test-user-1',
      email: email ?? 'test@example.com',
      displayName: displayName ?? 'Test User',
      photoUrl: null,
      createdAt: DateTime.now(),
      lastLoginAt: DateTime.now(),
      isEmailVerified: true,
    );
  }

  /// Creates a mock user book for testing
  static UserBook createMockUserBook({
    Book? book,
    BookStatus? status,
    int? rating,
    String? review,
    int? currentPage,
  }) {
    return UserBook(
      book: book ?? createMockBook(),
      status: status ?? const BookStatus.wantToRead(),
      rating: rating ?? 0,
      review: review ?? '',
      currentPage: currentPage ?? 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  /// Waits for async operations to complete
  static Future<void> pumpUntilFound(
    WidgetTester tester,
    Finder finder, {
    Duration timeout = const Duration(seconds: 5),
  }) async {
    bool timerDone = false;
    final timer = Timer(timeout, () => timerDone = true);
    while (timerDone != true) {
      await tester.pump();

      final found = tester.any(finder);
      if (found) {
        timerDone = true;
      }
    }
    timer.cancel();
  }

  /// Waits for a widget to disappear
  static Future<void> pumpUntilNotFound(
    WidgetTester tester,
    Finder finder, {
    Duration timeout = const Duration(seconds: 5),
  }) async {
    bool timerDone = false;
    final timer = Timer(timeout, () => timerDone = true);
    while (timerDone != true) {
      await tester.pump();

      final found = tester.any(finder);
      if (!found) {
        timerDone = true;
      }
    }
    timer.cancel();
  }
}

/// Mock classes for testing
class MockFirebaseAuth extends Mock {
  // Add mock methods as needed
}

class MockFirestore extends Mock {
  // Add mock methods as needed
}

class MockHiveBox extends Mock {
  // Add mock methods as needed
} 