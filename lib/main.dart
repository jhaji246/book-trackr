import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app_initializer.dart';
import 'core/routing/app_router.dart';
import 'shared/providers/theme_provider.dart';
import 'shared/providers/auth_provider.dart';
import 'core/widgets/error_boundary.dart';
import 'features/books/presentation/screens/home_screen.dart';

void main() async {
  await AppInitializer.initialize();
  runApp(const ProviderScope(child: BookTrackrApp()));
}

class BookTrackrApp extends ConsumerWidget {
  const BookTrackrApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final authState = ref.watch(authProvider);

    // Force the main app to show immediately - bypass router completely
    return ErrorBoundary(
      onError: (error, stackTrace) {
        debugPrint('App Error: $error');
        debugPrint('App StackTrace: $stackTrace');
      },
      child: MaterialApp(
        title: 'BookTrackr',
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        home: const HomeScreen(), // Direct to home screen
      ),
    );
  }
}
