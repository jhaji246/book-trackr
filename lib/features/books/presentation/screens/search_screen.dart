import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/books_provider.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(booksProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Books'),
        backgroundColor: AppConstants.lightSurface,
        foregroundColor: AppConstants.lightOnSurface,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(AppConstants.paddingMedium),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for books...',
                prefixIcon: const Icon(Icons.search),
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
          ),
          // Search Results
          Expanded(
            child: booksState.isLoading
                ? const Center(child: CircularProgressIndicator())
                : booksState.error != null
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline,
                              size: 64,
                              color: AppConstants.lightOnSurfaceVariant,
                            ),
                            const SizedBox(height: AppConstants.paddingMedium),
                            Text(
                              'Error',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: AppConstants.paddingSmall),
                            Text(
                              booksState.error!,
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    : booksState.books.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 64,
                                  color: AppConstants.lightOnSurfaceVariant,
                                ),
                                const SizedBox(height: AppConstants.paddingMedium),
                                Text(
                                  'Search for books',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: AppConstants.paddingSmall),
                                Text(
                                  'Enter a book title, author, or genre to find your next read',
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppConstants.lightOnSurfaceVariant,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.all(AppConstants.paddingMedium),
                            itemCount: booksState.books.length,
                            itemBuilder: (context, index) {
                              final book = booksState.books[index];
                              return Card(
                                margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
                                child: ListTile(
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                                    child: Image.network(
                                      book.coverUrl,
                                      width: 50,
                                      height: 75,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Container(
                                          width: 50,
                                          height: 75,
                                          color: Colors.grey[300],
                                          child: const Icon(Icons.book, size: 24),
                                        );
                                      },
                                    ),
                                  ),
                                  title: Text(
                                    book.title,
                                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        book.author,
                                        style: Theme.of(context).textTheme.bodyMedium,
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 16,
                                            color: Colors.yellow[700],
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            book.averageRating.toStringAsFixed(1),
                                            style: Theme.of(context).textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    // Navigate to book detail
                                  },
                                ),
                              );
                            },
                          ),
          ),
        ],
      ),
    );
  }
} 