import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/providers/books_provider.dart';
import '../../../../shared/providers/recommendation_provider.dart';
import '../../../../shared/models/book.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../widgets/book_card.dart';
import '../widgets/recommendation_card.dart';
import '../../../../core/widgets/theme_toggle.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import 'book_detail_screen.dart';
import 'search_screen.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  // Categories for the home screen
  static const List<Map<String, dynamic>> categories = [
    {
      'name': 'Fiction',
      'icon': Icons.book,
      'color': Colors.blue,
      'description': 'Stories and novels'
    },
    {
      'name': 'Non-Fiction',
      'icon': Icons.school,
      'color': Colors.green,
      'description': 'Knowledge and learning'
    },
    {
      'name': 'Science Fiction',
      'icon': Icons.rocket_launch,
      'color': Colors.purple,
      'description': 'Future and space'
    },
    {
      'name': 'Mystery',
      'icon': Icons.search,
      'color': Colors.orange,
      'description': 'Thrillers and suspense'
    },
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(booksProvider.select((state) => state.isLoading));
    final error = ref.watch(booksProvider.select((state) => state.error));
    final booksState = ref.watch(booksProvider);
    final searchController = useTextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.book,
              color: Theme.of(context).colorScheme.primary,
              size: 28,
            ),
            const SizedBox(width: 8),
            Text(
              'BookTrackr',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          const ThemeToggle(),
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            ),
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
              child: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildSearchBar(context, searchController, ref),
          Expanded(
            child: isLoading
                ? _buildLoadingState(context)
                : error != null
                    ? _buildErrorState(context, error, ref)
                    : _buildContent(context, ref, booksState),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context, TextEditingController controller, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Search for books, authors, or genres...',
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.primary,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref.read(booksProvider.notifier).searchBooks(controller.text);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(searchQuery: controller.text),
                  ),
                );
              }
            },
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        onSubmitted: (query) {
          if (query.isNotEmpty) {
            ref.read(booksProvider.notifier).searchBooks(query);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchScreen(searchQuery: query),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildLoadingState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Loading your reading journey...',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String error, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.errorContainer,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.error_outline,
              size: 48,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Oops! Something went wrong',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            error,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          GradientButton(
            onPressed: () {
              ref.read(booksProvider.notifier).clearError();
              ref.read(booksProvider.notifier).loadFeaturedBooks();
            },
            icon: Icons.refresh,
            text: 'Try Again',
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, WidgetRef ref, booksState) {
    final recommendationState = ref.watch(recommendationProvider);

    return RefreshIndicator(
      onRefresh: () async {
        ref.read(booksProvider.notifier).loadFeaturedBooks();
        ref.read(recommendationProvider.notifier).refreshRecommendations();
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AI Recommendations Section
            if (recommendationState.personalizedRecommendations.isNotEmpty)
              _buildSectionHeader(context, '🤖 Recommended for You', 'Based on your reading history'),
            if (recommendationState.personalizedRecommendations.isNotEmpty)
              RecommendationSection(
                title: '🤖 Recommended for You',
                books: recommendationState.personalizedRecommendations,
                getReasons: (book) => ref.read(recommendationProvider.notifier).getRecommendationReasons(book),
                onBookTap: (book) => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BookDetailScreen(bookId: book.id),
                  ),
                ),
              ),

            // Trending Books Section
            if (recommendationState.trendingBooks.isNotEmpty)
              _buildSectionHeader(context, '🔥 Trending Now', 'Popular books everyone is reading'),
            if (recommendationState.trendingBooks.isNotEmpty)
              RecommendationSection(
                title: '🔥 Trending Now',
                books: recommendationState.trendingBooks,
                getReasons: (book) => ['Popular and highly rated'],
                onBookTap: (book) => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BookDetailScreen(bookId: book.id),
                  ),
                ),
              ),

            // Featured Books Section
            if (booksState.featuredBooks.isNotEmpty) ...[
              _buildSectionHeader(context, '📚 Featured Books', 'Handpicked for you'),
              _buildFeaturedBooks(context, booksState.featuredBooks),
            ],

            // Browse by Category Section
            _buildSectionHeader(context, '📂 Browse by Category', 'Discover new genres'),
            _buildCategoryGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedBooks(BuildContext context, List<Book> books) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Container(
            width: 120,
            margin: const EdgeInsets.only(right: 16),
            child: BookCard(
              book: book,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(bookId: book.id),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCategoryGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 280, // Fixed height to prevent overflow
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.4,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(category: category['name'] as String),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        (category['color'] as Color).withValues(alpha: 0.1),
                        (category['color'] as Color).withValues(alpha: 0.05),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: (category['color'] as Color).withValues(alpha: 0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          category['icon'] as IconData,
                          size: 20,
                          color: category['color'] as Color,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        category['name'] as String,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        category['description'] as String,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
} 