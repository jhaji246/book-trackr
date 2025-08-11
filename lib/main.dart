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

class BookTrackrApp extends ConsumerStatefulWidget {
  const BookTrackrApp({super.key});

  @override
  ConsumerState<BookTrackrApp> createState() => _BookTrackrAppState();
}

class _BookTrackrAppState extends ConsumerState<BookTrackrApp> {
  bool _isReady = false;

  @override
  void initState() {
    super.initState();
    // Initialize authentication immediately
    _initializeAuth();
  }

  Future<void> _initializeAuth() async {
    try {
      debugPrint('BookTrackrApp: Starting authentication initialization...');
      final authNotifier = ref.read(authProvider.notifier);
      await authNotifier.initializeAuth();
      
      // Mark app as ready after auth initialization
      if (mounted) {
        setState(() {
          _isReady = true;
        });
        debugPrint('BookTrackrApp: App is now ready');
      }
    } catch (e) {
      debugPrint('BookTrackrApp: Authentication initialization failed: $e');
      // Even if auth fails, show the app
      if (mounted) {
        setState(() {
          _isReady = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeProvider);

    // Show loading screen until auth is initialized
    if (!_isReady) {
      return MaterialApp(
        title: 'BookTrackr',
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        home: const Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Initializing...', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      );
    }

    // Show main app once ready
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
        home: const HomeScreen(),
      ),
    );
  }
}
