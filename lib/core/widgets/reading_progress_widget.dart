import 'package:flutter/material.dart';
import '../../shared/models/user_book.dart';
import '../constants/app_constants.dart';

/// A widget that displays reading progress for a book
class ReadingProgressWidget extends StatelessWidget {
  final UserBook book;
  final VoidCallback? onUpdateProgress;
  final bool showDetails;

  const ReadingProgressWidget({
    super.key,
    required this.book,
    this.onUpdateProgress,
    this.showDetails = true,
  });

  @override
  Widget build(BuildContext context) {
    final progress = book.pageCount > 0 ? book.currentPage / book.pageCount : 0.0;
    final percentage = (progress * 100).round();
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Progress Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reading Progress',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (onUpdateProgress != null)
                IconButton(
                  onPressed: onUpdateProgress,
                  icon: const Icon(Icons.edit),
                  tooltip: 'Update Progress',
                  iconSize: 20,
                ),
            ],
          ),
          
          const SizedBox(height: AppConstants.paddingSmall),
          
          // Progress Bar
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.primary,
            ),
            minHeight: 8,
          ),
          
          const SizedBox(height: AppConstants.paddingSmall),
          
          // Progress Details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$percentage%',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                '${book.currentPage} / ${book.pageCount} pages',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
          
          if (showDetails) ...[
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Reading Statistics
            _buildReadingStats(context),
          ],
        ],
      ),
    );
  }

  Widget _buildReadingStats(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reading Statistics',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppConstants.paddingSmall),
        
        Row(
          children: [
            Expanded(
              child: _buildStatItem(
                context,
                'Status',
                book.status.displayName,
                Icons.bookmark,
              ),
            ),
            Expanded(
              child: _buildStatItem(
                context,
                'Pages Left',
                '${book.pageCount - book.currentPage}',
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
        
        if (book.dateStarted != null) ...[
          const SizedBox(height: AppConstants.paddingSmall),
          Row(
            children: [
              Expanded(
                child: _buildStatItem(
                  context,
                  'Started',
                  _formatDate(book.dateStarted!),
                  Icons.play_arrow,
                ),
              ),
              if (book.dateCompleted != null)
                Expanded(
                  child: _buildStatItem(
                    context,
                    'Completed',
                    _formatDate(book.dateCompleted!),
                    Icons.check_circle,
                  ),
                ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingSmall),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 16,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date).inDays;
    
    if (difference == 0) return 'Today';
    if (difference == 1) return 'Yesterday';
    if (difference < 7) return '$difference days ago';
    if (difference < 30) return '${(difference / 7).round()} weeks ago';
    if (difference < 365) return '${(difference / 30).round()} months ago';
    return '${(difference / 365).round()} years ago';
  }
}

/// A compact version of the reading progress widget
class CompactReadingProgressWidget extends StatelessWidget {
  final UserBook book;
  final VoidCallback? onTap;

  const CompactReadingProgressWidget({
    super.key,
    required this.book,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final progress = book.pageCount > 0 ? book.currentPage / book.pageCount : 0.0;
    final percentage = (progress * 100).round();
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppConstants.paddingSmall),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
        ),
        child: Row(
          children: [
            // Progress Circle
            SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                value: progress,
                backgroundColor: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary,
                ),
                strokeWidth: 4,
                child: Center(
                  child: Text(
                    '$percentage%',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(width: AppConstants.paddingSmall),
            
            // Progress Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${book.currentPage} / ${book.pageCount} pages',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    book.status.displayName,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
            
            Icon(
              Icons.chevron_right,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
