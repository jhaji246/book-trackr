import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

/// Represents a notification for a user
@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    /// Unique identifier for the notification
    required String id,
    
    /// User ID who should receive the notification
    required String recipientId,
    
    /// User ID who triggered the notification
    required String senderId,
    
    /// Notification title
    required String title,
    
    /// Notification message
    required String message,
    
    /// Notification type
    required NotificationType type,
    
    /// Related entity ID (book, group, discussion, etc.)
    String? relatedEntityId,
    
    /// Related entity type
    String? relatedEntityType,
    
    /// Notification creation date
    required DateTime dateCreated,
    
    /// Whether notification has been read
    required bool isRead,
    
    /// Whether notification has been delivered
    required bool isDelivered,
    
    /// Notification priority
    required NotificationPriority priority,
    
    /// Notification category
    required NotificationCategory category,
    
    /// Action data for the notification
    required NotificationAction action,
    
    /// Additional metadata
    required Map<String, dynamic> metadata,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) => _$AppNotificationFromJson(json);
  
  /// Creates a default notification
  factory AppNotification.defaultNotification({
    required String id,
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
    return AppNotification(
      id: id,
      recipientId: recipientId,
      senderId: senderId,
      title: title,
      message: message,
      type: type,
      relatedEntityId: relatedEntityId,
      relatedEntityType: relatedEntityType,
      dateCreated: DateTime.now(),
      isRead: false,
      isDelivered: false,
      priority: priority,
      category: category,
      action: action ?? NotificationAction.none(),
      metadata: metadata ?? {},
    );
  }
}

/// Notification types
enum NotificationType {
  // Social notifications
  followRequest('Follow Request'),
  followAccepted('Follow Accepted'),
  friendRequest('Friend Request'),
  friendAccepted('Friend Accepted'),
  
  // Group notifications
  groupInvite('Group Invite'),
  groupJoinRequest('Group Join Request'),
  groupJoinAccepted('Group Join Accepted'),
  groupJoinRejected('Group Join Rejected'),
  groupDiscussion('Group Discussion'),
  groupMessage('Group Message'),
  
  // Book notifications
  bookRecommendation('Book Recommendation'),
  bookReview('Book Review'),
  bookRating('Book Rating'),
  readingProgress('Reading Progress'),
  
  // Challenge notifications
  challengeInvite('Challenge Invite'),
  challengeUpdate('Challenge Update'),
  challengeCompleted('Challenge Completed'),
  
  // System notifications
  systemUpdate('System Update'),
  maintenance('Maintenance'),
  announcement('Announcement');

  const NotificationType(this.displayName);
  final String displayName;
}

/// Notification priority levels
enum NotificationPriority {
  low('Low'),
  normal('Normal'),
  high('High'),
  urgent('Urgent');

  const NotificationPriority(this.displayName);
  final String displayName;
}

/// Notification categories
enum NotificationCategory {
  social('Social'),
  groups('Groups'),
  books('Books'),
  challenges('Challenges'),
  system('System');

  const NotificationCategory(this.displayName);
  final String displayName;
}

/// Notification action data
@freezed
class NotificationAction with _$NotificationAction {
  const factory NotificationAction({
    /// Action type
    required ActionType type,
    
    /// Action label
    required String label,
    
    /// Action route/URL
    String? route,
    
    /// Action parameters
    required Map<String, dynamic> parameters,
    
    /// Whether action requires user interaction
    required bool requiresInteraction,
  }) = _NotificationAction;

  factory NotificationAction.fromJson(Map<String, dynamic> json) => _$NotificationActionFromJson(json);
  
  /// Creates a none action
  factory NotificationAction.none() {
    return const NotificationAction(
      type: ActionType.none,
      label: '',
      parameters: {},
      requiresInteraction: false,
    );
  }
  
  /// Creates a navigation action
  factory NotificationAction.navigate({
    required String route,
    required Map<String, dynamic> parameters,
  }) {
    return NotificationAction(
      type: ActionType.navigate,
      label: 'View',
      route: route,
      parameters: parameters,
      requiresInteraction: true,
    );
  }
  
  /// Creates an accept action
  factory NotificationAction.accept({
    required String actionId,
    required Map<String, dynamic> parameters,
  }) {
    return NotificationAction(
      type: ActionType.accept,
      label: 'Accept',
      parameters: {'actionId': actionId, ...parameters},
      requiresInteraction: true,
    );
  }
  
  /// Creates a reject action
  factory NotificationAction.reject({
    required String actionId,
    required Map<String, dynamic> parameters,
  }) {
    return NotificationAction(
      type: ActionType.reject,
      label: 'Reject',
      parameters: {'actionId': actionId, ...parameters},
      requiresInteraction: true,
    );
  }
}

/// Action types
enum ActionType {
  none('None'),
  navigate('Navigate'),
  accept('Accept'),
  reject('Reject'),
  reply('Reply'),
  view('View'),
  dismiss('Dismiss');

  const ActionType(this.displayName);
  final String displayName;
}

/// Represents notification preferences for a user
@freezed
class NotificationPreferences with _$NotificationPreferences {
  const factory NotificationPreferences({
    /// User ID
    required String userId,
    
    /// Push notifications enabled
    required bool pushEnabled,
    
    /// Email notifications enabled
    required bool emailEnabled,
    
    /// In-app notifications enabled
    required bool inAppEnabled,
    
    /// Social notifications enabled
    required bool socialEnabled,
    
    /// Group notifications enabled
    required bool groupEnabled,
    
    /// Book notifications enabled
    required bool bookEnabled,
    
    /// Challenge notifications enabled
    required bool challengeEnabled,
    
    /// System notifications enabled
    required bool systemEnabled,
    
    /// Quiet hours enabled
    required bool quietHoursEnabled,
    
    /// Quiet hours start time (24-hour format)
    required String quietHoursStart,
    
    /// Quiet hours end time (24-hour format)
    required String quietHoursEnd,
    
    /// Notification sound enabled
    required bool soundEnabled,
    
    /// Notification vibration enabled
    required bool vibrationEnabled,
    
    /// Last updated date
    required DateTime lastUpdated,
  }) = _NotificationPreferences;

