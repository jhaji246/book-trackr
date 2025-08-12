import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../shared/providers/auth_provider.dart';
import '../../core/widgets/auth_loading_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/signup_screen.dart';
import '../../features/auth/presentation/screens/forgot_password_screen.dart';
import '../../features/books/presentation/screens/home_screen.dart';
import '../../features/books/presentation/screens/search_screen.dart';
import '../../features/books/presentation/screens/book_detail_screen.dart';
import '../../features/books/presentation/screens/library_screen.dart';
import '../../features/books/presentation/screens/reading_lists_screen.dart';
import '../../features/books/presentation/screens/book_reviews_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/statistics/presentation/screens/reading_statistics_screen.dart';
import '../../features/social/presentation/screens/social_feed_screen.dart';
import '../../shared/models/user_book.dart';
import '../../shared/models/reading_status.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      // Debug logging
      

      // Show loading screen while Firebase is initializing
      if (authState.isLoading) {

        return '/loading';
      }

      final isAuthenticated = authState.isAuthenticated;
      final isAuthRoute = state.matchedLocation == '/login' || 
                         state.matchedLocation == '/signup' || 
                         state.matchedLocation == '/forgot-password' ||
                         state.matchedLocation == '/loading';

      // If user is not authenticated and trying to access protected route
      if (!isAuthenticated && !isAuthRoute) {

        return '/login';
      }

      // If user is authenticated and trying to access auth routes
      if (isAuthenticated && isAuthRoute) {

        return '/';
      }

      // If user is authenticated and on loading route, go to home
      if (isAuthenticated && state.matchedLocation == '/loading') {

        return '/';
      }

      
      return null;
    },
    routes: [
      // Loading route
      GoRoute(
        path: '/loading',
        builder: (context, state) => const AuthLoadingScreen(),
      ),
      
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
        builder: (context, state) => const ScaffoldWithNavigationBar(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const ScaffoldWithNavigationBar(
          child: SearchScreen(),
        ),
      ),
      GoRoute(
        path: '/book/:id',
        builder: (context, state) {
          final bookId = state.pathParameters['id']!;
          return ScaffoldWithNavigationBar(
            child: BookDetailScreen(bookId: bookId),
          );
        },
      ),
      GoRoute(
        path: '/book/:id/reviews',
        builder: (context, state) {
          final bookId = state.pathParameters['id']!;
          // TODO: Get book data from provider or pass as parameter
          // For now, create a placeholder book
          return ScaffoldWithNavigationBar(
            child: BookReviewsScreen(book: _createPlaceholderBook(bookId)),
          );
        },
      ),
      GoRoute(
        path: '/library',
        builder: (context, state) => const ScaffoldWithNavigationBar(
          child: LibraryScreen(),
        ),
      ),
      GoRoute(
        path: '/reading-lists',
        builder: (context, state) => const ScaffoldWithNavigationBar(
          child: ReadingListsScreen(),
        ),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ScaffoldWithNavigationBar(
          child: ProfileScreen(),
        ),
      ),
      GoRoute(
        path: '/statistics',
        builder: (context, state) => const ScaffoldWithNavigationBar(
          child: ReadingStatisticsScreen(),
        ),
      ),
      GoRoute(
        path: '/social',
        builder: (context, state) => const ScaffoldWithNavigationBar(
          child: SocialFeedScreen(),
        ),
      ),
    ],
  );
});

// Temporary placeholder function - will be replaced with actual book data
UserBook _createPlaceholderBook(String bookId) {
  return UserBook(
    id: bookId,
    title: 'Book Title',
    author: 'Author Name',
    description: 'Book description',
    coverUrl: 'https://via.placeholder.com/150x200',
    averageRating: 4.0,
    ratingCount: 0,
    pageCount: 300,
    isbn: '1234567890',
    publishedDate: '2024-01-01',
    genres: ['Fiction'],
    publisher: 'Publisher',
    language: 'en',
    status: ReadingStatus.toRead,
    dateAdded: DateTime.now(),
    currentPage: 0,
    notes: '',
    rating: 0,
  );
}

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
              context.go('/reading-lists');
              break;
            case 3:
              context.go('/search');
              break;
            case 4:
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
            icon: Icon(Icons.bookmark),
            label: 'Lists',
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
      case '/reading-lists':
        return 2;
      case '/search':
        return 3;
      case '/profile':
        return 4;
      default:
        return 0;
    }
  }
} 