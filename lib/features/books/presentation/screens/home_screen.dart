import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/books_provider.dart';
import '../../../../shared/providers/recommendation_provider.dart';
import '../../../../shared/models/book.dart';
import '../widgets/book_card.dart';
import '../widgets/recommendation_card.dart';
import '../../../../core/widgets/theme_toggle.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(booksProvider);
    final searchController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('BookTrackr'),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        automaticallyImplyLeading: false,
        actions: [
          const ThemeToggle(),
          IconButton(
            onPressed: () => context.go('/profile'),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildSearchBar(context, searchController, ref),
          Expanded(
            child: booksState.isLoading
                ? const Center(child: CircularProgressIndicator())
                : booksState.error != null
                    ? _buildErrorState(context, booksState.error!, ref)
                    : _buildContent(context, ref, booksState),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context, TextEditingController controller, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Search for books...',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref.read(booksProvider.notifier).searchBooks(controller.text);
              }
            },
            icon: const Icon(Icons.search),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
          ),
        ),
        onSubmitted: (query) {
          if (query.isNotEmpty) {
            ref.read(booksProvider.notifier).searchBooks(query);
          }
        },
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String error, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: AppConstants.paddingLarge),
          Text(
            'Error',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.paddingMedium),
          Text(
            error,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppConstants.paddingLarge),
          FilledButton(
            onPressed: () {
              ref.read(booksProvider.notifier).clearError();
              ref.read(booksProvider.notifier).loadFeaturedBooks();
            },
            child: const Text('Retry'),
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
              RecommendationSection(
                title: '🤖 Recommended for You',
                books: recommendationState.personalizedRecommendations,
                getReasons: (book) => ref.read(recommendationProvider.notifier).getRecommendationReasons(book),
                onBookTap: () {},
              ),

            // Trending Books Section
            if (recommendationState.trendingBooks.isNotEmpty)
              RecommendationSection(
                title: '🔥 Trending Now',
                books: recommendationState.trendingBooks,
                getReasons: (book) => ['Popular and highly rated'],
                onBookTap: () {},
              ),

            // Featured Books Section
            if (booksState.featuredBooks.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.all(AppConstants.paddingMedium),
                child: Text(
                  'Featured Books',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingMedium),
                  itemCount: booksState.featuredBooks.length,
                  itemBuilder: (context, index) {
                    final book = booksState.featuredBooks[index];
                    return Container(
                      width: 100,
                      margin: const EdgeInsets.only(right: AppConstants.paddingMedium),
                      child: BookCard(
                        book: book,
                        onTap: () => context.push('/book/${book.id}'),
                      ),
                    );
                  },
                ),
              ),
            ],

            // Browse by Category Section
            Padding(
              padding: const EdgeInsets.all(AppConstants.paddingMedium),
              child: Text(
                'Browse by Category',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildCategoryGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryGrid(BuildContext context) {
    final categories = [
      {'name': 'Fiction', 'icon': Icons.book, 'color': Colors.blue},
      {'name': 'Non-Fiction', 'icon': Icons.school, 'color': Colors.green},
      {'name': 'Science Fiction', 'icon': Icons.rocket_launch, 'color': Colors.purple},
      {'name': 'Mystery', 'icon': Icons.search, 'color': Colors.orange},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingMedium),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: AppConstants.paddingMedium,
          mainAxisSpacing: AppConstants.paddingMedium,
          childAspectRatio: 2.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Card(
            child: InkWell(
              onTap: () {
                // Navigate to category
              },
              borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      category['icon'] as IconData,
                      size: 24,
                      color: category['color'] as Color,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      category['name'] as String,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.bold,
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
    );
  }
} 