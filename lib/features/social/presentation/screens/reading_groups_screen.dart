import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/models/reading_group.dart';
import '../../../../shared/providers/reading_groups_provider.dart';
import '../../../../shared/providers/auth_provider.dart';

class ReadingGroupsScreen extends HookConsumerWidget {
  const ReadingGroupsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readingGroupsState = ref.watch(readingGroupsProvider);
    final authState = ref.watch(authProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading Groups'),
        actions: [
          IconButton(
            onPressed: () => _showSearchDialog(context, ref),
            icon: const Icon(Icons.search),
            tooltip: 'Search Groups',
          ),
          IconButton(
            onPressed: () => _showCreateGroupDialog(context, ref),
            icon: const Icon(Icons.add),
            tooltip: 'Create Group',
          ),
        ],
      ),
      body: Column(
        children: [
          // Quick Actions
          _buildQuickActions(context, ref),
          
          // Content Tabs
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(text: 'My Groups'),
                      Tab(text: 'Discover'),
                      Tab(text: 'Recommended'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildMyGroupsTab(context, ref, readingGroupsState),
                        _buildDiscoverTab(context, ref, readingGroupsState),
                        _buildRecommendedTab(context, ref, readingGroupsState),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context, WidgetRef ref) {
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
            child: _buildQuickActionButton(
              context,
              'Create Group',
              Icons.add_circle,
              () => _showCreateGroupDialog(context, ref),
            ),
          ),
          const SizedBox(width: AppConstants.paddingMedium),
          Expanded(
            child: _buildQuickActionButton(
              context,
              'Find Groups',
              Icons.search,
              () => _showSearchDialog(context, ref),
            ),
          ),
          const SizedBox(width: AppConstants.paddingMedium),
          Expanded(
            child: _buildQuickActionButton(
              context,
              'My Groups',
              Icons.group,
              () => _scrollToMyGroups(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionButton(
    BuildContext context,
    String label,
    IconData icon,
    VoidCallback onPressed,
  ) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }

  Widget _buildMyGroupsTab(BuildContext context, WidgetRef ref, ReadingGroupsState state) {
    final myGroups = state.currentUserGroups;
    
    if (myGroups.isEmpty) {
      return _buildEmptyState(
        context,
        'No Groups Yet',
        'Join or create your first reading group to start reading with others!',
        Icons.group_outlined,
        () => _showCreateGroupDialog(context, ref),
        'Create Group',
      );
    }
    
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: myGroups.length,
      itemBuilder: (context, index) {
        final group = myGroups[index];
        return AnimatedFadeIn(
          delay: Duration(milliseconds: 100 * index),
          child: _buildGroupCard(context, ref, group, isMember: true),
        );
      },
    );
  }

  Widget _buildDiscoverTab(BuildContext context, WidgetRef ref, ReadingGroupsState state) {
    final allGroups = state.groupsById.values
        .where((group) => group.privacy == GroupPrivacy.public && group.isActive)
        .toList();
    
    if (allGroups.isEmpty) {
      return _buildEmptyState(
        context,
        'No Groups Available',
        'Check back later for new reading groups!',
        Icons.search_off,
        null,
        null,
      );
    }
    
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: allGroups.length,
      itemBuilder: (context, index) {
        final group = allGroups[index];
        final isMember = group.isMember(ref.read(authProvider).user?.uid ?? '');
        return AnimatedFadeIn(
          delay: Duration(milliseconds: 100 * index),
          child: _buildGroupCard(context, ref, group, isMember: isMember),
        );
      },
    );
  }

  Widget _buildRecommendedTab(BuildContext context, WidgetRef ref, ReadingGroupsState state) {
    final recommendedGroups = state.recommendedGroups;
    
    if (recommendedGroups.isEmpty) {
      return _buildEmptyState(
        context,
        'No Recommendations',
        'Complete your profile to get personalized group recommendations!',
        Icons.recommend,
        () => _loadRecommendations(ref),
        'Refresh',
      );
    }
    
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      itemCount: recommendedGroups.length,
      itemBuilder: (context, index) {
        final group = recommendedGroups[index];
        return AnimatedFadeIn(
          delay: Duration(milliseconds: 100 * index),
          child: _buildGroupCard(context, ref, group, isMember: false),
        );
      },
    );
  }

  Widget _buildGroupCard(BuildContext context, WidgetRef ref, ReadingGroup group, {required bool isMember}) {
    final theme = Theme.of(context);
    final currentUserId = ref.read(authProvider).user?.uid;
    final userRole = group.getUserRole(currentUserId ?? '');
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      elevation: 2,
      child: InkWell(
        onTap: () => _navigateToGroupDetails(context, group),
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        child: Container(
          padding: const EdgeInsets.all(AppConstants.paddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Group Header
              Row(
                children: [
                  // Group Cover Image
                  Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                    ),
                    child: group.coverImageUrl != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                            child: Image.network(
                              group.coverImageUrl!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(
                                  Icons.group,
                                  color: theme.colorScheme.onPrimaryContainer,
                                );
                              },
                            ),
                          )
                        : Icon(
                            Icons.group,
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                  ),
                  
                  const SizedBox(width: AppConstants.paddingMedium),
                  
                  // Group Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                group.name,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (userRole != null) ...[
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: _getRoleColor(userRole).withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                                ),
                                child: Text(
                                  userRole.displayName,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: _getRoleColor(userRole),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                        
                        const SizedBox(height: 4),
                        
                        Text(
                          group.description,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        
                        const SizedBox(height: 8),
                        
                        Row(
                          children: [
                            Icon(
                              Icons.tag,
                              size: 16,
                              color: theme.colorScheme.primary,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              group.primaryGenre,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            
                            const Spacer(),
                            
                            Icon(
                              Icons.people,
                              size: 16,
                              color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${group.memberCount}',
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
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Group Stats
              Row(
                children: [
                  _buildStatChip(
                    context,
                    '${group.readingPace.toStringAsFixed(1)} books/month',
                    Icons.schedule,
                  ),
                  
                  const SizedBox(width: AppConstants.paddingSmall),
                  
                  _buildStatChip(
                    context,
                    group.privacy.displayName,
                    Icons.lock,
                  ),
                  
                  const Spacer(),
                  
                  Text(
                    'Created ${_formatDate(group.dateCreated)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Action Buttons
              if (isMember) ...[
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => _navigateToGroupDetails(context, group),
                        icon: const Icon(Icons.visibility, size: 16),
                        label: const Text('View Group'),
                      ),
                    ),
                    
                    const SizedBox(width: AppConstants.paddingSmall),
                    
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => _leaveGroup(context, ref, group),
                        icon: const Icon(Icons.exit_to_app, size: 16),
                        label: const Text('Leave'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: theme.colorScheme.error,
                        ),
                      ),
                    ),
                  ],
                ),
              ] else ...[
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => _joinGroup(context, ref, group),
                        icon: const Icon(Icons.person_add, size: 16),
                        label: const Text('Join Group'),
                      ),
                    ),
                    
                    const SizedBox(width: AppConstants.paddingSmall),
                    
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => _navigateToGroupDetails(context, group),
                        icon: const Icon(Icons.info, size: 16),
                        label: const Text('Learn More'),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
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

  Widget _buildEmptyState(
    BuildContext context,
    String title,
    String message,
    IconData icon,
    VoidCallback? onAction,
    String? actionText,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            if (onAction != null && actionText != null) ...[
              const SizedBox(height: AppConstants.paddingLarge),
              GradientButton(
                onPressed: onAction,
                text: actionText,
                icon: icon,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color _getRoleColor(GroupRole role) {
    switch (role) {
      case GroupRole.creator:
        return Colors.purple;
      case GroupRole.moderator:
        return Colors.orange;
      case GroupRole.member:
        return Colors.blue;
      case GroupRole.guest:
        return Colors.grey;
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays < 1) return 'Today';
    if (difference.inDays < 7) return '${difference.inDays} days ago';
    if (difference.inDays < 30) return '${(difference.inDays / 7).round()} weeks ago';
    if (difference.inDays < 365) return '${(difference.inDays / 30).round()} months ago';
    return '${(difference.inDays / 365).round()} years ago';
  }

  void _showCreateGroupDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => const CreateGroupDialog(),
    );
  }

  void _showSearchDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => const SearchGroupsDialog(),
    );
  }

  void _navigateToGroupDetails(BuildContext context, ReadingGroup group) {
    // TODO: Navigate to group details screen
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Viewing ${group.name} - Coming soon!')),
    );
  }

  void _joinGroup(BuildContext context, WidgetRef ref, ReadingGroup group) {
    ref.read(readingGroupsProvider.notifier).joinGroup(group.id);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Join request sent to ${group.name}!')),
    );
  }

  void _leaveGroup(BuildContext context, WidgetRef ref, ReadingGroup group) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Leave Group'),
        content: Text('Are you sure you want to leave "${group.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              ref.read(readingGroupsProvider.notifier).leaveGroup(group.id);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Left ${group.name}')),
              );
            },
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('Leave'),
          ),
        ],
      ),
    );
  }

  void _loadRecommendations(WidgetRef ref) {
    ref.read(readingGroupsProvider.notifier).loadRecommendedGroups();
  }

  void _scrollToMyGroups() {
    // TODO: Implement scroll to my groups tab
  }
}

