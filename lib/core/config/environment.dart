class Environment {
  static const String googleBooksApiKey = String.fromEnvironment(
    'GOOGLE_BOOKS_API_KEY',
    defaultValue: '',
  );
  
  static const String firebaseApiKey = String.fromEnvironment(
    'FIREBASE_API_KEY',
    defaultValue: '',
  );
  
  static const String firebaseProjectId = String.fromEnvironment(
    'FIREBASE_PROJECT_ID',
    defaultValue: '',
  );
  
  static const String firebaseMessagingSenderId = String.fromEnvironment(
    'FIREBASE_MESSAGING_SENDER_ID',
    defaultValue: '',
  );
  
  static const String firebaseAppId = String.fromEnvironment(
    'FIREBASE_APP_ID',
    defaultValue: '',
  );
  
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