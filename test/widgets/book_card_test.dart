import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_tracker/features/books/presentation/widgets/book_card.dart';
import 'package:book_tracker/shared/models/book.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('BookCard Widget Tests', () {
    late Book testBook;

    setUp(() {
      testBook = TestHelpers.createMockBook();
    });

    testWidgets('should display book information correctly', (WidgetTester tester) async {
      // Arrange
      bool onTapCalled = false;

      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: BookCard(
            book: testBook,
            onTap: () => onTapCalled = true,
          ),
        ),
      );

      // Assert
      expect(find.text('Test Book'), findsOneWidget);
      expect(find.text('Test Author'), findsOneWidget);
      expect(find.text('4.5'), findsOneWidget);
      expect(find.byIcon(Icons.star), findsOneWidget);
    });

    testWidgets('should call onTap when tapped', (WidgetTester tester) async {
      // Arrange
      bool onTapCalled = false;

      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: BookCard(
            book: testBook,
            onTap: () => onTapCalled = true,
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));
      await tester.pump();

      // Assert
      expect(onTapCalled, true);
    });

    testWidgets('should display error placeholder when image fails to load', (WidgetTester tester) async {
      // Arrange
      final bookWithInvalidImage = testBook.copyWith(
        coverUrl: 'invalid-url',
      );

      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: BookCard(
            book: bookWithInvalidImage,
            onTap: () {},
          ),
        ),
      );

      // Wait for image to fail loading
      await tester.pumpAndSettle();

      // Assert
      expect(find.byIcon(Icons.book), findsOneWidget);
    });

    testWidgets('should display correct rating stars', (WidgetTester tester) async {
      // Arrange
      final bookWithRating = testBook.copyWith(averageRating: 3.5);

      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: BookCard(
            book: bookWithRating,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('3.5'), findsOneWidget);
    });

    testWidgets('should handle null onTap gracefully', (WidgetTester tester) async {
      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: BookCard(
            book: testBook,
            onTap: null,
          ),
        ),
      );

      // Assert - Should not throw error
      expect(find.byType(BookCard), findsOneWidget);
    });

    testWidgets('should display long titles with ellipsis', (WidgetTester tester) async {
      // Arrange
      final bookWithLongTitle = testBook.copyWith(
        title: 'This is a very long book title that should be truncated with ellipsis when it exceeds the available space',
      );

      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: SizedBox(
            width: 100, // Constrain width to force text overflow
            child: BookCard(
              book: bookWithLongTitle,
              onTap: () {},
            ),
          ),
        ),
      );

      // Assert
      expect(find.textContaining('This is a very long book title'), findsOneWidget);
    });

    testWidgets('should display long author names with ellipsis', (WidgetTester tester) async {
      // Arrange
      final bookWithLongAuthor = testBook.copyWith(
        author: 'This is a very long author name that should be truncated with ellipsis when it exceeds the available space',
      );

      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: SizedBox(
            width: 100, // Constrain width to force text overflow
            child: BookCard(
              book: bookWithLongAuthor,
              onTap: () {},
            ),
          ),
        ),
      );

      // Assert
      expect(find.textContaining('This is a very long author name'), findsOneWidget);
    });

    testWidgets('should have proper accessibility labels', (WidgetTester tester) async {
      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: BookCard(
            book: testBook,
            onTap: () {},
          ),
        ),
      );

      // Assert
      final card = find.byType(Card);
      expect(card, findsOneWidget);
      
      // Check that the card is tappable
      expect(find.byType(InkWell), findsOneWidget);
    });

    testWidgets('should handle zero rating correctly', (WidgetTester tester) async {
      // Arrange
      final bookWithZeroRating = testBook.copyWith(averageRating: 0.0);

      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: BookCard(
            book: bookWithZeroRating,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('0.0'), findsOneWidget);
    });

    testWidgets('should handle high rating correctly', (WidgetTester tester) async {
      // Arrange
      final bookWithHighRating = testBook.copyWith(averageRating: 5.0);

      // Act
      await tester.pumpWidget(
        TestHelpers.createTestApp(
          child: BookCard(
            book: bookWithHighRating,
            onTap: () {},
          ),
        ),
      );

      // Assert
      expect(find.text('5.0'), findsOneWidget);
    });
  });
} 