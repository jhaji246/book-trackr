import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../domain/entities/book_entity.dart';
import '../providers/books_clean_provider.dart';

class BookDetailScreenClean extends HookConsumerWidget {
  final String bookId;
  final BookEntity? book; // Make book optional

  const BookDetailScreenClean({
    super.key,
    required this.bookId,
    this.book, // Optional book parameter
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use the new clean architecture providers
    final isLoading = ref.watch(booksLoadingProvider);
    final hasError = ref.watch(booksHasErrorProvider);
    final errorMessage = ref.watch(booksErrorProvider);

    // Use provided book or try to fetch it
    BookEntity? displayBook = book;
    
    // If no book provided, try to fetch it
    useEffect(() {
      if (displayBook == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(booksCleanProvider.notifier).getBookById(bookId);
        });
      }
      return null;
    }, []);

    // Show loading state while fetching book
    if (displayBook == null && isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Loading...'),
          backgroundColor: Theme.of(context).colorScheme.surface,
          foregroundColor: Theme.of(context).colorScheme.onSurface,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // Show error state if there's an error
    if (hasError && displayBook == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
          backgroundColor: Theme.of(context).colorScheme.surface,
          foregroundColor: Theme.of(context).colorScheme.onSurface,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: _buildErrorState(context, errorMessage ?? 'Unknown error', ref),
      );
    }

    // If still no book, show not found
    if (displayBook == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Book Not Found'),
          backgroundColor: Theme.of(context).colorScheme.surface,
          foregroundColor: Theme.of(context).colorScheme.onSurface,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: _buildNotFoundState(context),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(displayBook.title),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {
              // TODO: Implement add to reading list functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Add to reading list - Coming soon!'),
                ),
              );
            },
            tooltip: 'Add to Reading List',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedFadeIn(
              delay: const Duration(milliseconds: 100),
              child: _buildBookHeader(context, displayBook),
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            AnimatedFadeIn(
              delay: const Duration(milliseconds: 200),
              child: _buildBookDetails(context, displayBook),
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            AnimatedFadeIn(
              delay: const Duration(milliseconds: 300),
              child: _buildBookActions(context, displayBook),
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            AnimatedFadeIn(
              delay: const Duration(milliseconds: 400),
              child: _buildBookDescription(context, displayBook),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookHeader(BuildContext context, BookEntity book) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Book Cover
        Container(
          width: 120,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
              ],
            ),
          ),
          child: Center(
            child: Icon(
              Icons.book,
              size: 48,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        
        const SizedBox(width: AppConstants.paddingLarge),
        
        // Book Info
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Text(
                'by ${book.author}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Rating
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${book.averageRating}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '(${book.ratingCount} ratings)',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Reading Progress (if available)
              if (book.currentPage != null && book.currentPage! > 0) ...[
                Text(
                  'Reading Progress',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: AppConstants.paddingSmall),
                LinearProgressIndicator(
                  value: book.readingProgress / 100,
                  backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: AppConstants.paddingSmall),
                Text(
                  '${book.currentPage} of ${book.pageCount} pages (${book.readingProgress.toStringAsFixed(1)}%)',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBookDetails(BuildContext context, BookEntity book) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book Details',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            
            _buildDetailRow('Pages', '${book.pageCount}'),
            _buildDetailRow('Publisher', book.publisher),
            _buildDetailRow('Published', book.publishedDate),
            _buildDetailRow('Language', book.language),
            _buildDetailRow('ISBN', book.isbn),
            if (book.genres.isNotEmpty)
              _buildDetailRow('Genres', book.genres.join(', ')),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value.isNotEmpty ? value : 'Not available',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookActions(BuildContext context, BookEntity book) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Actions',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            
            Row(
              children: [
                Expanded(
                  child: GradientButton(
                    onPressed: () {
                      // TODO: Implement start reading functionality
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Start reading - Coming soon!'),
                        ),
                      );
                    },
                    text: 'Start Reading',
                    icon: Icons.play_arrow,
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // TODO: Implement add to bookshelf functionality
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Added to bookshelf - Coming soon!'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.bookmark_add),
                    label: const Text('Add to Bookshelf'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookDescription(BuildContext context, BookEntity book) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              book.description.isNotEmpty 
                ? book.description 
                : 'No description available for this book.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String error, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
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
              'Error Loading Book',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              error,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            GradientButton(
              onPressed: () {
                ref.read(booksCleanProvider.notifier).clearError();
                ref.read(booksCleanProvider.notifier).getBookById(bookId);
              },
              text: 'Try Again',
              icon: Icons.refresh,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotFoundState(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Book Not Found',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              'The book you\'re looking for could not be found.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            GradientButton(
              onPressed: () => Navigator.of(context).pop(),
              text: 'Go Back',
              icon: Icons.arrow_back,
            ),
          ],
        ),
      ),
    );
  }
}
