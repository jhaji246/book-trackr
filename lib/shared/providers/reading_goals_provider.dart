import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import '../../core/services/firestore_service.dart';
import '../../core/services/reading_reminders_service.dart';

final readingGoalsProvider = StateNotifierProvider<ReadingGoalsNotifier, ReadingGoalsState>((ref) {
  return ReadingGoalsNotifier();
});

class ReadingGoalsState {
  final Map<String, dynamic> goals;
  final Map<String, dynamic> progress;
  final bool isLoading;
  final String? error;
  final int currentStreak;
  final DateTime? lastReadDate;

  const ReadingGoalsState({
    this.goals = const {},
    this.progress = const {},
    this.isLoading = false,
    this.error,
    this.currentStreak = 0,
    this.lastReadDate,
  });

  ReadingGoalsState copyWith({
    Map<String, dynamic>? goals,
    Map<String, dynamic>? progress,
    bool? isLoading,
    String? error,
    int? currentStreak,
    DateTime? lastReadDate,
  }) {
    return ReadingGoalsState(
      goals: goals ?? this.goals,
      progress: progress ?? this.progress,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      currentStreak: currentStreak ?? this.currentStreak,
      lastReadDate: lastReadDate ?? this.lastReadDate,
    );
  }

  int get booksPerYear => goals['booksPerYear'] ?? 0;
  int get pagesPerDay => goals['pagesPerDay'] ?? 0;
  int get booksRead => progress['booksRead'] ?? 0;
  int get pagesRead => progress['pagesRead'] ?? 0;
  double get booksProgress => booksPerYear > 0 ? (booksRead / booksPerYear * 100) : 0;
  double get pagesProgress => pagesPerDay > 0 ? (pagesRead / pagesPerDay * 100) : 0;

  // Get reading statistics
  Map<String, dynamic> getReadingStatistics() {
    return {
      'currentStreak': currentStreak,
      'booksRead': booksRead,
      'pagesRead': pagesRead,
      'booksProgress': booksProgress,
      'pagesProgress': pagesProgress,
      'lastReadDate': lastReadDate,
      'daysSinceLastRead': lastReadDate != null 
          ? DateTime.now().difference(lastReadDate!).inDays 
          : null,
    };
  }
}

class ReadingGoalsNotifier extends StateNotifier<ReadingGoalsState> {
  static const String _prefsKey = 'reading_goals';

  ReadingGoalsNotifier() : super(const ReadingGoalsState()) {
    _loadGoals();
  }

  Future<void> _loadGoals() async {
    try {
      state = state.copyWith(isLoading: true);
      
      final prefs = await SharedPreferences.getInstance();
      final goals = {
        'booksPerYear': prefs.getInt('${_prefsKey}_books_per_year') ?? 0,
        'pagesPerDay': prefs.getInt('${_prefsKey}_pages_per_day') ?? 0,
      };

      final progress = {
        'booksRead': prefs.getInt('${_prefsKey}_books_read') ?? 0,
        'pagesRead': prefs.getInt('${_prefsKey}_pages_read') ?? 0,
        'lastReadDate': prefs.getString('${_prefsKey}_last_read_date'),
      };

      final currentStreak = prefs.getInt('${_prefsKey}_current_streak') ?? 0;
      final lastReadDateStr = prefs.getString('${_prefsKey}_last_read_date');
      final lastReadDate = lastReadDateStr != null ? DateTime.parse(lastReadDateStr) : null;

      state = state.copyWith(
        goals: goals,
        progress: progress,
        currentStreak: currentStreak,
        lastReadDate: lastReadDate,
        isLoading: false,
      );

      // Load from cloud if user is authenticated
      await _loadFromCloud();
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Failed to load goals: $e');
    }
  }

  Future<void> _loadFromCloud() async {
    try {
      final userId = _getCurrentUserId();
      if (userId != null) {
        final cloudGoals = await FirestoreService.getReadingGoals(userId);
        if (cloudGoals != null) {
          state = state.copyWith(goals: cloudGoals);
        }
      }
    } catch (e) {
      // Log error but don't fail the local operation
      debugPrint('Failed to load goals from cloud: $e');
    }
  }

  Future<void> setReadingGoals({
    required int booksPerYear,
    required int pagesPerDay,
  }) async {
    try {
      state = state.copyWith(isLoading: true);

      final newGoals = {
        'booksPerYear': booksPerYear,
        'pagesPerDay': pagesPerDay,
      };

      // Save locally
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('${_prefsKey}_books_per_year', booksPerYear);
      await prefs.setInt('${_prefsKey}_pages_per_day', pagesPerDay);

      state = state.copyWith(goals: newGoals, isLoading: false);

      // Save to cloud
      await _saveToCloud(newGoals);

      // Update reminders based on new goals
      await _updateReminders();
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Failed to set goals: $e');
    }
  }

  Future<void> _saveToCloud(Map<String, dynamic> goals) async {
    try {
      final userId = _getCurrentUserId();
      if (userId != null) {
        await FirestoreService.updateReadingGoals(userId: userId, goals: goals);
      }
    } catch (e) {
      debugPrint('Failed to save goals to cloud: $e');
    }
  }

