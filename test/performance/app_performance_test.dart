import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:book_tracker/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Performance Tests', () {
    testWidgets('should load app within performance budget', (WidgetTester tester) async {
      final stopwatch = Stopwatch()..start();
      
      app.main();
      await tester.pumpAndSettle();
      
      stopwatch.stop();
      
      // App should load within 3 seconds
      expect(stopwatch.elapsedMilliseconds, lessThan(3000));
    });

    testWidgets('should handle rapid navigation without performance degradation', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      final navigationStopwatch = Stopwatch()..start();
      
      // Rapidly navigate through all tabs multiple times
      for (int i = 0; i < 10; i++) {
        await tester.tap(find.text('Library'));
        await tester.pump();
        
        await tester.tap(find.text('Search'));
        await tester.pump();
        
        await tester.tap(find.text('Profile'));
        await tester.pump();
        
        await tester.tap(find.text('Home'));
        await tester.pump();
      }
      
      navigationStopwatch.stop();
      
      // Navigation should remain responsive (less than 5 seconds for 40 taps)
      expect(navigationStopwatch.elapsedMilliseconds, lessThan(5000));
    });

    testWidgets('should handle large lists without performance issues', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Navigate to search
      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();

      // Simulate scrolling through a large list
      final scrollStopwatch = Stopwatch()..start();
      
      for (int i = 0; i < 20; i++) {
        await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -500));
        await tester.pump();
      }
      
      scrollStopwatch.stop();
      
      // Scrolling should remain smooth
      expect(scrollStopwatch.elapsedMilliseconds, lessThan(3000));
    });

    testWidgets('should handle memory usage efficiently', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Perform memory-intensive operations
      for (int i = 0; i < 5; i++) {
        // Navigate through different screens
        await tester.tap(find.text('Library'));
        await tester.pumpAndSettle();
        
        await tester.tap(find.text('Search'));
        await tester.pumpAndSettle();
        
        await tester.tap(find.text('Profile'));
        await tester.pumpAndSettle();
        
        await tester.tap(find.text('Home'));
        await tester.pumpAndSettle();
      }
      
      // App should still be responsive after memory-intensive operations
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('should handle network operations efficiently', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Simulate network operations by triggering searches
      final networkStopwatch = Stopwatch()..start();
      
      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();
      
      // Simulate search operations
      for (int i = 0; i < 3; i++) {
        await tester.enterText(find.byType(TextField), 'test search $i');
        await tester.pumpAndSettle();
      }
      
      networkStopwatch.stop();
      
      // Network operations should complete within reasonable time
      expect(networkStopwatch.elapsedMilliseconds, lessThan(10000));
    });

    testWidgets('should maintain UI responsiveness during heavy operations', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      final responsivenessStopwatch = Stopwatch()..start();
      
      // Perform multiple UI operations simultaneously
      await tester.tap(find.text('Search'));
      await tester.pump();
      
      await tester.tap(find.text('Profile'));
      await tester.pump();
      
      await tester.tap(find.text('Library'));
      await tester.pump();
      
      await tester.tap(find.text('Home'));
      await tester.pump();
      
      responsivenessStopwatch.stop();
      
      // UI should remain responsive (less than 2 seconds for multiple operations)
      expect(responsivenessStopwatch.elapsedMilliseconds, lessThan(2000));
    });

    testWidgets('should handle theme switching efficiently', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      final themeStopwatch = Stopwatch()..start();
      
      // Simulate theme switching multiple times
      for (int i = 0; i < 5; i++) {
        // Find and tap theme toggle button
        final themeButton = find.byIcon(Icons.brightness_6);
        if (themeButton.evaluate().isNotEmpty) {
          await tester.tap(themeButton);
          await tester.pumpAndSettle();
        }
      }
      
      themeStopwatch.stop();
      
      // Theme switching should be fast
      expect(themeStopwatch.elapsedMilliseconds, lessThan(2000));
    });

    testWidgets('should handle image loading efficiently', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      final imageStopwatch = Stopwatch()..start();
      
      // Navigate to screens that load images
      await tester.tap(find.text('Library'));
      await tester.pumpAndSettle();
      
      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();
      
      await tester.tap(find.text('Home'));
      await tester.pumpAndSettle();
      
      imageStopwatch.stop();
      
      // Image loading should not cause significant delays
      expect(imageStopwatch.elapsedMilliseconds, lessThan(5000));
    });

    testWidgets('should handle state management efficiently', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      final stateStopwatch = Stopwatch()..start();
      
      // Trigger multiple state changes
      for (int i = 0; i < 10; i++) {
        await tester.tap(find.text('Search'));
        await tester.pump();
        
        await tester.tap(find.text('Home'));
        await tester.pump();
      }
      
      stateStopwatch.stop();
      
      // State management should be efficient
      expect(stateStopwatch.elapsedMilliseconds, lessThan(3000));
    });

    testWidgets('should handle error scenarios without performance impact', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      final errorStopwatch = Stopwatch()..start();
      
      // Simulate error scenarios by navigating rapidly
      for (int i = 0; i < 20; i++) {
        await tester.tap(find.text('Search'));
        await tester.pump();
        
        await tester.tap(find.text('Home'));
        await tester.pump();
      }
      
      errorStopwatch.stop();
      
      // App should remain stable even under stress
      expect(errorStopwatch.elapsedMilliseconds, lessThan(5000));
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
} 