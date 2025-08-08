import 'package:flutter/material.dart';

class AppConstants {
  // Colors
  static const Color primaryColor = Color(0xFF6750A4);
  static const Color secondaryColor = Color(0xFF8B5CF6);
  static const Color accentColor = Color(0xFFF59E0B);
  static const Color errorColor = Color(0xFFEF4444);
  static const Color successColor = Color(0xFF10B981);
  
  // Light Theme Colors
  static const Color lightBackground = Color(0xFFFAFAFA);
  static const Color lightSurface = Color(0xFFFFFBFE);
  static const Color lightOnSurface = Color(0xFF1C1B1F);
  static const Color lightOnSurfaceVariant = Color(0xFF49454F);
  
  // Dark Theme Colors
  static const Color darkBackground = Color(0xFF0F0F0F);
  static const Color darkSurface = Color(0xFF1A1A1A);
  static const Color darkOnSurface = Color(0xFFF9FAFB);
  static const Color darkOnSurfaceVariant = Color(0xFF9CA3AF);
  
  // Dimensions
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingXLarge = 32.0;
  
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  
  static const double iconSizeSmall = 16.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeLarge = 32.0;
  
  // Animation Durations
  static const Duration animationFast = Duration(milliseconds: 200);
  static const Duration animationMedium = Duration(milliseconds: 300);
  static const Duration animationSlow = Duration(milliseconds: 500);
  
  // API Endpoints (for future use)
  static const String googleBooksApiBase = 'https://www.googleapis.com/books/v1';
  
  // Hive Box Names
  static const String booksBoxName = 'books';
  static const String userBooksBoxName = 'user_books';
  static const String usersBoxName = 'users';
  static const String settingsBoxName = 'settings';

  // Categories
  static const List<Map<String, dynamic>> categories = [
    {
      'name': 'Fiction',
      'icon': Icons.book,
      'color': Colors.blue,
      'description': 'Stories and novels'
    },
    {
      'name': 'Non-Fiction',
      'icon': Icons.school,
      'color': Colors.green,
      'description': 'Knowledge and learning'
    },
    {
      'name': 'Science Fiction',
      'icon': Icons.rocket_launch,
      'color': Colors.purple,
      'description': 'Future and space'
    },
    {
      'name': 'Mystery',
      'icon': Icons.search,
      'color': Colors.orange,
      'description': 'Thrillers and suspense'
    },
  ];
} 