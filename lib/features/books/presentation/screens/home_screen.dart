import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/books_provider.dart';
import '../../../../shared/models/book.dart';
import '../widgets/book_card.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(booksProvider);
    final searchController = useTextEditingController();

    return WillPopScope(
      onWillPop: () async {
        // Handle back button press
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        } else {
          // If we're at the root, show exit confirmation
          final shouldExit = await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Are you sure you want to exit BookTrackr?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Cancel'),
                ),
                FilledButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Exit'),
                ),
              ],
            ),
          );
          return shouldExit ?? false;
        }
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BookTrackr'),
          backgroundColor: AppConstants.lightSurface,
          foregroundColor: AppConstants.lightOnSurface,
          automaticallyImplyLeading: false, // Don't show back button on home
          actions: [
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
                      : _buildContent(context, booksState, ref),
            ),
          ],
        ),
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
            color: AppConstants.lightOnSurfaceVariant,
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

  Widget _buildContent(BuildContext context, BooksState booksState, WidgetRef ref) {
    if (booksState.searchQuery != null) {
      return _buildSearchResults(context, booksState, ref);
    } else {
      return _buildHomeContent(context, booksState, ref);
    }
  }

  Widget _buildSearchResults(BuildContext context, BooksState booksState, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppConstants.paddingMedium),
          child: Row(
            children: [
              Text(
                'Search Results for "${booksState.searchQuery}"',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  ref.read(booksProvider.notifier).clearSearch();
                },
                child: const Text('Clear'),
              ),
            ],
          ),
        ),
        Expanded(
          child: booksState.books.isEmpty
              ? _buildEmptySearchState(context)
              : _buildBooksGrid(context, booksState.books),
        ),
      ],
    );
  }

  Widget _buildEmptySearchState(BuildContext context) {
    return Center(
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
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppConstants.lightOnSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeContent(BuildContext context, BooksState booksState, WidgetRef ref) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFeaturedSection(context, booksState.featuredBooks),
          const SizedBox(height: AppConstants.paddingLarge),
          _buildCategoriesSection(context, ref),
        ],
      ),
    );
  }

  Widget _buildFeaturedSection(BuildContext context, List<Book> featuredBooks) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Featured Books',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppConstants.paddingMedium),
        SizedBox(
          height: 300,
          child: featuredBooks.isEmpty
              ? _buildEmptyFeaturedState(context)
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredBooks.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: AppConstants.paddingMedium),
                      child: BookCard(book: featuredBooks[index]),
                    );
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildEmptyFeaturedState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.book,
            size: 64,
            color: AppConstants.lightOnSurfaceVariant,
          ),
          const SizedBox(height: AppConstants.paddingMedium),
          Text(
            'No featured books',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppConstants.lightOnSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection(BuildContext context, WidgetRef ref) {
    final categories = [
      {'name': 'Fiction', 'icon': Icons.book, 'color': Colors.blue},
      {'name': 'Non-Fiction', 'icon': Icons.school, 'color': Colors.green},
      {'name': 'Science Fiction', 'icon': Icons.rocket_launch, 'color': Colors.purple},
      {'name': 'Mystery', 'icon': Icons.search, 'color': Colors.orange},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Browse by Category',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppConstants.paddingMedium),
        GridView.builder(
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
                  ref.read(booksProvider.notifier).searchBooks(category['name'] as String);
                },
                borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                child: Padding(
                  padding: const EdgeInsets.all(AppConstants.paddingMedium),
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
        ),
      ],
    );
  }

  Widget _buildBooksGrid(BuildContext context, List<Book> books) {
    return GridView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: AppConstants.paddingMedium,
        mainAxisSpacing: AppConstants.paddingMedium,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        return BookCard(book: books[index]);
      },
    );
  }
} 