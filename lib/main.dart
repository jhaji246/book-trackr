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
    WidgetsFlutterBinding.ensureInitialized();
    
    // Initialize all app services (even if Firebase fails)
    try {
      await AppInitializer.initialize();
    } catch (e) {
      // Continue without Firebase - show login page with error handling
      print('Firebase initialization failed: $e');
    }
    
    runApp(const ProviderScope(child: BookTrackrApp()));
  } catch (e) {
    // Critical initialization failed
    runApp(FirebaseInitErrorApp(error: e.toString()));
  }
}

/// App shown when critical initialization fails
class FirebaseInitErrorApp extends StatelessWidget {
  final String error;
  
  const FirebaseInitErrorApp({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookTrackr - Initialization Error',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'App Initialization Failed',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Unable to initialize the app. Please check your internet connection and try again.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.red.shade200),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Error Details:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          error,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      // Restart the app
                      main();
                    },
                    child: Text('Retry'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
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
        
        // Try to initialize auth (this will fail gracefully if Firebase isn't configured)
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
