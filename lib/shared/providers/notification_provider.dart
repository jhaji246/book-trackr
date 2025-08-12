import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/notification.dart';
import 'auth_provider.dart';

/// Provider for managing notifications
final notificationProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  final authState = ref.watch(authProvider);
  return NotificationNotifier(authState.user?.uid);
});

/// Provider for notification preferences
final notificationPreferencesProvider = StateNotifierProvider<NotificationPreferencesNotifier, NotificationPreferencesState>((ref) {
  final authState = ref.watch(authProvider);
  return NotificationPreferencesNotifier(authState.user?.uid);
});

/// State for notifications
class NotificationState {
  final Map<String, AppNotification> notificationsById;
  final List<AppNotification> userNotifications;
  final int unreadCount;
  final bool isLoading;
  final String? error;
  final String? currentUserId;

  const NotificationState({
    this.notificationsById = const {},
    this.userNotifications = const [],
    this.unreadCount = 0,
    this.isLoading = false,
    this.error,
    this.currentUserId,
  });

  NotificationState copyWith({
    Map<String, AppNotification>? notificationsById,
    List<AppNotification>? userNotifications,
    int? unreadCount,
    bool? isLoading,
    String? error,
    String? currentUserId,
  }) {
    return NotificationState(
      notificationsById: notificationsById ?? this.notificationsById,
      userNotifications: userNotifications ?? this.userNotifications,
      unreadCount: unreadCount ?? this.unreadCount,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      currentUserId: currentUserId ?? this.currentUserId,
    );
  }

  /// Get a specific notification by ID
  AppNotification? getNotificationById(String notificationId) {
    return notificationsById[notificationId];
  }

  /// Get notifications by category
  List<AppNotification> getNotificationsByCategory(NotificationCategory category) {
    return userNotifications.where((n) => n.category == category).toList();
  }

  /// Get notifications by type
  List<AppNotification> getNotificationsByType(NotificationType type) {
    return userNotifications.where((n) => n.type == type).toList();
  }

  /// Get recent notifications (within 24 hours)
  List<AppNotification> get recentNotifications {
    return userNotifications.where((n) => n.isRecent).toList();
  }

  /// Get high priority notifications
  List<AppNotification> get highPriorityNotifications {
    return userNotifications.where((n) => n.isHighPriority).toList();
  }

  /// Get notifications requiring action
  List<AppNotification> get actionRequiredNotifications {
    return userNotifications.where((n) => n.requiresAction).toList();
  }

  /// Get unread notifications
  List<AppNotification> get unreadNotifications {
    return userNotifications.where((n) => !n.isRead).toList();
  }
}

/// State for notification preferences
class NotificationPreferencesState {
  final NotificationPreferences? preferences;
  final bool isLoading;
  final String? error;
  final String? currentUserId;

  const NotificationPreferencesState({
    this.preferences,
    this.isLoading = false,
    this.error,
    this.currentUserId,
  });

  NotificationPreferencesState copyWith({
    NotificationPreferences? preferences,
    bool? isLoading,
    String? error,
    String? currentUserId,
  }) {
    return NotificationPreferencesState(
      preferences: preferences ?? this.preferences,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      currentUserId: currentUserId ?? this.currentUserId,
    );
  }
}

/// Notifier for managing notifications
class NotificationNotifier extends StateNotifier<NotificationState> {
  final String? _currentUserId;

  NotificationNotifier(this._currentUserId) : super(const NotificationState()) {
    if (_currentUserId != null) {
      state = state.copyWith(currentUserId: _currentUserId);
    }
  }

  /// Add or update a notification
  void updateNotification(AppNotification notification) {
    final newNotificationsById = Map<String, AppNotification>.from(state.notificationsById);
    newNotificationsById[notification.id] = notification;
    
    final newUserNotifications = List<AppNotification>.from(state.userNotifications);
    final existingIndex = newUserNotifications.indexWhere((n) => n.id == notification.id);
    
    if (existingIndex != -1) {
      newUserNotifications[existingIndex] = notification;
    } else {
      newUserNotifications.add(notification);
    }
    
    // Sort by creation date (newest first)
    newUserNotifications.sort((a, b) => b.dateCreated.compareTo(a.dateCreated));
    
    final newUnreadCount = newUserNotifications.where((n) => !n.isRead).length;
    
    state = state.copyWith(
      notificationsById: newNotificationsById,
      userNotifications: newUserNotifications,
      unreadCount: newUnreadCount,
      error: null,
    );
  }

  /// Remove a notification
  void removeNotification(String notificationId) {
    final newNotificationsById = Map<String, AppNotification>.from(state.notificationsById);
    newNotificationsById.remove(notificationId);
    
    final newUserNotifications = state.userNotifications.where((n) => n.id != notificationId).toList();
    final newUnreadCount = newUserNotifications.where((n) => !n.isRead).length;
    
    state = state.copyWith(
      notificationsById: newNotificationsById,
      userNotifications: newUserNotifications,
      unreadCount: newUnreadCount,
      error: null,
    );
  }

