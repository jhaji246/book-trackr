import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/models/book.dart';
import '../../../../shared/providers/bookshelf_provider.dart';

class ProgressDialog extends HookConsumerWidget {
  final UserBook userBook;
  final Book book;

  const ProgressDialog({
    super.key,
    required this.userBook,
    required this.book,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageController = useTextEditingController(
      text: userBook.currentPage?.toString() ?? '',
    );
    final reviewController = useTextEditingController(
      text: userBook.review ?? '',
    );
    final rating = useState(userBook.rating ?? 0.0);

    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Update Progress',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),

            // Book Info
            Text(
              book.title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'by ${book.author}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),

            // Current Page Input
            Text(
              'Current Page',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            TextField(
              controller: currentPageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter current page',
                suffixText: book.pageCount != null ? 'of ${book.pageCount}' : null,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),

            // Progress Bar
            if (book.pageCount != null) ...[
              LinearProgressIndicator(
                value: (int.tryParse(currentPageController.text) ?? 0) / book.pageCount!,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(AppConstants.primaryColor),
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Text(
                '${((int.tryParse(currentPageController.text) ?? 0) / book.pageCount! * 100).toStringAsFixed(1)}% complete',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: AppConstants.paddingMedium),
            ],

            // Rating
            Text(
              'Your Rating',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () => rating.value = index + 1.0,
                  icon: Icon(
                    index < rating.value ? Icons.star : Icons.star_border,
                    size: 32,
                    color: AppConstants.accentColor,
                  ),
                );
              }),
            ),
            const SizedBox(height: AppConstants.paddingMedium),

            // Review
            Text(
              'Your Review (Optional)',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            TextField(
              controller: reviewController,
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: 'Share your thoughts about this book...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final currentPage = int.tryParse(currentPageController.text);
                      if (currentPage != null) {
                        await ref.read(bookshelfProvider.notifier).updateBookProgress(
                          userBook.id,
                          currentPage,
                        );
                      }
                      
                      if (rating.value > 0) {
                        await ref.read(bookshelfProvider.notifier).rateBook(
                          userBook.id,
                          rating.value,
                        );
                      }
                      
                      if (reviewController.text.isNotEmpty) {
                        await ref.read(bookshelfProvider.notifier).addBookReview(
                          userBook.id,
                          reviewController.text,
                        );
                      }
                      
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('Save Progress'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 