// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) {
  return _AppNotification.fromJson(json);
}

/// @nodoc
mixin _$AppNotification {
  /// Unique identifier for the notification
  String get id => throw _privateConstructorUsedError;

  /// User ID who should receive the notification
  String get recipientId => throw _privateConstructorUsedError;

  /// User ID who triggered the notification
  String get senderId => throw _privateConstructorUsedError;

  /// Notification title
  String get title => throw _privateConstructorUsedError;

  /// Notification message
  String get message => throw _privateConstructorUsedError;

  /// Notification type
  NotificationType get type => throw _privateConstructorUsedError;

  /// Related entity ID (book, group, discussion, etc.)
  String? get relatedEntityId => throw _privateConstructorUsedError;

  /// Related entity type
  String? get relatedEntityType => throw _privateConstructorUsedError;

  /// Notification creation date
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Whether notification has been read
  bool get isRead => throw _privateConstructorUsedError;

  /// Whether notification has been delivered
  bool get isDelivered => throw _privateConstructorUsedError;

  /// Notification priority
  NotificationPriority get priority => throw _privateConstructorUsedError;

  /// Notification category
  NotificationCategory get category => throw _privateConstructorUsedError;

  /// Action data for the notification
  NotificationAction get action => throw _privateConstructorUsedError;

  /// Additional metadata
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this AppNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call(
      {String id,
      String recipientId,
      String senderId,
      String title,
      String message,
      NotificationType type,
      String? relatedEntityId,
      String? relatedEntityType,
      DateTime dateCreated,
      bool isRead,
      bool isDelivered,
      NotificationPriority priority,
      NotificationCategory category,
      NotificationAction action,
      Map<String, dynamic> metadata});

  $NotificationActionCopyWith<$Res> get action;
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipientId = null,
    Object? senderId = null,
    Object? title = null,
    Object? message = null,
    Object? type = null,
    Object? relatedEntityId = freezed,
    Object? relatedEntityType = freezed,
    Object? dateCreated = null,
    Object? isRead = null,
    Object? isDelivered = null,
    Object? priority = null,
    Object? category = null,
    Object? action = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedEntityType: freezed == relatedEntityType
          ? _value.relatedEntityType
          : relatedEntityType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelivered: null == isDelivered
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NotificationCategory,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as NotificationAction,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationActionCopyWith<$Res> get action {
    return $NotificationActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppNotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppNotificationImplCopyWith(_$AppNotificationImpl value,
          $Res Function(_$AppNotificationImpl) then) =
      __$$AppNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String recipientId,
      String senderId,
      String title,
      String message,
      NotificationType type,
      String? relatedEntityId,
      String? relatedEntityType,
      DateTime dateCreated,
      bool isRead,
      bool isDelivered,
      NotificationPriority priority,
      NotificationCategory category,
      NotificationAction action,
      Map<String, dynamic> metadata});

  @override
  $NotificationActionCopyWith<$Res> get action;
}