  /// Mark notification as read
  void markAsRead(String notificationId) {
    final notification = state.getNotificationById(notificationId);
    if (notification == null) return;
    
    final updatedNotification = notification.copyWith(isRead: true);
    updateNotification(updatedNotification);
  }

  /// Mark all notifications as read
  void markAllAsRead() {
    final updatedNotifications = state.userNotifications.map((notification) {
      return notification.copyWith(isRead: true);
    }).toList();
    
    final newNotificationsById = Map<String, AppNotification>.from(state.notificationsById);
    for (final notification in updatedNotifications) {
      newNotificationsById[notification.id] = notification;
    }
    
    state = state.copyWith(
      notificationsById: newNotificationsById,
      userNotifications: updatedNotifications,
      unreadCount: 0,
      error: null,
    );
  }

  /// Mark notification as delivered
  void markAsDelivered(String notificationId) {
    final notification = state.getNotificationById(notificationId);
    if (notification == null) return;
    
    final updatedNotification = notification.copyWith(isDelivered: true);
    updateNotification(updatedNotification);
  }

  /// Create a new notification
  void createNotification({
    required String recipientId,
    required String senderId,
    required String title,
    required String message,
    required NotificationType type,
    String? relatedEntityId,
    String? relatedEntityType,
    NotificationPriority priority = NotificationPriority.normal,
    NotificationCategory category = NotificationCategory.social,
    NotificationAction? action,
    Map<String, dynamic>? metadata,
  }) {
    final newNotification = AppNotification.defaultNotification(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      recipientId: recipientId,
      senderId: senderId,
      title: title,
      message: message,
      type: type,
      relatedEntityId: relatedEntityId,
      relatedEntityType: relatedEntityType,
      priority: priority,
      category: category,
      action: action,
      metadata: metadata,
    );
    
    updateNotification(newNotification);
  }

  /// Create a follow request notification
  void createFollowRequestNotification(String recipientId, String senderId) {
    createNotification(
      recipientId: recipientId,
      senderId: senderId,
      title: 'New Follow Request',
      message: 'Someone wants to follow you',
      type: NotificationType.followRequest,
      category: NotificationCategory.social,
      action: NotificationAction.accept(
        actionId: 'follow_request_${senderId}_${recipientId}',
        parameters: {'senderId': senderId, 'recipientId': recipientId},
      ),
    );
  }

  /// Create a group invite notification
  void createGroupInviteNotification(String recipientId, String senderId, String groupId, String groupName) {
    createNotification(
      recipientId: recipientId,
      senderId: senderId,
      title: 'Group Invitation',
      message: 'You\'ve been invited to join "$groupName"',
      type: NotificationType.groupInvite,
      category: NotificationCategory.groups,
      relatedEntityId: groupId,
      relatedEntityType: 'group',
      action: NotificationAction.accept(
        actionId: 'group_invite_${groupId}_${recipientId}',
        parameters: {'groupId': groupId, 'recipientId': recipientId},
      ),
    );
  }

  /// Create a book recommendation notification
  void createBookRecommendationNotification(String recipientId, String senderId, String bookId, String bookTitle) {
    createNotification(
      recipientId: recipientId,
      senderId: senderId,
      title: 'Book Recommendation',
      message: 'Someone recommended "$bookTitle" to you',
      type: NotificationType.bookRecommendation,
      category: NotificationCategory.books,
      relatedEntityId: bookId,
      relatedEntityType: 'book',
      action: NotificationAction.navigate(
        route: '/book/$bookId',
        parameters: {'bookId': bookId},
      ),
    );
  }

  /// Create a challenge invite notification
  void createChallengeInviteNotification(String recipientId, String senderId, String challengeId, String challengeName) {
    createNotification(
      recipientId: recipientId,
      senderId: senderId,
      title: 'Challenge Invitation',
      message: 'You\'ve been invited to join "$challengeName"',
      type: NotificationType.challengeInvite,
      category: NotificationCategory.challenges,
      relatedEntityId: challengeId,
      relatedEntityType: 'challenge',
      action: NotificationAction.accept(
        actionId: 'challenge_invite_${challengeId}_${recipientId}',
        parameters: {'challengeId': challengeId, 'recipientId': recipientId},
      ),
    );
  }

  /// Create a system notification
  void createSystemNotification({
    required String recipientId,
    required String title,
    required String message,
    NotificationPriority priority = NotificationPriority.normal,
    NotificationAction? action,
  }) {
    createNotification(
      recipientId: recipientId,
      senderId: 'system',
      title: title,
      message: message,
      type: NotificationType.systemUpdate,
      category: NotificationCategory.system,
      priority: priority,
      action: action,
    );
  }

