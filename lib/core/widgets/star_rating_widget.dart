import 'package:flutter/material.dart';
import '../../core/constants/app_constants.dart';

/// A beautiful star rating widget for books
class StarRatingWidget extends StatelessWidget {
  final double rating;
  final int maxRating;
  final double size;
  final Color? color;
  final Color? unratedColor;
  final bool allowHalfRating;
  final bool showRating;
  final bool showRatingText;
  final VoidCallback? onRatingChanged;
  final bool isInteractive;

  const StarRatingWidget({
    super.key,
    required this.rating,
    this.maxRating = 5,
    this.size = 24.0,
    this.color,
    this.unratedColor,
    this.allowHalfRating = false,
    this.showRating = true,
    this.showRatingText = false,
    this.onRatingChanged,
    this.isInteractive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final starColor = color ?? theme.colorScheme.primary;
    final unratedStarColor = unratedColor ?? theme.colorScheme.outline.withValues(alpha: 0.3);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Stars
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(maxRating, (index) {
            final starValue = index + 1.0;
            final isHalfStar = allowHalfRating && 
                              rating > index && 
                              rating < starValue;
            final isFullStar = rating >= starValue;
            
            return GestureDetector(
              onTap: isInteractive ? () => _handleStarTap(starValue) : null,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                child: Icon(
                  isFullStar ? Icons.star : (isHalfStar ? Icons.star_half : Icons.star_border),
                  color: isFullStar || isHalfStar ? starColor : unratedStarColor,
                  size: size,
                ),
              ),
            );
          }),
        ),
        
        if (showRating) ...[
          const SizedBox(width: AppConstants.paddingSmall),
          Text(
            rating.toStringAsFixed(allowHalfRating ? 1 : 0),
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: starColor,
            ),
          ),
        ],
        
        if (showRatingText) ...[
          const SizedBox(width: AppConstants.paddingSmall),
          Text(
            _getRatingText(rating),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ],
    );
  }

  void _handleStarTap(double value) {
    if (onRatingChanged != null) {
      onRatingChanged!();
    }
  }

  String _getRatingText(double rating) {
    if (rating >= 4.5) return 'Excellent';
    if (rating >= 4.0) return 'Very Good';
    if (rating >= 3.5) return 'Good';
    if (rating >= 3.0) return 'Average';
    if (rating >= 2.5) return 'Below Average';
    if (rating >= 2.0) return 'Poor';
    return 'Very Poor';
  }
}

/// A compact star rating display
class CompactStarRating extends StatelessWidget {
  final double rating;
  final double size;
  final Color? color;
  final bool showRating;

  const CompactStarRating({
    super.key,
    required this.rating,
    this.size = 16.0,
    this.color,
    this.showRating = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final starColor = color ?? theme.colorScheme.primary;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          rating >= 1 ? Icons.star : Icons.star_border,
          color: starColor,
          size: size,
        ),
        if (showRating) ...[
          const SizedBox(width: 4),
          Text(
            rating.toStringAsFixed(1),
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: starColor,
            ),
          ),
        ],
      ],
    );
  }
}

/// A large star rating widget for book detail pages
class LargeStarRating extends StatelessWidget {
  final double rating;
  final int totalRatings;
  final VoidCallback? onTap;
  final bool showTotalRatings;

