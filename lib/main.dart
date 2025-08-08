import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/routing/app_router.dart';
import 'core/services/hive_service.dart';
import 'core/services/notification_service.dart';
import 'core/services/reading_reminders_service.dart';
import 'core/services/cache_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Firebase initialization failed: $e');
  }

  // Initialize Hive
  await Hive.initFlutter();
  await HiveService.initialize();

  // Initialize Notifications
  await NotificationService().initialize();
  await ReadingRemindersService.initialize();

  // Initialize Cache Service
  await CacheService.initialize();

  runApp(const ProviderScope(child: BookTrackrApp()));
}

class BookTrackrApp extends ConsumerWidget {
  const BookTrackrApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = AppRouter.router;

    return MaterialApp.router(
      title: 'BookTrackr',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
