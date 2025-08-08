import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/services/hive_service.dart';
import 'core/services/notification_service.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool firebaseInitialized = false;
  
  // Initialize Firebase
  try {
    await Firebase.initializeApp();
    firebaseInitialized = true;
    print('Firebase initialized successfully');
  } catch (e) {
    print('Firebase not configured: $e');
    // Continue without Firebase for development
  }

  // Initialize Hive
  try {
    await HiveService.initialize();
    print('Hive initialized successfully');
  } catch (e) {
    print('Hive initialization error: $e');
    // Continue without Hive for now
  }

  // Initialize Notifications (only if Firebase is available)
  if (firebaseInitialized) {
    try {
      final notificationService = NotificationService();
      await notificationService.initialize();
      print('Notifications initialized successfully');
    } catch (e) {
      print('Notification initialization error: $e');
    }
  }

  runApp(
    ProviderScope(
      child: BookTrackrApp(firebaseInitialized: firebaseInitialized),
    ),
  );
}

class BookTrackrApp extends ConsumerWidget {
  final bool firebaseInitialized;

  const BookTrackrApp({
    super.key,
    required this.firebaseInitialized,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'BookTrackr',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
