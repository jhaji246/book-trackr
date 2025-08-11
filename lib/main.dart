import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app_initializer.dart';
import 'core/routing/app_router.dart';
import 'shared/providers/theme_provider.dart';
import 'shared/providers/auth_provider.dart';
import 'core/widgets/error_boundary.dart';
import 'features/books/presentation/screens/home_screen.dart';
import 'features/auth/presentation/screens/login_screen.dart';
import 'core/constants/app_constants.dart';
import 'core/widgets/animated_widgets.dart';

void main() async {
  try {
    await AppInitializer.initialize();
  } catch (e) {
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
        final authNotifier = ref.read(authProvider.notifier);
        
        // Clear any persistent errors before initializing
        authNotifier.clearAllErrors();
        
        // Wait a moment to ensure error clearing is processed
        await Future.delayed(const Duration(milliseconds: 100));
        
        await authNotifier.initializeAuth();
        
        // Mark app as ready after auth initialization - use addPostFrameCallback to prevent rebuild issues
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
      } catch (e) {
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
      return MaterialApp(
        title: 'BookTrackr',
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedFadeIn(
                  delay: const Duration(milliseconds: 200),
                  child: Icon(
                    Icons.book,
                    size: 80,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 24),
                AnimatedFadeIn(
                  delay: const Duration(milliseconds: 400),
                  child: AnimatedLoadingIndicator(
                    size: 32,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 16),
                AnimatedFadeIn(
                  delay: const Duration(milliseconds: 600),
                  child: Text(
                    'Initializing...',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    // Show main app once ready - Check authentication state
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
            
            // Show loading while auth is initializing
            if (authState.isLoading) {
              return Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedFadeIn(
                        delay: const Duration(milliseconds: 200),
                        child: Icon(
                          Icons.security,
                          size: 80,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 24),
                      AnimatedFadeIn(
                        delay: const Duration(milliseconds: 400),
                        child: AnimatedLoadingIndicator(
                          size: 32,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 16),
                      AnimatedFadeIn(
                        delay: const Duration(milliseconds: 600),
                        child: Text(
                          'Checking authentication...',
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            
            // Show login screen if not authenticated
            if (!authState.isAuthenticated) {
              return const LoginScreen();
            }
            
            // Show home screen if authenticated
            return const HomeScreen();
          },
        ),
      ),
    );
  }
}
