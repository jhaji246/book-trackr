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

      // Initialize Firebase (blocking - must complete before continuing)
      await _initializeFirebase();

      // Initialize Local Storage (blocking - must complete before continuing)
      await _initializeLocalStorage();

      // Initialize Services (non-blocking)
      _initializeServices().catchError((e) {
        debugPrint('Service initialization failed: $e');
      });

      _isInitialized = true;
    } catch (e) {
      debugPrint('App initialization failed: $e');
      // Re-throw critical initialization errors
      rethrow;
    }
  }

  /// Initialize Firebase services
  static Future<void> _initializeFirebase() async {
    try {
      // Check if Firebase is already initialized
      if (Firebase.apps.isNotEmpty) {
        debugPrint('Firebase already initialized');
        return;
      }
      
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      debugPrint('Firebase initialized successfully');
    } catch (e) {
      debugPrint('Firebase initialization failed: $e');
      // Re-throw Firebase errors as they are critical for the app
      rethrow;
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