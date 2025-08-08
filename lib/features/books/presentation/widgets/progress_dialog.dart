import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/models/book.dart';
import '../../../../shared/providers/bookshelf_provider.dart';
import '../../../../shared/providers/reading_goals_provider.dart';

class ProgressDialog extends HookConsumerWidget {
  final UserBook userBook;

  const ProgressDialog({
    super.key,
    required this.userBook,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageController = useTextEditingController(
      text: userBook.currentPage.toString(),
    );
    final reviewController = useTextEditingController(
      text: userBook.review,
    );

    final selectedRating = useState(userBook.rating);

    return AlertDialog(
      title: Text('Update Progress - ${userBook.book.title}'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Progress',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            TextField(
              controller: currentPageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Current Page',
                hintText: 'Enter current page',
                prefixIcon: const Icon(Icons.book),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                ),
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Your Rating',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () {
                    selectedRating.value = index + 1;
                  },
                  icon: Icon(
                    index < selectedRating.value ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 30,
                  ),
                );
              }),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Your Review',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            TextField(
              controller: reviewController,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Review (optional)',
                hintText: 'Share your thoughts about this book...',
                prefixIcon: const Icon(Icons.rate_review),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () async {
            final currentPage = int.tryParse(currentPageController.text) ?? 0;
            final rating = selectedRating.value;
            final review = reviewController.text;

            // Update bookshelf
            await ref.read(bookshelfProvider.notifier).updateReadingProgress(
              userBook.book.id,
              currentPage,
            );

            if (rating > 0) {
              await ref.read(bookshelfProvider.notifier).rateBook(
                userBook.book.id,
                rating,
              );
            }

            if (review.isNotEmpty) {
              await ref.read(bookshelfProvider.notifier).reviewBook(
                userBook.book.id,
                review,
              );
            }

            // Record reading activity for goals
            final previousPages = userBook.currentPage;
            final pagesRead = currentPage - previousPages;
            if (pagesRead > 0) {
              await ref.read(readingGoalsProvider.notifier).recordReadingActivity(
                pagesRead: pagesRead,
                bookCompleted: false,
              );
            }

            if (context.mounted) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Progress updated!')),
              );
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
} 