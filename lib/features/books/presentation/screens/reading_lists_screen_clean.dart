import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/models/reading_list.dart';
import '../../../../shared/providers/reading_lists_provider.dart';

class ReadingListsScreenClean extends HookConsumerWidget {
  const ReadingListsScreenClean({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readingListsState = ref.watch(readingListsProvider);
    
    // For now, we'll use the existing reading lists provider
    // TODO: Create clean architecture version of reading lists provider

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading Lists'),
        actions: [
          IconButton(
            onPressed: () => _showCreateListDialog(context, ref),
            icon: const Icon(Icons.add),
            tooltip: 'Create New List',
          ),
        ],
      ),
      body: readingListsState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : readingListsState.lists.isEmpty
              ? _buildEmptyState(context, ref)
              : _buildReadingLists(context, ref, readingListsState),
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
              Icons.bookmark_border,
              size: 80,
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'No Reading Lists Yet',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              'Create your first reading list to organize your books',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            GradientButton(
              onPressed: () => _showCreateListDialog(context, ref),
              text: 'Create First List',
              icon: Icons.add,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReadingLists(
    BuildContext context,
    WidgetRef ref,
    ReadingListsState readingListsState,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: readingListsState.lists.length,
      itemBuilder: (context, index) {
        final list = readingListsState.lists[index];
        
        return AnimatedFadeIn(
          delay: Duration(milliseconds: 100 * index),
          child: _buildReadingListCard(context, ref, list),
        );
      },
    );
  }

  Widget _buildReadingListCard(
    BuildContext context,
    WidgetRef ref,
    ReadingList list,
  ) {
    final isSelected = ref.watch(readingListsProvider).selectedListId == list.id;
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      elevation: 2,
      child: InkWell(
        onTap: () => _toggleListSelection(ref, list.id),
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        child: Container(
          padding: const EdgeInsets.all(AppConstants.paddingMedium),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
            border: isSelected
                ? Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  )
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List Header
              Row(
                children: [
                  // List Icon
                  Container(
                    padding: const EdgeInsets.all(AppConstants.paddingSmall),
                    decoration: BoxDecoration(
                      color: _parseColor(list.color),
                      borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                    ),
                    child: Icon(
                      _parseIcon(list.icon),
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  
                  const SizedBox(width: AppConstants.paddingMedium),
                  
                  // List Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          list.name,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          list.description,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Book Count
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppConstants.paddingSmall,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                    ),
                    child: Text(
                      '${list.bookCount}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // List Actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildActionButton(
                    context,
                    Icons.edit,
                    'Edit',
                    () => _showEditListDialog(context, ref, list),
                  ),
                  _buildActionButton(
                    context,
                    Icons.add,
                    'Add Book',
                    () => _showAddBookDialog(context, ref, list),
                  ),
                  _buildActionButton(
                    context,
                    Icons.delete,
                    'Delete',
                    () => _showDeleteConfirmation(context, ref, list),
                    isDestructive: true,
                  ),
                ],
              ),
              
              // Books Preview (if list is selected and has books)
              if (isSelected && list.isNotEmpty) ...[
                const SizedBox(height: AppConstants.paddingMedium),
                const Divider(),
                const SizedBox(height: AppConstants.paddingSmall),
                Text(
                  'Books in this list:',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.paddingSmall),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.bookIds.length,
                    itemBuilder: (context, index) {
                      // For now, show placeholder book covers
                      // TODO: Fetch actual book data using bookIds
                      return Container(
                        width: 80,
                        margin: const EdgeInsets.only(right: AppConstants.paddingSmall),
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                              ),
                              child: Icon(
                                Icons.book,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Book ${index + 1}',
                              style: Theme.of(context).textTheme.bodySmall,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    IconData icon,
    String label,
    VoidCallback onPressed, {
    bool isDestructive = false,
  }) {
    return Expanded(
      child: TextButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 16,
          color: isDestructive
              ? Theme.of(context).colorScheme.error
              : Theme.of(context).colorScheme.primary,
        ),
        label: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isDestructive
                ? Theme.of(context).colorScheme.error
                : Theme.of(context).colorScheme.primary,
          ),
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
        ),
      ),
    );
  }

  void _toggleListSelection(WidgetRef ref, String listId) {
    final currentState = ref.read(readingListsProvider);
    final newSelection = currentState.selectedListId == listId ? null : listId;
    ref.read(readingListsProvider.notifier).selectList(newSelection);
  }

  void _showCreateListDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => const CreateListDialog(),
    );
  }

  void _showEditListDialog(BuildContext context, WidgetRef ref, ReadingList list) {
    showDialog(
      context: context,
      builder: (context) => EditListDialog(list: list),
    );
  }

  void _showAddBookDialog(BuildContext context, WidgetRef ref, ReadingList list) {
    // TODO: Implement add book dialog
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Add book to ${list.name} - Coming soon!')),
    );
  }

  void _showDeleteConfirmation(BuildContext context, WidgetRef ref, ReadingList list) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Reading List'),
        content: Text('Are you sure you want to delete "${list.name}"? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              ref.read(readingListsProvider.notifier).deleteList(list.id);
              Navigator.of(context).pop();
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

  Color _parseColor(String colorString) {
    try {
      return Color(int.parse(colorString.replaceFirst('#', '0xFF')));
    } catch (e) {
      return Colors.purple; // Default color
    }
  }

  IconData _parseIcon(String iconString) {
    switch (iconString) {
      case 'play_arrow':
        return Icons.play_arrow;
      case 'bookmark_add':
        return Icons.bookmark_add;
      case 'check_circle':
        return Icons.check_circle;
      case 'favorite':
        return Icons.favorite;
      case 'stop':
        return Icons.stop;
      case 'replay':
        return Icons.replay;
      default:
        return Icons.bookmark;
    }
  }
}

// Placeholder dialogs - these will need to be implemented or imported
class CreateListDialog extends StatelessWidget {
  const CreateListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create New Reading List'),
      content: const Text('Create list dialog - Coming soon!'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Create'),
        ),
      ],
    );
  }
}

class EditListDialog extends StatelessWidget {
  final ReadingList list;
  
  const EditListDialog({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit ${list.name}'),
      content: const Text('Edit list dialog - Coming soon!'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Save'),
        ),
      ],
    );
  }
}