  factory NotificationPreferences.fromJson(Map<String, dynamic> json) => _$NotificationPreferencesFromJson(json);
  
  /// Creates default notification preferences
  factory NotificationPreferences.defaultPreferences({
    required String userId,
  }) {
    return NotificationPreferences(
      userId: userId,
      pushEnabled: true,
      emailEnabled: true,
      inAppEnabled: true,
      socialEnabled: true,
      groupEnabled: true,
      bookEnabled: true,
      challengeEnabled: true,
      systemEnabled: true,
      quietHoursEnabled: false,
      quietHoursStart: '22:00',
      quietHoursEnd: '08:00',
      soundEnabled: true,
      vibrationEnabled: true,
      lastUpdated: DateTime.now(),
    );
  }
}

/// Represents a notification template
@freezed
class NotificationTemplate with _$NotificationTemplate {
  const factory NotificationTemplate({
    /// Template ID
    required String id,
    
    /// Template name
    required String name,
    
    /// Template description
    required String description,
    
    /// Template type
    required NotificationType type,
    
    /// Template title
    required String titleTemplate,
    
    /// Template message
    required String messageTemplate,
    
    /// Template category
    required NotificationCategory category,
    
    /// Template priority
    required NotificationPriority priority,
    
    /// Template action
    required NotificationAction action,
    
    /// Template metadata
    required Map<String, dynamic> metadata,
    
    /// Whether template is active
    required bool isActive,
  }) = NotificationTemplate;

  factory NotificationTemplate.fromJson(Map<String, dynamic> json) => _$NotificationTemplateFromJson(json);
}

/// Extension methods for AppNotification
extension AppNotificationExtension on AppNotification {
  /// Check if notification is recent (within 24 hours)
  bool get isRecent => DateTime.now().difference(dateCreated).inHours < 24;
  
  /// Check if notification is new (within 1 hour)
  bool get isNew => DateTime.now().difference(dateCreated).inHours < 1;
  
  /// Get notification age
  Duration get age => DateTime.now().difference(dateCreated);
  
  /// Get notification age in minutes
  int get ageInMinutes => age.inMinutes;
  
  /// Get notification age in hours
  int get ageInHours => age.inHours;
  
  /// Get notification age in days
  int get ageInDays => age.inDays;
  
  /// Check if notification requires action
  bool get requiresAction => action.type != ActionType.none && action.requiresInteraction;
  
  /// Check if notification is high priority
  bool get isHighPriority => priority == NotificationPriority.high || priority == NotificationPriority.urgent;
  
  /// Get formatted age string
  String get formattedAge {
    if (ageInMinutes < 60) return '${ageInMinutes}m ago';
    if (ageInHours < 24) return '${ageInHours}h ago';
    if (ageInDays < 7) return '${ageInDays}d ago';
    return '${(ageInDays / 7).round()}w ago';
  }
}

/// Extension methods for NotificationPreferences
extension NotificationPreferencesExtension on NotificationPreferences {
  /// Check if notifications are enabled for a category
  bool isEnabledForCategory(NotificationCategory category) {
    switch (category) {
      case NotificationCategory.social:
        return socialEnabled;
      case NotificationCategory.groups:
        return groupEnabled;
      case NotificationCategory.books:
        return bookEnabled;
      case NotificationCategory.challenges:
        return challengeEnabled;
      case NotificationCategory.system:
        return systemEnabled;
    }
  }
  
  /// Check if notifications are enabled for a type
  bool isEnabledForType(NotificationType type) {
    switch (type) {
      case NotificationType.followRequest:
      case NotificationType.followAccepted:
      case NotificationType.friendRequest:
      case NotificationType.friendAccepted:
        return socialEnabled;
      case NotificationType.groupInvite:
      case NotificationType.groupJoinRequest:
      case NotificationType.groupJoinAccepted:
      case NotificationType.groupJoinRejected:
      case NotificationType.groupDiscussion:
      case NotificationType.groupMessage:
        return groupEnabled;
      case NotificationType.bookRecommendation:
      case NotificationType.bookReview:
      case NotificationType.bookRating:
      case NotificationType.readingProgress:
        return bookEnabled;
      case NotificationType.challengeInvite:
      case NotificationType.challengeUpdate:
      case NotificationType.challengeCompleted:
        return challengeEnabled;
      case NotificationType.systemUpdate:
      case NotificationType.maintenance:
      case NotificationType.announcement:
        return systemEnabled;
    }
  }
  
  /// Check if quiet hours are active
  bool get isQuietHoursActive {
    if (!quietHoursEnabled) return false;
    
    final now = DateTime.now();
    final currentTime = '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    
    if (quietHoursStart.compareTo(quietHoursEnd) <= 0) {
      // Same day (e.g., 22:00 to 08:00)
      return currentTime.compareTo(quietHoursStart) >= 0 && currentTime.compareTo(quietHoursEnd) <= 0;
    } else {
      // Overnight (e.g., 22:00 to 08:00)
      return currentTime.compareTo(quietHoursStart) >= 0 || currentTime.compareTo(quietHoursEnd) <= 0;
    }
  }
}