  const LargeStarRating({
    super.key,
    required this.rating,
    this.totalRatings = 0,
    this.onTap,
    this.showTotalRatings = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
        child: Column(
          children: [
            // Large Stars
            StarRatingWidget(
              rating: rating,
              size: 48.0,
              showRating: false,
              allowHalfRating: true,
            ),
            
            const SizedBox(height: AppConstants.paddingSmall),
            
            // Rating Number
            Text(
              rating.toStringAsFixed(1),
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ),
            
            // Rating Text
            Text(
              _getRatingText(rating),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
            
            if (showTotalRatings && totalRatings > 0) ...[
              const SizedBox(height: AppConstants.paddingSmall),
              Text(
                'Based on $totalRatings ${totalRatings == 1 ? 'rating' : 'ratings'}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _getRatingText(double rating) {
    if (rating >= 4.5) return 'Outstanding';
    if (rating >= 4.0) return 'Excellent';
    if (rating >= 3.5) return 'Very Good';
    if (rating >= 3.0) return 'Good';
    if (rating >= 2.5) return 'Fair';
    if (rating >= 2.0) return 'Below Average';
    if (rating >= 1.5) return 'Poor';
    if (rating >= 1.0) return 'Very Poor';
    return 'Terrible';
  }
}

/// A rating distribution widget showing how many ratings each star level has
class RatingDistributionWidget extends StatelessWidget {
  final Map<int, int> distribution;
  final int totalRatings;
  final double maxRating;

  const RatingDistributionWidget({
    super.key,
    required this.distribution,
    required this.totalRatings,
    this.maxRating = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rating Distribution',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        
        const SizedBox(height: AppConstants.paddingSmall),
        
        ...List.generate(maxRating.toInt(), (index) {
          final starLevel = maxRating.toInt() - index;
          final count = distribution[starLevel] ?? 0;
          final percentage = totalRatings > 0 ? count / totalRatings : 0.0;
          
          return Padding(
            padding: const EdgeInsets.only(bottom: AppConstants.paddingSmall),
            child: Row(
              children: [
                // Star Level
                SizedBox(
                  width: 60,
                  child: Row(
                    children: [
                      Text(
                        '$starLevel',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: theme.colorScheme.primary,
                      ),
                    ],
                  ),
                ),
                
                // Progress Bar
                Expanded(
                  child: Container(
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: AppConstants.paddingSmall),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.outline.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: percentage,
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),
                
                // Count
                SizedBox(
                  width: 40,
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
}

/// A rating input widget for writing reviews
class RatingInputWidget extends StatefulWidget {
  final double initialRating;
  final ValueChanged<double> onRatingChanged;
  final double size;
  final Color? color;

  const RatingInputWidget({
    super.key,
    this.initialRating = 0.0,
    required this.onRatingChanged,
    this.size = 32.0,
    this.color,
  });

  @override
  State<RatingInputWidget> createState() => _RatingInputWidgetState();
}

class _RatingInputWidgetState extends State<RatingInputWidget> {
  late double _currentRating;
  late double _hoverRating;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
    _hoverRating = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final starColor = widget.color ?? theme.colorScheme.primary;
    final unratedStarColor = theme.colorScheme.outline.withValues(alpha: 0.3);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Rating',
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        
        const SizedBox(height: AppConstants.paddingSmall),
        
        Row(
          children: List.generate(5, (index) {
            final starValue = index + 1.0;
            final isActive = _hoverRating > 0 
                ? _hoverRating >= starValue 
                : _currentRating >= starValue;
            
            return MouseRegion(
              onEnter: (_) {
                setState(() {
                  _hoverRating = starValue;
                });
              },
              onExit: (_) {
                setState(() {
                  _hoverRating = 0.0;
                });
              },
              child: GestureDetector(
                onTap: () => _updateRating(starValue),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeInOut,
                  child: Icon(
                    isActive ? Icons.star : Icons.star_border,
                    color: isActive ? starColor : unratedStarColor,
                    size: widget.size,
                  ),
                ),
              ),
            );
          }),
        ),
        
        const SizedBox(height: AppConstants.paddingSmall),
        
        Text(
          _getRatingText(_currentRating > 0 ? _currentRating : _hoverRating),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }

  void _updateRating(double rating) {
    setState(() {
      _currentRating = rating;
    });
    widget.onRatingChanged(rating);
  }

  String _getRatingText(double rating) {
    if (rating <= 0) return 'Tap to rate';
    if (rating >= 4.5) return 'Outstanding!';
    if (rating >= 4.0) return 'Excellent!';
    if (rating >= 3.5) return 'Very Good!';
    if (rating >= 3.0) return 'Good!';
    if (rating >= 2.5) return 'Fair';
    if (rating >= 2.0) return 'Below Average';
    if (rating >= 1.5) return 'Poor';
    if (rating >= 1.0) return 'Very Poor';
    return 'Terrible';
  }
}
