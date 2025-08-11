import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/providers/bookshelf_provider.dart';
import '../widgets/book_card.dart';
import 'home_screen.dart';

class LibraryScreen extends ConsumerWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookshelfState = ref.watch(bookshelfProvider);

    return Scaffold(
      backgroundColor: AppConstants.lightSurface,
      appBar: AppBar(
        title: const Text('My Library'),
        backgroundColor: AppConstants.lightSurface,
        foregroundColor: AppConstants.lightOnSurface,
      ),
      body: bookshelfState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : bookshelfState.error != null
              ? _buildErrorState(context, bookshelfState.error!, ref)
              : _buildLibraryContent(context, bookshelfState),
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
              color: AppConstants.lightError,
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Error: $error',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppConstants.lightError,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Unable to load your library. Please try again.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            GradientButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              ),
              icon: Icons.search,
              text: 'Browse Books',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.library_books,
            size: 80,
            color: AppConstants.lightOnSurfaceVariant,
          ),
          const SizedBox(height: AppConstants.paddingLarge),
          Text(
            'Your library is empty',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.paddingMedium),
          Text(
            'Start adding books to your reading list',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppConstants.lightOnSurfaceVariant,
            ),
          ),
          const SizedBox(height: AppConstants.paddingLarge),
          GradientButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            ),
            icon: Icons.search,
            text: 'Browse Books',
          ),
        ],
      ),
    );
  }

  Widget _buildLibraryContent(BuildContext context, bookshelfState) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConstants.paddingLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSection(
            context,
            'Want to Read',
            bookshelfState.wantToRead,
            Icons.bookmark_border,
            Colors.blue,
          ),
          const SizedBox(height: AppConstants.paddingLarge),
          _buildSection(
            context,
            'Currently Reading',
            bookshelfState.reading,
            Icons.menu_book,
            Colors.orange,
          ),
          const SizedBox(height: AppConstants.paddingLarge),
          _buildSection(
            context,
            'Completed',
            bookshelfState.completed,
            Icons.check_circle,
            Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    List books,
    IconData icon,
    Color color,
  ) {
    if (books.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(width: AppConstants.paddingSmall),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              '${books.length}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppConstants.paddingMedium),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: AppConstants.paddingMedium,
            mainAxisSpacing: AppConstants.paddingMedium,
          ),
          itemCount: books.length,
          itemBuilder: (context, index) {
            final userBook = books[index];
            return BookCard(book: userBook.book);
          },
        ),
      ],
    );
  }
} 