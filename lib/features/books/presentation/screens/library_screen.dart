import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/models/book.dart';
import '../../../../shared/providers/books_provider.dart';
import '../../../../shared/providers/bookshelf_provider.dart';
import '../widgets/book_card.dart';

class LibraryScreen extends ConsumerStatefulWidget {
  const LibraryScreen({super.key});

  @override
  ConsumerState<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends ConsumerState<LibraryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookshelfState = ref.watch(bookshelfProvider);
    final booksState = ref.watch(booksProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Library'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Want to Read'),
            Tab(text: 'Reading'),
            Tab(text: 'Completed'),
            Tab(text: 'DNF'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildShelfTab(bookshelfState.wantToRead, 'Want to Read', booksState),
          _buildShelfTab(bookshelfState.reading, 'Reading', booksState),
          _buildShelfTab(bookshelfState.completed, 'Completed', booksState),
          _buildShelfTab(bookshelfState.dnf, 'Did Not Finish', booksState),
        ],
      ),
    );
  }

  Widget _buildShelfTab(List<UserBook> userBooks, String title, BooksState booksState) {
    if (userBooks.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _getShelfIcon(title),
              size: 80,
              color: AppConstants.lightOnSurfaceVariant,
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            Text(
              'No books in $title',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Add books to your $title shelf to see them here',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingXLarge),
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to home screen to browse books
                context.go('/');
              },
              icon: const Icon(Icons.add),
              label: const Text('Browse Books'),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Stats Header
        Container(
          padding: const EdgeInsets.all(AppConstants.paddingMedium),
          child: Row(
            children: [
              Text(
                '$title (${userBooks.length})',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              if (title == 'Reading') ...[
                Text(
                  '${_calculateTotalProgress(userBooks, booksState)}%',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppConstants.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
        ),

        // Books Grid
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(AppConstants.paddingMedium),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: AppConstants.paddingMedium,
              mainAxisSpacing: AppConstants.paddingMedium,
            ),
            itemCount: userBooks.length,
            itemBuilder: (context, index) {
              final userBook = userBooks[index];
              final book = _getBookFromUserBook(userBook, booksState);
              
              return Stack(
                children: [
                  BookCard(
                    book: book,
                    onTap: () {
                      // Navigate to book detail
                      context.push('/book/${book.id}');
                    },
                  ),
                  // Status indicator
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: _getStatusColor(userBook.status).withValues(alpha: 0.9),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        _getStatusText(userBook.status),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  // Progress indicator for reading books
                  if (userBook.status == BookStatus.reading && 
                      userBook.currentPage != null && 
                      book.pageCount != null)
                    Positioned(
                      bottom: 8,
                      left: 8,
                      right: 8,
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: userBook.currentPage! / book.pageCount!,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppConstants.primaryColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Book _getBookFromUserBook(UserBook userBook, BooksState booksState) {
    // Try to find the book in the current books state
    final foundBook = booksState.books
        .followedBy(booksState.featuredBooks)
        .where((book) => book.id == userBook.bookId)
        .firstOrNull;

    if (foundBook != null) {
      return foundBook;
    }

    // If not found, create a placeholder book
    return Book(
      id: userBook.bookId,
      title: 'Loading...',
      author: 'Loading...',
    );
  }

  IconData _getShelfIcon(String title) {
    switch (title) {
      case 'Want to Read':
        return Icons.bookmark_border;
      case 'Reading':
        return Icons.menu_book;
      case 'Completed':
        return Icons.check_circle;
      case 'Did Not Finish':
        return Icons.close;
      default:
        return Icons.library_books;
    }
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
        return 'TBR';
      case BookStatus.reading:
        return 'READ';
      case BookStatus.completed:
        return 'DONE';
      case BookStatus.dnf:
        return 'DNF';
    }
  }

  double _calculateTotalProgress(List<UserBook> readingBooks, BooksState booksState) {
    if (readingBooks.isEmpty) return 0.0;
    
    double totalProgress = 0.0;
    int validBooks = 0;
    
    for (final userBook in readingBooks) {
      final book = _getBookFromUserBook(userBook, booksState);
      if (userBook.currentPage != null && book.pageCount != null) {
        totalProgress += userBook.currentPage! / book.pageCount!;
        validBooks++;
      }
    }
    
    return validBooks > 0 ? (totalProgress / validBooks) * 100 : 0.0;
  }
} 