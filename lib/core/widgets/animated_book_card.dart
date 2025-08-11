import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants/app_constants.dart';
import '../../shared/models/book.dart';
import '../../shared/providers/bookshelf_provider.dart';
import 'cached_network_image_widget.dart';

class AnimatedBookCard extends HookConsumerWidget {
  final Book book;
  final VoidCallback? onTap;
  final bool showStatus;
  final double? width;
  final double? height;

  const AnimatedBookCard({
    super.key,
    required this.book,
    this.onTap,
    this.showStatus = true,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPressed = useState(false);
    final isHovered = useState(false);
    final bookshelfState = ref.watch(bookshelfProvider);
    
    final userBook = bookshelfState.getUserBook(book.id);
    final status = bookshelfState.getBookStatus(book.id);

    return GestureDetector(
      onTapDown: (_) => isPressed.value = true,
      onTapUp: (_) => isPressed.value = false,
      onTapCancel: () => isPressed.value = false,
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()
          ..scale(isPressed.value ? 0.95 : 1.0)
          ..translate(0.0, isHovered.value ? -2.0 : 0.0),
        child: Card(
          elevation: isHovered.value ? 8 : 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
          ),
          child: Container(
            width: width ?? 160,
            height: height ?? 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
              gradient: isHovered.value
                  ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppConstants.primaryColor.withValues(alpha: 0.1),
                        AppConstants.primaryColor.withValues(alpha: 0.05),
                      ],
                    )
                  : null,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Book Cover with Animation
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(AppConstants.radiusMedium),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(AppConstants.radiusMedium),
                      ),
                      child: Stack(
                        children: [
                          // Book Cover Image
                          CachedNetworkImageWidget(
                            imageUrl: book.coverUrl,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          // Status Overlay
                          if (showStatus && userBook != null)
                            Positioned(
                              top: 8,
                              right: 8,
                              child: _buildStatusBadge(status),
                            ),
                          // Rating Overlay
                          if (userBook?.rating != null && userBook!.rating > 0)
                            Positioned(
                              bottom: 8,
                              left: 8,
                              child: _buildRatingBadge(userBook.rating),
                            ),
                          // Hover Effect
                          if (isHovered.value)
                            Container(
                              decoration: BoxDecoration(
                                color: AppConstants.primaryColor.withValues(alpha: 0.2),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Book Info
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(AppConstants.paddingMedium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          book.title,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: AppConstants.paddingSmall),
                        // Author
                        Text(
                          book.author,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppConstants.lightOnSurfaceVariant,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        // Rating
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBadge(BookStatus status) {
    Color badgeColor;
    IconData icon;
    String text;

    switch (status.runtimeType.toString()) {
      case '_WantToRead':
        badgeColor = Colors.orange;
        icon = Icons.bookmark_border;
        text = 'Want';
        break;
      case '_Reading':
        badgeColor = Colors.blue;
        icon = Icons.book;
        text = 'Reading';
        break;
      case '_Completed':
        badgeColor = Colors.green;
        icon = Icons.check_circle;
        text = 'Done';
        break;
      case '_Dnf':
        badgeColor = Colors.red;
        icon = Icons.close;
        text = 'DNF';
        break;
      default:
        badgeColor = Colors.grey;
        icon = Icons.bookmark_border;
        text = 'Want';
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingSmall,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: badgeColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: badgeColor.withValues(alpha: 0.3),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingBadge(int rating) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingSmall,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...List.generate(5, (index) {
            return Icon(
              index < rating ? Icons.star : Icons.star_border,
              size: 12,
              color: Colors.yellow[700],
            );
          }),
        ],
      ),
    );
  }
}

class AnimatedBookGrid extends HookConsumerWidget {
  final List<Book> books;
  final VoidCallback? onBookTap;
  final bool showStatus;

  const AnimatedBookGrid({
    super.key,
    required this.books,
    this.onBookTap,
    this.showStatus = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        return AnimatedBookCard(
          book: books[index],
          onTap: onBookTap,
          showStatus: showStatus,
        );
      },
    );
  }
}

class AnimatedBookList extends HookConsumerWidget {
  final List<Book> books;
  final VoidCallback? onBookTap;
  final bool showStatus;

  const AnimatedBookList({
    super.key,
    required this.books,
    this.onBookTap,
    this.showStatus = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: books.length,
      itemBuilder: (context, index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300 + (index * 50)),
          curve: Curves.easeOutCubic,
          transform: Matrix4.identity()..translate(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
            child: AnimatedBookCard(
              book: books[index],
              onTap: onBookTap,
              showStatus: showStatus,
              width: double.infinity,
              height: 120,
            ),
          ),
        );
      },
    );
  }
} 