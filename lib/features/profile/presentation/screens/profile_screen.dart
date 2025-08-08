import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/auth_provider.dart';
import '../../../../shared/providers/bookshelf_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final bookshelfState = ref.watch(bookshelfProvider);
    final user = authState.user;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              _showSettingsDialog(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          children: [
            // Profile Header
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppConstants.paddingLarge),
                child: Column(
                  children: [
                    // Avatar
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppConstants.primaryColor.withValues(alpha: 0.1),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.person,
                              size: 50,
                              color: AppConstants.primaryColor,
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: AppConstants.paddingMedium),

                    // User Info
                    Text(
                      user?.displayName ?? 'User',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: AppConstants.paddingSmall),
                    Text(
                      user?.email ?? 'user@example.com',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppConstants.lightOnSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),

            // Stats
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    context,
                    'Books Read',
                    bookshelfState.completed.length.toString(),
                    Icons.check_circle,
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: _buildStatCard(
                    context,
                    'Currently Reading',
                    bookshelfState.reading.length.toString(),
                    Icons.book,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    context,
                    'Want to Read',
                    bookshelfState.wantToRead.length.toString(),
                    Icons.bookmark,
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: _buildStatCard(
                    context,
                    'Total Books',
                    bookshelfState.totalBooks.toString(),
                    Icons.library_books,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingLarge),

            // Menu Items
            _buildMenuSection(
              context,
              'Reading',
              [
                _buildMenuItem(
                  context,
                  Icons.list,
                  'Reading List',
                  'View all your books',
                  () => _showReadingListDialog(context, bookshelfState),
                ),
                _buildMenuItem(
                  context,
                  Icons.flag,
                  'Reading Goals',
                  'Set and track your goals',
                  () => context.push('/reading-goals'),
                ),
                _buildMenuItem(
                  context,
                  Icons.analytics,
                  'Reading Stats',
                  'View your reading statistics',
                  () => _showReadingStatsDialog(context, bookshelfState),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingLarge),

            _buildMenuSection(
              context,
              'Account',
              [
                _buildMenuItem(
                  context,
                  Icons.settings,
                  'Settings',
                  'App preferences and configuration',
                  () => _showSettingsDialog(context),
                ),
                _buildMenuItem(
                  context,
                  Icons.logout,
                  'Sign Out',
                  'Sign out of your account',
                  () => _showSignOutDialog(context, ref),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String title, String value, IconData icon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          children: [
            Icon(
              icon,
              size: 24,
              color: AppConstants.primaryColor,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection(BuildContext context, String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppConstants.paddingSmall),
        Card(
          child: Column(
            children: items,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppConstants.primaryColor,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  void _showReadingListDialog(BuildContext context, BookshelfState bookshelfState) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reading List'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Currently Reading: ${bookshelfState.reading.length}'),
            Text('Want to Read: ${bookshelfState.wantToRead.length}'),
            Text('Completed: ${bookshelfState.completed.length}'),
            const SizedBox(height: AppConstants.paddingMedium),
            const Text('Your complete reading list will be available here.'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showReadingGoalsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reading Goals'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Set reading goals and track your progress:'),
            SizedBox(height: AppConstants.paddingSmall),
            Text('• Books to read this year'),
            Text('• Pages per day/week'),
            Text('• Reading streaks'),
            Text('• Genre challenges'),
            SizedBox(height: AppConstants.paddingMedium),
            Text('This feature will be implemented in Phase 4.'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showReadingStatsDialog(BuildContext context, BookshelfState bookshelfState) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reading Statistics'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Books: ${bookshelfState.totalBooks}'),
            Text('Average Rating: Coming soon'),
            Text('Reading Speed: Coming soon'),
            Text('Favorite Genres: Coming soon'),
            const SizedBox(height: AppConstants.paddingMedium),
            const Text('Detailed analytics and insights will be available in Phase 4.'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showSettingsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Settings'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('App Settings:'),
            SizedBox(height: AppConstants.paddingSmall),
            Text('• Theme (Light/Dark/Auto)'),
            Text('• Notifications'),
            Text('• Privacy'),
            Text('• Data Export'),
            Text('• Account Settings'),
            SizedBox(height: AppConstants.paddingMedium),
            Text('Settings will be implemented in Phase 4.'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showSignOutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sign Out'),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              await ref.read(authProvider.notifier).signOut();
              if (context.mounted) {
                context.go('/login');
              }
            },
            child: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }
} 