import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/custom_page_transition.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../domain/entities/book_entity.dart';
import '../providers/books_clean_provider.dart';
import '../widgets/book_card.dart';
import 'book_detail_screen.dart';

class SearchScreenClean extends HookConsumerWidget {
  final String? searchQuery;
  final String? category;
  
  const SearchScreenClean({
    super.key,
    this.searchQuery,
    this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          searchQuery?.isNotEmpty == true ? 'Search Results' : 'Search Books',
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: _SearchScreenContent(
        searchQuery: searchQuery,
        category: category,
      ),
    );
  }
}

class _SearchScreenContent extends HookConsumerWidget {
  final String? searchQuery;
  final String? category;
  
  const _SearchScreenContent({
    this.searchQuery,
    this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use the new clean architecture providers
    final searchResults = ref.watch(searchResultsProvider);
    final isLoading = ref.watch(booksLoadingProvider);
    final hasError = ref.watch(booksHasErrorProvider);
    final errorMessage = ref.watch(booksErrorProvider);
    
    final query = searchQuery ?? '';
    final cat = category ?? '';

    // Use useEffect to trigger search when parameters change
    useEffect(() {
      // Use a flag to prevent multiple calls
      bool isInitialized = false;
      
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!isInitialized) {
          isInitialized = true;
          
          try {
            if (cat.isNotEmpty) {
              ref.read(booksCleanProvider.notifier).searchBooks(cat); // Search using category as query
            } else if (query.isNotEmpty) {
              ref.read(booksCleanProvider.notifier).searchBooks(query);
            } else {
              // If no query or category, clear search and load featured books
              ref.read(booksCleanProvider.notifier).clearSearchResults();
              ref.read(booksCleanProvider.notifier).loadFeaturedBooks();
            }
          } catch (e) {
            // Handle any errors gracefully
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Search failed: ${e.toString()}'),
                  backgroundColor: Theme.of(context).colorScheme.error,
                ),
              );
            }
          }
        }
      });
      
      return () {
        isInitialized = false;
      };
    }, [query, cat]); // Re-run effect if query or category changes

    return Column(
      children: [
        if (cat.isNotEmpty) ...[
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.category,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Browsing $cat',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ),
                      Text(
                        'Discover amazing books in this category',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        Expanded(
          child: isLoading
              ? _buildLoadingState(context)
              : hasError
                  ? _buildErrorState(context, errorMessage ?? 'Unknown error', ref)
                  : _buildSearchResults(context, searchResults, ref, cat),
        ),
      ],
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
            'Searching for books...',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults(BuildContext context, List<BookEntity> booksToShow, WidgetRef ref, String category) {
    if (booksToShow.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.search_off,
                size: 60,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'No books found',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              category.isNotEmpty 
                ? 'Try browsing other categories or adjusting your search.'
                : 'Try searching with different keywords.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            GradientButton(
              onPressed: () {
                // Safely navigate back
                if (context.mounted) {
                  Navigator.of(context).pop();
                }
              },
              icon: Icons.arrow_back,
              text: 'Go Back',
            ),
          ],
        ),
      );
    } else {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  '${booksToShow.length} books found',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.7,
              ),
              itemCount: booksToShow.length,
              itemBuilder: (context, index) {
                final book = booksToShow[index];
                return AnimatedListItem(
                  index: index,
                  child: _buildBookCard(context, book),
                );
              },
            ),
          ),
        ],
      );
    }
  }

  Widget _buildBookCard(BuildContext context, BookEntity book) {
    // TODO: Convert BookEntity to Book for BookCard and BookDetailScreen
    // For now, create a simple card that shows the book information
    return Card(
      elevation: 3,
      shadowColor: Colors.black.withOpacity(0.08),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          // Safely navigate to book detail
          if (context.mounted) {
            Navigator.of(context).push(
              CustomPageTransitions.heroTransition(
                child: BookDetailScreen(bookId: book.id, book: null), // TODO: Convert BookEntity to Book
              ),
            );
          }
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Book Cover Placeholder
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.primary.withOpacity(0.1),
                      Theme.of(context).colorScheme.primary.withOpacity(0.05),
                    ],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.book,
                    size: 32,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              
              // Book Title
              Text(
                book.title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              
              // Book Author
              Text(
                book.author,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              
              const Spacer(),
              
              // Book Rating
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${book.averageRating}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
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
              // Safely retry
              try {
                ref.read(booksCleanProvider.notifier).clearError();
                ref.read(booksCleanProvider.notifier).loadFeaturedBooks();
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Retry failed: ${e.toString()}'),
                      backgroundColor: Theme.of(context).colorScheme.error,
                    ),
                  );
                }
              }
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
