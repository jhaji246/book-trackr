import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app_initializer.dart';
import 'core/routing/app_router.dart';
import 'shared/providers/theme_provider.dart';
import 'shared/providers/auth_provider.dart';
import 'core/widgets/error_boundary.dart';
import 'dart:async'; // Added for Timer

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
  Timer? _fallbackTimer;

  @override
  void initState() {
    super.initState();
    
    // Force the app to show main interface immediately
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('MainApp: Post frame callback triggered, forcing app to main interface');
      setState(() {
        _isInitialized = true;
      });
    });
    
    // Fallback timer to force app to show main interface
    _fallbackTimer = Timer(const Duration(seconds: 3), () {
      if (mounted && !_isInitialized) {
        debugPrint('MainApp: Fallback timer triggered, forcing app to main interface');
        setState(() {
          _isInitialized = true;
        });
      }
    });
    
    // Initialize authentication in background
    _initializeAuthInBackground();
  }

  Future<void> _initializeAuthInBackground() async {
    try {
      debugPrint('MainApp: Starting background authentication initialization...');
      final authNotifier = ref.read(authProvider.notifier);
      await authNotifier.initializeAuth();
      debugPrint('MainApp: Background authentication completed successfully');
    } catch (e) {
      debugPrint('MainApp: Background authentication failed: $e');
    }
  }

  @override
  void dispose() {
    _fallbackTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Always show main app, no more splash screen blocking
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeProvider);
    final authState = ref.watch(authProvider);

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