/// Dialog for creating a new reading group
class CreateGroupDialog extends StatefulWidget {
  const CreateGroupDialog({super.key});

  @override
  State<CreateGroupDialog> createState() => _CreateGroupDialogState();
}

class _CreateGroupDialogState extends State<CreateGroupDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _genreController = TextEditingController();
  GroupPrivacy _selectedPrivacy = GroupPrivacy.public;
  double _readingPace = 1.0;
  int? _maxMembers;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _genreController.dispose();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Reading Group',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Group Name
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Group Name *',
                  hintText: 'Enter group name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a group name';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Description
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description *',
                  hintText: 'Describe your reading group',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Primary Genre
              TextFormField(
                controller: _genreController,
                decoration: const InputDecoration(
                  labelText: 'Primary Genre *',
                  hintText: 'e.g., Fiction, Mystery, Science Fiction',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a primary genre';
                  }
                  return null;
                },
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Privacy Setting
              Text(
                'Privacy Setting',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              Wrap(
                spacing: AppConstants.paddingSmall,
                children: GroupPrivacy.values.map((privacy) {
                  return ChoiceChip(
                    label: Text(privacy.displayName),
                    selected: _selectedPrivacy == privacy,
                    onSelected: (selected) {
                      if (selected) {
                        setState(() {
                          _selectedPrivacy = privacy;
                        });
                      }
                    },
                  );
                }).toList(),
              ),
              
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Reading Pace
              Text(
                'Reading Pace: ${_readingPace.toStringAsFixed(1)} books per month',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: _readingPace,
                min: 0.5,
                max: 5.0,
                divisions: 9,
                label: _readingPace.toStringAsFixed(1),
                onChanged: (value) {
                  setState(() {
                    _readingPace = value;
                  });
                },
              ),
              
              const SizedBox(height: AppConstants.paddingLarge),
              
              // Action Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: AppConstants.paddingSmall),
                  ElevatedButton(
                    onPressed: _createGroup,
                    child: const Text('Create Group'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _createGroup() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Implement group creation
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Reading group created!')),
      );
    }
  }
}

/// Dialog for searching reading groups
class SearchGroupsDialog extends StatefulWidget {
  const SearchGroupsDialog({super.key});

  @override
  State<SearchGroupsDialog> createState() => _SearchGroupsDialogState();
}

class _SearchGroupsDialogState extends State<SearchGroupsDialog> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
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
          children: [
            Text(
              'Search Reading Groups',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.paddingMedium),
            
            TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Search Groups',
                hintText: 'Enter group name, genre, or description',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onSubmitted: (query) {
                if (query.isNotEmpty) {
                  // TODO: Implement search
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Searching for: $query')),
                  );
                }
              },
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
                  onPressed: () {
                    final query = _searchController.text.trim();
                    if (query.isNotEmpty) {
                      // TODO: Implement search
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Searching for: $query')),
                      );
                    }
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
