import 'package:flutter/material.dart';

class AppConstants {
  // Colors
  static const Color primaryColor = Color(0xFF2196F3);
  static const Color secondaryColor = Color(0xFF1976D2);
  static const Color accentColor = Color(0xFF42A5F5);
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57C00);
  static const Color infoColor = Color(0xFF1976D2);
  
  // Light theme colors
  static const Color lightPrimary = Color(0xFF2196F3);
  static const Color lightOnPrimary = Color(0xFFFFFFFF);
  static const Color lightPrimaryContainer = Color(0xFFBBDEFB);
  static const Color lightOnPrimaryContainer = Color(0xFF1976D2);
  static const Color lightSecondary = Color(0xFF1976D2);
  static const Color lightOnSecondary = Color(0xFFFFFFFF);
  static const Color lightSecondaryContainer = Color(0xFFE3F2FD);
  static const Color lightOnSecondaryContainer = Color(0xFF0D47A1);
  static const Color lightTertiary = Color(0xFF42A5F5);
  static const Color lightOnTertiary = Color(0xFFFFFFFF);
  static const Color lightTertiaryContainer = Color(0xFFE1F5FE);
  static const Color lightOnTertiaryContainer = Color(0xFF01579B);
  static const Color lightError = Color(0xFFD32F2F);
  static const Color lightOnError = Color(0xFFFFFFFF);
  static const Color lightErrorContainer = Color(0xFFFFEBEE);
  static const Color lightOnErrorContainer = Color(0xFFB71C1C);
  static const Color lightBackground = Color(0xFFFAFAFA);
  static const Color lightOnBackground = Color(0xFF1C1B1F);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightOnSurface = Color(0xFF1C1B1F);
  static const Color lightSurfaceVariant = Color(0xFFF5F5F5);
  static const Color lightOnSurfaceVariant = Color(0xFF49454F);
  static const Color lightOutline = Color(0xFF79747E);
  static const Color lightOutlineVariant = Color(0xFFCAC4D0);
  static const Color lightShadow = Color(0xFF000000);
  static const Color lightScrim = Color(0xFF000000);
  static const Color lightInverseSurface = Color(0xFF313033);
  static const Color lightOnInverseSurface = Color(0xFFF4EFF4);
  static const Color lightInversePrimary = Color(0xFFBBDEFB);
  static const Color lightSurfaceTint = Color(0xFF2196F3);
  static const Color lightOutlineVariant2 = Color(0xFFCAC4D0);
  
  // Dark theme colors
  static const Color darkPrimary = Color(0xFF90CAF9);
  static const Color darkOnPrimary = Color(0xFF0D47A1);
  static const Color darkPrimaryContainer = Color(0xFF1976D2);
  static const Color darkOnPrimaryContainer = Color(0xFFE3F2FD);
  static const Color darkSecondary = Color(0xFF90CAF9);
  static const Color darkOnSecondary = Color(0xFF0D47A1);
  static const Color darkSecondaryContainer = Color(0xFF1976D2);
  static const Color darkOnSecondaryContainer = Color(0xFFE3F2FD);
  static const Color darkTertiary = Color(0xFF81D4FA);
  static const Color darkOnTertiary = Color(0xFF01579B);
  static const Color darkTertiaryContainer = Color(0xFF0277BD);
  static const Color darkOnTertiaryContainer = Color(0xFFE1F5FE);
  static const Color darkError = Color(0xFFFFB4AB);
  static const Color darkOnError = Color(0xFFB71C1C);
  static const Color darkErrorContainer = Color(0xFFD32F2F);
  static const Color darkOnErrorContainer = Color(0xFFFFEBEE);
  static const Color darkBackground = Color(0xFF1C1B1F);
  static const Color darkOnBackground = Color(0xFFE6E1E5);
  static const Color darkSurface = Color(0xFF313033);
  static const Color darkOnSurface = Color(0xFFE6E1E5);
  static const Color darkSurfaceVariant = Color(0xFF49454F);
  static const Color darkOnSurfaceVariant = Color(0xFFCAC4D0);
  static const Color darkOutline = Color(0xFF938F99);
  static const Color darkOutlineVariant = Color(0xFF49454F);
  static const Color darkShadow = Color(0xFF000000);
  static const Color darkScrim = Color(0xFF000000);
  static const Color darkInverseSurface = Color(0xFFE6E1E5);
  static const Color darkOnInverseSurface = Color(0xFF313033);
  static const Color darkInversePrimary = Color(0xFF1976D2);
  static const Color darkSurfaceTint = Color(0xFF90CAF9);
  static const Color darkOutlineVariant2 = Color(0xFF49454F);

  // Spacing
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingXLarge = 32.0;
  static const double paddingXXLarge = 48.0;

  // Border radius
  static const double radiusSmall = 4.0;
  static const double radiusMedium = 8.0;
  static const double radiusLarge = 12.0;
  static const double radiusXLarge = 16.0;
  static const double radiusXXLarge = 24.0;

  // Font sizes
  static const double fontSizeSmall = 12.0;
  static const double fontSizeMedium = 14.0;
  static const double fontSizeLarge = 16.0;
  static const double fontSizeXLarge = 18.0;
  static const double fontSizeXXLarge = 20.0;
  static const double fontSizeXXXLarge = 24.0;

  // Icon sizes
  static const double iconSizeSmall = 16.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeLarge = 32.0;
  static const double iconSizeXLarge = 48.0;

  // Animation durations
  static const Duration animationDurationFast = Duration(milliseconds: 150);
  static const Duration animationDurationMedium = Duration(milliseconds: 300);
  static const Duration animationDurationSlow = Duration(milliseconds: 500);

  // Validation constants
  static const int minEmailLength = 5;
  static const int maxEmailLength = 254;
  static const int minPasswordLength = 6;
  static const int maxPasswordLength = 128;
  static const int minDisplayNameLength = 2;
  static const int maxDisplayNameLength = 50;
  
  // Email validation regex
  static final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$',
  );
  
  // Password validation regex (at least 6 characters, one letter, one number)
  static final RegExp passwordRegex = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{6,}$',
  );

  // API constants
  static const String apiBaseUrl = 'https://www.googleapis.com/books/v1';
  static const int apiTimeoutSeconds = 30;
  static const int maxSearchResults = 40;
  
  // App constants
  static const String appName = 'BookTrackr';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Track your reading journey';
  
  // Storage keys
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language';
  static const String onboardingKey = 'onboarding_completed';
  
  // Error messages
  static const String networkErrorMessage = 'Please check your internet connection';
  static const String generalErrorMessage = 'Something went wrong. Please try again';
  static const String authErrorMessage = 'Authentication failed. Please try again';
  static const String validationErrorMessage = 'Please check your input and try again';
} 