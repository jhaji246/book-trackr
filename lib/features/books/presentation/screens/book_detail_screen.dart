import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/models/book.dart';
import '../../../../shared/providers/books_provider.dart';
import '../../../../shared/providers/bookshelf_provider.dart';
import '../widgets/progress_dialog.dart';

class BookDetailScreen extends ConsumerWidget {
  final String bookId;

  const BookDetailScreen({
    super.key,
    required this.bookId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksState = ref.watch(booksProvider);
    final bookshelfState = ref.watch(bookshelfProvider);
    final bookshelfNotifier = ref.read(bookshelfProvider.notifier);
    final userBook = bookshelfNotifier.getUserBook(bookId);
    final currentStatus = bookshelfNotifier.getBookStatus(bookId);

    // Try to get book from current state first
    Book? book = booksState.books.firstWhere(
      (b) => b.id == bookId,
      orElse: () => booksState.featuredBooks.firstWhere(
        (b) => b.id == bookId,
        orElse: () => Book(
          id: bookId,
          title: 'Loading...',
          author: 'Loading...',
        ),
      ),
    );

    // If book not found in state, fetch it
    if (book.title == 'Loading...') {
      ref.read(booksProvider.notifier).getBookById(bookId).then((fetchedBook) {
        if (fetchedBook != null) {
          // Book will be updated in the UI when the provider state changes
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
        actions: [
          if (userBook != null) ...[
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => ProgressDialog(
                    userBook: userBook,
                    book: book,
                  ),
                );
              },
              icon: const Icon(Icons.edit),
              tooltip: 'Update Progress',
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                switch (value) {
                  case 'remove':
                    ref.read(bookshelfProvider.notifier).removeBookFromShelf(userBook.id);
                    break;
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'remove',
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.red),
                      SizedBox(width: 8),
                      Text('Remove from shelf'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
      body: book.title == 'Loading...'
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(AppConstants.paddingLarge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Book Cover and Basic Info
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Cover Image
                      Container(
                        width: 120,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                          child: book.coverUrl != null
                              ? Image.network(
                                  book.coverUrl!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Colors.grey[300],
                                      child: const Icon(
                                        Icons.book,
                                        size: 40,
                                        color: Colors.grey,
                                      ),
                                    );
                                  },
                                )
                              : Container(
                                  color: Colors.grey[300],
                                  child: const Icon(
                                    Icons.book,
                                    size: 40,
                                    color: Colors.grey,
                                  ),
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
                            ),
                            const SizedBox(height: AppConstants.paddingSmall),
                            Text(
                              'by ${book.author}',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: AppConstants.lightOnSurfaceVariant,
                              ),
                            ),
                            const SizedBox(height: AppConstants.paddingMedium),

                            // Current Status
                            if (currentStatus != null)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppConstants.paddingMedium,
                                  vertical: AppConstants.paddingSmall,
                                ),
                                decoration: BoxDecoration(
                                  color: _getStatusColor(currentStatus).withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                                ),
                                child: Text(
                                  _getStatusText(currentStatus),
                                  style: TextStyle(
                                    color: _getStatusColor(currentStatus),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            const SizedBox(height: AppConstants.paddingMedium),

                            // Rating
                            if (book.averageRating != null) ...[
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: AppConstants.accentColor,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${book.averageRating!.toStringAsFixed(1)} / 5.0',
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppConstants.paddingMedium),
                            ],

                            // Genres
                            if (book.genres != null && book.genres!.isNotEmpty) ...[
                              Wrap(
                                spacing: AppConstants.paddingSmall,
                                children: book.genres!.map((genre) {
                                  return Chip(
                                    label: Text(genre),
                                    backgroundColor: AppConstants.primaryColor.withValues(alpha: 0.1),
                                    labelStyle: TextStyle(color: AppConstants.primaryColor),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(height: AppConstants.paddingMedium),
                            ],

                            // Action Buttons
                            if (currentStatus == null) ...[
                              const SizedBox(height: AppConstants.paddingMedium),
                              Row(
                                children: [
                                  Expanded(
                                    child: FilledButton.icon(
                                      onPressed: () {
                                        ref.read(bookshelfProvider.notifier).addBookToShelf(
                                          bookId,
                                          BookStatus.wantToRead,
                                        );
                                      },
                                      icon: const Icon(Icons.bookmark_border, size: 20),
                                      label: const Text(
                                        'Want to Read',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      style: FilledButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      onPressed: () {
                                        ref.read(bookshelfProvider.notifier).addBookToShelf(
                                          bookId,
                                          BookStatus.reading,
                                        );
                                      },
                                      icon: const Icon(Icons.menu_book, size: 20),
                                      label: const Text(
                                        'Start Reading',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        side: BorderSide(
                                          color: AppConstants.primaryColor,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ] else ...[
                              // Status Change Buttons
                              const SizedBox(height: AppConstants.paddingMedium),
                              Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: AppConstants.primaryColor.withValues(alpha: 0.05),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppConstants.primaryColor.withValues(alpha: 0.2),
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Change Status',
                                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppConstants.primaryColor,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Wrap(
                                      spacing: 8,
                                      runSpacing: 8,
                                      children: [
                                        if (currentStatus != BookStatus.wantToRead)
                                          _buildStatusButton(
                                            context,
                                            'Want to Read',
                                            Icons.bookmark_border,
                                            BookStatus.wantToRead,
                                            bookId,
                                            ref,
                                          ),
                                        if (currentStatus != BookStatus.reading)
                                          _buildStatusButton(
                                            context,
                                            'Reading',
                                            Icons.menu_book,
                                            BookStatus.reading,
                                            bookId,
                                            ref,
                                          ),
                                        if (currentStatus != BookStatus.completed)
                                          _buildStatusButton(
                                            context,
                                            'Completed',
                                            Icons.check_circle,
                                            BookStatus.completed,
                                            bookId,
                                            ref,
                                          ),
                                        if (currentStatus != BookStatus.dnf)
                                          _buildStatusButton(
                                            context,
                                            'DNF',
                                            Icons.close,
                                            BookStatus.dnf,
                                            bookId,
                                            ref,
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppConstants.paddingXLarge),

                  // User Progress Section
                  if (userBook != null) ...[
                    _buildProgressSection(context, ref, userBook, book),
                    const SizedBox(height: AppConstants.paddingXLarge),
                  ],

                  // Description
                  if (book.description != null) ...[
                    Text(
                      'Description',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: AppConstants.paddingMedium),
                    Text(
                      book.description!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: AppConstants.paddingXLarge),
                  ],

                  // Book Details
                  Text(
                    'Book Details',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),
                  _buildDetailRow('Pages', book.pageCount?.toString() ?? 'Unknown'),
                  _buildDetailRow('ISBN', book.isbn ?? 'Unknown'),
                  if (book.publishedDate != null)
                    _buildDetailRow('Published', _formatDate(book.publishedDate!)),
                  if (book.publisher != null)
                    _buildDetailRow('Publisher', book.publisher!),
                  if (book.language != null)
                    _buildDetailRow('Language', book.language!),
                ],
              ),
            ),
    );
  }

  Widget _buildProgressSection(BuildContext context, WidgetRef ref, UserBook userBook, Book book) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Your Progress',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => ProgressDialog(
                        userBook: userBook,
                        book: book,
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit),
                  tooltip: 'Update Progress',
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),

            // Progress Bar
            if (userBook.currentPage != null && book.pageCount != null) ...[
              LinearProgressIndicator(
                value: userBook.currentPage! / book.pageCount!,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(AppConstants.primaryColor),
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Text(
                '${userBook.currentPage} of ${book.pageCount} pages',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: AppConstants.paddingMedium),
            ],

            // Rating
            if (userBook.rating != null) ...[
              Row(
                children: [
                  Text(
                    'Your Rating: ',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  ...List.generate(5, (index) {
                    return Icon(
                      index < userBook.rating! ? Icons.star : Icons.star_border,
                      size: 20,
                      color: AppConstants.accentColor,
                    );
                  }),
                ],
              ),
              const SizedBox(height: AppConstants.paddingMedium),
            ],

            // Review
            if (userBook.review != null) ...[
              Text(
                'Your Review',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Text(userBook.review!),
            ],
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
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  Color _getStatusColor(BookStatus status) {
    switch (status) {
      case BookStatus.wantToRead:
        return AppConstants.primaryColor;
      case BookStatus.reading:
        return AppConstants.accentColor;
      case BookStatus.completed:
        return AppConstants.successColor;
      case BookStatus.dnf:
        return AppConstants.errorColor;
    }
  }

  String _getStatusText(BookStatus status) {
    switch (status) {
      case BookStatus.wantToRead:
        return 'Want to Read';
      case BookStatus.reading:
        return 'Reading';
      case BookStatus.completed:
        return 'Completed';
      case BookStatus.dnf:
        return 'Did Not Finish';
    }
  }

  Widget _buildStatusButton(
    BuildContext context,
    String label,
    IconData icon,
    BookStatus status,
    String bookId,
    WidgetRef ref,
  ) {
    return FilledButton.icon(
      onPressed: () {
        ref.read(bookshelfProvider.notifier).addBookToShelf(
          bookId,
          status,
        );
      },
      icon: Icon(icon, size: 20),
      label: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
} 