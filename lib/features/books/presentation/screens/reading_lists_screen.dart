import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/models/reading_list.dart';
import '../../../../shared/providers/reading_lists_provider.dart';
import '../../../../shared/providers/books_provider.dart';
import '../../../../shared/models/user_book.dart';

class ReadingListsScreen extends HookConsumerWidget {
  const ReadingListsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readingListsState = ref.watch(readingListsProvider);
    final booksState = ref.watch(booksProvider);

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
              : _buildReadingLists(context, ref, readingListsState, booksState),
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
    dynamic booksState,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: readingListsState.lists.length,
      itemBuilder: (context, index) {
        final list = readingListsState.lists[index];
        final books = _getBooksForList(list, booksState);
        
        return AnimatedFadeIn(
          delay: Duration(milliseconds: 100 * index),
          child: _buildReadingListCard(context, ref, list, books),
        );
      },
    );
  }

  Widget _buildReadingListCard(
    BuildContext context,
    WidgetRef ref,
    ReadingList list,
    List<UserBook> books,
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
                      '${books.length}',
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
              
              // Books Preview (if list is selected)
              if (isSelected && books.isNotEmpty) ...[
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
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      final book = books[index];
                      return Container(
                        width: 80,
                        margin: const EdgeInsets.only(right: AppConstants.paddingSmall),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                              child: Image.network(
                                book.coverUrl,
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
                            const SizedBox(height: 4),
                            Text(
                              book.title,
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

  List<UserBook> _getBooksForList(ReadingList list, dynamic booksState) {
    // This is a placeholder - you'll need to implement the actual book retrieval
    // based on your books provider structure
    return [];
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

/// Dialog for creating a new reading list
class CreateListDialog extends StatefulWidget {
  const CreateListDialog({super.key});

  @override
  State<CreateListDialog> createState() => _CreateListDialogState();
}

class _CreateListDialogState extends State<CreateListDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _selectedColor = '#6200EE';
  String _selectedIcon = 'bookmark';

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create New Reading List',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Name Field
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'List Name',
                  hintText: 'Enter list name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a list name';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Description Field
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter list description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Color and Icon Selection
              Row(
                children: [
                  Expanded(
                    child: _buildColorPicker(),
                  ),
                  const SizedBox(width: AppConstants.paddingMedium),
                  Expanded(
                    child: _buildIconPicker(),
                  ),
                ],
              ),
              
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
                    onPressed: _createList,
                    child: const Text('Create List'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorPicker() {
    final colors = [
      '#6200EE', '#FF6B35', '#4ECDC4', '#45B7D1', '#FFD93D', '#FF6B6B', '#6C5CE7'
    ];
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Color',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppConstants.paddingSmall),
        Wrap(
          spacing: AppConstants.paddingSmall,
          children: colors.map((color) {
            final isSelected = _selectedColor == color;
            return GestureDetector(
              onTap: () => setState(() => _selectedColor = color),
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: _parseColor(color),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? Colors.white : Colors.transparent,
                    width: 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: _parseColor(color).withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: isSelected
                    ? const Icon(Icons.check, color: Colors.white, size: 16)
                    : null,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildIconPicker() {
    final icons = [
      'bookmark', 'favorite', 'star', 'book', 'library_books', 'auto_stories', 'menu_book'
    ];
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Icon',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppConstants.paddingSmall),
        Wrap(
          spacing: AppConstants.paddingSmall,
          children: icons.map((icon) {
            final isSelected = _selectedIcon == icon;
            return GestureDetector(
              onTap: () => setState(() => _selectedIcon = icon),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                  border: Border.all(
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
                  ),
                ),
                child: Icon(
                  _parseIcon(icon),
                  color: isSelected
                      ? Colors.white
                      : Theme.of(context).colorScheme.onSurface,
                  size: 20,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  void _createList() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Implement list creation
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Reading list created!')),
      );
    }
  }

  Color _parseColor(String colorString) {
    try {
      return Color(int.parse(colorString.replaceFirst('#', '0xFF')));
    } catch (e) {
      return Colors.purple;
    }
  }

  IconData _parseIcon(String iconString) {
    switch (iconString) {
      case 'bookmark':
        return Icons.bookmark;
      case 'favorite':
        return Icons.favorite;
      case 'star':
        return Icons.star;
      case 'book':
        return Icons.book;
      case 'library_books':
        return Icons.library_books;
      case 'auto_stories':
        return Icons.auto_stories;
      case 'menu_book':
        return Icons.menu_book;
      default:
        return Icons.bookmark;
    }
  }
}

/// Dialog for editing an existing reading list
class EditListDialog extends StatefulWidget {
  final ReadingList list;

  const EditListDialog({super.key, required this.list});

  @override
  State<EditListDialog> createState() => _EditListDialogState();
}

class _EditListDialogState extends State<EditListDialog> {
  // TODO: Implement edit list dialog
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit ${widget.list.name}'),
      content: const Text('Edit functionality coming soon!'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
