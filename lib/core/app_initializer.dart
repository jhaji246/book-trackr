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
    try {
      // Initialize Firebase first
      await _initializeFirebase();
      
      // Initialize local storage
      await _initializeLocalStorage();
      
      // Initialize other services
      await _initializeServices();
      
    } catch (e) {
      // Only rethrow for critical errors that should prevent app from running
      if (e.toString().contains('Hive') || e.toString().contains('local storage')) {
        rethrow;
      }
      // For other errors, continue - app will show error state but won't be stuck
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
          return;
        } catch (e) {
          // Continue with initialization
        }
      }
      
      // Initialize Firebase with proper error handling
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } catch (e) {
      
      // If it's a duplicate app error, try to get the existing app
      if (e.toString().contains('duplicate-app')) {
        try {
          Firebase.app();
          return;
        } catch (getAppError) {
        }
      }
      
      // For other errors, continue without Firebase (app can still function)
    }
  }

  /// Initialize local storage services
  static Future<void> _initializeLocalStorage() async {
    try {
      await Hive.initFlutter();
      await HiveService.initialize();
    } catch (e) {
      rethrow;
    }
  }

  /// Initialize app services
  static Future<void> _initializeServices() async {
    try {
      // Initialize analytics
      await AnalyticsService.initialize();
      
      // Initialize notifications
      await NotificationService.initialize();
      
      // Initialize reading reminders
      await ReadingRemindersService.initialize();
      
      // Initialize cache service
      await CacheService.initialize();
      
      // Initialize localization
      await LocalizationService.initialize();
      
    } catch (e) {
      // Continue with partial initialization
    }
  }
} 