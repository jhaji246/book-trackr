import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/models/book.dart';
import '../../../../shared/models/user_book.dart';
import '../../../../shared/models/reading_status.dart';
import '../../../../shared/providers/bookshelf_provider.dart';
import '../../../../shared/providers/reading_goals_provider.dart';
import '../widgets/progress_dialog.dart';

class BookDetailScreen extends HookConsumerWidget {
  final String bookId;
  final Book? book; // Make book optional

  const BookDetailScreen({
    super.key,
    required this.bookId,
    this.book, // Optional book parameter
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookshelfState = ref.watch(bookshelfProvider);
    final readingGoalsState = ref.watch(readingGoalsProvider);

    // Use provided book, or find in bookshelf, or create a placeholder
    Book displayBook;
    final userBook = bookshelfState.getUserBook(bookId);
    
    if (book != null) {
      // Use the book passed to the screen
      displayBook = book!;
    } else if (userBook != null) {
      // Convert UserBook back to Book for display
      displayBook = Book(
        id: userBook.id,
        title: userBook.title,
        author: userBook.author,
        coverUrl: userBook.coverUrl,
        isbn: userBook.isbn,
        pageCount: userBook.pageCount,
        publishedDate: userBook.publishedDate,
        description: userBook.description,
        genres: userBook.genres,
        averageRating: userBook.averageRating,
        publisher: userBook.publisher,
        language: userBook.language,
        ratingCount: userBook.ratingCount,
      );
    } else {
      // Create a placeholder book - this should rarely happen
      displayBook = Book(
        id: bookId,
        title: 'Book not found',
        author: 'Unknown',
        coverUrl: '',
        isbn: '',
        pageCount: 0,
        publishedDate: '',
        description: '',
        genres: [],
        averageRating: 0.0,
        publisher: '',
        language: '',
        ratingCount: 0,
      );
    }

    final currentStatus = bookshelfState.getBookStatus(bookId);

    return Scaffold(
      appBar: AppBar(
        title: Text(displayBook.title),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
            if (userBook != null) 
              AnimatedFadeIn(
                delay: const Duration(milliseconds: 300),
                child: _buildUserProgress(context, userBook),
              ),
            const SizedBox(height: AppConstants.paddingLarge),
            AnimatedFadeIn(
              delay: const Duration(milliseconds: 400),
              child: _buildActionButtons(
                context,
                ref,
                displayBook,
                currentStatus,
                userBook,
                readingGoalsState,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookHeader(BuildContext context, Book book) {
    return Container(
      padding: const EdgeInsets.all(20),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Book Cover with Shadow
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.15),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                book.coverUrl,
                width: 120,
                height: 180,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.book,
                      size: 50,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'by ${book.author}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ...List.generate(5, (index) {
                      return Icon(
                        index < book.averageRating ? Icons.star : Icons.star_border,
                        color: Colors.amber[600],
                        size: 20,
                      );
                    }),
                    const SizedBox(width: 8),
                    Text(
                      '(${book.averageRating.toStringAsFixed(1)})',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                if (book.genres.isNotEmpty)
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: book.genres.take(3).map((genre) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                          ),
                        ),
                        child: Text(
                          genre,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookDetails(BuildContext context, Book book) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book Details',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            _buildDetailRow('Pages', '${book.pageCount}'),
            _buildDetailRow('Published', book.publishedDate),
            if (book.publisher.isNotEmpty) _buildDetailRow('Publisher', book.publisher),
            if (book.language.isNotEmpty) _buildDetailRow('Language', book.language),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Description',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              book.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.paddingSmall),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildUserProgress(BuildContext context, UserBook userBook) {
    final progress = userBook.currentPage > 0 && userBook.pageCount > 0
        ? (userBook.currentPage / userBook.pageCount * 100).round()
        : 0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Progress',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            LinearProgressIndicator(
              value: progress / 100,
              backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              '${userBook.currentPage} / ${userBook.pageCount} pages',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                const SizedBox(width: AppConstants.paddingSmall),
                Text(
                  'Rating: ${userBook.rating > 0 ? userBook.rating : 'Not rated'}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            if (userBook.notes.isNotEmpty) ...[
              const SizedBox(height: AppConstants.paddingMedium),
              Text(
                'Your Review',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Text(userBook.notes),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(
    BuildContext context,
    WidgetRef ref,
    Book book,
    ReadingStatus currentStatus,
    UserBook? userBook,
    ReadingGoalsState readingGoalsState,
  ) {
    return Column(
      children: [
        if (userBook == null) ...[
          GradientOutlinedButton(
            onPressed: () => _addToShelf(context, ref, book, ReadingStatus.toRead),
            text: 'Add to Want to Read',
            icon: Icons.bookmark_add,
            colors: [Colors.blue, Colors.blue.shade600],
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          GradientOutlinedButton(
            onPressed: () => _addToShelf(context, ref, book, ReadingStatus.reading),
            text: 'Start Reading',
            icon: Icons.play_arrow,
            colors: [Colors.green, Colors.green.shade600],
          ),
        ] else ...[
          GradientOutlinedButton(
            onPressed: () => _showProgressDialog(context, ref, userBook),
            text: 'Update Progress',
            icon: Icons.edit,
            colors: [Colors.orange, Colors.orange.shade600],
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          GradientOutlinedButton(
            onPressed: () => _markAsCompleted(context, ref, userBook, readingGoalsState),
            text: 'Mark as Completed',
            icon: Icons.check_circle,
            colors: [Colors.green, Colors.green.shade600],
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          GradientOutlinedButton(
            onPressed: () => _removeFromShelf(context, ref, book.id),
            text: 'Remove from Shelf',
            icon: Icons.delete,
            colors: [Colors.red, Colors.red.shade600],
          ),
        ],
      ],
    );
  }

  void _addToShelf(BuildContext context, WidgetRef ref, Book book, ReadingStatus status) {
    ref.read(bookshelfProvider.notifier).addBook(book, status: status);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Added to ${status.toString().split('.').last}')),
    );
  }

  void _showProgressDialog(BuildContext context, WidgetRef ref, UserBook userBook) {
    showDialog(
      context: context,
      builder: (context) => ProgressDialog(userBook: userBook),
    );
  }

  void _markAsCompleted(BuildContext context, WidgetRef ref, UserBook userBook, ReadingGoalsState readingGoalsState) {
    ref.read(bookshelfProvider.notifier).updateBookStatus(userBook.id, ReadingStatus.completed);
    
    // Record reading activity for goals
    final pagesRead = userBook.pageCount - userBook.currentPage;
    if (pagesRead > 0) {
      ref.read(readingGoalsProvider.notifier).recordReadingActivity(
        pagesRead: pagesRead,
        bookCompleted: true,
      );
    }
    
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Marked as completed!')),
    );
  }

  void _removeFromShelf(BuildContext context, WidgetRef ref, String bookId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove Book'),
        content: const Text('Are you sure you want to remove this book from your shelf?'),
        actions: [
          GradientTextButton(
            onPressed: () => Navigator.of(context).pop(),
            text: 'Cancel',
          ),
          GradientTextButton(
            onPressed: () {
              ref.read(bookshelfProvider.notifier).removeBook(bookId);
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Removed from shelf')),
              );
            },
            text: 'Remove',
          ),
        ],
      ),
    );
  }
} 