import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../shared/providers/auth_provider.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/signup_screen.dart';
import '../../features/auth/presentation/screens/forgot_password_screen.dart';
import '../../features/books/presentation/screens/home_screen.dart';
import '../../features/books/presentation/screens/search_screen.dart';
import '../../features/books/presentation/screens/book_detail_screen.dart';
import '../../features/books/presentation/screens/library_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/statistics/presentation/screens/reading_statistics_screen.dart';
import '../../features/social/presentation/screens/social_feed_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final isAuthenticated = authState.isAuthenticated;
      final isAuthRoute = state.matchedLocation == '/login' || 
                         state.matchedLocation == '/signup' || 
                         state.matchedLocation == '/forgot-password';

      // If user is not authenticated and trying to access protected route
      if (!isAuthenticated && !isAuthRoute) {
        return '/login';
      }

      // If user is authenticated and trying to access auth routes
      if (isAuthenticated && isAuthRoute) {
        return '/';
      }

      return null;
    },
    routes: [
      // Auth routes
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      
      // Main app routes
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: '/book/:id',
        builder: (context, state) {
          final bookId = state.pathParameters['id']!;
          return BookDetailScreen(bookId: bookId);
        },
      ),
      GoRoute(
        path: '/library',
        builder: (context, state) => const LibraryScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/statistics',
        builder: (context, state) => const ReadingStatisticsScreen(),
      ),
      GoRoute(
        path: '/social',
        builder: (context, state) => const SocialFeedScreen(),
      ),
    ],
  );
});

class ScaffoldWithNavigationBar extends ConsumerWidget {
  final Widget child;

  const ScaffoldWithNavigationBar({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          switch (index) {
            case 0:
              context.go('/');
              break;
            case 1:
              context.go('/library');
              break;
            case 2:
              context.go('/search');
              break;
            case 3:
              context.go('/profile');
              break;
          }
        },
        selectedIndex: _getSelectedIndex(context),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    switch (location) {
      case '/':
        return 0;
      case '/library':
        return 1;
      case '/search':
        return 2;
      case '/profile':
        return 3;
      default:
        return 0;
    }
  }
} 