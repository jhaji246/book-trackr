import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/books_provider.dart';
import '../../../../shared/models/book.dart';
import '../widgets/book_card.dart';

class SearchScreen extends HookConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(booksProvider);
    final searchQuery = GoRouterState.of(context).uri.queryParameters['q'] ?? '';
    final category = GoRouterState.of(context).uri.queryParameters['category'] ?? '';

    // Use useEffect to trigger search when parameters change
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final booksNotifier = ref.read(booksProvider.notifier);
        if (category.isNotEmpty) {
          booksNotifier.searchBooks(category); // Search using category as query
        } else if (searchQuery.isNotEmpty) {
          booksNotifier.searchBooks(searchQuery);
        } else {
          // If no query or category, clear search and load featured books
          booksNotifier.clearSearch();
          booksNotifier.loadFeaturedBooks();
        }
      });
      return null; // No cleanup needed
    }, [searchQuery, category]); // Re-run effect if query or category changes

    return Scaffold(
      appBar: AppBar(
        title: Text(category.isNotEmpty ? 'Category: $category' : 'Search'),
        backgroundColor: AppConstants.lightSurface,
        foregroundColor: AppConstants.lightOnSurface,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: booksState.isLoading
                ? const Center(child: CircularProgressIndicator())
                : booksState.error != null
                    ? _buildErrorState(context, booksState.error!, ref)
                    : _buildSearchResults(context, booksState, ref, category),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults(BuildContext context, booksState, WidgetRef ref, String category) {
    // booksState.books should now contain the results of the searchBooks call
    final List<Book> booksToShow = booksState.books;

    if (booksToShow.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 80,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'No books found in ${category.isNotEmpty ? category : 'your search'}',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              'Try browsing other categories or adjusting your search.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    } else {
      return GridView.builder(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: AppConstants.paddingMedium,
          mainAxisSpacing: AppConstants.paddingMedium,
          childAspectRatio: 0.7,
        ),
        itemCount: booksToShow.length,
        itemBuilder: (context, index) {
          final book = booksToShow[index];
          return BookCard(
            book: book,
            onTap: () => context.push('/book/${book.id}'),
          );
        },
      );
    }
  }

  Widget _buildErrorState(BuildContext context, String error, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 80,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: AppConstants.paddingMedium),
          Text(
            'Error: $error',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          ElevatedButton(
            onPressed: () {
              ref.read(booksProvider.notifier).loadFeaturedBooks();
              ref.read(booksProvider.notifier).clearError();
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
} 