  Future<void> recordReadingActivity({
    required int pagesRead,
    required bool bookCompleted,
  }) async {
    try {
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      
      // Check if this is a new day
      final lastRead = state.lastReadDate;
      final isNewDay = lastRead == null || 
          DateTime(lastRead.year, lastRead.month, lastRead.day) != today;

      int newStreak = state.currentStreak;
      if (isNewDay) {
        // Check if yesterday was read (for streak continuity)
        if (lastRead != null) {
          final yesterday = DateTime(now.year, now.month, now.day - 1);
          final lastReadDay = DateTime(lastRead.year, lastRead.month, lastRead.day);
          
          if (lastReadDay == yesterday) {
            newStreak++;
          } else {
            newStreak = 1; // Reset streak
          }
        } else {
          newStreak = 1; // First reading day
        }
      }

      // Update progress
      final newProgress = Map<String, dynamic>.from(state.progress);
      newProgress['pagesRead'] = (newProgress['pagesRead'] ?? 0) + pagesRead;
      if (bookCompleted) {
        newProgress['booksRead'] = (newProgress['booksRead'] ?? 0) + 1;
      }
      newProgress['lastReadDate'] = now.toIso8601String();

      // Save locally
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('${_prefsKey}_pages_read', newProgress['pagesRead']);
      if (bookCompleted) {
        await prefs.setInt('${_prefsKey}_books_read', newProgress['booksRead']);
      }
      await prefs.setString('${_prefsKey}_last_read_date', now.toIso8601String());
      await prefs.setInt('${_prefsKey}_current_streak', newStreak);

      state = state.copyWith(
        progress: newProgress,
        currentStreak: newStreak,
        lastReadDate: now,
      );

      // Update cloud
      await _updateCloudProgress(newProgress, newStreak);

      // Update reminders
      await _updateReminders();
    } catch (e) {
      state = state.copyWith(error: 'Failed to record reading activity: $e');
    }
  }

  Future<void> _updateCloudProgress(Map<String, dynamic> progress, int streak) async {
    try {
      final userId = _getCurrentUserId();
      if (userId != null) {
        await FirestoreService.updateUserProfile(
          userId: userId,
          data: {
            'statistics': {
              'totalBooksRead': progress['booksRead'] ?? 0,
              'totalPagesRead': progress['pagesRead'] ?? 0,
              'currentStreak': streak,
              'lastReadDate': progress['lastReadDate'],
            },
          },
        );
      }
    } catch (e) {
      debugPrint('Failed to update cloud progress: $e');
    }
  }

  Future<void> _updateReminders() async {
    try {
      await ReadingRemindersService.updateRemindersBasedOnActivity(
        currentStreak: state.currentStreak,
        lastReadDate: state.lastReadDate ?? DateTime.now(),
        booksRead: state.booksRead,
        targetBooks: state.booksPerYear,
        currentBookTitle: null, // TODO: Get from current reading book
        currentBookProgress: null,
        currentBookTotalPages: null,
      );
    } catch (e) {
      debugPrint('Failed to update reminders: $e');
    }
  }

  Future<void> resetProgress() async {
    try {
      state = state.copyWith(isLoading: true);

      // Reset local storage
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('${_prefsKey}_books_read', 0);
      await prefs.setInt('${_prefsKey}_pages_read', 0);
      await prefs.setInt('${_prefsKey}_current_streak', 0);
      await prefs.remove('${_prefsKey}_last_read_date');

      state = state.copyWith(
        progress: {
          'booksRead': 0,
          'pagesRead': 0,
        },
        currentStreak: 0,
        lastReadDate: null,
        isLoading: false,
      );

      // Reset cloud
      await _updateCloudProgress(state.progress, 0);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Failed to reset progress: $e');
    }
  }

  Future<void> setReminderPreferences({
    required bool isEnabled,
    required TimeOfDay reminderTime,
    required List<int> reminderDays,
    required String reminderMessage,
  }) async {
    try {
      await ReadingRemindersService.saveReminderPreferences(
        isEnabled: isEnabled,
        reminderTime: reminderTime,
        reminderDays: reminderDays,
        reminderMessage: reminderMessage,
      );

      if (isEnabled) {
        await ReadingRemindersService.scheduleDailyReminder(
          time: reminderTime,
          days: reminderDays,
          message: reminderMessage,
        );
      } else {
        await ReadingRemindersService.cancelDailyReminder();
      }
    } catch (e) {
      state = state.copyWith(error: 'Failed to set reminder preferences: $e');
    }
  }

  Future<Map<String, dynamic>> getReminderPreferences() async {
    return await ReadingRemindersService.getReminderPreferences();
  }

  String? _getCurrentUserId() {
    // This should be obtained from your auth provider
    // For now, we'll return null if no user is authenticated
    return null; // TODO: Get from auth provider
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  // Check if goals are achieved
  bool get isBooksGoalAchieved => state.booksRead >= state.booksPerYear;
  bool get isPagesGoalAchieved => state.pagesRead >= state.pagesPerDay;
  bool get hasAnyGoals => state.booksPerYear > 0 || state.pagesPerDay > 0;
} 