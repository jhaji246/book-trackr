import 'package:flutter/foundation.dart';

/// Service for tracking user analytics and app usage.
/// 
/// This service provides a centralized way to track user interactions,
/// app performance, and business metrics. It supports multiple analytics
/// providers and can be easily extended to add new tracking capabilities.
/// 
/// Example usage:
/// ```dart
/// // Track a screen view
/// AnalyticsService.trackScreenView('home_screen');
/// 
/// // Track a user action
/// AnalyticsService.trackEvent('book_added', {
///   'book_id': 'book123',
///   'category': 'fiction',
/// });
/// ```
class AnalyticsService {
  static bool _isInitialized = false;
  static bool _isEnabled = true;

  /// Initialize the analytics service.
  /// 
  /// This method should be called during app startup to configure
  /// analytics providers and set up tracking.
  static Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      // Initialize analytics providers here
      // For now, we'll just set up basic logging
      _isInitialized = true;
      
      if (kDebugMode) {
        print('AnalyticsService initialized');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Failed to initialize AnalyticsService: $e');
      }
    }
  }

  /// Enables or disables analytics tracking.
  /// 
  /// When disabled, all tracking calls will be ignored.
  /// This is useful for respecting user privacy preferences.
  static void setEnabled(bool enabled) {
    _isEnabled = enabled;
  }

  /// Tracks a screen view.
  /// 
  /// Parameters:
  /// - [screenName]: The name of the screen being viewed
  /// - [parameters]: Additional parameters to track with the screen view
  static void trackScreenView(String screenName, {Map<String, dynamic>? parameters}) {
    if (!_isEnabled || !_isInitialized) return;

    try {
      final eventData = {
        'screen_name': screenName,
        'timestamp': DateTime.now().toIso8601String(),
        if (parameters != null) ...parameters,
      };

      _logEvent('screen_view', eventData);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to track screen view: $e');
      }
    }
  }

  /// Tracks a user action or event.
  /// 
  /// Parameters:
  /// - [eventName]: The name of the event being tracked
  /// - [parameters]: Additional parameters to track with the event
  static void trackEvent(String eventName, {Map<String, dynamic>? parameters}) {
    if (!_isEnabled || !_isInitialized) return;

    try {
      final eventData = {
        'event_name': eventName,
        'timestamp': DateTime.now().toIso8601String(),
        if (parameters != null) ...parameters,
      };

      _logEvent('user_event', eventData);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to track event: $e');
      }
    }
  }

  /// Tracks user engagement metrics.
  /// 
  /// Parameters:
  /// - [metricName]: The name of the metric being tracked
  /// - [value]: The value of the metric
  /// - [parameters]: Additional parameters to track with the metric
  static void trackMetric(String metricName, dynamic value, {Map<String, dynamic>? parameters}) {
    if (!_isEnabled || !_isInitialized) return;

    try {
      final eventData = {
        'metric_name': metricName,
        'value': value,
        'timestamp': DateTime.now().toIso8601String(),
        if (parameters != null) ...parameters,
      };

      _logEvent('metric', eventData);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to track metric: $e');
      }
    }
  }

  /// Tracks app performance metrics.
  /// 
  /// Parameters:
  /// - [metricName]: The name of the performance metric
  /// - [value]: The value of the metric (usually in milliseconds)
  /// - [parameters]: Additional parameters to track with the metric
  static void trackPerformance(String metricName, int value, {Map<String, dynamic>? parameters}) {
    if (!_isEnabled || !_isInitialized) return;

    try {
      final eventData = {
        'metric_name': metricName,
        'value': value,
        'unit': 'milliseconds',
        'timestamp': DateTime.now().toIso8601String(),
        if (parameters != null) ...parameters,
      };

      _logEvent('performance', eventData);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to track performance: $e');
      }
    }
  }

  /// Tracks user errors and exceptions.
  /// 
  /// Parameters:
  /// - [error]: The error that occurred
  /// - [stackTrace]: The stack trace of the error
  /// - [context]: Additional context about where the error occurred
  static void trackError(Object error, StackTrace? stackTrace, {String? context}) {
    if (!_isEnabled || !_isInitialized) return;

    try {
      final eventData = {
        'error': error.toString(),
        'stack_trace': stackTrace?.toString(),
        'context': context,
        'timestamp': DateTime.now().toIso8601String(),
      };

      _logEvent('error', eventData);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to track error: $e');
      }
    }
  }

  /// Tracks user session data.
  /// 
  /// Parameters:
  /// - [sessionId]: The unique session identifier
  /// - [duration]: The duration of the session in seconds
  /// - [parameters]: Additional session parameters
  static void trackSession(String sessionId, int duration, {Map<String, dynamic>? parameters}) {
    if (!_isEnabled || !_isInitialized) return;

    try {
      final eventData = {
        'session_id': sessionId,
        'duration': duration,
        'timestamp': DateTime.now().toIso8601String(),
        if (parameters != null) ...parameters,
      };

      _logEvent('session', eventData);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to track session: $e');
      }
    }
  }

  /// Tracks user properties and attributes.
  /// 
  /// Parameters:
  /// - [properties]: Map of user properties to track
  static void setUserProperties(Map<String, dynamic> properties) {
    if (!_isEnabled || !_isInitialized) return;

    try {
      final eventData = {
        'properties': properties,
        'timestamp': DateTime.now().toIso8601String(),
      };

      _logEvent('user_properties', eventData);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to set user properties: $e');
      }
    }
  }

  /// Logs an analytics event.
  /// 
  /// This is the internal method that handles the actual logging
  /// of analytics events. In a production app, this would send
  /// data to analytics providers like Firebase Analytics, Mixpanel, etc.
  static void _logEvent(String eventType, Map<String, dynamic> eventData) {
    if (kDebugMode) {
      print('Analytics Event [$eventType]: $eventData');
    }

    // TODO: Implement actual analytics provider integration
    // For now, we just log to console in debug mode
    // In production, this would send to Firebase Analytics, Mixpanel, etc.
  }
}

