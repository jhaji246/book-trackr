import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/models/group_discussion.dart';
import '../../../../shared/models/reading_group.dart';
import '../../../../shared/providers/group_discussions_provider.dart';

class GroupDiscussionsScreen extends HookConsumerWidget {
  final ReadingGroup group;
  
  const GroupDiscussionsScreen({
    super.key,
    required this.group,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final discussionsState = ref.watch(groupDiscussionsProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('${group.name} - Discussions'),
        actions: [
          IconButton(
            onPressed: () => _showCreateDiscussionDialog(context, ref),
            icon: const Icon(Icons.add),
            tooltip: 'New Discussion',
          ),
        ],
      ),
      body: Column(
        children: [
          // Quick Stats
          _buildQuickStats(context, ref, discussionsState),
          
          // Discussions List
          Expanded(
            child: _buildDiscussionsList(context, ref, discussionsState),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickStats(BuildContext context, WidgetRef ref, GroupDiscussionsState state) {
    final activeDiscussions = state.getActiveDiscussionsForGroup(group.id);
    
    return Container(
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
          Expanded(
            child: _buildStatCard(
              context,
              'Active Discussions',
              '${activeDiscussions.length}',
              Icons.forum,
              Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: AppConstants.paddingMedium),
          Expanded(
            child: _buildStatCard(
              context,
              'Total Messages',
              '${activeDiscussions.fold<int>(0, (sum, d) => sum + d.replyCount)}',
              Icons.message,
              Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String label, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingSmall),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 4),
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: color.withValues(alpha: 0.8),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDiscussionsList(BuildContext context, WidgetRef ref, GroupDiscussionsState state) {
    final discussions = state.getDiscussionsForGroup(group.id);
    
    if (discussions.isEmpty) {
      return _buildEmptyState(context);
    }
    
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: discussions.length,
      itemBuilder: (context, index) {
        final discussion = discussions[index];
        return _buildDiscussionCard(context, ref, discussion);
      },
    );
  }

  Widget _buildDiscussionCard(BuildContext context, WidgetRef ref, GroupDiscussion discussion) {
    final theme = Theme.of(context);
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      elevation: discussion.isPinned ? 4 : 2,
      child: InkWell(
        onTap: () => _navigateToDiscussion(context, discussion),
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        child: Container(
          padding: const EdgeInsets.all(AppConstants.paddingMedium),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
            border: discussion.isPinned
                ? Border.all(color: theme.colorScheme.primary, width: 2)
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Discussion Header
              Row(
                children: [
                  Icon(
                    _getCategoryIcon(discussion.category),
                    color: _getCategoryColor(discussion.category),
                    size: 24,
                  ),
                  const SizedBox(width: AppConstants.paddingSmall),
                  Expanded(
                    child: Text(
                      discussion.title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (discussion.isPinned)
                    Icon(Icons.push_pin, color: theme.colorScheme.primary),
                  if (discussion.isLocked)
                    Icon(Icons.lock, color: theme.colorScheme.error),
                ],
              ),
              
              const SizedBox(height: AppConstants.paddingSmall),
              
              Text(
                discussion.content,
                style: theme.textTheme.bodyMedium,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              
              const SizedBox(height: AppConstants.paddingSmall),
              
              Row(
                children: [
                  Text(
                    '${discussion.replyCount} replies',
                    style: theme.textTheme.bodySmall,
                  ),
                  const Spacer(),
                  Text(
                    _formatDate(discussion.lastActivity),
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.forum_outlined,
            size: 80,
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
          ),
          const SizedBox(height: AppConstants.paddingMedium),
          Text(
            'No Discussions Yet',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          Text(
            'Start the first discussion to engage with your group members!',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor(DiscussionCategory category) {
    switch (category) {
      case DiscussionCategory.general:
        return Colors.blue;
      case DiscussionCategory.bookDiscussion:
        return Colors.green;
      case DiscussionCategory.chapterDiscussion:
        return Colors.orange;
      case DiscussionCategory.readingProgress:
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  IconData _getCategoryIcon(DiscussionCategory category) {
    switch (category) {
      case DiscussionCategory.general:
        return Icons.forum;
      case DiscussionCategory.bookDiscussion:
        return Icons.book;
      case DiscussionCategory.chapterDiscussion:
        return Icons.chapter;
      case DiscussionCategory.readingProgress:
        return Icons.trending_up;
      default:
        return Icons.chat_bubble;
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays < 1) return 'Today';
    if (difference.inDays < 7) return '${difference.inDays} days ago';
    return '${(difference.inDays / 7).round()} weeks ago';
  }

  void _showCreateDiscussionDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => const CreateDiscussionDialog(),
    );
  }

  void _navigateToDiscussion(BuildContext context, GroupDiscussion discussion) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Viewing ${discussion.title} - Coming soon!')),
    );
  }
}

class CreateDiscussionDialog extends StatefulWidget {
  const CreateDiscussionDialog({super.key});

  @override
  State<CreateDiscussionDialog> createState() => _CreateDiscussionDialogState();
}

class _CreateDiscussionDialogState extends State<CreateDiscussionDialog> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  DiscussionCategory _selectedCategory = DiscussionCategory.general;

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Create New Discussion',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Discussion Title *',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a discussion title';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              TextFormField(
                controller: _contentController,
                decoration: const InputDecoration(
                  labelText: 'Discussion Content *',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter discussion content';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              Wrap(
                spacing: AppConstants.paddingSmall,
                children: DiscussionCategory.values.map((category) {
                  return ChoiceChip(
                    label: Text(category.displayName),
                    selected: _selectedCategory == category,
                    onSelected: (selected) {
                      if (selected) {
                        setState(() {
                          _selectedCategory = category;
                        });
                      }
                    },
                  );
                }).toList(),
              ),
              
              const SizedBox(height: AppConstants.paddingLarge),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: AppConstants.paddingSmall),
                  ElevatedButton(
                    onPressed: _createDiscussion,
                    child: const Text('Create Discussion'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _createDiscussion() {
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Discussion created!')),
      );
    }
  }
}
