import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service for managing app localization and internationalization.
/// 
/// This service provides a centralized way to handle multiple languages,
/// manage user language preferences, and provide localized strings
/// throughout the app.
/// 
/// Example usage:
/// ```dart
/// // Get a localized string
/// final title = LocalizationService.getString('home_title');
/// 
/// // Change the app language
/// await LocalizationService.setLanguage('es');
/// ```
class LocalizationService {
  static const String _languageKey = 'selected_language';
  static const String _defaultLanguage = 'en';
  
  static Locale _currentLocale = const Locale(_defaultLanguage);
  static Map<String, Map<String, String>> _localizations = {};
  static bool _isInitialized = false;

  /// Supported languages in the app
  static const List<String> supportedLanguages = ['en', 'es', 'fr', 'de', 'hi', 'zh'];

  /// Initialize the localization service.
  /// 
  /// This method loads the user's preferred language and sets up
  /// the localization system.
  static Future<void> initialize() async {
    try {
      // TODO: Implement actual localization service
      // For now, just a placeholder
    } catch (e) {
      // Handle initialization error
    }
  }

  /// Get the current locale.
  static Locale get currentLocale => _currentLocale;

  /// Get the current language code.
  static String get currentLanguage => _currentLocale.languageCode;

  /// Set the app language.
  /// 
  /// Parameters:
  /// - [languageCode]: The language code to set (e.g., 'en', 'es', 'fr')
  static Future<void> setLanguage(String languageCode) async {
    if (!supportedLanguages.contains(languageCode)) {
      languageCode = _defaultLanguage;
    }

    _currentLocale = Locale(languageCode);
    
    // Save user preference
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, languageCode);
  }

  /// Get a localized string.
  /// 
  /// Parameters:
  /// - [key]: The key for the localized string
  /// - [params]: Optional parameters to interpolate into the string
  /// 
  /// Returns the localized string, or the key if not found.
  static String getString(String key, [Map<String, dynamic>? params]) {
    if (!_isInitialized) {
      return key;
    }

    final languageCode = _currentLocale.languageCode;
    final localizations = _localizations[languageCode] ?? _localizations[_defaultLanguage] ?? {};
    
    String value = localizations[key] ?? key;
    
    // Interpolate parameters
    if (params != null) {
      params.forEach((paramKey, paramValue) {
        value = value.replaceAll('{$paramKey}', paramValue.toString());
      });
    }
    
    return value;
  }

  /// Get a localized string with pluralization support.
  /// 
  /// Parameters:
  /// - [key]: The base key for the localized string
  /// - [count]: The count for pluralization
  /// - [params]: Optional parameters to interpolate into the string
  /// 
  /// Returns the localized string with proper pluralization.
  static String getPluralString(String key, int count, [Map<String, dynamic>? params]) {
    final pluralKey = '${key}_${_getPluralForm(count)}';
    final baseParams = params ?? {};
    baseParams['count'] = count;
    
    return getString(pluralKey, baseParams);
  }

  /// Get the plural form for a given count.
  /// 
  /// This is a simplified implementation. For more complex languages,
  /// you might want to use a proper pluralization library.
  static String _getPluralForm(int count) {
    if (count == 1) return 'one';
    if (count == 0) return 'zero';
    return 'other';
  }

  /// Load all localization data.
  /// 
  /// This method loads the localization strings for all supported languages.
  static void _loadLocalizations() {
    _localizations = {
      'en': _getEnglishStrings(),
      'es': _getSpanishStrings(),
      'fr': _getFrenchStrings(),
      'de': _getGermanStrings(),
      'hi': _getHindiStrings(),
      'zh': _getChineseStrings(),
    };
  }

  /// Get English localization strings.
  static Map<String, String> _getEnglishStrings() {
    return {
      // App
      'app_name': 'BookTrackr',
      'app_description': 'Track your reading journey',
      
      // Navigation
      'nav_home': 'Home',
      'nav_library': 'Library',
      'nav_search': 'Search',
      'nav_profile': 'Profile',
      'nav_goals': 'Goals',
      'nav_statistics': 'Statistics',
      
      // Home Screen
      'home_title': 'BookTrackr',
      'home_search_hint': 'Search for books, authors, or genres...',
      'home_featured_books': 'Featured Books',
      'home_trending_now': 'Trending Now',
      'home_recommended': 'Recommended for You',
      'home_categories': 'Browse by Category',
      
      // Library Screen
      'library_title': 'My Library',
      'library_empty': 'Your library is empty',
      'library_empty_subtitle': 'Start adding books to your collection',
      'library_browse_books': 'Browse Books',
      'library_want_to_read': 'Want to Read',
      'library_currently_reading': 'Currently Reading',
      'library_completed': 'Completed',
      'library_dnf': 'Did Not Finish',
      
      // Search Screen
      'search_title': 'Search',
      'search_hint': 'Search for books...',
      'search_no_results': 'No books found',
      'search_no_results_subtitle': 'Try adjusting your search terms',
      'search_results_count': '{count} results found',
      
      // Book Detail Screen
      'book_detail_by': 'by',
      'book_detail_pages': '{count} pages',
      'book_detail_published': 'Published {date}',
      'book_detail_add_to_shelf': 'Add to Shelf',
      'book_detail_remove_from_shelf': 'Remove from Shelf',
      'book_detail_rate_book': 'Rate Book',
      'book_detail_write_review': 'Write Review',
      'book_detail_mark_as_reading': 'Mark as Reading',
      'book_detail_mark_as_completed': 'Mark as Completed',
      'book_detail_mark_as_dnf': 'Mark as DNF',
      
      // Profile Screen
      'profile_title': 'Profile',
      'profile_reading_stats': 'Reading Statistics',
      'profile_books_read': 'Books Read',
      'profile_pages_read': 'Pages Read',
      'profile_current_streak': 'Current Streak',
      'profile_average_rating': 'Average Rating',
      'profile_settings': 'Settings',
      'profile_sign_out': 'Sign Out',
      
      // Goals Screen
      'goals_title': 'Reading Goals',
      'goals_books_per_year': 'Books per Year',
      'goals_pages_per_day': 'Pages per Day',
      'goals_current_streak': 'Current Streak',
      'goals_set_goal': 'Set Goal',
      'goals_goal_achieved': 'Goal Achieved!',
      
      // Statistics Screen
      'statistics_title': 'Reading Statistics',
      'statistics_total_books': 'Total Books',
      'statistics_total_pages': 'Total Pages',
      'statistics_average_rating': 'Average Rating',
      'statistics_favorite_genres': 'Favorite Genres',
      'statistics_reading_trends': 'Reading Trends',
      
      // Auth
      'auth_sign_in': 'Sign In',
      'auth_sign_up': 'Sign Up',
      'auth_sign_out': 'Sign Out',
      'auth_email': 'Email',
      'auth_password': 'Password',
      'auth_confirm_password': 'Confirm Password',
      'auth_forgot_password': 'Forgot Password?',
      'auth_new_to_app': 'New to BookTrackr?',
      'auth_already_have_account': 'Already have an account?',
      'auth_sign_in_with_google': 'Sign in with Google',
      'auth_sign_up_with_google': 'Sign up with Google',
      
      // Common
      'common_loading': 'Loading...',
      'common_error': 'Error',
      'common_success': 'Success',
      'common_cancel': 'Cancel',
      'common_save': 'Save',
      'common_delete': 'Delete',
      'common_edit': 'Edit',
      'common_add': 'Add',
      'common_remove': 'Remove',
      'common_retry': 'Retry',
      'common_try_again': 'Try Again',
      'common_ok': 'OK',
      'common_yes': 'Yes',
      'common_no': 'No',
      
      // Messages
      'message_book_added': 'Book added to your shelf',
      'message_book_removed': 'Book removed from your shelf',
      'message_goal_set': 'Reading goal set successfully',
      'message_goal_achieved': 'Congratulations! You achieved your goal!',
      'message_error_occurred': 'An error occurred. Please try again.',
      'message_network_error': 'Network error. Please check your connection.',
      
      // Pluralization
      'book_count_one': '{count} book',
      'book_count_other': '{count} books',
      'page_count_one': '{count} page',
      'page_count_other': '{count} pages',
      'day_count_one': '{count} day',
      'day_count_other': '{count} days',
    };
  }

  /// Get Spanish localization strings.
  static Map<String, String> _getSpanishStrings() {
    return {
      'app_name': 'BookTrackr',
      'nav_home': 'Inicio',
      'nav_library': 'Biblioteca',
      'nav_search': 'Buscar',
      'nav_profile': 'Perfil',
      'home_title': 'BookTrackr',
      'home_search_hint': 'Buscar libros, autores o géneros...',
      'library_title': 'Mi Biblioteca',
      'search_title': 'Buscar',
      'profile_title': 'Perfil',
      'goals_title': 'Metas de Lectura',
      'statistics_title': 'Estadísticas de Lectura',
      'auth_sign_in': 'Iniciar Sesión',
      'auth_sign_up': 'Registrarse',
      'common_loading': 'Cargando...',
      'common_error': 'Error',
      'common_success': 'Éxito',
      'common_cancel': 'Cancelar',
      'common_save': 'Guardar',
      'common_retry': 'Reintentar',
      'common_ok': 'OK',
    };
  }

  /// Get French localization strings.
  static Map<String, String> _getFrenchStrings() {
    return {
      'app_name': 'BookTrackr',
      'nav_home': 'Accueil',
      'nav_library': 'Bibliothèque',
      'nav_search': 'Rechercher',
      'nav_profile': 'Profil',
      'home_title': 'BookTrackr',
      'home_search_hint': 'Rechercher des livres, auteurs ou genres...',
      'library_title': 'Ma Bibliothèque',
      'search_title': 'Rechercher',
      'profile_title': 'Profil',
      'goals_title': 'Objectifs de Lecture',
      'statistics_title': 'Statistiques de Lecture',
      'auth_sign_in': 'Se Connecter',
      'auth_sign_up': 'S\'inscrire',
      'common_loading': 'Chargement...',
      'common_error': 'Erreur',
      'common_success': 'Succès',
      'common_cancel': 'Annuler',
      'common_save': 'Enregistrer',
      'common_retry': 'Réessayer',
      'common_ok': 'OK',
    };
  }

  /// Get German localization strings.
  static Map<String, String> _getGermanStrings() {
    return {
      'app_name': 'BookTrackr',
      'nav_home': 'Startseite',
      'nav_library': 'Bibliothek',
      'nav_search': 'Suchen',
      'nav_profile': 'Profil',
      'home_title': 'BookTrackr',
      'home_search_hint': 'Nach Büchern, Autoren oder Genres suchen...',
      'library_title': 'Meine Bibliothek',
      'search_title': 'Suchen',
      'profile_title': 'Profil',
      'goals_title': 'Leseziele',
      'statistics_title': 'Lese-Statistiken',
      'auth_sign_in': 'Anmelden',
      'auth_sign_up': 'Registrieren',
      'common_loading': 'Laden...',
      'common_error': 'Fehler',
      'common_success': 'Erfolg',
      'common_cancel': 'Abbrechen',
      'common_save': 'Speichern',
      'common_retry': 'Wiederholen',
      'common_ok': 'OK',
    };
  }

  /// Get Hindi localization strings.
  static Map<String, String> _getHindiStrings() {
    return {
      'app_name': 'BookTrackr',
      'nav_home': 'होम',
      'nav_library': 'लाइब्रेरी',
      'nav_search': 'खोजें',
      'nav_profile': 'प्रोफ़ाइल',
      'home_title': 'BookTrackr',
      'home_search_hint': 'पुस्तकों, लेखकों या शैलियों को खोजें...',
      'library_title': 'मेरी लाइब्रेरी',
      'search_title': 'खोजें',
      'profile_title': 'प्रोफ़ाइल',
      'goals_title': 'पठन लक्ष्य',
      'statistics_title': 'पठन आंकड़े',
      'auth_sign_in': 'साइन इन करें',
      'auth_sign_up': 'साइन अप करें',
      'common_loading': 'लोड हो रहा है...',
      'common_error': 'त्रुटि',
      'common_success': 'सफलता',
      'common_cancel': 'रद्द करें',
      'common_save': 'सहेजें',
      'common_retry': 'पुनः प्रयास करें',
      'common_ok': 'ठीक है',
    };
  }

  /// Get Chinese localization strings.
  static Map<String, String> _getChineseStrings() {
    return {
      'app_name': 'BookTrackr',
      'nav_home': '首页',
      'nav_library': '图书馆',
      'nav_search': '搜索',
      'nav_profile': '个人资料',
      'home_title': 'BookTrackr',
      'home_search_hint': '搜索书籍、作者或类型...',
      'library_title': '我的图书馆',
      'search_title': '搜索',
      'profile_title': '个人资料',
      'goals_title': '阅读目标',
      'statistics_title': '阅读统计',
      'auth_sign_in': '登录',
      'auth_sign_up': '注册',
      'common_loading': '加载中...',
      'common_error': '错误',
      'common_success': '成功',
      'common_cancel': '取消',
      'common_save': '保存',
      'common_retry': '重试',
      'common_ok': '确定',
    };
  }

  /// Get the display name for a language code.
  /// 
  /// Parameters:
  /// - [languageCode]: The language code (e.g., 'en', 'es')
  /// 
  /// Returns the display name for the language.
  static String getLanguageDisplayName(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'es':
        return 'Español';
      case 'fr':
        return 'Français';
      case 'de':
        return 'Deutsch';
      case 'hi':
        return 'हिंदी';
      case 'zh':
        return '中文';
      default:
        return languageCode.toUpperCase();
    }
  }

  /// Get the flag emoji for a language code.
  /// 
  /// Parameters:
  /// - [languageCode]: The language code (e.g., 'en', 'es')
  /// 
  /// Returns the flag emoji for the language.
  static String getLanguageFlag(String languageCode) {
    switch (languageCode) {
      case 'en':
        return '🇺🇸';
      case 'es':
        return '🇪🇸';
      case 'fr':
        return '🇫🇷';
      case 'de':
        return '🇩🇪';
      case 'hi':
        return '🇮🇳';
      case 'zh':
        return '🇨🇳';
      default:
        return '🌐';
    }
  }
} 