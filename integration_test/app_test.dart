import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:book_tracker/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Integration Tests', () {
    testWidgets('should navigate through main app flows', (WidgetTester tester) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Test that the app loads without crashing
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('should display home screen with search bar', (WidgetTester tester) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Look for the search bar
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Search for books, authors, or genres...'), findsOneWidget);
    });

    testWidgets('should navigate to profile screen', (WidgetTester tester) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Tap on profile tab
      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();

      // Verify we're on the profile screen
      expect(find.text('Profile'), findsOneWidget);
    });

    testWidgets('should navigate to library screen', (WidgetTester tester) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Tap on library tab
      await tester.tap(find.text('Library'));
      await tester.pumpAndSettle();

      // Verify we're on the library screen
      expect(find.text('My Library'), findsOneWidget);
    });

    testWidgets('should navigate to search screen', (WidgetTester tester) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Tap on search tab
      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();

      // Verify we're on the search screen
      expect(find.text('Search'), findsOneWidget);
    });
  });

  group('Navigation Tests', () {
    testWidgets('should maintain navigation state', (WidgetTester tester) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Navigate to different tabs
      await tester.tap(find.text('Library'));
      await tester.pumpAndSettle();
      expect(find.text('My Library'), findsOneWidget);

      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();
      expect(find.text('Search'), findsOneWidget);

      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();
      expect(find.text('Profile'), findsOneWidget);

      await tester.tap(find.text('Home'));
      await tester.pumpAndSettle();
      expect(find.text('BookTrackr'), findsOneWidget);
    });
  });

  group('UI Responsiveness Tests', () {
    testWidgets('should handle different screen sizes', (WidgetTester tester) async {
      // Test with different screen sizes
      await tester.binding.setSurfaceSize(const Size(400, 800));
      app.main();
      await tester.pumpAndSettle();

      // Verify app still works on smaller screen
      expect(find.byType(MaterialApp), findsOneWidget);

      // Reset to normal size
      await tester.binding.setSurfaceSize(null);
    });

    testWidgets('should handle orientation changes', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Change orientation
      await tester.binding.setSurfaceSize(const Size(800, 400));
      await tester.pumpAndSettle();

      // Verify app still works in landscape
      expect(find.byType(MaterialApp), findsOneWidget);

      // Reset to portrait
      await tester.binding.setSurfaceSize(const Size(400, 800));
      await tester.pumpAndSettle();
    });
  });

  group('Performance Tests', () {
    testWidgets('should load app within reasonable time', (WidgetTester tester) async {
      final stopwatch = Stopwatch()..start();
      
      app.main();
      await tester.pumpAndSettle();
      
      stopwatch.stop();
      
      // App should load within 5 seconds
      expect(stopwatch.elapsedMilliseconds, lessThan(5000));
    });

    testWidgets('should handle rapid navigation', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Rapidly tap through all tabs
      for (int i = 0; i < 3; i++) {
        await tester.tap(find.text('Library'));
        await tester.pump();
        
        await tester.tap(find.text('Search'));
        await tester.pump();
        
        await tester.tap(find.text('Profile'));
        await tester.pump();
        
        await tester.tap(find.text('Home'));
        await tester.pump();
      }

      await tester.pumpAndSettle();
      
      // App should still be responsive
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
} 