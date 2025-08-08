import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/signup_screen.dart';
import '../../features/auth/presentation/screens/forgot_password_screen.dart';
import '../../features/books/presentation/screens/home_screen.dart';
import '../../features/books/presentation/screens/book_detail_screen.dart';
import '../../features/books/presentation/screens/search_screen.dart';
import '../../features/books/presentation/screens/library_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/goals/presentation/screens/reading_goals_screen.dart';
import '../../features/statistics/presentation/screens/reading_statistics_screen.dart';
import '../../features/social/presentation/screens/social_feed_screen.dart';
import '../../shared/providers/auth_provider.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: authState.isAuthenticated ? '/' : '/login',
    redirect: (context, state) {
      final isAuthenticated = authState.isAuthenticated;
      final isAuthRoute = state.matchedLocation == '/login' || 
                         state.matchedLocation == '/signup';

      if (!isAuthenticated && !isAuthRoute) {
        return '/login';
      }

      if (isAuthenticated && isAuthRoute) {
        return '/';
      }

      return null;
    },
    routes: [
      // Auth Routes
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      
      // Main App Routes
      ShellRoute(
        builder: (context, state, child) {
          return ScaffoldWithNavigationBar(child: child);
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/library',
            builder: (context, state) => const LibraryScreen(),
          ),
          GoRoute(
            path: '/search',
            builder: (context, state) => const SearchScreen(),
          ),
          GoRoute(
            path: '/goals',
            builder: (context, state) => const ReadingGoalsScreen(),
          ),
          GoRoute(
            path: '/statistics',
            builder: (context, state) => const ReadingStatisticsScreen(),
          ),
          GoRoute(
            path: '/social',
            builder: (context, state) => const SocialFeedScreen(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            path: '/book/:id',
            builder: (context, state) => BookDetailScreen(
              bookId: state.pathParameters['id']!,
            ),
          ),
        ],
      ),
    ],
  );
});

class ScaffoldWithNavigationBar extends ConsumerWidget {
  final Widget child;

  const ScaffoldWithNavigationBar({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
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
            icon: Icon(Icons.analytics),
            label: 'Stats',
          ),
          NavigationDestination(
            icon: Icon(Icons.people),
            label: 'Social',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
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
              context.go('/statistics');
              break;
            case 4:
              context.go('/social');
              break;
            case 5:
              context.go('/profile');
              break;
          }
        },
        selectedIndex: _getSelectedIndex(context),
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
      case '/statistics':
        return 3;
      case '/social':
        return 4;
      case '/profile':
        return 5;
      default:
        return 0;
    }
  }
}

// Static router instance for direct access
class AppRouter {
  static final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/library',
        builder: (context, state) => const LibraryScreen(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: '/goals',
        builder: (context, state) => const ReadingGoalsScreen(),
      ),
      GoRoute(
        path: '/statistics',
        builder: (context, state) => const ReadingStatisticsScreen(),
      ),
      GoRoute(
        path: '/social',
        builder: (context, state) => const SocialFeedScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/book/:id',
        builder: (context, state) => BookDetailScreen(
          bookId: state.pathParameters['id']!,
        ),
      ),
    ],
  );
} 