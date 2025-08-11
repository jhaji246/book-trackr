import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app_initializer.dart';
import 'core/routing/app_router.dart';
import 'shared/providers/theme_provider.dart';
import 'core/widgets/error_boundary.dart';

void main() async {
  await AppInitializer.initialize();
  runApp(const ProviderScope(child: BookTrackrApp()));
}

class BookTrackrApp extends ConsumerWidget {
  const BookTrackrApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeProvider);

    return ErrorBoundary(
      onError: (error, stackTrace) {
        debugPrint('App Error: $error');
        debugPrint('App StackTrace: $stackTrace');
      },
      child: MaterialApp.router(
        title: 'BookTrackr',
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        routerConfig: router,
      ),
    );
  }
}
