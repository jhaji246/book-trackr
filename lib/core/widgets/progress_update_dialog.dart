import 'package:flutter/material.dart';
import '../../shared/models/user_book.dart';
import '../../shared/models/reading_status.dart';
import '../constants/app_constants.dart';

/// Dialog for updating reading progress
class ProgressUpdateDialog extends StatefulWidget {
  final UserBook book;
  final Function(UserBook updatedBook) onUpdate;

  const ProgressUpdateDialog({
    super.key,
    required this.book,
    required this.onUpdate,
  });

  @override
  State<ProgressUpdateDialog> createState() => _ProgressUpdateDialogState();
}

class _ProgressUpdateDialogState extends State<ProgressUpdateDialog> {
  late int _currentPage;
  late ReadingStatus _status;
  late String _notes;
  late TextEditingController _pageController;
  late TextEditingController _notesController;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.book.currentPage;
    _status = widget.book.status;
    _notes = widget.book.notes;
    _pageController = TextEditingController(text: _currentPage.toString());
    _notesController = TextEditingController(text: _notes);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _notesController.dispose();
    super.dispose();
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
            // Header
            Row(
              children: [
                Icon(
                  Icons.edit,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: AppConstants.paddingSmall),
                Text(
                  'Update Reading Progress',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Book Info
            Container(
              padding: const EdgeInsets.all(AppConstants.paddingMedium),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
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
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Current Page Input
            Text(
              'Current Page',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _pageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter current page',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                      ),
                      suffixText: '/ ${widget.book.pageCount}',
                    ),
                    onChanged: (value) {
                      final page = int.tryParse(value);
                      if (page != null && page >= 0 && page <= widget.book.pageCount) {
                        setState(() {
                          _currentPage = page;
                        });
                      }
                    },
                  ),
                ),
                const SizedBox(width: AppConstants.paddingSmall),
                // Quick Page Buttons
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (_currentPage > 0) {
                          setState(() {
                            _currentPage--;
                            _pageController.text = _currentPage.toString();
                          });
                        }
                      },
                      icon: const Icon(Icons.remove),
                      tooltip: 'Decrease page',
                    ),
                    IconButton(
                      onPressed: () {
                        if (_currentPage < widget.book.pageCount) {
                          setState(() {
                            _currentPage++;
                            _pageController.text = _currentPage.toString();
                          });
                        }
                      },
                      icon: const Icon(Icons.add),
                      tooltip: 'Increase page',
                    ),
                  ],
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Reading Status
            Text(
              'Reading Status',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Wrap(
              spacing: AppConstants.paddingSmall,
              children: ReadingStatus.values.map((status) {
                final isSelected = _status == status;
                return ChoiceChip(
                  label: Text(status.displayName),
                  selected: isSelected,
                  onSelected: (selected) {
                    if (selected) {
                      setState(() {
                        _status = status;
                      });
                    }
                  },
                );
              }).toList(),
            ),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Notes
            Text(
              'Notes (Optional)',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            TextField(
              controller: _notesController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Add your thoughts, quotes, or notes...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                ),
              ),
              onChanged: (value) {
                _notes = value;
              },
            ),
            
            const SizedBox(height: AppConstants.paddingLarge),
            
            // Progress Bar
            if (_currentPage > 0) ...[
              LinearProgressIndicator(
                value: _currentPage / widget.book.pageCount,
                backgroundColor: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary,
                ),
                minHeight: 8,
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Text(
                '${((_currentPage / widget.book.pageCount) * 100).round()}% complete',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppConstants.paddingMedium),
            ],
            
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
                  onPressed: _canUpdate() ? _updateProgress : null,
                  child: const Text('Update Progress'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool _canUpdate() {
    final page = int.tryParse(_pageController.text);
    return page != null && 
           page >= 0 && 
           page <= widget.book.pageCount &&
           (page != widget.book.currentPage || 
            _status != widget.book.status || 
            _notes != widget.book.notes);
  }

  void _updateProgress() {
    final page = int.tryParse(_pageController.text);
    if (page != null && page >= 0 && page <= widget.book.pageCount) {
      final updatedBook = widget.book.copyWith(
        currentPage: page,
        status: _status,
        notes: _notes,
        dateStarted: _status == ReadingStatus.reading && widget.book.dateStarted == null
            ? DateTime.now()
            : widget.book.dateStarted,
        dateCompleted: _status == ReadingStatus.completed
            ? DateTime.now()
            : widget.book.dateCompleted,
      );
      
      widget.onUpdate(updatedBook);
      Navigator.of(context).pop();
    }
  }
}
