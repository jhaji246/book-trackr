class Environment {
  static const String googleBooksApiKey = String.fromEnvironment(
    'GOOGLE_BOOKS_API_KEY',
    defaultValue: '',
  );
  
  // Firebase Configuration - Using actual values from your project
  static const String firebaseApiKey = 'AIzaSyB4y3t2_5AqOKVgCl7AMdmlFongOvaJ_c8';
  static const String firebaseProjectId = 'booktrackr-app';
  static const String firebaseMessagingSenderId = '957194839317';
  static const String firebaseAppId = '1:957194839317:android:913293f13975d4f459f51c';
  
  static const bool isDevelopment = bool.fromEnvironment(
    'FLUTTER_DEBUG',
    defaultValue: true,
  );
  
  static const bool isProduction = bool.fromEnvironment(
    'FLUTTER_RELEASE',
    defaultValue: false,
  );
  
  static bool get isDebugMode => isDevelopment;
  
  static String get apiBaseUrl => 'https://www.googleapis.com/books/v1';
  
  static int get apiTimeoutSeconds => 30;
  
  static int get maxSearchResults => 40;
} 