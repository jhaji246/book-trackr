import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/models/book.dart';
import '../../../../shared/providers/bookshelf_provider.dart';
import '../../../../shared/providers/books_provider.dart';
import '../../../../shared/providers/reading_goals_provider.dart';
import '../widgets/progress_dialog.dart';

class BookDetailScreen extends HookConsumerWidget {
  final String bookId;

  const BookDetailScreen({
    super.key,
    required this.bookId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(booksProvider);
    final bookshelfState = ref.watch(bookshelfProvider);
    final readingGoalsState = ref.watch(readingGoalsProvider);

    final book = booksState.books.firstWhere(
      (book) => book.id == bookId,
      orElse: () => Book(
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
      ),
    );

    final userBook = bookshelfState.getUserBook(bookId);
    final currentStatus = bookshelfState.getBookStatus(bookId);

    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
        backgroundColor: AppConstants.lightSurface,
        foregroundColor: AppConstants.lightOnSurface,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBookHeader(context, book),
            const SizedBox(height: AppConstants.paddingLarge),
            _buildBookDetails(context, book),
            const SizedBox(height: AppConstants.paddingLarge),
            if (userBook != null) _buildUserProgress(context, userBook),
            const SizedBox(height: AppConstants.paddingLarge),
            _buildActionButtons(
              context,
              ref,
              book,
              currentStatus,
              userBook,
              readingGoalsState,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookHeader(BuildContext context, Book book) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
          child: Image.network(
            book.coverUrl,
            width: 120,
            height: 180,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 120,
                height: 180,
                color: Colors.grey[300],
                child: const Icon(Icons.book, size: 50),
              );
            },
          ),
        ),
        const SizedBox(width: AppConstants.paddingLarge),
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
              const SizedBox(height: AppConstants.paddingSmall),
              Text(
                'by ${book.author}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppConstants.lightOnSurfaceVariant,
                ),
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Row(
                children: [
                  ...List.generate(5, (index) {
                    return Icon(
                      index < book.averageRating ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                      size: 20,
                    );
                  }),
                  const SizedBox(width: AppConstants.paddingSmall),
                  Text(
                    '(${book.averageRating.toStringAsFixed(1)})',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              if (book.genres.isNotEmpty)
                Wrap(
                  spacing: AppConstants.paddingSmall,
                  children: book.genres.take(3).map((genre) {
                    return Chip(
                      label: Text(genre),
                      backgroundColor: AppConstants.primaryColor.withValues(alpha: 0.1),
                      labelStyle: TextStyle(color: AppConstants.primaryColor),
                    );
                  }).toList(),
                ),
            ],
          ),
        ),
      ],
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
    final progress = userBook.currentPage > 0 && userBook.book.pageCount > 0
        ? (userBook.currentPage / userBook.book.pageCount * 100).round()
        : 0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Progress',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${userBook.currentPage} / ${userBook.book.pageCount} pages',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: AppConstants.paddingSmall),
                      LinearProgressIndicator(
                        value: progress / 100,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(AppConstants.primaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Column(
                  children: [
                    Text(
                      '$progress%',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppConstants.primaryColor,
                      ),
                    ),
                    Text(
                      'Complete',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
            if (userBook.rating > 0) ...[
              const SizedBox(height: AppConstants.paddingMedium),
              Row(
                children: [
                  Text(
                    'Your Rating: ',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  ...List.generate(5, (index) {
                    return Icon(
                      index < userBook.rating ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                      size: 20,
                    );
                  }),
                ],
              ),
            ],
            if (userBook.review.isNotEmpty) ...[
              const SizedBox(height: AppConstants.paddingMedium),
              Text(
                'Your Review:',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Text(userBook.review),
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
    BookStatus currentStatus,
    UserBook? userBook,
    ReadingGoalsState readingGoalsState,
  ) {
    return Column(
      children: [
        if (userBook == null) ...[
          _buildActionButton(
            context,
            'Add to Want to Read',
            Icons.bookmark_add,
            Colors.blue,
            () => _addToShelf(context, ref, book, const BookStatus.wantToRead()),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          _buildActionButton(
            context,
            'Start Reading',
            Icons.play_arrow,
            Colors.green,
            () => _addToShelf(context, ref, book, const BookStatus.reading()),
          ),
        ] else ...[
          _buildActionButton(
            context,
            'Update Progress',
            Icons.edit,
            Colors.orange,
            () => _showProgressDialog(context, ref, userBook),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          _buildActionButton(
            context,
            'Mark as Completed',
            Icons.check_circle,
            Colors.green,
            () => _markAsCompleted(context, ref, userBook, readingGoalsState),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          _buildActionButton(
            context,
            'Remove from Shelf',
            Icons.delete,
            Colors.red,
            () => _removeFromShelf(context, ref, book.id),
          ),
        ],
      ],
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String text,
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: color),
        label: Text(text),
        style: OutlinedButton.styleFrom(
          foregroundColor: color,
          side: BorderSide(color: color),
          padding: const EdgeInsets.symmetric(vertical: AppConstants.paddingMedium),
        ),
      ),
    );
  }

  void _addToShelf(BuildContext context, WidgetRef ref, Book book, BookStatus status) {
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
    ref.read(bookshelfProvider.notifier).updateBookStatus(userBook.book.id, const BookStatus.completed());
    
    // Record reading activity for goals
    final pagesRead = userBook.book.pageCount - userBook.currentPage;
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
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              ref.read(bookshelfProvider.notifier).removeBook(bookId);
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Removed from shelf')),
              );
            },
            child: const Text('Remove'),
          ),
        ],
      ),
    );
  }
} 