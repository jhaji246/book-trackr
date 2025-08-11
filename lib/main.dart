import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app_initializer.dart';
import 'core/routing/app_router.dart';
import 'shared/providers/theme_provider.dart';
import 'shared/providers/auth_provider.dart';
import 'core/widgets/error_boundary.dart';

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
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      debugPrint('MainApp: Starting app initialization...');
      
      // Wait a bit for the app to be ready
      await Future.delayed(const Duration(seconds: 1));
      
      // Initialize authentication
      debugPrint('MainApp: Starting authentication initialization...');
      final authNotifier = ref.read(authProvider.notifier);
      await authNotifier.initializeAuth();
      debugPrint('MainApp: Authentication initialization completed successfully');
      
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
        debugPrint('MainApp: App initialization completed');
      }
    } catch (e) {
      debugPrint('MainApp: App initialization failed: $e');
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return MaterialApp(
        home: _buildSplashScreen(),
      );
    }

    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeProvider);
    final authState = ref.watch(authProvider);

    // If still loading auth, show loading screen
    if (authState.isLoading) {
      return MaterialApp(
        home: _buildLoadingScreen(),
      );
    }

    // Main app
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

  Widget _buildSplashScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF2196F3),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.book,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'BookTrackr',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2196F3),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Track your reading journey',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF2196F3)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFF2196F3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.book,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'BookTrackr',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2196F3),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Loading your reading journey...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF2196F3)),
            ),
          ],
        ),
      ),
    );
  }
}