  /// Clear old notifications (older than 30 days)
  void clearOldNotifications() {
    final thirtyDaysAgo = DateTime.now().subtract(const Duration(days: 30));
    final recentNotifications = state.userNotifications
        .where((n) => n.dateCreated.isAfter(thirtyDaysAgo))
        .toList();
    
    final newNotificationsById = <String, AppNotification>{};
    for (final notification in recentNotifications) {
      newNotificationsById[notification.id] = notification;
    }
    
    final newUnreadCount = recentNotifications.where((n) => !n.isRead).length;
    
    state = state.copyWith(
      notificationsById: newNotificationsById,
      userNotifications: recentNotifications,
      unreadCount: newUnreadCount,
      error: null,
    );
  }

  /// Set error message
  void setError(String error) {
    state = state.copyWith(error: error);
  }

  /// Clear error message
  void clearError() {
    state = state.copyWith(error: null);
  }
}

/// Notifier for managing notification preferences
class NotificationPreferencesNotifier extends StateNotifier<NotificationPreferencesState> {
  final String? _currentUserId;

  NotificationPreferencesNotifier(this._currentUserId) : super(const NotificationPreferencesState()) {
    if (_currentUserId != null) {
      state = state.copyWith(currentUserId: _currentUserId);
      _loadDefaultPreferences();
    }
  }

  /// Load default preferences
  void _loadDefaultPreferences() {
    if (_currentUserId == null) return;
    
    final defaultPreferences = NotificationPreferences.defaultPreferences(
      userId: _currentUserId!,
    );
    
    state = state.copyWith(
      preferences: defaultPreferences,
      error: null,
    );
  }

  /// Update notification preferences
  void updatePreferences(NotificationPreferences preferences) {
    state = state.copyWith(
      preferences: preferences,
      error: null,
    );
  }

  /// Toggle push notifications
  void togglePushNotifications(bool enabled) {
    final preferences = state.preferences;
    if (preferences == null) return;
    
    final updatedPreferences = preferences.copyWith(
      pushEnabled: enabled,
      lastUpdated: DateTime.now(),
    );
    
    updatePreferences(updatedPreferences);
  }

  /// Toggle email notifications
  void toggleEmailNotifications(bool enabled) {
    final preferences = state.preferences;
    if (preferences == null) return;
    
    final updatedPreferences = preferences.copyWith(
      emailEnabled: enabled,
      lastUpdated: DateTime.now(),
    );
    
    updatePreferences(updatedPreferences);
  }

  /// Toggle in-app notifications
  void toggleInAppNotifications(bool enabled) {
    final preferences = state.preferences;
    if (preferences == null) return;
    
    final updatedPreferences = preferences.copyWith(
      inAppEnabled: enabled,
      lastUpdated: DateTime.now(),
    );
    
    updatePreferences(updatedPreferences);
  }

  /// Toggle category notifications
  void toggleCategoryNotifications(NotificationCategory category, bool enabled) {
    final preferences = state.preferences;
    if (preferences == null) return;
    
    NotificationPreferences updatedPreferences;
    switch (category) {
      case NotificationCategory.social:
        updatedPreferences = preferences.copyWith(
          socialEnabled: enabled,
          lastUpdated: DateTime.now(),
        );
        break;
      case NotificationCategory.groups:
        updatedPreferences = preferences.copyWith(
          groupEnabled: enabled,
          lastUpdated: DateTime.now(),
        );
        break;
      case NotificationCategory.books:
        updatedPreferences = preferences.copyWith(
          bookEnabled: enabled,
          lastUpdated: DateTime.now(),
        );
        break;
      case NotificationCategory.challenges:
        updatedPreferences = preferences.copyWith(
          challengeEnabled: enabled,
          lastUpdated: DateTime.now(),
        );
        break;
      case NotificationCategory.system:
        updatedPreferences = preferences.copyWith(
          systemEnabled: enabled,
          lastUpdated: DateTime.now(),
        );
        break;
    }
    
    updatePreferences(updatedPreferences);
  }

  /// Update quiet hours
  void updateQuietHours({
    required bool enabled,
    required String startTime,
    required String endTime,
  }) {
    final preferences = state.preferences;
    if (preferences == null) return;
    
    final updatedPreferences = preferences.copyWith(
      quietHoursEnabled: enabled,
      quietHoursStart: startTime,
      quietHoursEnd: endTime,
      lastUpdated: DateTime.now(),
    );
    
    updatePreferences(updatedPreferences);
  }

  /// Toggle notification sound
  void toggleNotificationSound(bool enabled) {
    final preferences = state.preferences;
    if (preferences == null) return;
    
    final updatedPreferences = preferences.copyWith(
      soundEnabled: enabled,
      lastUpdated: DateTime.now(),
    );
    
    updatePreferences(updatedPreferences);
  }

  /// Toggle notification vibration
  void toggleNotificationVibration(bool enabled) {
    final preferences = state.preferences;
    if (preferences == null) return;
    
    final updatedPreferences = preferences.copyWith(
      vibrationEnabled: enabled,
      lastUpdated: DateTime.now(),
    );
    
    updatePreferences(updatedPreferences);
  }

  /// Set error message
  void setError(String error) {
    state = state.copyWith(error: error);
  }

  /// Clear error message
  void clearError() {
    state = state.copyWith(error: null);
  }
}
