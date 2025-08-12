import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/providers/reading_goals_provider.dart';

class ReadingGoalsScreenClean extends HookConsumerWidget {
  const ReadingGoalsScreenClean({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goalsState = ref.watch(readingGoalsProvider);
    final goalsNotifier = ref.read(readingGoalsProvider.notifier);

    final booksController = useTextEditingController(
      text: goalsState.booksPerYear.toString(),
    );
    final pagesController = useTextEditingController(
      text: goalsState.pagesPerDay.toString(),
    );

    final isReminderEnabled = useState(false);
    final reminderTime = useState(const TimeOfDay(hour: 20, minute: 0));
    final reminderDays = useState<List<int>>([1, 2, 3, 4, 5, 6, 7]);
    final reminderMessage = useState('Time to read! 📚');

    // Load reminder preferences
    useEffect(() {
      goalsNotifier.getReminderPreferences().then((prefs) {
        isReminderEnabled.value = prefs['isEnabled'] ?? false;
        reminderTime.value = TimeOfDay(
          hour: prefs['hour'] ?? 20,
          minute: prefs['minute'] ?? 0,
        );
        reminderDays.value = prefs['days'] ?? [1, 2, 3, 4, 5, 6, 7];
        reminderMessage.value = prefs['message'] ?? 'Time to read! 📚';
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading Goals'),
        backgroundColor: AppConstants.lightSurface,
        foregroundColor: AppConstants.lightOnSurface,
      ),
      body: goalsState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(AppConstants.paddingLarge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildGoalsSection(context, goalsState, goalsNotifier, booksController, pagesController),
                  const SizedBox(height: AppConstants.paddingLarge),
                  _buildProgressSection(context, goalsState),
                  const SizedBox(height: AppConstants.paddingLarge),
                  _buildRemindersSection(
                    context,
                    isReminderEnabled,
                    reminderTime,
                    reminderDays,
                    reminderMessage,
                    goalsNotifier,
                  ),
                  const SizedBox(height: AppConstants.paddingLarge),
                  _buildStatisticsSection(context, goalsState),
                ],
              ),
            ),
    );
  }

  Widget _buildGoalsSection(
    BuildContext context,
    ReadingGoalsState goalsState,
    ReadingGoalsNotifier goalsNotifier,
    TextEditingController booksController,
    TextEditingController pagesController,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Set Your Reading Goals',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            TextField(
              controller: booksController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Books per year',
                hintText: 'Enter your target',
                prefixIcon: Icon(Icons.book),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            TextField(
              controller: pagesController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Pages per day',
                hintText: 'Enter your target',
                prefixIcon: Icon(Icons.menu_book),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            SizedBox(
              width: double.infinity,
              child: GradientButton(
                onPressed: () {
                  final books = int.tryParse(booksController.text) ?? 0;
                  final pages = int.tryParse(pagesController.text) ?? 0;
                  goalsNotifier.setReadingGoals(
                    booksPerYear: books,
                    pagesPerDay: pages,
                  );
                },
                text: 'Save Goals',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressSection(BuildContext context, ReadingGoalsState goalsState) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Progress',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            _buildProgressCard(
              context,
              'Books Read',
              '${goalsState.booksRead} / ${goalsState.booksPerYear}',
              goalsState.booksProgress,
              Icons.book,
              Colors.blue,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            _buildProgressCard(
              context,
              'Pages Read',
              '${goalsState.pagesRead} / ${goalsState.pagesPerDay}',
              goalsState.pagesProgress,
              Icons.menu_book,
              Colors.green,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            _buildStreakCard(context, goalsState),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressCard(
    BuildContext context,
    String title,
    String subtitle,
    double progress,
    IconData icon,
    Color color,
  ) {
    return Card(
      color: color.withValues(alpha: 0.1),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                const SizedBox(width: AppConstants.paddingSmall),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: color.withValues(alpha: 0.3),
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStreakCard(BuildContext context, ReadingGoalsState goalsState) {
    return Card(
      color: Colors.orange.withValues(alpha: 0.1),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Row(
          children: [
            Icon(Icons.local_fire_department, color: Colors.orange),
            const SizedBox(width: AppConstants.paddingSmall),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reading Streak',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${goalsState.currentStreak} days',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
            // Note: longestStreak is not available in the current ReadingGoalsState
            // We'll show current streak only
          ],
        ),
      ),
    );
  }

  Widget _buildRemindersSection(
    BuildContext context,
    ValueNotifier<bool> isReminderEnabled,
    ValueNotifier<TimeOfDay> reminderTime,
    ValueNotifier<List<int>> reminderDays,
    ValueNotifier<String> reminderMessage,
    ReadingGoalsNotifier goalsNotifier,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reading Reminders',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Enable/Disable Switch
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Enable Daily Reminders',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Switch(
                  value: isReminderEnabled.value,
                  onChanged: (value) {
                    isReminderEnabled.value = value;
                    goalsNotifier.setReminderPreferences(
                      isEnabled: value,
                      reminderTime: reminderTime.value,
                      reminderDays: reminderDays.value,
                      reminderMessage: reminderMessage.value,
                    );
                  },
                ),
              ],
            ),
            
            if (isReminderEnabled.value) ...[
              const SizedBox(height: AppConstants.paddingMedium),
              
              // Time Picker
              ListTile(
                leading: const Icon(Icons.access_time),
                title: const Text('Reminder Time'),
                subtitle: Text(reminderTime.value.format(context)),
                onTap: () async {
                  final time = await showTimePicker(
                    context: context,
                    initialTime: reminderTime.value,
                  );
                  if (time != null) {
                    reminderTime.value = time;
                    goalsNotifier.setReminderPreferences(
                      isEnabled: true,
                      reminderTime: time,
                      reminderDays: reminderDays.value,
                      reminderMessage: reminderMessage.value,
                    );
                  }
                },
              ),
              
              // Days Selection
              ListTile(
                leading: const Icon(Icons.calendar_today),
                title: const Text('Reminder Days'),
                subtitle: Text(_formatDays(reminderDays.value)),
                onTap: () => _showDaysDialog(context, reminderDays, goalsNotifier, reminderTime, reminderMessage),
              ),
              
              // Message Input
              TextField(
                controller: TextEditingController(text: reminderMessage.value),
                decoration: const InputDecoration(
                  labelText: 'Reminder Message',
                  hintText: 'Enter your reminder message',
                  prefixIcon: Icon(Icons.message),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  reminderMessage.value = value;
                  goalsNotifier.setReminderPreferences(
                    isEnabled: true,
                    reminderTime: reminderTime.value,
                    reminderDays: reminderDays.value,
                    reminderMessage: value,
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticsSection(BuildContext context, ReadingGoalsState goalsState) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reading Statistics',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            
            _buildStatRow('Books Read', '${goalsState.booksRead}', Icons.book),
            _buildStatRow('Pages Read', '${goalsState.pagesRead}', Icons.menu_book),
            _buildStatRow('Books Progress', '${(goalsState.booksProgress).toInt()}%', Icons.trending_up),
            _buildStatRow('Pages Progress', '${(goalsState.pagesProgress).toInt()}%', Icons.trending_up),
            _buildStatRow('Current Streak', '${goalsState.currentStreak} days', Icons.local_fire_department),
            if (goalsState.lastReadDate != null)
              _buildStatRow('Last Read', _formatDate(goalsState.lastReadDate!), Icons.schedule),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 20),
          const SizedBox(width: AppConstants.paddingSmall),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  void _showDaysDialog(
    BuildContext context,
    ValueNotifier<List<int>> reminderDays,
    ReadingGoalsNotifier goalsNotifier,
    ValueNotifier<TimeOfDay> reminderTime,
    ValueNotifier<String> reminderMessage,
  ) {
    final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Reminder Days'),
        content: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: days.asMap().entries.map((entry) {
                final index = entry.key;
                final day = entry.value;
                final isSelected = reminderDays.value.contains(index + 1);
                
                return CheckboxListTile(
                  title: Text(day),
                  value: isSelected,
                  onChanged: (value) {
                    setState(() {
                      if (value == true) {
                        reminderDays.value = [...reminderDays.value, index + 1];
                      } else {
                        reminderDays.value = reminderDays.value.where((d) => d != index + 1).toList();
                      }
                    });
                  },
                );
              }).toList(),
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              goalsNotifier.setReminderPreferences(
                isEnabled: true,
                reminderTime: reminderTime.value,
                reminderDays: reminderDays.value,
                reminderMessage: reminderMessage.value,
              );
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  String _formatDays(List<int> days) {
    if (days.isEmpty) return 'No days selected';
    if (days.length == 7) return 'Every day';
    if (days.length == 5 && days.contains(1) && days.contains(2) && days.contains(3) && days.contains(4) && days.contains(5)) {
      return 'Weekdays';
    }
    if (days.length == 2 && days.contains(6) && days.contains(7)) {
      return 'Weekends';
    }
    
    final dayNames = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days.map((day) => dayNames[day - 1]).join(', ');
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays == 0) {
      if (difference.inHours == 0) {
        return '${difference.inMinutes} minutes ago';
      }
      return '${difference.inHours} hours ago';
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}
