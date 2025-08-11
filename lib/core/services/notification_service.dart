import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationService();
});

class NotificationService {
  FirebaseMessaging? _firebaseMessaging;
  FirebaseMessaging get _firebaseMessagingInstance {
    _firebaseMessaging ??= FirebaseMessaging.instance;
    return _firebaseMessaging!;
  }
  
  final FlutterLocalNotificationsPlugin _localNotifications = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    try {
      // Request permission for iOS
      NotificationSettings settings = await _firebaseMessagingInstance.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        debugPrint('User granted permission');
      } else {
        debugPrint('User declined or has not accepted permission');
      }

      // Initialize local notifications
      await _initializeLocalNotifications();

      // Handle background messages
      FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

      // Handle foreground messages
      FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

      // Handle notification taps
      FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);

      // Get FCM token
      String? token = await _firebaseMessagingInstance.getToken();
      debugPrint('FCM Token: $token');

      // Subscribe to topics
      await _firebaseMessagingInstance.subscribeToTopic('reading_reminders');
      await _firebaseMessagingInstance.subscribeToTopic('new_books');

    } catch (e) {
      debugPrint('Failed to initialize notifications: $e');
    }
  }

  Future<void> _initializeLocalNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _localNotifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );
  }

  void _handleForegroundMessage(RemoteMessage message) {
    debugPrint('Got a message whilst in the foreground!');
    debugPrint('Message data: ${message.data}');

    if (message.notification != null) {
      debugPrint('Message also contained a notification: ${message.notification}');
      _showLocalNotification(message);
    }
  }

  void _handleNotificationTap(RemoteMessage message) {
    debugPrint('Notification tapped: ${message.data}');
    // Handle navigation based on notification type
    _handleNotificationNavigation(message.data);
  }

  void _onNotificationTapped(NotificationResponse response) {
    debugPrint('Local notification tapped: ${response.payload}');
    // Handle local notification tap
  }

  Future<void> _showLocalNotification(RemoteMessage message) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'booktrackr_channel',
      'BookTrackr Notifications',
      channelDescription: 'Notifications for reading reminders and new books',
      importance: Importance.max,
      priority: Priority.high,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await _localNotifications.show(
      message.hashCode,
      message.notification?.title ?? 'BookTrackr',
      message.notification?.body ?? '',
      platformChannelSpecifics,
      payload: message.data.toString(),
    );
  }

  void _handleNotificationNavigation(Map<String, dynamic> data) {
    // Handle navigation based on notification type
    final type = data['type'];
    final bookId = data['bookId'];

    switch (type) {
      case 'reading_reminder':
        // Navigate to book detail or reading progress
        debugPrint('Navigate to reading reminder for book: $bookId');
        break;
      case 'new_book':
        // Navigate to new book or home screen
        debugPrint('Navigate to new book: $bookId');
        break;
      case 'reading_goal':
        // Navigate to reading goals
        debugPrint('Navigate to reading goals');
        break;
      default:
        debugPrint('Unknown notification type: $type');
    }
  }

  Future<void> scheduleReadingReminder({
    required String bookId,
    required String bookTitle,
    required DateTime reminderTime,
  }) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'reading_reminders',
      'Reading Reminders',
      channelDescription: 'Reminders to continue reading your books',
      importance: Importance.high,
      priority: Priority.high,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await _localNotifications.zonedSchedule(
      bookId.hashCode,
      'Time to Read!',
      'Continue reading "$bookTitle"',
      tz.TZDateTime.from(reminderTime, tz.local),
      platformChannelSpecifics,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      payload: '{"type": "reading_reminder", "bookId": "$bookId"}',
    );
  }

  Future<void> cancelReadingReminder(String bookId) async {
    await _localNotifications.cancel(bookId.hashCode);
  }

  Future<void> sendNewBookNotification({
    required String bookId,
    required String bookTitle,
    required String author,
  }) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'new_books',
      'New Books',
      channelDescription: 'Notifications about new books in your genres',
      importance: Importance.low,
      priority: Priority.low,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await _localNotifications.show(
      DateTime.now().millisecondsSinceEpoch,
      'New Book Available!',
      '$bookTitle by $author',
      platformChannelSpecifics,
      payload: '{"type": "new_book", "bookId": "$bookId"}',
    );
  }

  Future<void> sendReadingGoalNotification({
    required String goalType,
    required String message,
  }) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'reading_goals',
      'Reading Goals',
      channelDescription: 'Notifications about your reading goals',
      importance: Importance.low,
      priority: Priority.low,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await _localNotifications.show(
      DateTime.now().millisecondsSinceEpoch,
      'Reading Goal Update',
      message,
      platformChannelSpecifics,
      payload: '{"type": "reading_goal", "goalType": "$goalType"}',
    );
  }
}

// Background message handler
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('Handling a background message: ${message.messageId}');
  // Handle background messages here
} 