/// Predefined event tracking methods for common app actions
class AnalyticsEvents {
  /// Track when a user adds a book to their shelf
  static void bookAdded(String bookId, String category) {
    AnalyticsService.trackEvent('book_added', parameters: {
      'book_id': bookId,
      'category': category,
    });
  }

  /// Track when a user starts reading a book
  static void readingStarted(String bookId) {
    AnalyticsService.trackEvent('reading_started', parameters: {
      'book_id': bookId,
    });
  }

  /// Track when a user finishes reading a book
  static void readingCompleted(String bookId, int rating) {
    AnalyticsService.trackEvent('reading_completed', parameters: {
      'book_id': bookId,
      'rating': rating,
    });
  }

  /// Track when a user searches for books
  static void searchPerformed(String query, int resultsCount) {
    AnalyticsService.trackEvent('search_performed', parameters: {
      'query': query,
      'results_count': resultsCount,
    });
  }

  /// Track when a user signs in
  static void userSignedIn(String method) {
    AnalyticsService.trackEvent('user_signed_in', parameters: {
      'method': method,
    });
  }

  /// Track when a user signs out
  static void userSignedOut() {
    AnalyticsService.trackEvent('user_signed_out');
  }

  /// Track when a user sets a reading goal
  static void goalSet(String goalType, int target) {
    AnalyticsService.trackEvent('goal_set', parameters: {
      'goal_type': goalType,
      'target': target,
    });
  }

  /// Track when a user achieves a reading goal
  static void goalAchieved(String goalType, int actual) {
    AnalyticsService.trackEvent('goal_achieved', parameters: {
      'goal_type': goalType,
      'actual': actual,
    });
  }
}

/// Predefined screen tracking methods
class AnalyticsScreens {
  /// Track home screen view
  static void home() {
    AnalyticsService.trackScreenView('home_screen');
  }

  /// Track library screen view
  static void library() {
    AnalyticsService.trackScreenView('library_screen');
  }

  /// Track search screen view
  static void search() {
    AnalyticsService.trackScreenView('search_screen');
  }

  /// Track book detail screen view
  static void bookDetail(String bookId) {
    AnalyticsService.trackScreenView('book_detail_screen', parameters: {
      'book_id': bookId,
    });
  }

  /// Track profile screen view
  static void profile() {
    AnalyticsService.trackScreenView('profile_screen');
  }

  /// Track goals screen view
  static void goals() {
    AnalyticsService.trackScreenView('goals_screen');
  }

  /// Track statistics screen view
  static void statistics() {
    AnalyticsService.trackScreenView('statistics_screen');
  }
} 