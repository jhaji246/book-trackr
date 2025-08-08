import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/books_provider.dart';
import '../widgets/book_card.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final booksState = ref.watch(booksProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BookTrackr'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Navigate to advanced search
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(AppConstants.paddingLarge),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search for books, authors, or genres...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          searchController.clear();
                          ref.read(booksProvider.notifier).clearSearch();
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                ),
              ),
              onSubmitted: (query) {
                if (query.trim().isNotEmpty) {
                  ref.read(booksProvider.notifier).searchBooks(query);
                }
              },
            ),
          ),

          // Error Message
          if (booksState.error != null)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
              padding: const EdgeInsets.all(AppConstants.paddingMedium),
              decoration: BoxDecoration(
                color: AppConstants.errorColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
              ),
              child: Row(
                children: [
                  Icon(Icons.error, color: AppConstants.errorColor),
                  const SizedBox(width: AppConstants.paddingSmall),
                  Expanded(
                    child: Text(
                      booksState.error!,
                      style: TextStyle(color: AppConstants.errorColor),
                    ),
                  ),
                ],
              ),
            ),

          // Content
          Expanded(
            child: booksState.searchQuery != null
                ? _buildSearchResults(context, ref, booksState)
                : _buildHomeContent(context, ref, booksState),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeContent(BuildContext context, WidgetRef ref, BooksState booksState) {
    return RefreshIndicator(
      onRefresh: () async {
        ref.read(booksProvider.notifier).clearSearch();
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured Books Section
            if (booksState.featuredBooks.isNotEmpty) ...[
              Text(
                'Featured Books',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConstants.paddingMedium),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: booksState.featuredBooks.length,
                  itemBuilder: (context, index) {
                    final book = booksState.featuredBooks[index];
                    return Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: AppConstants.paddingMedium),
                      child: BookCard(
                        book: book,
                        onTap: () {
                          context.push('/book/${book.id}');
                        },
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: AppConstants.paddingXLarge),
            ],

            // Popular Categories
            Text(
              'Browse by Category',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            _buildCategoryGrid(context, ref),

            // Recent Searches or Recommendations
            const SizedBox(height: AppConstants.paddingXLarge),
            Text(
              'Discover More',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            _buildDiscoverySection(context, ref),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults(BuildContext context, WidgetRef ref, BooksState booksState) {
    return Column(
      children: [
        // Search Results Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
          child: Row(
            children: [
              Text(
                'Search Results',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                '${booksState.books.length} books found',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppConstants.lightOnSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppConstants.paddingMedium),

        // Books Grid
        Expanded(
          child: booksState.isLoading && booksState.books.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : booksState.books.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search_off,
                            size: 64,
                            color: AppConstants.lightOnSurfaceVariant,
                          ),
                          const SizedBox(height: AppConstants.paddingLarge),
                          Text(
                            'No books found',
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: AppConstants.paddingMedium),
                          Text(
                            'Try searching with different keywords',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppConstants.lightOnSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.all(AppConstants.paddingLarge),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: AppConstants.paddingMedium,
                        mainAxisSpacing: AppConstants.paddingMedium,
                      ),
                      itemCount: booksState.books.length + (booksState.hasMoreBooks ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == booksState.books.length) {
                          // Load more indicator
                          return _buildLoadMoreButton(context, ref, booksState);
                        }
                        
                        final book = booksState.books[index];
                        return BookCard(
                          book: book,
                          onTap: () {
                            context.push('/book/${book.id}');
                          },
                        );
                      },
                    ),
        ),
      ],
    );
  }

  Widget _buildLoadMoreButton(BuildContext context, WidgetRef ref, BooksState booksState) {
    return Center(
      child: booksState.isLoading
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                ref.read(booksProvider.notifier).loadMoreBooks();
              },
              child: const Text('Load More'),
            ),
    );
  }

  Widget _buildCategoryGrid(BuildContext context, WidgetRef ref) {
    final categories = [
      {'name': 'Fiction', 'icon': Icons.auto_stories, 'color': Colors.blue},
      {'name': 'Non-Fiction', 'icon': Icons.school, 'color': Colors.green},
      {'name': 'Science Fiction', 'icon': Icons.rocket, 'color': Colors.purple},
      {'name': 'Mystery', 'icon': Icons.search, 'color': Colors.orange},
      {'name': 'Romance', 'icon': Icons.favorite, 'color': Colors.pink},
      {'name': 'Biography', 'icon': Icons.person, 'color': Colors.teal},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: AppConstants.paddingMedium,
        mainAxisSpacing: AppConstants.paddingMedium,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Card(
          child: InkWell(
            onTap: () {
              ref.read(booksProvider.notifier).getBooksByCategory(category['name'] as String);
            },
            borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
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
                  Icon(
                    category['icon'] as IconData,
                    size: 32,
                    color: category['color'] as Color,
                  ),
                  const SizedBox(height: AppConstants.paddingSmall),
                  Text(
                    category['name'] as String,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDiscoverySection(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _buildDiscoveryCard(
          context,
          'Trending Now',
          Icons.trending_up,
          Colors.orange,
          () {
            ref.read(booksProvider.notifier).getBooksByCategory('bestseller');
          },
        ),
        const SizedBox(height: AppConstants.paddingMedium),
        _buildDiscoveryCard(
          context,
          'New Releases',
          Icons.new_releases,
          Colors.green,
          () {
            ref.read(booksProvider.notifier).getBooksByCategory('new releases');
          },
        ),
        const SizedBox(height: AppConstants.paddingMedium),
        _buildDiscoveryCard(
          context,
          'Classic Literature',
          Icons.book,
          Colors.brown,
          () {
            ref.read(booksProvider.notifier).getBooksByCategory('classic');
          },
        ),
      ],
    );
  }

  Widget _buildDiscoveryCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.paddingLarge),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(AppConstants.paddingMedium),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                ),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: AppConstants.paddingMedium),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: AppConstants.lightOnSurfaceVariant),
            ],
          ),
        ),
      ),
    );
  }
} 