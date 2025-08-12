import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/star_rating_widget.dart';
import '../../../../shared/models/book_review.dart';
import '../../../../shared/models/user_book.dart';
import '../../../../shared/providers/reviews_provider.dart';
import '../../../../shared/providers/auth_provider.dart';

class BookReviewsScreenClean extends HookConsumerWidget {
  final UserBook book;

  const BookReviewsScreenClean({
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

  Widget _buildActiveFilterBar(BuildContext context, WidgetRef ref, ReviewFilter filter) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
        vertical: AppConstants.paddingSmall,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.1),
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.filter_list,
            size: 16,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: AppConstants.paddingSmall),
          Expanded(
            child: Text(
              'Filtered by: ${_getFilterDescription(filter)}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          TextButton(
            onPressed: () => ref.read(reviewsProvider.notifier).clearFilter(),
            child: const Text('Clear'),
          ),
        ],
      ),
    );
  }

  String _getFilterDescription(ReviewFilter filter) {
    final descriptions = <String>[];
    
    if (filter.minRating != null) descriptions.add('Min ${filter.minRating}★');
    if (filter.maxRating != null) descriptions.add('Max ${filter.maxRating}★');
    if (filter.hasSpoilers != null) descriptions.add(filter.hasSpoilers! ? 'With Spoilers' : 'No Spoilers');
    if (filter.isVerified != null) descriptions.add(filter.isVerified! ? 'Verified Only' : 'All Reviews');
    if (filter.tags.isNotEmpty) descriptions.add('Tags: ${filter.tags.join(', ')}');
    if (filter.searchQuery?.isNotEmpty == true) descriptions.add('Search: ${filter.searchQuery}');
    
    return descriptions.isEmpty ? 'All Reviews' : descriptions.join(', ');
  }

  Widget _buildReviewsList(
    BuildContext context,
    WidgetRef ref,
    List<BookReview> reviews,
    BookReview? userReview,
    authState,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: reviews.length,
      itemBuilder: (context, index) {
        final review = reviews[index];
        final isUserReview = userReview?.id == review.id;
        
        return AnimatedFadeIn(
          delay: Duration(milliseconds: 100 * index),
          child: _buildReviewCard(context, review, isUserReview),
        );
      },
    );
  }

  Widget _buildReviewCard(BuildContext context, BookReview review, bool isUserReview) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Review Header
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                  child: Text(
                    review.userName.isNotEmpty ? review.userName[0].toUpperCase() : 'U',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.userName.isNotEmpty ? review.userName : 'Anonymous User',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        _formatDate(review.dateWritten),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                if (isUserReview)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Your Review',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Rating
            StarRatingWidget(
              rating: review.rating.toDouble(),
              size: 20,
              showRating: false,
              allowHalfRating: false,
            ),
            
            const SizedBox(height: AppConstants.paddingSmall),
            
            // Review Title (if available)
            if (review.title?.isNotEmpty == true) ...[
              Text(
                review.title!,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppConstants.paddingSmall),
            ],
            
            // Review Content
            if (review.content.isNotEmpty) ...[
              Text(
                review.content,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: AppConstants.paddingSmall),
            ],
            
            // Review Metadata
            Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  size: 16,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                ),
                const SizedBox(width: 4),
                Text(
                  '${review.helpfulVotes}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Icon(
                  Icons.thumb_down,
                  size: 16,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                ),
                const SizedBox(width: 4),
                Text(
                  '${review.unhelpfulVotes}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                if (review.isVerified) ...[
                  const SizedBox(width: AppConstants.paddingMedium),
                  Icon(
                    Icons.verified,
                    size: 16,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Verified',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
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
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
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
              'Be the first to share your thoughts about this book!',
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

  void _showFilterDialog(BuildContext context, WidgetRef ref) {
    // TODO: Implement filter dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Filter dialog - Coming soon!'),
      ),
    );
  }

  void _showWriteReviewDialog(BuildContext context, WidgetRef ref) {
    // TODO: Implement write review dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Write review dialog - Coming soon!'),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays == 0) {
      if (difference.inHours == 0) {
        return '${difference.inMinutes} minutes ago';
      }
      return '${difference.inHours} hours ago';
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}
