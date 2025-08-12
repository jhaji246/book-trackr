import 'package:flutter/material.dart';
import '../../core/constants/app_constants.dart';
import '../../shared/models/book_review.dart';
import 'star_rating_widget.dart';

/// A card widget that displays a book review
class ReviewCardWidget extends StatelessWidget {
  final BookReview review;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final Function(VoteType)? onVote;
  final bool showActions;
  final bool isUserReview;

  const ReviewCardWidget({
    super.key,
    required this.review,
    this.onEdit,
    this.onDelete,
    this.onVote,
    this.showActions = true,
    this.isUserReview = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
          border: review.hasSpoilers
              ? Border.all(
                  color: theme.colorScheme.error.withValues(alpha: 0.3),
                  width: 1,
                )
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Review Header
            _buildReviewHeader(context),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Review Content
            _buildReviewContent(context),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Review Footer
            _buildReviewFooter(context),
            
            // Action Buttons
            if (showActions) ...[
              const SizedBox(height: AppConstants.paddingMedium),
              _buildActionButtons(context),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildReviewHeader(BuildContext context) {
    final theme = Theme.of(context);
    
    return Row(
      children: [
        // User Avatar
        CircleAvatar(
          radius: 20,
          backgroundColor: theme.colorScheme.primaryContainer,
          child: review.userProfilePicture != null
              ? ClipOval(
                  child: Image.network(
                    review.userProfilePicture!,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.person,
                        color: theme.colorScheme.onPrimaryContainer,
                      );
                    },
                  ),
                )
              : Icon(
                  Icons.person,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
        ),
        
        const SizedBox(width: AppConstants.paddingMedium),
        
        // User Info and Rating
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    review.userName,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (review.isVerified) ...[
                    const SizedBox(width: AppConstants.paddingSmall),
                    Icon(
                      Icons.verified,
                      size: 16,
                      color: theme.colorScheme.primary,
                    ),
                  ],
                ],
              ),
              
              const SizedBox(height: 4),
              
              Row(
                children: [
                  StarRatingWidget(
                    rating: review.rating.toDouble(),
                    size: 16,
                    showRating: false,
                  ),
                  const SizedBox(width: AppConstants.paddingSmall),
                  Text(
                    '${review.rating}.0',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        
        // Review Date
        Text(
          review.formattedDate,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }

  Widget _buildReviewContent(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Spoiler Warning
        if (review.hasSpoilers) ...[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.paddingSmall,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.errorContainer,
              borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.warning,
                  size: 16,
                  color: theme.colorScheme.onErrorContainer,
                ),
                const SizedBox(width: 4),
                Text(
                  'Contains Spoilers',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onErrorContainer,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
        ],
        
        // Review Title
        if (review.title != null && review.title!.isNotEmpty) ...[
          Text(
            review.title!,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
        ],
        
        // Review Content
        Text(
          review.content,
          style: theme.textTheme.bodyMedium,
        ),
        
        // Review Tags
        if (review.tags.isNotEmpty) ...[
          const SizedBox(height: AppConstants.paddingSmall),
          Wrap(
            spacing: AppConstants.paddingSmall,
            children: review.tags.map((tag) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.paddingSmall,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                ),
                child: Text(
                  tag.replaceAll('-', ' '),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                    fontSize: 10,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ],
    );
  }

  Widget _buildReviewFooter(BuildContext context) {
    final theme = Theme.of(context);
    
    return Row(
      children: [
        // Reading Progress
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.paddingSmall,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
          ),
          child: Text(
            review.readingProgressDescription,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              fontSize: 10,
            ),
          ),
        ),
        
        const Spacer(),
        
        // Voting Buttons
        Row(
          children: [
            _buildVoteButton(
              context,
              Icons.thumb_up,
              review.helpfulVotes,
              VoteType.helpful,
              theme.colorScheme.primary,
            ),
            
            const SizedBox(width: AppConstants.paddingSmall),
            
            _buildVoteButton(
              context,
              Icons.thumb_down,
              review.unhelpfulVotes,
              VoteType.unhelpful,
              theme.colorScheme.error,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildVoteButton(
    BuildContext context,
    IconData icon,
    int voteCount,
    VoteType voteType,
    Color color,
  ) {
    final theme = Theme.of(context);
    
    return GestureDetector(
      onTap: onVote != null ? () => onVote!(voteType) : null,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingSmall,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
          border: Border.all(
            color: color.withValues(alpha: 0.3),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16,
              color: color,
            ),
            const SizedBox(width: 4),
            Text(
              '$voteCount',
              style: theme.textTheme.bodySmall?.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    if (!isUserReview) return const SizedBox.shrink();
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (onEdit != null)
          TextButton.icon(
            onPressed: onEdit,
            icon: const Icon(Icons.edit, size: 16),
            label: const Text('Edit'),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.paddingMedium,
                vertical: 8,
              ),
            ),
          ),
        
        if (onDelete != null) ...[
          const SizedBox(width: AppConstants.paddingSmall),
          TextButton.icon(
            onPressed: onDelete,
            icon: const Icon(Icons.delete, size: 16),
            label: const Text('Delete'),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.paddingMedium,
                vertical: 8,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

/// A compact version of the review card for list views
class CompactReviewCard extends StatelessWidget {
  final BookReview review;
  final VoidCallback? onTap;
  final bool showUserInfo;

  const CompactReviewCard({
    super.key,
    required this.review,
    this.onTap,
    this.showUserInfo = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingSmall),
      elevation: 1,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
        child: Container(
          padding: const EdgeInsets.all(AppConstants.paddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  if (showUserInfo) ...[
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: theme.colorScheme.primaryContainer,
                      child: review.userProfilePicture != null
                          ? ClipOval(
                              child: Image.network(
                                review.userProfilePicture!,
                                width: 32,
                                height: 32,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Icon(
                                    Icons.person,
                                    size: 16,
                                    color: theme.colorScheme.onPrimaryContainer,
                                  );
                                },
                              ),
                            )
                          : Icon(
                              Icons.person,
                              size: 16,
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                    ),
                    const SizedBox(width: AppConstants.paddingSmall),
                  ],
                  
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (showUserInfo) ...[
                          Text(
                            review.userName,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 2),
                        ],
                        
                        Row(
                          children: [
                            StarRatingWidget(
                              rating: review.rating.toDouble(),
                              size: 14,
                              showRating: false,
                            ),
                            const SizedBox(width: AppConstants.paddingSmall),
                            Text(
                              review.formattedDate,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.paddingSmall),
              
              // Content Preview
              Text(
                review.content,
                style: theme.textTheme.bodyMedium,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              
              // Quick Stats
              const SizedBox(height: AppConstants.paddingSmall),
              Row(
                children: [
                  if (review.hasSpoilers)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Spoiler',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onErrorContainer,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  
                  const Spacer(),
                  
                  Text(
                    '${review.helpfulVotes} helpful',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
