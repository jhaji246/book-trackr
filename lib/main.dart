import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app_initializer.dart';
import 'core/routing/app_router.dart';
import 'shared/providers/theme_provider.dart';
import 'shared/providers/auth_provider.dart';
import 'core/widgets/error_boundary.dart';
import 'features/books/presentation/screens/home_screen.dart';
import 'features/auth/presentation/screens/login_screen.dart';

void main() async {
  try {
    await AppInitializer.initialize();
  } catch (e) {
    debugPrint('Critical initialization failed: $e');
    // Continue anyway - app will show error state but won't be stuck
  }
  runApp(const ProviderScope(child: BookTrackrApp()));
}

class BookTrackrApp extends ConsumerStatefulWidget {
  const BookTrackrApp({super.key});

  @override
  ConsumerState<BookTrackrApp> createState() => _BookTrackrAppState();
}

class _BookTrackrAppState extends ConsumerState<BookTrackrApp> {
  bool _isReady = false;
  bool _isInitializing = true;

  @override
  void initState() {
    super.initState();
    // Use addPostFrameCallback to ensure the widget is fully built before initializing auth
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeAuth();
    });
  }

  Future<void> _initializeAuth() async {
    if (_isInitializing) {
      try {
        debugPrint('BookTrackrApp: Starting authentication initialization...');
        final authNotifier = ref.read(authProvider.notifier);
        
        // Clear any persistent errors before initializing
        authNotifier.clearAllErrors();
        
        await authNotifier.initializeAuth();
        
        // Mark app as ready after auth initialization - use addPostFrameCallback to prevent rebuild issues
        if (mounted) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              setState(() {
                _isReady = true;
                _isInitializing = false;
              });
              debugPrint('BookTrackrApp: App is now ready');
            }
          });
        }
      } catch (e) {
        debugPrint('BookTrackrApp: Authentication initialization failed: $e');
        // Even if auth fails, show the app - use addPostFrameCallback to prevent rebuild issues
        if (mounted) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              setState(() {
                _isReady = true;
                _isInitializing = false;
              });
            }
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeProvider);

    // Show loading screen until auth is initialized
    if (!_isReady || _isInitializing) {
      debugPrint('BookTrackrApp: Rendering Initializing screen. _isReady: $_isReady, _isInitializing: $_isInitializing');
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

    // Show main app once ready - Check authentication state
    debugPrint('BookTrackrApp: Rendering main app. _isReady: $_isReady, _isInitializing: $_isInitializing');
    return MaterialApp(
      title: 'BookTrackr',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: ErrorBoundary(
        onError: (error, stackTrace) {
          debugPrint('App Error: $error');
          debugPrint('App StackTrace: $stackTrace');
        },
        child: Consumer(
          builder: (context, ref, child) {
            final authState = ref.watch(authProvider);
            debugPrint('BookTrackrApp Consumer: authState.isLoading: ${authState.isLoading}, authState.isAuthenticated: ${authState.isAuthenticated}');
            
            // Show loading while auth is initializing
            if (authState.isLoading) {
              debugPrint('BookTrackrApp Consumer: Rendering Checking authentication screen.');
              return const Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 16),
                      Text('Checking authentication...', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              );
            }
            
            // Show login screen if not authenticated
            if (!authState.isAuthenticated) {
              debugPrint('BookTrackrApp Consumer: Rendering LoginScreen.');
              return const LoginScreen();
            }
            
            // Show home screen if authenticated
            debugPrint('BookTrackrApp Consumer: Rendering HomeScreen.');
            return const HomeScreen();
          },
        ),
      ),
    );
  }
}
