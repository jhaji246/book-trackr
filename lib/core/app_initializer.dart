import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../firebase_options.dart';
import 'services/hive_service.dart';
import 'services/notification_service.dart';
import 'services/reading_reminders_service.dart';
import 'services/cache_service.dart';
import 'services/analytics_service.dart';
import 'services/localization_service.dart';
import '../../shared/providers/auth_provider.dart';

/// Handles all app initialization logic
class AppInitializer {
  static bool _isInitialized = false;

  /// Initialize all app services and dependencies
  static Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      WidgetsFlutterBinding.ensureInitialized();

      // Initialize Firebase (non-blocking - app can function without it)
      try {
        await _initializeFirebase();
      } catch (e) {
        debugPrint('Firebase initialization failed, continuing without it: $e');
        // Don't rethrow Firebase errors - app can still function
      }

      // Initialize Local Storage (blocking - must complete before continuing)
      await _initializeLocalStorage();

      // Initialize Services (non-blocking)
      _initializeServices().catchError((e) {
        debugPrint('Service initialization failed: $e');
      });

      _isInitialized = true;
    } catch (e) {
      debugPrint('App initialization failed: $e');
      // Only rethrow critical errors that prevent app from functioning
      if (e.toString().contains('Hive') || e.toString().contains('local storage')) {
        rethrow;
      }
      // For other errors, mark as initialized and continue
      _isInitialized = true;
    }
  }

  /// Initialize Firebase services
  static Future<void> _initializeFirebase() async {
    try {
      // More robust check for Firebase initialization
      if (Firebase.apps.isNotEmpty) {
        // Check if the default app exists
        try {
          Firebase.app();
          debugPrint('Firebase default app already exists, skipping initialization');
          return;
        } catch (e) {
          debugPrint('Firebase app exists but not accessible, reinitializing: $e');
          // Continue with initialization
        }
      }
      
      // Initialize Firebase with proper error handling
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      debugPrint('Firebase initialized successfully');
    } catch (e) {
      debugPrint('Firebase initialization failed: $e');
      
      // If it's a duplicate app error, try to get the existing app
      if (e.toString().contains('duplicate-app')) {
        try {
          Firebase.app();
          debugPrint('Using existing Firebase app after duplicate error');
          return;
        } catch (getAppError) {
          debugPrint('Failed to get existing Firebase app: $getAppError');
        }
      }
      
      // For other errors, continue without Firebase (app can still function)
      debugPrint('Continuing without Firebase initialization');
    }
  }

  /// Initialize local storage services
  static Future<void> _initializeLocalStorage() async {
    try {
      await Hive.initFlutter();
      await HiveService.initialize();
      debugPrint('Local storage initialized successfully');
    } catch (e) {
      debugPrint('Local storage initialization failed: $e');
      rethrow;
    }
  }

  /// Initialize app services
  static Future<void> _initializeServices() async {
    try {
      // Initialize Notifications
      await NotificationService().initialize();
      await ReadingRemindersService.initialize();

      // Initialize Cache Service
      await CacheService.initialize();

      // Initialize Analytics
      await AnalyticsService.initialize();

      // Initialize Localization
      await LocalizationService.initialize();
      
      debugPrint('All services initialized successfully');
    } catch (e) {
      debugPrint('Service initialization failed: $e');
      // Continue with partial initialization
    }
  }
} 