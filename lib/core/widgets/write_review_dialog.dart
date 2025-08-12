import 'package:flutter/material.dart';
import '../../core/constants/app_constants.dart';
import '../../shared/models/book_review.dart';
import '../../shared/models/user_book.dart';
import 'star_rating_widget.dart';

/// Dialog for writing a book review
class WriteReviewDialog extends StatefulWidget {
  final UserBook book;
  final BookReview? existingReview;
  final Function(BookReview review) onSave;

  const WriteReviewDialog({
    super.key,
    required this.book,
    this.existingReview,
    required this.onSave,
  });

  @override
  State<WriteReviewDialog> createState() => _WriteReviewDialogState();
}

class _WriteReviewDialogState extends State<WriteReviewDialog> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  
  late double _rating;
  late bool _hasSpoilers;
  late List<String> _selectedTags;
  late int _readingProgress;

  @override
  void initState() {
    super.initState();
    _rating = widget.existingReview?.rating.toDouble() ?? 0.0;
    _hasSpoilers = widget.existingReview?.hasSpoilers ?? false;
    _selectedTags = List.from(widget.existingReview?.tags ?? []);
    _readingProgress = widget.existingReview?.readingProgress ?? widget.book.currentPage;
    
    _titleController.text = widget.existingReview?.title ?? '';
    _contentController.text = widget.existingReview?.content ?? '';
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.existingReview != null;
    
    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500, maxHeight: 600),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(AppConstants.paddingLarge),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppConstants.radiusMedium),
                  topRight: Radius.circular(AppConstants.radiusMedium),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    isEditing ? Icons.edit : Icons.rate_review,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: AppConstants.paddingSmall),
                  Text(
                    isEditing ? 'Edit Review' : 'Write a Review',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            
            // Book Info
            Container(
              padding: const EdgeInsets.all(AppConstants.paddingMedium),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
                  ),
                ),
              ),
              child: Row(
                children: [
                  // Book Cover
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                    child: Image.network(
                      widget.book.coverUrl,
                      width: 60,
                      height: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 60,
                          height: 80,
                          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
                          child: Icon(
                            Icons.book,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        );
                      },
                    ),
                  ),
                  
                  const SizedBox(width: AppConstants.paddingMedium),
                  
                  // Book Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.book.title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.book.author,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${widget.book.pageCount} pages',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // Review Form
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppConstants.paddingLarge),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Rating Input
                      RatingInputWidget(
                        initialRating: _rating,
                        onRatingChanged: (rating) {
                          setState(() {
                            _rating = rating;
                          });
                        },
                      ),
                      
                      const SizedBox(height: AppConstants.paddingLarge),
                      
                      // Review Title (Optional)
                      TextFormField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          labelText: 'Review Title (Optional)',
                          hintText: 'Add a catchy title for your review...',
                          border: OutlineInputBorder(),
                        ),
                        maxLength: 100,
                      ),
                      
                      const SizedBox(height: AppConstants.paddingMedium),
                      
                      // Review Content
                      TextFormField(
                        controller: _contentController,
                        decoration: const InputDecoration(
                          labelText: 'Your Review *',
                          hintText: 'Share your thoughts about this book...',
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                        ),
                        maxLines: 6,
                        maxLength: 1000,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please write a review';
                          }
                          if (value.trim().length < 10) {
                            return 'Review must be at least 10 characters long';
                          }
                          return null;
                        },
                      ),
                      
                      const SizedBox(height: AppConstants.paddingLarge),
                      
                      // Spoiler Warning
                      Row(
                        children: [
                          Checkbox(
                            value: _hasSpoilers,
                            onChanged: (value) {
                              setState(() {
                                _hasSpoilers = value ?? false;
                              });
                            },
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contains Spoilers',
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Check this if your review reveals important plot details',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: AppConstants.paddingMedium),
                      
                      // Reading Progress
                      Text(
                        'Reading Progress When Writing This Review',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: AppConstants.paddingSmall),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: _readingProgress.toDouble(),
                              min: 0,
                              max: widget.book.pageCount.toDouble(),
                              divisions: widget.book.pageCount,
                              label: '${_readingProgress} pages',
                              onChanged: (value) {
                                setState(() {
                                  _readingProgress = value.round();
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              '${_readingProgress} / ${widget.book.pageCount}',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: AppConstants.paddingMedium),
                      
                      // Review Tags
                      Text(
                        'Review Tags (Optional)',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: AppConstants.paddingSmall),
                      _buildTagSelector(),
                      
                      const SizedBox(height: AppConstants.paddingLarge),
                      
                      // Action Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Cancel'),
                          ),
                          const SizedBox(width: AppConstants.paddingSmall),
                          ElevatedButton(
                            onPressed: _canSave() ? _saveReview : null,
                            child: Text(isEditing ? 'Update Review' : 'Post Review'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTagSelector() {
    final availableTags = ReviewTags.allTags;
    
    return Wrap(
      spacing: AppConstants.paddingSmall,
      runSpacing: AppConstants.paddingSmall,
      children: availableTags.map((tag) {
        final isSelected = _selectedTags.contains(tag);
        return FilterChip(
          label: Text(tag.replaceAll('-', ' ')),
          selected: isSelected,
          onSelected: (selected) {
            setState(() {
              if (selected) {
                _selectedTags.add(tag);
              } else {
                _selectedTags.remove(tag);
              }
            });
          },
          selectedColor: Theme.of(context).colorScheme.primaryContainer,
          checkmarkColor: Theme.of(context).colorScheme.onPrimaryContainer,
        );
      }).toList(),
    );
  }

  bool _canSave() {
    return _rating > 0 && 
           _contentController.text.trim().isNotEmpty &&
           _formKey.currentState?.validate() == true;
  }

  void _saveReview() {
    if (!_canSave()) return;

    final review = BookReview.create(
      bookId: widget.book.id,
      userId: 'current-user-id', // TODO: Get from auth provider
      userName: 'Current User', // TODO: Get from auth provider
      rating: _rating.round(),
      title: _titleController.text.trim().isEmpty ? null : _titleController.text.trim(),
      content: _contentController.text.trim(),
      hasSpoilers: _hasSpoilers,
      readingProgress: _readingProgress,
      tags: _selectedTags,
    );

    widget.onSave(review);
    Navigator.of(context).pop();
  }
}
