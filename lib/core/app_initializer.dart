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
  static bool _isFirebaseInitialized = false;

  /// Initialize all app services and dependencies
  static Future<void> initialize() async {
    try {
      // Initialize Firebase first - this is critical for authentication
      await _initializeFirebase();
      
      // Initialize local storage
      await _initializeLocalStorage();
      
      // Initialize other services
      await _initializeServices();
      
      _isInitialized = true;
      
    } catch (e) {
      // Firebase initialization failed - this is critical for authentication
      // But we can continue with other services
      
      try {
        // Initialize local storage even if Firebase fails
        await _initializeLocalStorage();
        
        // Initialize other services
        await _initializeServices();
        
        _isInitialized = true;
      } catch (localError) {
        // If even local services fail, rethrow the original error
        rethrow;
      }
    }
  }

  /// Initialize Firebase with proper error handling
  static Future<void> _initializeFirebase() async {
    try {
      // Check if Firebase is already initialized
      try {
        Firebase.app();
        _isFirebaseInitialized = true;
        return; // Already initialized
      } catch (e) {
        // Not initialized, continue with initialization
      }

      // Initialize Firebase with proper error handling
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      
      _isFirebaseInitialized = true;
      
    } catch (e) {
      // Log the specific error for debugging
      print('Firebase initialization error: $e');
      
      // If it's a duplicate app error, try to get the existing app
      if (e.toString().contains('duplicate-app')) {
        try {
          Firebase.app();
          _isFirebaseInitialized = true;
          return;
        } catch (getAppError) {
          print('Failed to get existing Firebase app: $getAppError');
          // Continue without Firebase
        }
      }
      
      // Check if it's a configuration error
      if (e.toString().contains('Firebase configuration is incomplete')) {
        print('Firebase configuration is incomplete');
        _isFirebaseInitialized = false;
        return; // Don't rethrow, just continue without Firebase
      }
      
      // Check for specific Firebase errors
      if (e.toString().contains('network') || e.toString().contains('connection')) {
        print('Firebase network/connection error');
        _isFirebaseInitialized = false;
        return; // Network issues - continue without Firebase
      }
      
      // Check for Google Services configuration issues
      if (e.toString().contains('google-services.json') || 
          e.toString().contains('GoogleServicesJson')) {
        print('Google Services configuration error: $e');
        _isFirebaseInitialized = false;
        return;
      }
      
      // For other errors, continue without Firebase (app can still function)
      print('Unknown Firebase error, continuing without Firebase: $e');
      _isFirebaseInitialized = false;
      return; // Don't rethrow, just continue without Firebase
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

  /// Check if Firebase is properly configured
  static bool get isFirebaseConfigured {
    try {
      DefaultFirebaseOptions.currentPlatform;
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Check if Firebase was successfully initialized
  static bool get isFirebaseInitialized => _isFirebaseInitialized;

  /// Get Firebase configuration status message
  static String get firebaseConfigStatus {
    try {
      DefaultFirebaseOptions.currentPlatform;
      if (_isFirebaseInitialized) {
        return 'Firebase is properly configured and initialized';
      } else {
        return 'Firebase is configured but not initialized';
      }
    } catch (e) {
      return 'Firebase configuration error: $e';
    }
  }

  /// Get overall initialization status
  static bool get isInitialized => _isInitialized;
} 