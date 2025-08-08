import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/bookshelf_provider.dart';
import '../../../../core/services/notification_service.dart';

class ReadingGoalsScreen extends HookConsumerWidget {
  const ReadingGoalsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookshelfState = ref.watch(bookshelfProvider);
    final booksGoalController = useTextEditingController(text: '12');
    final pagesGoalController = useTextEditingController(text: '50');
    final currentYear = DateTime.now().year;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading Goals'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // TODO: Save goals to local storage or Firebase
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Goals saved!')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              '$currentYear Reading Goals',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Set your reading goals and track your progress throughout the year.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppConstants.paddingXLarge),

            // Current Progress
            _buildProgressCard(context, bookshelfState),
            const SizedBox(height: AppConstants.paddingXLarge),

            // Goals Section
            Text(
              'Set Your Goals',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),

            // Books Goal
            _buildGoalCard(
              context,
              'Books to Read',
              'Set a target number of books to read this year',
              Icons.library_books,
              booksGoalController,
              'books',
            ),
            const SizedBox(height: AppConstants.paddingMedium),

            // Pages Goal
            _buildGoalCard(
              context,
              'Pages per Day',
              'Set a daily reading goal in pages',
              Icons.menu_book,
              pagesGoalController,
              'pages',
            ),
            const SizedBox(height: AppConstants.paddingXLarge),

            // Reading Streak
            _buildStreakCard(context),
            const SizedBox(height: AppConstants.paddingXLarge),

            // Genre Challenge
            _buildGenreChallengeCard(context),
            const SizedBox(height: AppConstants.paddingXLarge),

            // Notifications
            _buildNotificationCard(context, ref),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressCard(BuildContext context, bookshelfState) {
    final completedBooks = bookshelfState.completed.length;
    final totalBooks = bookshelfState.totalBooks;
    final readingProgress = totalBooks > 0 ? (completedBooks / totalBooks) : 0.0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Progress',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Row(
              children: [
                Expanded(
                  child: _buildProgressItem(
                    context,
                    'Books Read',
                    completedBooks.toString(),
                    Icons.check_circle,
                    AppConstants.successColor,
                  ),
                ),
                const SizedBox(width: AppConstants.paddingLarge),
                Expanded(
                  child: _buildProgressItem(
                    context,
                    'Total Books',
                    totalBooks.toString(),
                    Icons.library_books,
                    AppConstants.primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            LinearProgressIndicator(
              value: readingProgress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(AppConstants.primaryColor),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              '${(readingProgress * 100).toStringAsFixed(1)}% of your reading journey',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressItem(BuildContext context, String label, String value, IconData icon, Color color) {
    return Column(
      children: [
        Icon(icon, color: color, size: 32),
        const SizedBox(height: AppConstants.paddingSmall),
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppConstants.lightOnSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildGoalCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    TextEditingController controller,
    String type,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: AppConstants.primaryColor),
                const SizedBox(width: AppConstants.paddingSmall),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: type == 'books' ? 'Number of books' : 'Pages per day',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStreakCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.local_fire_department, color: Colors.orange),
                const SizedBox(width: AppConstants.paddingSmall),
                Text(
                  'Reading Streak',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Row(
              children: [
                Expanded(
                  child: _buildStreakItem(context, 'Current', '7 days', Colors.orange),
                ),
                const SizedBox(width: AppConstants.paddingLarge),
                Expanded(
                  child: _buildStreakItem(context, 'Best', '21 days', Colors.red),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            LinearProgressIndicator(
              value: 7 / 21, // Current streak / Best streak
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStreakItem(BuildContext context, String label, String value, Color color) {
    return Column(
      children: [
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
            color: AppConstants.lightOnSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildGenreChallengeCard(BuildContext context) {
    final genres = ['Fiction', 'Non-Fiction', 'Science Fiction', 'Mystery', 'Biography'];
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.category, color: AppConstants.primaryColor),
                const SizedBox(width: AppConstants.paddingSmall),
                Text(
                  'Genre Challenge',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Read books from different genres to expand your horizons.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Wrap(
              spacing: AppConstants.paddingSmall,
              children: genres.map((genre) {
                return Chip(
                  label: Text(genre),
                  backgroundColor: AppConstants.primaryColor.withValues(alpha: 0.1),
                  labelStyle: TextStyle(color: AppConstants.primaryColor),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationCard(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.notifications, color: AppConstants.primaryColor),
                const SizedBox(width: AppConstants.paddingSmall),
                Text(
                  'Reading Reminders',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Get notified about your reading goals and progress.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            SwitchListTile(
              title: const Text('Daily Reading Reminders'),
              subtitle: const Text('Get reminded to read every day'),
              value: true, // TODO: Get from settings
              onChanged: (value) {
                // TODO: Save to settings
              },
            ),
            SwitchListTile(
              title: const Text('Goal Progress Updates'),
              subtitle: const Text('Get notified when you reach milestones'),
              value: true, // TODO: Get from settings
              onChanged: (value) {
                // TODO: Save to settings
              },
            ),
          ],
        ),
      ),
    );
  }
} 