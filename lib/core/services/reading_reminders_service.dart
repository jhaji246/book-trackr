import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:shared_preferences/shared_preferences.dart';

class ReadingRemindersService {
  static final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();
  static const String _prefsKey = 'reading_reminders';

  // Notification IDs
  static const int _dailyReminderId = 1001;
  static const int _goalReminderId = 1002;
  static const int _streakReminderId = 1003;

  static Future<void> initialize() async {
    try {
      // TODO: Implement actual reading reminders service
      // For now, just a placeholder
    } catch (e) {
      // Handle initialization error
    }
  }

  // Reading Reminder Preferences
  static Future<void> saveReminderPreferences({
    required bool isEnabled,
    required TimeOfDay reminderTime,
    required List<int> reminderDays, // 1 = Monday, 7 = Sunday
    required String reminderMessage,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('${_prefsKey}_enabled', isEnabled);
    await prefs.setInt('${_prefsKey}_hour', reminderTime.hour);
    await prefs.setInt('${_prefsKey}_minute', reminderTime.minute);
    await prefs.setStringList('${_prefsKey}_days', reminderDays.map((d) => d.toString()).toList());
    await prefs.setString('${_prefsKey}_message', reminderMessage);
  }

  static Future<Map<String, dynamic>> getReminderPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'isEnabled': prefs.getBool('${_prefsKey}_enabled') ?? false,
      'hour': prefs.getInt('${_prefsKey}_hour') ?? 20,
      'minute': prefs.getInt('${_prefsKey}_minute') ?? 0,
      'days': (prefs.getStringList('${_prefsKey}_days') ?? ['1', '2', '3', '4', '5', '6', '7'])
          .map((d) => int.parse(d))
          .toList(),
      'message': prefs.getString('${_prefsKey}_message') ?? 'Time to read! 📚',
    };
  }

  // Schedule Daily Reading Reminder
  static Future<void> scheduleDailyReminder({
    required TimeOfDay time,
    required List<int> days,
    required String message,
  }) async {
    // Cancel existing reminders
    await cancelDailyReminder();

    // Schedule new reminders for each day
    for (final day in days) {
      await _scheduleReminderForDay(day, time, message);
    }
  }

  static Future<void> _scheduleReminderForDay(int day, TimeOfDay time, String message) async {
    final now = tz.TZDateTime.now(tz.local);
    var scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
    );

    // Adjust to next occurrence of the specified day
    while (scheduledDate.weekday != day || scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    await _notifications.zonedSchedule(
      _dailyReminderId + day, // Unique ID for each day
      'Reading Reminder',
      message,
      scheduledDate,
      _getDailyReminderNotificationDetails(),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
    );
  }

  // Cancel Daily Reading Reminder
  static Future<void> cancelDailyReminder() async {
    for (int day = 1; day <= 7; day++) {
      await _notifications.cancel(_dailyReminderId + day);
    }
  }

  // Schedule Goal Achievement Reminder
  static Future<void> scheduleGoalReminder({
    required String goalType,
    required int target,
    required int current,
    required DateTime targetDate,
  }) async {
    final progress = (current / target * 100).round();
    
    String message;
    if (goalType == 'books') {
      message = 'You\'re $progress% to your reading goal! 📖';
    } else {
      message = 'Keep up the great reading progress! 📚';
    }

    final scheduledDate = tz.TZDateTime.from(targetDate, tz.local);

    await _notifications.zonedSchedule(
      _goalReminderId,
      'Reading Goal Update',
      message,
      scheduledDate,
      _getGoalReminderNotificationDetails(),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  // Schedule Streak Reminder
  static Future<void> scheduleStreakReminder({
    required int currentStreak,
    required DateTime lastReadDate,
  }) async {
    final daysSinceLastRead = DateTime.now().difference(lastReadDate).inDays;
    
    if (daysSinceLastRead >= 2) {
      String message;
      if (currentStreak > 0) {
        message = 'Don\'t break your $currentStreak-day reading streak! 🔥';
      } else {
        message = 'Time to start a new reading streak! 📚';
      }

      final reminderTime = tz.TZDateTime.now(tz.local).add(const Duration(hours: 2));

      await _notifications.zonedSchedule(
        _streakReminderId,
        'Reading Streak Reminder',
        message,
        reminderTime,
        _getStreakReminderNotificationDetails(),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      );
    }
  }

  // Schedule Book Completion Reminder
  static Future<void> scheduleBookCompletionReminder({
    required String bookTitle,
    required int currentPage,
    required int totalPages,
  }) async {
    final progress = (currentPage / totalPages * 100).round();
    
    if (progress >= 80) {
      final message = 'You\'re almost done with "$bookTitle"! 🎉';
      final reminderTime = tz.TZDateTime.now(tz.local).add(const Duration(hours: 1));

      await _notifications.zonedSchedule(
        _goalReminderId + 1,
        'Book Completion',
        message,
        reminderTime,
        _getBookCompletionNotificationDetails(),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      );
    }
  }

  // Notification Details
  static NotificationDetails _getDailyReminderNotificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'reading_reminders',
        'Reading Reminders',
        channelDescription: 'Daily reading reminders and notifications',
        importance: Importance.high,
        priority: Priority.high,
        icon: '@mipmap/ic_launcher',
        color: Color(0xFF6750A4), // Primary color
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );
  }

  static NotificationDetails _getGoalReminderNotificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'reading_goals',
        'Reading Goals',
        channelDescription: 'Reading goal updates and achievements',
        importance: Importance.low,
        priority: Priority.low,
        icon: '@mipmap/ic_launcher',
        color: Color(0xFF6750A4),
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );
  }

  static NotificationDetails _getStreakReminderNotificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'reading_streaks',
        'Reading Streaks',
        channelDescription: 'Reading streak reminders',
        importance: Importance.low,
        priority: Priority.low,
        icon: '@mipmap/ic_launcher',
        color: Color(0xFF6750A4),
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );
  }

  static NotificationDetails _getBookCompletionNotificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'book_completion',
        'Book Completion',
        channelDescription: 'Book completion celebrations',
        importance: Importance.high,
        priority: Priority.high,
        icon: '@mipmap/ic_launcher',
        color: Color(0xFF6750A4),
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );
  }

  // Cancel all reading reminders
  static Future<void> cancelAllReminders() async {
    await cancelDailyReminder();
    await _notifications.cancel(_goalReminderId);
    await _notifications.cancel(_goalReminderId + 1);
    await _notifications.cancel(_streakReminderId);
  }

  // Check if reminders are enabled
  static Future<bool> areRemindersEnabled() async {
    final prefs = await getReminderPreferences();
    return prefs['isEnabled'] as bool;
  }

  // Update reminder based on reading activity
  static Future<void> updateRemindersBasedOnActivity({
    required int currentStreak,
    required DateTime lastReadDate,
    required int booksRead,
    required int targetBooks,
    required String? currentBookTitle,
    required int? currentBookProgress,
    required int? currentBookTotalPages,
  }) async {
    final isEnabled = await areRemindersEnabled();
    if (!isEnabled) return;

    // Schedule streak reminder if needed
    await scheduleStreakReminder(
      currentStreak: currentStreak,
      lastReadDate: lastReadDate,
    );

    // Schedule goal reminder if approaching target
    if (booksRead > 0 && targetBooks > 0) {
      final progress = (booksRead / targetBooks * 100).round();
      if (progress >= 50 && progress < 100) {
        await scheduleGoalReminder(
          goalType: 'books',
          target: targetBooks,
          current: booksRead,
          targetDate: DateTime.now().add(const Duration(days: 7)),
        );
      }
    }

    // Schedule book completion reminder
    if (currentBookTitle != null && currentBookProgress != null && currentBookTotalPages != null) {
      await scheduleBookCompletionReminder(
        bookTitle: currentBookTitle,
        currentPage: currentBookProgress,
        totalPages: currentBookTotalPages,
      );
    }
  }
} 