import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/providers/reading_goals_provider.dart';

class ReadingGoalsScreen extends HookConsumerWidget {
  const ReadingGoalsScreen({super.key});

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
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            LinearProgressIndicator(
              value: progress / 100,
              backgroundColor: color.withValues(alpha: 0.3),
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Text(
              '${progress.toStringAsFixed(1)}%',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
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
            const Icon(Icons.local_fire_department, color: Colors.orange),
            const SizedBox(width: AppConstants.paddingSmall),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Streak',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${goalsState.currentStreak} days',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
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
            SwitchListTile(
              title: const Text('Enable Daily Reminders'),
              subtitle: const Text('Get notified to read daily'),
              value: isReminderEnabled.value,
              onChanged: (value) {
                isReminderEnabled.value = value;
                _saveReminderPreferences(
                  goalsNotifier,
                  isReminderEnabled.value,
                  reminderTime.value,
                  reminderDays.value,
                  reminderMessage.value,
                );
              },
            ),
            if (isReminderEnabled.value) ...[
              const SizedBox(height: AppConstants.paddingSmall),
              ListTile(
                title: const Text('Reminder Time'),
                subtitle: Text(reminderTime.value.format(context)),
                trailing: const Icon(Icons.access_time),
                onTap: () async {
                  final time = await showTimePicker(
                    context: context,
                    initialTime: reminderTime.value,
                  );
                  if (time != null) {
                    reminderTime.value = time;
                    _saveReminderPreferences(
                      goalsNotifier,
                      isReminderEnabled.value,
                      reminderTime.value,
                      reminderDays.value,
                      reminderMessage.value,
                    );
                  }
                },
              ),
              const SizedBox(height: AppConstants.paddingSmall),
              _buildDaysSelector(context, reminderDays, goalsNotifier, isReminderEnabled, reminderTime, reminderMessage),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDaysSelector(
    BuildContext context,
    ValueNotifier<List<int>> reminderDays,
    ReadingGoalsNotifier goalsNotifier,
    ValueNotifier<bool> isReminderEnabled,
    ValueNotifier<TimeOfDay> reminderTime,
    ValueNotifier<String> reminderMessage,
  ) {
    final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingMedium),
          child: Text(
            'Reminder Days',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: AppConstants.paddingSmall),
        Wrap(
          spacing: AppConstants.paddingSmall,
          children: List.generate(7, (index) {
            final dayNumber = index + 1;
            final isSelected = reminderDays.value.contains(dayNumber);
            
            return FilterChip(
              label: Text(days[index]),
              selected: isSelected,
              onSelected: (selected) {
                final newDays = List<int>.from(reminderDays.value);
                if (selected) {
                  newDays.add(dayNumber);
                } else {
                  newDays.remove(dayNumber);
                }
                reminderDays.value = newDays;
                _saveReminderPreferences(
                  goalsNotifier,
                  isReminderEnabled.value,
                  reminderTime.value,
                  reminderDays.value,
                  reminderMessage.value,
                );
              },
            );
          }),
        ),
      ],
    );
  }

  Widget _buildStatisticsSection(BuildContext context, ReadingGoalsState goalsState) {
    final stats = goalsState.getReadingStatistics();
    
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
            _buildStatItem(context, 'Current Streak', '${stats['currentStreak']} days', Icons.local_fire_department),
            _buildStatItem(context, 'Books Read', '${stats['booksRead']}', Icons.book),
            _buildStatItem(context, 'Pages Read', '${stats['pagesRead']}', Icons.menu_book),
            if (stats['lastReadDate'] != null)
              _buildStatItem(
                context,
                'Last Read',
                _formatDate(stats['lastReadDate']),
                Icons.calendar_today,
              ),
            if (stats['daysSinceLastRead'] != null)
              _buildStatItem(
                context,
                'Days Since Last Read',
                '${stats['daysSinceLastRead']} days',
                Icons.schedule,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(BuildContext context, String title, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.paddingSmall),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: AppConstants.paddingSmall),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  void _saveReminderPreferences(
    ReadingGoalsNotifier goalsNotifier,
    bool isEnabled,
    TimeOfDay time,
    List<int> days,
    String message,
  ) {
    goalsNotifier.setReminderPreferences(
      isEnabled: isEnabled,
      reminderTime: time,
      reminderDays: days,
      reminderMessage: message,
    );
  }
} 