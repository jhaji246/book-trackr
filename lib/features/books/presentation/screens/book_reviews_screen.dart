import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/star_rating_widget.dart';
import '../../../../core/widgets/review_card_widget.dart';
import '../../../../core/widgets/write_review_dialog.dart';
import '../../../../shared/models/book_review.dart';
import '../../../../shared/models/user_book.dart';
import '../../../../shared/providers/reviews_provider.dart';
import '../../../../shared/providers/auth_provider.dart';

class BookReviewsScreen extends HookConsumerWidget {
  final UserBook book;

  const BookReviewsScreen({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviewsState = ref.watch(reviewsProvider);
    final authState = ref.watch(authProvider);
    
    // Set the selected book for reviews
    ref.read(reviewsProvider.notifier).selectBook(book.id);
    
    final reviews = reviewsState.getFilteredReviewsForBook(book.id);
    final userReview = reviewsState.getUserReviewForBook(book.id, authState.user?.uid);
    final averageRating = reviewsState.getAverageRatingForBook(book.id);
    final totalReviews = reviewsState.getReviewCountForBook(book.id);
    final ratingDistribution = reviewsState.getRatingDistributionForBook(book.id);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Reviews'),
        actions: [
          IconButton(
            onPressed: () => _showFilterDialog(context, ref),
            icon: const Icon(Icons.filter_list),
            tooltip: 'Filter Reviews',
          ),
        ],
      ),
      body: Column(
        children: [
          // Reviews Summary Header
          _buildReviewsSummary(context, averageRating, totalReviews, ratingDistribution),
          
          // Filter Bar
          if (reviewsState.currentFilter.isActive)
            _buildActiveFilterBar(context, ref, reviewsState.currentFilter),
          
          // Reviews List
          Expanded(
            child: reviews.isEmpty
                ? _buildEmptyState(context, ref)
                : _buildReviewsList(context, ref, reviews, userReview, authState),
          ),
        ],
      ),
      floatingActionButton: userReview == null
          ? FloatingActionButton.extended(
              onPressed: () => _showWriteReviewDialog(context, ref),
              icon: const Icon(Icons.rate_review),
              label: const Text('Write Review'),
            )
          : null,
    );
  }

  Widget _buildReviewsSummary(
    BuildContext context,
    double averageRating,
    int totalReviews,
    Map<int, int> ratingDistribution,
  ) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Average Rating
              Expanded(
                child: Column(
                  children: [
                    StarRatingWidget(
                      rating: averageRating,
                      size: 32,
                      showRating: true,
                      allowHalfRating: true,
                    ),
                    const SizedBox(height: AppConstants.paddingSmall),
                    Text(
                      '${averageRating.toStringAsFixed(1)} out of 5',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    Text(
                      'Based on $totalReviews ${totalReviews == 1 ? 'review' : 'reviews'}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Rating Distribution
              Expanded(
                child: _buildRatingDistribution(context, ratingDistribution, totalReviews),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRatingDistribution(
    BuildContext context,
    Map<int, int> distribution,
    int totalReviews,
  ) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rating Breakdown',
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        
        const SizedBox(height: AppConstants.paddingSmall),
        
        ...List.generate(5, (index) {
          final starLevel = 5 - index;
          final count = distribution[starLevel] ?? 0;
          final percentage = totalReviews > 0 ? count / totalReviews : 0.0;
          
          return Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  child: Text(
                    '$starLevel',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.star,
                  size: 12,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 6,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.outline.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: percentage,
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 30,
                  child: Text(
                    '$count',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }

  Widget _buildActiveFilterBar(
    BuildContext context,
    WidgetRef ref,
    ReviewFilter filter,
  ) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
        vertical: AppConstants.paddingSmall,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.filter_list,
            size: 16,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: AppConstants.paddingSmall),
          Expanded(
            child: Text(
              _getFilterDescription(filter),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          TextButton(
            onPressed: () => ref.read(reviewsProvider.notifier).clearFilter(),
            child: const Text('Clear'),
            style: TextButton.styleFrom(
              foregroundColor: theme.colorScheme.primary,
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
          ),
        ],
      ),
    );
  }

  String _getFilterDescription(ReviewFilter filter) {
    final parts = <String>[];
    
    if (filter.minRating != null) {
      parts.add('${filter.minRating}+ stars');
    }
    if (filter.maxRating != null) {
      parts.add('${filter.maxRating}- stars');
    }
    if (filter.hasSpoilers != null) {
      parts.add(filter.hasSpoilers! ? 'With spoilers' : 'Spoiler-free');
    }
    if (filter.isVerified != null) {
      parts.add(filter.isVerified! ? 'Verified only' : 'All reviews');
    }
    if (filter.tags.isNotEmpty) {
      parts.add('Tagged: ${filter.tags.join(', ')}');
    }
    if (filter.searchQuery != null && filter.searchQuery!.isNotEmpty) {
      parts.add('Search: "${filter.searchQuery}"');
    }
    
    parts.add('Sorted by ${filter.sortOrder.displayName.toLowerCase()}');
    
    return parts.join(' • ');
  }

  Widget _buildEmptyState(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.rate_review_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'No Reviews Yet',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              'Be the first to share your thoughts about this book',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            GradientButton(
              onPressed: () => _showWriteReviewDialog(context, ref),
              text: 'Write First Review',
              icon: Icons.rate_review,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewsList(
    BuildContext context,
    WidgetRef ref,
    List<BookReview> reviews,
    BookReview? userReview,
    dynamic authState,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: reviews.length,
      itemBuilder: (context, index) {
        final review = reviews[index];
        final isUserReview = review.userId == authState.user?.uid;
        
        return AnimatedFadeIn(
          delay: Duration(milliseconds: 100 * index),
          child: ReviewCardWidget(
            review: review,
            isUserReview: isUserReview,
            onEdit: isUserReview ? () => _showEditReviewDialog(context, ref, review) : null,
            onDelete: isUserReview ? () => _showDeleteConfirmation(context, ref, review) : null,
            onVote: (voteType) => _handleVote(ref, review, voteType),
          ),
        );
      },
    );
  }

  void _showWriteReviewDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => WriteReviewDialog(
        book: book,
        onSave: (review) {
          ref.read(reviewsProvider.notifier).addReview(review);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Review posted successfully!')),
          );
        },
      ),
    );
  }

  void _showEditReviewDialog(BuildContext context, WidgetRef ref, BookReview review) {
    showDialog(
      context: context,
      builder: (context) => WriteReviewDialog(
        book: book,
        existingReview: review,
        onSave: (updatedReview) {
          ref.read(reviewsProvider.notifier).updateReview(review.id, updatedReview);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Review updated successfully!')),
          );
        },
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, WidgetRef ref, BookReview review) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Review'),
        content: const Text('Are you sure you want to delete this review? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              ref.read(reviewsProvider.notifier).deleteReview(review.id);
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Review deleted successfully!')),
              );
            },
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  void _handleVote(WidgetRef ref, BookReview review, VoteType voteType) {
    ref.read(reviewsProvider.notifier).voteOnReview(review.id, voteType);
  }

  void _showFilterDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => ReviewFilterDialog(
        currentFilter: ref.read(reviewsProvider).currentFilter,
        onApplyFilter: (filter) {
          ref.read(reviewsProvider.notifier).updateFilter(filter);
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

/// Dialog for filtering and sorting reviews
class ReviewFilterDialog extends StatefulWidget {
  final ReviewFilter currentFilter;
  final Function(ReviewFilter) onApplyFilter;

  const ReviewFilterDialog({
    super.key,
    required this.currentFilter,
    required this.onApplyFilter,
  });

  @override
  State<ReviewFilterDialog> createState() => _ReviewFilterDialogState();
}

class _ReviewFilterDialogState extends State<ReviewFilterDialog> {
  late ReviewFilter _filter;

  @override
  void initState() {
    super.initState();
    _filter = widget.currentFilter;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filter & Sort Reviews',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Sort Order
            Text(
              'Sort By',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Wrap(
              spacing: AppConstants.paddingSmall,
              children: ReviewSortOrder.values.map((sortOrder) {
                return ChoiceChip(
                  label: Text(sortOrder.displayName),
                  selected: _filter.sortOrder == sortOrder,
                  onSelected: (selected) {
                    if (selected) {
                      setState(() {
                        _filter = _filter.copyWith(sortOrder: sortOrder);
                      });
                    }
                  },
                );
              }).toList(),
            ),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Rating Filter
            Text(
              'Rating Filter',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: _filter.minRating?.toString() ?? '',
                    decoration: const InputDecoration(
                      labelText: 'Min Rating',
                      hintText: '1',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      final rating = int.tryParse(value);
                      setState(() {
                        _filter = _filter.copyWith(
                          minRating: rating,
                        );
                      });
                    },
                  ),
                ),
                const SizedBox(width: AppConstants.paddingSmall),
                Expanded(
                  child: TextFormField(
                    initialValue: _filter.maxRating?.toString() ?? '',
                    decoration: const InputDecoration(
                      labelText: 'Max Rating',
                      hintText: '5',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      final rating = int.tryParse(value);
                      setState(() {
                        _filter = _filter.copyWith(
                          maxRating: rating,
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Other Filters
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: const Text('Spoiler-free only'),
                    value: _filter.hasSpoilers == false,
                    onChanged: (value) {
                      setState(() {
                        _filter = _filter.copyWith(
                          hasSpoilers: value == true ? false : null,
                        );
                      });
                    },
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text('Verified only'),
                    value: _filter.isVerified == true,
                    onChanged: (value) {
                      setState(() {
                        _filter = _filter.copyWith(
                          isVerified: value == true ? true : null,
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.paddingLarge),
            
            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _filter = const ReviewFilter();
                    });
                  },
                  child: const Text('Reset'),
                ),
                const SizedBox(width: AppConstants.paddingSmall),
                ElevatedButton(
                  onPressed: () => widget.onApplyFilter(_filter),
                  child: const Text('Apply Filter'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