/// @nodoc
class __$$AppNotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppNotificationImpl>
    implements _$$AppNotificationImplCopyWith<$Res> {
  __$$AppNotificationImplCopyWithImpl(
      _$AppNotificationImpl _value, $Res Function(_$AppNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipientId = null,
    Object? senderId = null,
    Object? title = null,
    Object? message = null,
    Object? type = null,
    Object? relatedEntityId = freezed,
    Object? relatedEntityType = freezed,
    Object? dateCreated = null,
    Object? isRead = null,
    Object? isDelivered = null,
    Object? priority = null,
    Object? category = null,
    Object? action = null,
    Object? metadata = null,
  }) {
    return _then(_$AppNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedEntityType: freezed == relatedEntityType
          ? _value.relatedEntityType
          : relatedEntityType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelivered: null == isDelivered
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NotificationCategory,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as NotificationAction,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppNotificationImpl implements _AppNotification {
  const _$AppNotificationImpl(
      {required this.id,
      required this.recipientId,
      required this.senderId,
      required this.title,
      required this.message,
      required this.type,
      this.relatedEntityId,
      this.relatedEntityType,
      required this.dateCreated,
      required this.isRead,
      required this.isDelivered,
      required this.priority,
      required this.category,
      required this.action,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata;

  factory _$AppNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppNotificationImplFromJson(json);

  /// Unique identifier for the notification
  @override
  final String id;

  /// User ID who should receive the notification
  @override
  final String recipientId;

  /// User ID who triggered the notification
  @override
  final String senderId;

  /// Notification title
  @override
  final String title;

  /// Notification message
  @override
  final String message;

  /// Notification type
  @override
  final NotificationType type;

  /// Related entity ID (book, group, discussion, etc.)
  @override
  final String? relatedEntityId;

  /// Related entity type
  @override
  final String? relatedEntityType;

  /// Notification creation date
  @override
  final DateTime dateCreated;

  /// Whether notification has been read
  @override
  final bool isRead;

  /// Whether notification has been delivered
  @override
  final bool isDelivered;

  /// Notification priority
  @override
  final NotificationPriority priority;

  /// Notification category
  @override
  final NotificationCategory category;

  /// Action data for the notification
  @override
  final NotificationAction action;

  /// Additional metadata
  final Map<String, dynamic> _metadata;

  /// Additional metadata
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'AppNotification(id: $id, recipientId: $recipientId, senderId: $senderId, title: $title, message: $message, type: $type, relatedEntityId: $relatedEntityId, relatedEntityType: $relatedEntityType, dateCreated: $dateCreated, isRead: $isRead, isDelivered: $isDelivered, priority: $priority, category: $category, action: $action, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.relatedEntityId, relatedEntityId) ||
                other.relatedEntityId == relatedEntityId) &&
            (identical(other.relatedEntityType, relatedEntityType) ||
                other.relatedEntityType == relatedEntityType) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.isDelivered, isDelivered) ||
                other.isDelivered == isDelivered) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      recipientId,
      senderId,
      title,
      message,
      type,
      relatedEntityId,
      relatedEntityType,
      dateCreated,
      isRead,
      isDelivered,
      priority,
      category,
      action,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      __$$AppNotificationImplCopyWithImpl<_$AppNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppNotificationImplToJson(
      this,
    );
  }
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification(
      {required final String id,
      required final String recipientId,
      required final String senderId,
      required final String title,
      required final String message,
      required final NotificationType type,
      final String? relatedEntityId,
      final String? relatedEntityType,
      required final DateTime dateCreated,
      required final bool isRead,
      required final bool isDelivered,
      required final NotificationPriority priority,
      required final NotificationCategory category,
      required final NotificationAction action,
      required final Map<String, dynamic> metadata}) = _$AppNotificationImpl;

  factory _AppNotification.fromJson(Map<String, dynamic> json) =
      _$AppNotificationImpl.fromJson;

  /// Unique identifier for the notification
  @override
  String get id;

  /// User ID who should receive the notification
  @override
  String get recipientId;

  /// User ID who triggered the notification
  @override
  String get senderId;

  /// Notification title
  @override
  String get title;

  /// Notification message
  @override
  String get message;

  /// Notification type
  @override
  NotificationType get type;

  /// Related entity ID (book, group, discussion, etc.)
  @override
  String? get relatedEntityId;

  /// Related entity type
  @override
  String? get relatedEntityType;

  /// Notification creation date
  @override
  DateTime get dateCreated;

  /// Whether notification has been read
  @override
  bool get isRead;

  /// Whether notification has been delivered
  @override
  bool get isDelivered;

  /// Notification priority
  @override
  NotificationPriority get priority;

  /// Notification category
  @override
  NotificationCategory get category;

  /// Action data for the notification
  @override
  NotificationAction get action;

  /// Additional metadata
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationAction _$NotificationActionFromJson(Map<String, dynamic> json) {
  return _NotificationAction.fromJson(json);
}

/// @nodoc
mixin _$NotificationAction {
  /// Action type
  ActionType get type => throw _privateConstructorUsedError;

  /// Action label
  String get label => throw _privateConstructorUsedError;

  /// Action route/URL
  String? get route => throw _privateConstructorUsedError;

  /// Action parameters
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;

  /// Whether action requires user interaction
  bool get requiresInteraction => throw _privateConstructorUsedError;

  /// Serializes this NotificationAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationActionCopyWith<NotificationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionCopyWith<$Res> {
  factory $NotificationActionCopyWith(
          NotificationAction value, $Res Function(NotificationAction) then) =
      _$NotificationActionCopyWithImpl<$Res, NotificationAction>;
  @useResult
  $Res call(
      {ActionType type,
      String label,
      String? route,
      Map<String, dynamic> parameters,
      bool requiresInteraction});
}

/// @nodoc
class _$NotificationActionCopyWithImpl<$Res, $Val extends NotificationAction>
    implements $NotificationActionCopyWith<$Res> {
  _$NotificationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? label = null,
    Object? route = freezed,
    Object? parameters = null,
    Object? requiresInteraction = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActionType,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      requiresInteraction: null == requiresInteraction
          ? _value.requiresInteraction
          : requiresInteraction // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationActionImplCopyWith<$Res>
    implements $NotificationActionCopyWith<$Res> {
  factory _$$NotificationActionImplCopyWith(_$NotificationActionImpl value,
          $Res Function(_$NotificationActionImpl) then) =
      __$$NotificationActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActionType type,
      String label,
      String? route,
      Map<String, dynamic> parameters,
      bool requiresInteraction});
}

/// @nodoc
class __$$NotificationActionImplCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res, _$NotificationActionImpl>
    implements _$$NotificationActionImplCopyWith<$Res> {
  __$$NotificationActionImplCopyWithImpl(_$NotificationActionImpl _value,
      $Res Function(_$NotificationActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? label = null,
    Object? route = freezed,
    Object? parameters = null,
    Object? requiresInteraction = null,
  }) {
    return _then(_$NotificationActionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActionType,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      requiresInteraction: null == requiresInteraction
          ? _value.requiresInteraction
          : requiresInteraction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionImpl implements _NotificationAction {
  const _$NotificationActionImpl(
      {required this.type,
      required this.label,
      this.route,
      required final Map<String, dynamic> parameters,
      required this.requiresInteraction})
      : _parameters = parameters;

  factory _$NotificationActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationActionImplFromJson(json);

  /// Action type
  @override
  final ActionType type;

  /// Action label
  @override
  final String label;

  /// Action route/URL
  @override
  final String? route;

  /// Action parameters
  final Map<String, dynamic> _parameters;

  /// Action parameters
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  /// Whether action requires user interaction
  @override
  final bool requiresInteraction;

  @override
  String toString() {
    return 'NotificationAction(type: $type, label: $label, route: $route, parameters: $parameters, requiresInteraction: $requiresInteraction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationActionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.requiresInteraction, requiresInteraction) ||
                other.requiresInteraction == requiresInteraction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, label, route,
      const DeepCollectionEquality().hash(_parameters), requiresInteraction);

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationActionImplCopyWith<_$NotificationActionImpl> get copyWith =>
      __$$NotificationActionImplCopyWithImpl<_$NotificationActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationActionImplToJson(
      this,
    );
  }
}

abstract class _NotificationAction implements NotificationAction {
  const factory _NotificationAction(
      {required final ActionType type,
      required final String label,
      final String? route,
      required final Map<String, dynamic> parameters,
      required final bool requiresInteraction}) = _$NotificationActionImpl;

  factory _NotificationAction.fromJson(Map<String, dynamic> json) =
      _$NotificationActionImpl.fromJson;

  /// Action type
  @override
  ActionType get type;

  /// Action label
  @override
  String get label;

  /// Action route/URL
  @override
  String? get route;

  /// Action parameters
  @override
  Map<String, dynamic> get parameters;

  /// Whether action requires user interaction
  @override
  bool get requiresInteraction;

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationActionImplCopyWith<_$NotificationActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationPreferences _$NotificationPreferencesFromJson(
    Map<String, dynamic> json) {
  return _NotificationPreferences.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreferences {
  /// User ID
  String get userId => throw _privateConstructorUsedError;

  /// Push notifications enabled
  bool get pushEnabled => throw _privateConstructorUsedError;

  /// Email notifications enabled
  bool get emailEnabled => throw _privateConstructorUsedError;

  /// In-app notifications enabled
  bool get inAppEnabled => throw _privateConstructorUsedError;

  /// Social notifications enabled
  bool get socialEnabled => throw _privateConstructorUsedError;

  /// Group notifications enabled
  bool get groupEnabled => throw _privateConstructorUsedError;

  /// Book notifications enabled
  bool get bookEnabled => throw _privateConstructorUsedError;

  /// Challenge notifications enabled
  bool get challengeEnabled => throw _privateConstructorUsedError;

  /// System notifications enabled
  bool get systemEnabled => throw _privateConstructorUsedError;

  /// Quiet hours enabled
  bool get quietHoursEnabled => throw _privateConstructorUsedError;

  /// Quiet hours start time (24-hour format)
  String get quietHoursStart => throw _privateConstructorUsedError;

  /// Quiet hours end time (24-hour format)
  String get quietHoursEnd => throw _privateConstructorUsedError;

  /// Notification sound enabled
  bool get soundEnabled => throw _privateConstructorUsedError;

  /// Notification vibration enabled
  bool get vibrationEnabled => throw _privateConstructorUsedError;

  /// Last updated date
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this NotificationPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferencesCopyWith<NotificationPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferencesCopyWith<$Res> {
  factory $NotificationPreferencesCopyWith(NotificationPreferences value,
          $Res Function(NotificationPreferences) then) =
      _$NotificationPreferencesCopyWithImpl<$Res, NotificationPreferences>;
  @useResult
  $Res call(
      {String userId,
      bool pushEnabled,
      bool emailEnabled,
      bool inAppEnabled,
      bool socialEnabled,
      bool groupEnabled,
      bool bookEnabled,
      bool challengeEnabled,
      bool systemEnabled,
      bool quietHoursEnabled,
      String quietHoursStart,
      String quietHoursEnd,
      bool soundEnabled,
      bool vibrationEnabled,
      DateTime lastUpdated});
}

/// @nodoc
class _$NotificationPreferencesCopyWithImpl<$Res,
        $Val extends NotificationPreferences>
    implements $NotificationPreferencesCopyWith<$Res> {
  _$NotificationPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? pushEnabled = null,
    Object? emailEnabled = null,
    Object? inAppEnabled = null,
    Object? socialEnabled = null,
    Object? groupEnabled = null,
    Object? bookEnabled = null,
    Object? challengeEnabled = null,
    Object? systemEnabled = null,
    Object? quietHoursEnabled = null,
    Object? quietHoursStart = null,
    Object? quietHoursEnd = null,
    Object? soundEnabled = null,
    Object? vibrationEnabled = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      pushEnabled: null == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailEnabled: null == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      inAppEnabled: null == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      socialEnabled: null == socialEnabled
          ? _value.socialEnabled
          : socialEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      groupEnabled: null == groupEnabled
          ? _value.groupEnabled
          : groupEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      bookEnabled: null == bookEnabled
          ? _value.bookEnabled
          : bookEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      challengeEnabled: null == challengeEnabled
          ? _value.challengeEnabled
          : challengeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      systemEnabled: null == systemEnabled
          ? _value.systemEnabled
          : systemEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      quietHoursEnabled: null == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      quietHoursStart: null == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as String,
      quietHoursEnd: null == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as String,
      soundEnabled: null == soundEnabled
          ? _value.soundEnabled
          : soundEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      vibrationEnabled: null == vibrationEnabled
          ? _value.vibrationEnabled
          : vibrationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPreferencesImplCopyWith<$Res>
    implements $NotificationPreferencesCopyWith<$Res> {
  factory _$$NotificationPreferencesImplCopyWith(
          _$NotificationPreferencesImpl value,
          $Res Function(_$NotificationPreferencesImpl) then) =
      __$$NotificationPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      bool pushEnabled,
      bool emailEnabled,
      bool inAppEnabled,
      bool socialEnabled,
      bool groupEnabled,
      bool bookEnabled,
      bool challengeEnabled,
      bool systemEnabled,
      bool quietHoursEnabled,
      String quietHoursStart,
      String quietHoursEnd,
      bool soundEnabled,
      bool vibrationEnabled,
      DateTime lastUpdated});
}

/// @nodoc
class __$$NotificationPreferencesImplCopyWithImpl<$Res>
    extends _$NotificationPreferencesCopyWithImpl<$Res,
        _$NotificationPreferencesImpl>
    implements _$$NotificationPreferencesImplCopyWith<$Res> {
  __$$NotificationPreferencesImplCopyWithImpl(
      _$NotificationPreferencesImpl _value,
      $Res Function(_$NotificationPreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? pushEnabled = null,
    Object? emailEnabled = null,
    Object? inAppEnabled = null,
    Object? socialEnabled = null,
    Object? groupEnabled = null,
    Object? bookEnabled = null,
    Object? challengeEnabled = null,
    Object? systemEnabled = null,
    Object? quietHoursEnabled = null,
    Object? quietHoursStart = null,
    Object? quietHoursEnd = null,
    Object? soundEnabled = null,
    Object? vibrationEnabled = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$NotificationPreferencesImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      pushEnabled: null == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailEnabled: null == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      inAppEnabled: null == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      socialEnabled: null == socialEnabled
          ? _value.socialEnabled
          : socialEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      groupEnabled: null == groupEnabled
          ? _value.groupEnabled
          : groupEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      bookEnabled: null == bookEnabled
          ? _value.bookEnabled
          : bookEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      challengeEnabled: null == challengeEnabled
          ? _value.challengeEnabled
          : challengeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      systemEnabled: null == systemEnabled
          ? _value.systemEnabled
          : systemEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      quietHoursEnabled: null == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      quietHoursStart: null == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as String,
      quietHoursEnd: null == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as String,
      soundEnabled: null == soundEnabled
          ? _value.soundEnabled
          : soundEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      vibrationEnabled: null == vibrationEnabled
          ? _value.vibrationEnabled
          : vibrationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPreferencesImpl implements _NotificationPreferences {
  const _$NotificationPreferencesImpl(
      {required this.userId,
      required this.pushEnabled,
      required this.emailEnabled,
      required this.inAppEnabled,
      required this.socialEnabled,
      required this.groupEnabled,
      required this.bookEnabled,
      required this.challengeEnabled,
      required this.systemEnabled,
      required this.quietHoursEnabled,
      required this.quietHoursStart,
      required this.quietHoursEnd,
      required this.soundEnabled,
      required this.vibrationEnabled,
      required this.lastUpdated});

  factory _$NotificationPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPreferencesImplFromJson(json);

  /// User ID
  @override
  final String userId;

  /// Push notifications enabled
  @override
  final bool pushEnabled;

  /// Email notifications enabled
  @override
  final bool emailEnabled;

  /// In-app notifications enabled
  @override
  final bool inAppEnabled;

  /// Social notifications enabled
  @override
  final bool socialEnabled;

  /// Group notifications enabled
  @override
  final bool groupEnabled;

  /// Book notifications enabled
  @override
  final bool bookEnabled;

  /// Challenge notifications enabled
  @override
  final bool challengeEnabled;

  /// System notifications enabled
  @override
  final bool systemEnabled;

  /// Quiet hours enabled
  @override
  final bool quietHoursEnabled;

  /// Quiet hours start time (24-hour format)
  @override
  final String quietHoursStart;

  /// Quiet hours end time (24-hour format)
  @override
  final String quietHoursEnd;

  /// Notification sound enabled
  @override
  final bool soundEnabled;

  /// Notification vibration enabled
  @override
  final bool vibrationEnabled;

  /// Last updated date
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'NotificationPreferences(userId: $userId, pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, inAppEnabled: $inAppEnabled, socialEnabled: $socialEnabled, groupEnabled: $groupEnabled, bookEnabled: $bookEnabled, challengeEnabled: $challengeEnabled, systemEnabled: $systemEnabled, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, soundEnabled: $soundEnabled, vibrationEnabled: $vibrationEnabled, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferencesImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.inAppEnabled, inAppEnabled) ||
                other.inAppEnabled == inAppEnabled) &&
            (identical(other.socialEnabled, socialEnabled) ||
                other.socialEnabled == socialEnabled) &&
            (identical(other.groupEnabled, groupEnabled) ||
                other.groupEnabled == groupEnabled) &&
            (identical(other.bookEnabled, bookEnabled) ||
                other.bookEnabled == bookEnabled) &&
            (identical(other.challengeEnabled, challengeEnabled) ||
                other.challengeEnabled == challengeEnabled) &&
            (identical(other.systemEnabled, systemEnabled) ||
                other.systemEnabled == systemEnabled) &&
            (identical(other.quietHoursEnabled, quietHoursEnabled) ||
                other.quietHoursEnabled == quietHoursEnabled) &&
            (identical(other.quietHoursStart, quietHoursStart) ||
                other.quietHoursStart == quietHoursStart) &&
            (identical(other.quietHoursEnd, quietHoursEnd) ||
                other.quietHoursEnd == quietHoursEnd) &&
            (identical(other.soundEnabled, soundEnabled) ||
                other.soundEnabled == soundEnabled) &&
            (identical(other.vibrationEnabled, vibrationEnabled) ||
                other.vibrationEnabled == vibrationEnabled) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      pushEnabled,
      emailEnabled,
      inAppEnabled,
      socialEnabled,
      groupEnabled,
      bookEnabled,
      challengeEnabled,
      systemEnabled,
      quietHoursEnabled,
      quietHoursStart,
      quietHoursEnd,
      soundEnabled,
      vibrationEnabled,
      lastUpdated);

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferencesImplCopyWith<_$NotificationPreferencesImpl>
      get copyWith => __$$NotificationPreferencesImplCopyWithImpl<
          _$NotificationPreferencesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPreferencesImplToJson(
      this,
    );
  }
}

abstract class _NotificationPreferences implements NotificationPreferences {
  const factory _NotificationPreferences(
      {required final String userId,
      required final bool pushEnabled,
      required final bool emailEnabled,
      required final bool inAppEnabled,
      required final bool socialEnabled,
      required final bool groupEnabled,
      required final bool bookEnabled,
      required final bool challengeEnabled,
      required final bool systemEnabled,
      required final bool quietHoursEnabled,
      required final String quietHoursStart,
      required final String quietHoursEnd,
      required final bool soundEnabled,
      required final bool vibrationEnabled,
      required final DateTime lastUpdated}) = _$NotificationPreferencesImpl;

  factory _NotificationPreferences.fromJson(Map<String, dynamic> json) =
      _$NotificationPreferencesImpl.fromJson;

  /// User ID
  @override
  String get userId;

  /// Push notifications enabled
  @override
  bool get pushEnabled;

  /// Email notifications enabled
  @override
  bool get emailEnabled;

  /// In-app notifications enabled
  @override
  bool get inAppEnabled;

  /// Social notifications enabled
  @override
  bool get socialEnabled;

  /// Group notifications enabled
  @override
  bool get groupEnabled;

  /// Book notifications enabled
  @override
  bool get bookEnabled;

  /// Challenge notifications enabled
  @override
  bool get challengeEnabled;

  /// System notifications enabled
  @override
  bool get systemEnabled;

  /// Quiet hours enabled
  @override
  bool get quietHoursEnabled;

  /// Quiet hours start time (24-hour format)
  @override
  String get quietHoursStart;

  /// Quiet hours end time (24-hour format)
  @override
  String get quietHoursEnd;

  /// Notification sound enabled
  @override
  bool get soundEnabled;

  /// Notification vibration enabled
  @override
  bool get vibrationEnabled;

  /// Last updated date
  @override
  DateTime get lastUpdated;

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferencesImplCopyWith<_$NotificationPreferencesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationTemplate _$NotificationTemplateFromJson(Map<String, dynamic> json) {
  return NotificationTemplate.fromJson(json);
}

/// @nodoc
mixin _$NotificationTemplate {
  /// Template ID
  String get id => throw _privateConstructorUsedError;

  /// Template name
  String get name => throw _privateConstructorUsedError;

  /// Template description
  String get description => throw _privateConstructorUsedError;

  /// Template type
  NotificationType get type => throw _privateConstructorUsedError;

  /// Template title
  String get titleTemplate => throw _privateConstructorUsedError;

  /// Template message
  String get messageTemplate => throw _privateConstructorUsedError;

  /// Template category
  NotificationCategory get category => throw _privateConstructorUsedError;

  /// Template priority
  NotificationPriority get priority => throw _privateConstructorUsedError;

  /// Template action
  NotificationAction get action => throw _privateConstructorUsedError;

  /// Template metadata
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Whether template is active
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this NotificationTemplate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationTemplateCopyWith<NotificationTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTemplateCopyWith<$Res> {
  factory $NotificationTemplateCopyWith(NotificationTemplate value,
          $Res Function(NotificationTemplate) then) =
      _$NotificationTemplateCopyWithImpl<$Res, NotificationTemplate>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      NotificationType type,
      String titleTemplate,
      String messageTemplate,
      NotificationCategory category,
      NotificationPriority priority,
      NotificationAction action,
      Map<String, dynamic> metadata,
      bool isActive});

  $NotificationActionCopyWith<$Res> get action;
}

/// @nodoc
class _$NotificationTemplateCopyWithImpl<$Res,
        $Val extends NotificationTemplate>
    implements $NotificationTemplateCopyWith<$Res> {
  _$NotificationTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? titleTemplate = null,
    Object? messageTemplate = null,
    Object? category = null,
    Object? priority = null,
    Object? action = null,
    Object? metadata = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      titleTemplate: null == titleTemplate
          ? _value.titleTemplate
          : titleTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      messageTemplate: null == messageTemplate
          ? _value.messageTemplate
          : messageTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NotificationCategory,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as NotificationAction,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationActionCopyWith<$Res> get action {
    return $NotificationActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationTemplateImplCopyWith<$Res>
    implements $NotificationTemplateCopyWith<$Res> {
  factory _$$NotificationTemplateImplCopyWith(_$NotificationTemplateImpl value,
          $Res Function(_$NotificationTemplateImpl) then) =
      __$$NotificationTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      NotificationType type,
      String titleTemplate,
      String messageTemplate,
      NotificationCategory category,
      NotificationPriority priority,
      NotificationAction action,
      Map<String, dynamic> metadata,
      bool isActive});

  @override
  $NotificationActionCopyWith<$Res> get action;
}

/// @nodoc
class __$$NotificationTemplateImplCopyWithImpl<$Res>
    extends _$NotificationTemplateCopyWithImpl<$Res, _$NotificationTemplateImpl>
    implements _$$NotificationTemplateImplCopyWith<$Res> {
  __$$NotificationTemplateImplCopyWithImpl(_$NotificationTemplateImpl _value,
      $Res Function(_$NotificationTemplateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? titleTemplate = null,
    Object? messageTemplate = null,
    Object? category = null,
    Object? priority = null,
    Object? action = null,
    Object? metadata = null,
    Object? isActive = null,
  }) {
    return _then(_$NotificationTemplateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      titleTemplate: null == titleTemplate
          ? _value.titleTemplate
          : titleTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      messageTemplate: null == messageTemplate
          ? _value.messageTemplate
          : messageTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NotificationCategory,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as NotificationAction,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationTemplateImpl implements NotificationTemplate {
  const _$NotificationTemplateImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      required this.titleTemplate,
      required this.messageTemplate,
      required this.category,
      required this.priority,
      required this.action,
      required final Map<String, dynamic> metadata,
      required this.isActive})
      : _metadata = metadata;

  factory _$NotificationTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationTemplateImplFromJson(json);

  /// Template ID
  @override
  final String id;

  /// Template name
  @override
  final String name;

  /// Template description
  @override
  final String description;

  /// Template type
  @override
  final NotificationType type;

  /// Template title
  @override
  final String titleTemplate;

  /// Template message
  @override
  final String messageTemplate;

  /// Template category
  @override
  final NotificationCategory category;

  /// Template priority
  @override
  final NotificationPriority priority;

  /// Template action
  @override
  final NotificationAction action;

  /// Template metadata
  final Map<String, dynamic> _metadata;

  /// Template metadata
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  /// Whether template is active
  @override
  final bool isActive;

  @override
  String toString() {
    return 'NotificationTemplate(id: $id, name: $name, description: $description, type: $type, titleTemplate: $titleTemplate, messageTemplate: $messageTemplate, category: $category, priority: $priority, action: $action, metadata: $metadata, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationTemplateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.titleTemplate, titleTemplate) ||
                other.titleTemplate == titleTemplate) &&
            (identical(other.messageTemplate, messageTemplate) ||
                other.messageTemplate == messageTemplate) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      type,
      titleTemplate,
      messageTemplate,
      category,
      priority,
      action,
      const DeepCollectionEquality().hash(_metadata),
      isActive);

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationTemplateImplCopyWith<_$NotificationTemplateImpl>
      get copyWith =>
          __$$NotificationTemplateImplCopyWithImpl<_$NotificationTemplateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationTemplateImplToJson(
      this,
    );
  }
}

abstract class NotificationTemplate implements NotificationTemplate {
  const factory NotificationTemplate(
      {required final String id,
      required final String name,
      required final String description,
      required final NotificationType type,
      required final String titleTemplate,
      required final String messageTemplate,
      required final NotificationCategory category,
      required final NotificationPriority priority,
      required final NotificationAction action,
      required final Map<String, dynamic> metadata,
      required final bool isActive}) = _$NotificationTemplateImpl;

  factory NotificationTemplate.fromJson(Map<String, dynamic> json) =
      _$NotificationTemplateImpl.fromJson;

  /// Template ID
  @override
  String get id;

  /// Template name
  @override
  String get name;

  /// Template description
  @override
  String get description;

  /// Template type
  @override
  NotificationType get type;

  /// Template title
  @override
  String get titleTemplate;

  /// Template message
  @override
  String get messageTemplate;

  /// Template category
  @override
  NotificationCategory get category;

  /// Template priority
  @override
  NotificationPriority get priority;

  /// Template action
  @override
  NotificationAction get action;

  /// Template metadata
  @override
  Map<String, dynamic> get metadata;

  /// Whether template is active
  @override
  bool get isActive;

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationTemplateImplCopyWith<_$NotificationTemplateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
