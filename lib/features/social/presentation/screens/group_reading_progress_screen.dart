import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/models/group_reading_progress.dart';
import '../../../../shared/models/reading_group.dart';
import '../../../../shared/providers/group_reading_progress_provider.dart';
import '../../../../shared/providers/reading_groups_provider.dart';

class GroupReadingProgressScreen extends HookConsumerWidget {
  final ReadingGroup group;
  
  const GroupReadingProgressScreen({
    super.key,
    required this.group,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressState = ref.watch(groupReadingProgressProvider);
    final bookSelection = progressState.getBookSelectionForGroup(group.id);
    final memberProgress = progressState.getMemberProgressForGroup(group.id);
    
    // Select this group for progress tracking
    ref.read(groupReadingProgressProvider.notifier).selectGroup(group.id);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('${group.name} - Reading Progress'),
        actions: [
          if (bookSelection == null)
            IconButton(
              onPressed: () => _showSelectBookDialog(context, ref),
              icon: const Icon(Icons.add),
              tooltip: 'Select Book',
            ),
        ],
      ),
      body: bookSelection == null
          ? _buildNoBookSelected(context, ref)
          : _buildReadingProgress(context, ref, bookSelection, memberProgress),
    );
  }

  Widget _buildNoBookSelected(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.book_outlined,
            size: 80,
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
          ),
          const SizedBox(height: AppConstants.paddingMedium),
          Text(
            'No Book Selected',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          Text(
            'Select a book to start tracking group reading progress!',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppConstants.paddingLarge),
          ElevatedButton.icon(
            onPressed: () => _showSelectBookDialog(context, ref),
            icon: const Icon(Icons.add),
            label: const Text('Select Book'),
          ),
        ],
      ),
    );
  }

  Widget _buildReadingProgress(BuildContext context, WidgetRef ref, GroupBookSelection bookSelection, List<MemberReadingProgress> memberProgress) {
    return Column(
      children: [
        // Book Selection Header
        _buildBookSelectionHeader(context, bookSelection),
        
        // Progress Overview
        _buildProgressOverview(context, bookSelection, memberProgress),
        
        // Reading Milestones
        _buildReadingMilestones(context, bookSelection),
        
        // Member Progress
        Expanded(
          child: _buildMemberProgressList(context, memberProgress),
        ),
      ],
    );
  }

  Widget _buildBookSelectionHeader(BuildContext context, GroupBookSelection bookSelection) {
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
      child: Row(
        children: [
          // Book Cover
          Container(
            width: 60,
            height: 80,
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
            ),
            child: bookSelection.coverUrl != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                    child: Image.network(
                      bookSelection.coverUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.book,
                          color: theme.colorScheme.onPrimaryContainer,
                        );
                      },
                    ),
                  )
                : Icon(
                    Icons.book,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
          ),
          
          const SizedBox(width: AppConstants.paddingMedium),
          
          // Book Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookSelection.title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bookSelection.author,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: AppConstants.paddingSmall),
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      size: 16,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Week ${bookSelection.currentWeek} of ${bookSelection.totalWeeks}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${bookSelection.daysRemaining} days left',
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
    );
  }

  Widget _buildProgressOverview(BuildContext context, GroupBookSelection bookSelection, List<MemberReadingProgress> memberProgress) {
    final theme = Theme.of(context);
    final progressPercentage = (bookSelection.currentProgress * 100).round();
    final membersOnTrack = memberProgress.where((m) => m.isOnTrack).length;
    final membersFinished = memberProgress.where((m) => m.status == ReadingStatus.completed).length;
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      child: Column(
        children: [
          // Overall Progress
          Row(
            children: [
              Expanded(
                child: _buildProgressCard(
                  context,
                  'Group Progress',
                  '$progressPercentage%',
                  Icons.trending_up,
                  theme.colorScheme.primary,
                ),
              ),
              const SizedBox(width: AppConstants.paddingMedium),
              Expanded(
                child: _buildProgressCard(
                  context,
                  'On Track',
                  '$membersOnTrack/${memberProgress.length}',
                  Icons.check_circle,
                  theme.colorScheme.secondary,
                ),
              ),
              const SizedBox(width: AppConstants.paddingMedium),
              Expanded(
                child: _buildProgressCard(
                  context,
                  'Completed',
                  '$membersFinished',
                  Icons.emoji_events,
                  theme.colorScheme.tertiary,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: AppConstants.paddingMedium),
          
          // Progress Bar
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reading Progress',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$progressPercentage%',
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              LinearProgressIndicator(
                value: bookSelection.currentProgress,
                backgroundColor: theme.colorScheme.surfaceContainerHighest,
                valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
                minHeight: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgressCard(BuildContext context, String label, String value, IconData icon, Color color) {
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

  Widget _buildReadingMilestones(BuildContext context, GroupBookSelection bookSelection) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reading Milestones',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bookSelection.milestones.length,
              itemBuilder: (context, index) {
                final milestone = bookSelection.milestones[index];
                return _buildMilestoneCard(context, milestone, bookSelection);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMilestoneCard(BuildContext context, ReadingMilestone milestone, GroupBookSelection bookSelection) {
    final theme = Theme.of(context);
    final isAchieved = milestone.isGroupAchieved;
    final progress = (milestone.membersReached.length / bookSelection.totalMembersReading * 100).round();
    
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: AppConstants.paddingSmall),
      child: Card(
        elevation: isAchieved ? 3 : 1,
        color: isAchieved 
            ? theme.colorScheme.primaryContainer 
            : theme.colorScheme.surfaceContainerHighest,
        child: Container(
          padding: const EdgeInsets.all(AppConstants.paddingSmall),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _getMilestoneIcon(milestone.type),
                color: isAchieved 
                    ? theme.colorScheme.primary 
                    : theme.colorScheme.onSurface.withValues(alpha: 0.5),
                size: 24,
              ),
              const SizedBox(height: 4),
              Text(
                milestone.name,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isAchieved 
                      ? theme.colorScheme.primary 
                      : theme.colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                '$progress%',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isAchieved 
                      ? theme.colorScheme.primary 
                      : theme.colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMemberProgressList(BuildContext context, List<MemberReadingProgress> memberProgress) {
    if (memberProgress.isEmpty) {
      return _buildNoMemberProgress(context);
    }
    
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: memberProgress.length,
      itemBuilder: (context, index) {
        final progress = memberProgress[index];
        return _buildMemberProgressCard(context, progress);
      },
    );
  }

  Widget _buildNoMemberProgress(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people_outline,
            size: 80,
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
          ),
          const SizedBox(height: AppConstants.paddingMedium),
          Text(
            'No Member Progress',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          Text(
            'Group members haven\'t started tracking their reading progress yet.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildMemberProgressCard(BuildContext context, MemberReadingProgress progress) {
    final theme = Theme.of(context);
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          children: [
            // Member Header
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: theme.colorScheme.primaryContainer,
                  child: Text(
                    progress.displayName.substring(0, 1).toUpperCase(),
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: AppConstants.paddingSmall),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        progress.displayName,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        progress.status.displayName,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: _getStatusColor(progress.status),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _getPaceStatusColor(progress).withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                  ),
                  child: Text(
                    progress.paceStatus,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: _getPaceStatusColor(progress),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.paddingSmall),
            
            // Progress Bar
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Page ${progress.currentPage} of ${progress.totalPages}',
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      '${progress.progressPercentage.round()}%',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppConstants.paddingSmall),
                LinearProgressIndicator(
                  value: progress.progressPercentage / 100,
                  backgroundColor: theme.colorScheme.surfaceContainerHighest,
                  valueColor: AlwaysStoppedAnimation<Color>(_getProgressColor(progress)),
                  minHeight: 6,
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.paddingSmall),
            
            // Progress Stats
            Row(
              children: [
                _buildStatChip(
                  context,
                  '${progress.readingSpeed.toStringAsFixed(1)} pages/day',
                  Icons.speed,
                ),
                const SizedBox(width: AppConstants.paddingSmall),
                if (progress.estimatedCompletionDate != null)
                  _buildStatChip(
                    context,
                    'Est: ${_formatDate(progress.estimatedCompletionDate!)}',
                    Icons.calendar_today,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatChip(BuildContext context, String text, IconData icon) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingSmall,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getMilestoneIcon(MilestoneType type) {
    switch (type) {
      case MilestoneType.startReading:
        return Icons.play_arrow;
      case MilestoneType.quarterComplete:
        return Icons.one_quarter;
      case MilestoneType.halfway:
        return Icons.half;
      case MilestoneType.threeQuarters:
        return Icons.three_quarters;
      case MilestoneType.finished:
        return Icons.flag;
      case MilestoneType.custom:
        return Icons.star;
    }
  }

  Color _getStatusColor(ReadingStatus status) {
    switch (status) {
      case ReadingStatus.notStarted:
        return Colors.grey;
      case ReadingStatus.inProgress:
        return Colors.blue;
      case ReadingStatus.paused:
        return Colors.orange;
      case ReadingStatus.completed:
        return Colors.green;
      case ReadingStatus.abandoned:
        return Colors.red;
    }
  }

  Color _getPaceStatusColor(MemberReadingProgress progress) {
    if (progress.isOnTrack) return Colors.green;
    if (progress.isAhead) return Colors.blue;
    return Colors.orange;
  }

  Color _getProgressColor(MemberReadingProgress progress) {
    if (progress.progressPercentage >= 80) return Colors.green;
    if (progress.progressPercentage >= 50) return Colors.blue;
    if (progress.progressPercentage >= 25) return Colors.orange;
    return Colors.grey;
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = date.difference(now);
    
    if (difference.inDays < 0) return 'Overdue';
    if (difference.inDays == 0) return 'Today';
    if (difference.inDays == 1) return 'Tomorrow';
    if (difference.inDays < 7) return '${difference.inDays} days';
    return '${(difference.inDays / 7).round()} weeks';
  }

  void _showSelectBookDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => const SelectBookDialog(),
    );
  }
}

class SelectBookDialog extends StatefulWidget {
  const SelectBookDialog({super.key});

  @override
  State<SelectBookDialog> createState() => _SelectBookDialogState();
}

class _SelectBookDialogState extends State<SelectBookDialog> {
  final _formKey = GlobalKey<FormState>();
  final _bookIdController = TextEditingController();
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  final _totalPagesController = TextEditingController();
  final _pagesPerWeekController = TextEditingController();

  @override
  void dispose() {
    _bookIdController.dispose();
    _titleController.dispose();
    _authorController.dispose();
    _totalPagesController.dispose();
    _pagesPerWeekController.dispose();
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
                'Select Book for Group',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              TextFormField(
                controller: _bookIdController,
                decoration: const InputDecoration(
                  labelText: 'Book ID',
                  hintText: 'Enter book identifier',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a book ID';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Book Title *',
                  hintText: 'Enter book title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a book title';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              TextFormField(
                controller: _authorController,
                decoration: const InputDecoration(
                  labelText: 'Author *',
                  hintText: 'Enter author name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter an author name';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _totalPagesController,
                      decoration: const InputDecoration(
                        labelText: 'Total Pages *',
                        hintText: 'Enter total pages',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter total pages';
                        }
                        final pages = int.tryParse(value);
                        if (pages == null || pages <= 0) {
                          return 'Please enter a valid page count';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: AppConstants.paddingMedium),
                  Expanded(
                    child: TextFormField(
                      controller: _pagesPerWeekController,
                      decoration: const InputDecoration(
                        labelText: 'Pages per Week *',
                        hintText: 'Enter reading pace',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter pages per week';
                        }
                        final pages = int.tryParse(value);
                        if (pages == null || pages <= 0) {
                          return 'Please enter a valid reading pace';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
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
                    onPressed: _selectBook,
                    child: const Text('Select Book'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _selectBook() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Implement book selection
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Book selected for group!')),
      );
    }
  }
}
