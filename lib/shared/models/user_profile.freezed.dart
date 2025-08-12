// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  /// Unique identifier for the user profile
  String get id => throw _privateConstructorUsedError;

  /// User's display name
  String get displayName => throw _privateConstructorUsedError;

  /// User's email address
  String get email => throw _privateConstructorUsedError;

  /// URL to the user's profile picture
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// User's bio/description
  String? get bio => throw _privateConstructorUsedError;

  /// User's location
  String? get location => throw _privateConstructorUsedError;

  /// User's website URL
  String? get websiteUrl => throw _privateConstructorUsedError;

  /// User's favorite genres
  List<String> get favoriteGenres => throw _privateConstructorUsedError;

  /// User's reading preferences
  ReadingPreferences get readingPreferences =>
      throw _privateConstructorUsedError;

  /// User's social connections
  SocialConnections get socialConnections => throw _privateConstructorUsedError;

  /// User's reading statistics
  ReadingStats get readingStats => throw _privateConstructorUsedError;

  /// User's privacy settings
  PrivacySettings get privacySettings => throw _privateConstructorUsedError;

  /// Date when the profile was created
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Date when the profile was last updated
  DateTime get dateUpdated => throw _privateConstructorUsedError;

  /// Whether the profile is verified
  bool get isVerified => throw _privateConstructorUsedError;

  /// User's reading level/experience
  ReadingLevel get readingLevel => throw _privateConstructorUsedError;

  /// User's preferred languages
  List<String> get preferredLanguages => throw _privateConstructorUsedError;

  /// User's timezone
  String? get timezone => throw _privateConstructorUsedError;

  /// User's notification preferences
  NotificationPreferences get notificationPreferences =>
      throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String id,
      String displayName,
      String email,
      String? profilePictureUrl,
      String? bio,
      String? location,
      String? websiteUrl,
      List<String> favoriteGenres,
      ReadingPreferences readingPreferences,
      SocialConnections socialConnections,
      ReadingStats readingStats,
      PrivacySettings privacySettings,
      DateTime dateCreated,
      DateTime dateUpdated,
      bool isVerified,
      ReadingLevel readingLevel,
      List<String> preferredLanguages,
      String? timezone,
      NotificationPreferences notificationPreferences});

  $ReadingPreferencesCopyWith<$Res> get readingPreferences;
  $SocialConnectionsCopyWith<$Res> get socialConnections;
  $ReadingStatsCopyWith<$Res> get readingStats;
  $PrivacySettingsCopyWith<$Res> get privacySettings;
  $NotificationPreferencesCopyWith<$Res> get notificationPreferences;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? email = null,
    Object? profilePictureUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? websiteUrl = freezed,
    Object? favoriteGenres = null,
    Object? readingPreferences = null,
    Object? socialConnections = null,
    Object? readingStats = null,
    Object? privacySettings = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? isVerified = null,
    Object? readingLevel = null,
    Object? preferredLanguages = null,
    Object? timezone = freezed,
    Object? notificationPreferences = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteGenres: null == favoriteGenres
          ? _value.favoriteGenres
          : favoriteGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingPreferences: null == readingPreferences
          ? _value.readingPreferences
          : readingPreferences // ignore: cast_nullable_to_non_nullable
              as ReadingPreferences,
      socialConnections: null == socialConnections
          ? _value.socialConnections
          : socialConnections // ignore: cast_nullable_to_non_nullable
              as SocialConnections,
      readingStats: null == readingStats
          ? _value.readingStats
          : readingStats // ignore: cast_nullable_to_non_nullable
              as ReadingStats,
      privacySettings: null == privacySettings
          ? _value.privacySettings
          : privacySettings // ignore: cast_nullable_to_non_nullable
              as PrivacySettings,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      readingLevel: null == readingLevel
          ? _value.readingLevel
          : readingLevel // ignore: cast_nullable_to_non_nullable
              as ReadingLevel,
      preferredLanguages: null == preferredLanguages
          ? _value.preferredLanguages
          : preferredLanguages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationPreferences: null == notificationPreferences
          ? _value.notificationPreferences
          : notificationPreferences // ignore: cast_nullable_to_non_nullable
              as NotificationPreferences,
    ) as $Val);
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadingPreferencesCopyWith<$Res> get readingPreferences {
    return $ReadingPreferencesCopyWith<$Res>(_value.readingPreferences,
        (value) {
      return _then(_value.copyWith(readingPreferences: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialConnectionsCopyWith<$Res> get socialConnections {
    return $SocialConnectionsCopyWith<$Res>(_value.socialConnections, (value) {
      return _then(_value.copyWith(socialConnections: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadingStatsCopyWith<$Res> get readingStats {
    return $ReadingStatsCopyWith<$Res>(_value.readingStats, (value) {
      return _then(_value.copyWith(readingStats: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrivacySettingsCopyWith<$Res> get privacySettings {
    return $PrivacySettingsCopyWith<$Res>(_value.privacySettings, (value) {
      return _then(_value.copyWith(privacySettings: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferencesCopyWith<$Res> get notificationPreferences {
    return $NotificationPreferencesCopyWith<$Res>(
        _value.notificationPreferences, (value) {
      return _then(_value.copyWith(notificationPreferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String displayName,
      String email,
      String? profilePictureUrl,
      String? bio,
      String? location,
      String? websiteUrl,
      List<String> favoriteGenres,
      ReadingPreferences readingPreferences,
      SocialConnections socialConnections,
      ReadingStats readingStats,
      PrivacySettings privacySettings,
      DateTime dateCreated,
      DateTime dateUpdated,
      bool isVerified,
      ReadingLevel readingLevel,
      List<String> preferredLanguages,
      String? timezone,
      NotificationPreferences notificationPreferences});

  @override
  $ReadingPreferencesCopyWith<$Res> get readingPreferences;
  @override
  $SocialConnectionsCopyWith<$Res> get socialConnections;
  @override
  $ReadingStatsCopyWith<$Res> get readingStats;
  @override
  $PrivacySettingsCopyWith<$Res> get privacySettings;
  @override
  $NotificationPreferencesCopyWith<$Res> get notificationPreferences;
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? email = null,
    Object? profilePictureUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? websiteUrl = freezed,
    Object? favoriteGenres = null,
    Object? readingPreferences = null,
    Object? socialConnections = null,
    Object? readingStats = null,
    Object? privacySettings = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
    Object? isVerified = null,
    Object? readingLevel = null,
    Object? preferredLanguages = null,
    Object? timezone = freezed,
    Object? notificationPreferences = null,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteGenres: null == favoriteGenres
          ? _value._favoriteGenres
          : favoriteGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingPreferences: null == readingPreferences
          ? _value.readingPreferences
          : readingPreferences // ignore: cast_nullable_to_non_nullable
              as ReadingPreferences,
      socialConnections: null == socialConnections
          ? _value.socialConnections
          : socialConnections // ignore: cast_nullable_to_non_nullable
              as SocialConnections,
      readingStats: null == readingStats
          ? _value.readingStats
          : readingStats // ignore: cast_nullable_to_non_nullable
              as ReadingStats,
      privacySettings: null == privacySettings
          ? _value.privacySettings
          : privacySettings // ignore: cast_nullable_to_non_nullable
              as PrivacySettings,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      readingLevel: null == readingLevel
          ? _value.readingLevel
          : readingLevel // ignore: cast_nullable_to_non_nullable
              as ReadingLevel,
      preferredLanguages: null == preferredLanguages
          ? _value._preferredLanguages
          : preferredLanguages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationPreferences: null == notificationPreferences
          ? _value.notificationPreferences
          : notificationPreferences // ignore: cast_nullable_to_non_nullable
              as NotificationPreferences,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.id,
      required this.displayName,
      required this.email,
      this.profilePictureUrl,
      this.bio,
      this.location,
      this.websiteUrl,
      required final List<String> favoriteGenres,
      required this.readingPreferences,
      required this.socialConnections,
      required this.readingStats,
      required this.privacySettings,
      required this.dateCreated,
      required this.dateUpdated,
      required this.isVerified,
      required this.readingLevel,
      required final List<String> preferredLanguages,
      this.timezone,
      required this.notificationPreferences})
      : _favoriteGenres = favoriteGenres,
        _preferredLanguages = preferredLanguages;

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  /// Unique identifier for the user profile
  @override
  final String id;

  /// User's display name
  @override
  final String displayName;

  /// User's email address
  @override
  final String email;

  /// URL to the user's profile picture
  @override
  final String? profilePictureUrl;

  /// User's bio/description
  @override
  final String? bio;

  /// User's location
  @override
  final String? location;

  /// User's website URL
  @override
  final String? websiteUrl;

  /// User's favorite genres
  final List<String> _favoriteGenres;

  /// User's favorite genres
  @override
  List<String> get favoriteGenres {
    if (_favoriteGenres is EqualUnmodifiableListView) return _favoriteGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteGenres);
  }

  /// User's reading preferences
  @override
  final ReadingPreferences readingPreferences;

  /// User's social connections
  @override
  final SocialConnections socialConnections;

  /// User's reading statistics
  @override
  final ReadingStats readingStats;

  /// User's privacy settings
  @override
  final PrivacySettings privacySettings;

  /// Date when the profile was created
  @override
  final DateTime dateCreated;

  /// Date when the profile was last updated
  @override
  final DateTime dateUpdated;

  /// Whether the profile is verified
  @override
  final bool isVerified;

  /// User's reading level/experience
  @override
  final ReadingLevel readingLevel;

  /// User's preferred languages
  final List<String> _preferredLanguages;

  /// User's preferred languages
  @override
  List<String> get preferredLanguages {
    if (_preferredLanguages is EqualUnmodifiableListView)
      return _preferredLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredLanguages);
  }

  /// User's timezone
  @override
  final String? timezone;

  /// User's notification preferences
  @override
  final NotificationPreferences notificationPreferences;

  @override
  String toString() {
    return 'UserProfile(id: $id, displayName: $displayName, email: $email, profilePictureUrl: $profilePictureUrl, bio: $bio, location: $location, websiteUrl: $websiteUrl, favoriteGenres: $favoriteGenres, readingPreferences: $readingPreferences, socialConnections: $socialConnections, readingStats: $readingStats, privacySettings: $privacySettings, dateCreated: $dateCreated, dateUpdated: $dateUpdated, isVerified: $isVerified, readingLevel: $readingLevel, preferredLanguages: $preferredLanguages, timezone: $timezone, notificationPreferences: $notificationPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            const DeepCollectionEquality()
                .equals(other._favoriteGenres, _favoriteGenres) &&
            (identical(other.readingPreferences, readingPreferences) ||
                other.readingPreferences == readingPreferences) &&
            (identical(other.socialConnections, socialConnections) ||
                other.socialConnections == socialConnections) &&
            (identical(other.readingStats, readingStats) ||
                other.readingStats == readingStats) &&
            (identical(other.privacySettings, privacySettings) ||
                other.privacySettings == privacySettings) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.readingLevel, readingLevel) ||
                other.readingLevel == readingLevel) &&
            const DeepCollectionEquality()
                .equals(other._preferredLanguages, _preferredLanguages) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(
                    other.notificationPreferences, notificationPreferences) ||
                other.notificationPreferences == notificationPreferences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        displayName,
        email,
        profilePictureUrl,
        bio,
        location,
        websiteUrl,
        const DeepCollectionEquality().hash(_favoriteGenres),
        readingPreferences,
        socialConnections,
        readingStats,
        privacySettings,
        dateCreated,
        dateUpdated,
        isVerified,
        readingLevel,
        const DeepCollectionEquality().hash(_preferredLanguages),
        timezone,
        notificationPreferences
      ]);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
          {required final String id,
          required final String displayName,
          required final String email,
          final String? profilePictureUrl,
          final String? bio,
          final String? location,
          final String? websiteUrl,
          required final List<String> favoriteGenres,
          required final ReadingPreferences readingPreferences,
          required final SocialConnections socialConnections,
          required final ReadingStats readingStats,
          required final PrivacySettings privacySettings,
          required final DateTime dateCreated,
          required final DateTime dateUpdated,
          required final bool isVerified,
          required final ReadingLevel readingLevel,
          required final List<String> preferredLanguages,
          final String? timezone,
          required final NotificationPreferences notificationPreferences}) =
      _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  /// Unique identifier for the user profile
  @override
  String get id;

  /// User's display name
  @override
  String get displayName;

  /// User's email address
  @override
  String get email;

  /// URL to the user's profile picture
  @override
  String? get profilePictureUrl;

  /// User's bio/description
  @override
  String? get bio;

  /// User's location
  @override
  String? get location;

  /// User's website URL
  @override
  String? get websiteUrl;

  /// User's favorite genres
  @override
  List<String> get favoriteGenres;

  /// User's reading preferences
  @override
  ReadingPreferences get readingPreferences;

  /// User's social connections
  @override
  SocialConnections get socialConnections;

  /// User's reading statistics
  @override
  ReadingStats get readingStats;

  /// User's privacy settings
  @override
  PrivacySettings get privacySettings;

  /// Date when the profile was created
  @override
  DateTime get dateCreated;

  /// Date when the profile was last updated
  @override
  DateTime get dateUpdated;

  /// Whether the profile is verified
  @override
  bool get isVerified;

  /// User's reading level/experience
  @override
  ReadingLevel get readingLevel;

  /// User's preferred languages
  @override
  List<String> get preferredLanguages;

  /// User's timezone
  @override
  String? get timezone;

  /// User's notification preferences
  @override
  NotificationPreferences get notificationPreferences;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingPreferences _$ReadingPreferencesFromJson(Map<String, dynamic> json) {
  return _ReadingPreferences.fromJson(json);
}

/// @nodoc
mixin _$ReadingPreferences {
  /// Preferred book length (short, medium, long)
  BookLength get preferredBookLength => throw _privateConstructorUsedError;

  /// Preferred reading format (physical, digital, audiobook)
  List<ReadingFormat> get preferredFormats =>
      throw _privateConstructorUsedError;

  /// Preferred reading time (morning, afternoon, evening, night)
  List<ReadingTime> get preferredReadingTimes =>
      throw _privateConstructorUsedError;

  /// Whether user prefers series or standalone books
  bool get prefersSeries => throw _privateConstructorUsedError;

  /// Whether user prefers fiction or non-fiction
  bool get prefersFiction => throw _privateConstructorUsedError;

  /// User's reading speed (pages per hour)
  int get readingSpeed => throw _privateConstructorUsedError;

  /// Whether user likes to read multiple books simultaneously
  bool get readsMultipleBooks => throw _privateConstructorUsedError;

  /// User's preferred book themes
  List<String> get preferredThemes => throw _privateConstructorUsedError;

  /// Whether user likes to re-read books
  bool get likesToReread => throw _privateConstructorUsedError;

  /// User's preferred reading environment
  List<String> get preferredEnvironments => throw _privateConstructorUsedError;

  /// Serializes this ReadingPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingPreferencesCopyWith<ReadingPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingPreferencesCopyWith<$Res> {
  factory $ReadingPreferencesCopyWith(
          ReadingPreferences value, $Res Function(ReadingPreferences) then) =
      _$ReadingPreferencesCopyWithImpl<$Res, ReadingPreferences>;
  @useResult
  $Res call(
      {BookLength preferredBookLength,
      List<ReadingFormat> preferredFormats,
      List<ReadingTime> preferredReadingTimes,
      bool prefersSeries,
      bool prefersFiction,
      int readingSpeed,
      bool readsMultipleBooks,
      List<String> preferredThemes,
      bool likesToReread,
      List<String> preferredEnvironments});
}

/// @nodoc
class _$ReadingPreferencesCopyWithImpl<$Res, $Val extends ReadingPreferences>
    implements $ReadingPreferencesCopyWith<$Res> {
  _$ReadingPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredBookLength = null,
    Object? preferredFormats = null,
    Object? preferredReadingTimes = null,
    Object? prefersSeries = null,
    Object? prefersFiction = null,
    Object? readingSpeed = null,
    Object? readsMultipleBooks = null,
    Object? preferredThemes = null,
    Object? likesToReread = null,
    Object? preferredEnvironments = null,
  }) {
    return _then(_value.copyWith(
      preferredBookLength: null == preferredBookLength
          ? _value.preferredBookLength
          : preferredBookLength // ignore: cast_nullable_to_non_nullable
              as BookLength,
      preferredFormats: null == preferredFormats
          ? _value.preferredFormats
          : preferredFormats // ignore: cast_nullable_to_non_nullable
              as List<ReadingFormat>,
      preferredReadingTimes: null == preferredReadingTimes
          ? _value.preferredReadingTimes
          : preferredReadingTimes // ignore: cast_nullable_to_non_nullable
              as List<ReadingTime>,
      prefersSeries: null == prefersSeries
          ? _value.prefersSeries
          : prefersSeries // ignore: cast_nullable_to_non_nullable
              as bool,
      prefersFiction: null == prefersFiction
          ? _value.prefersFiction
          : prefersFiction // ignore: cast_nullable_to_non_nullable
              as bool,
      readingSpeed: null == readingSpeed
          ? _value.readingSpeed
          : readingSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      readsMultipleBooks: null == readsMultipleBooks
          ? _value.readsMultipleBooks
          : readsMultipleBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      preferredThemes: null == preferredThemes
          ? _value.preferredThemes
          : preferredThemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likesToReread: null == likesToReread
          ? _value.likesToReread
          : likesToReread // ignore: cast_nullable_to_non_nullable
              as bool,
      preferredEnvironments: null == preferredEnvironments
          ? _value.preferredEnvironments
          : preferredEnvironments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingPreferencesImplCopyWith<$Res>
    implements $ReadingPreferencesCopyWith<$Res> {
  factory _$$ReadingPreferencesImplCopyWith(_$ReadingPreferencesImpl value,
          $Res Function(_$ReadingPreferencesImpl) then) =
      __$$ReadingPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookLength preferredBookLength,
      List<ReadingFormat> preferredFormats,
      List<ReadingTime> preferredReadingTimes,
      bool prefersSeries,
      bool prefersFiction,
      int readingSpeed,
      bool readsMultipleBooks,
      List<String> preferredThemes,
      bool likesToReread,
      List<String> preferredEnvironments});
}

/// @nodoc
class __$$ReadingPreferencesImplCopyWithImpl<$Res>
    extends _$ReadingPreferencesCopyWithImpl<$Res, _$ReadingPreferencesImpl>
    implements _$$ReadingPreferencesImplCopyWith<$Res> {
  __$$ReadingPreferencesImplCopyWithImpl(_$ReadingPreferencesImpl _value,
      $Res Function(_$ReadingPreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredBookLength = null,
    Object? preferredFormats = null,
    Object? preferredReadingTimes = null,
    Object? prefersSeries = null,
    Object? prefersFiction = null,
    Object? readingSpeed = null,
    Object? readsMultipleBooks = null,
    Object? preferredThemes = null,
    Object? likesToReread = null,
    Object? preferredEnvironments = null,
  }) {
    return _then(_$ReadingPreferencesImpl(
      preferredBookLength: null == preferredBookLength
          ? _value.preferredBookLength
          : preferredBookLength // ignore: cast_nullable_to_non_nullable
              as BookLength,
      preferredFormats: null == preferredFormats
          ? _value._preferredFormats
          : preferredFormats // ignore: cast_nullable_to_non_nullable
              as List<ReadingFormat>,
      preferredReadingTimes: null == preferredReadingTimes
          ? _value._preferredReadingTimes
          : preferredReadingTimes // ignore: cast_nullable_to_non_nullable
              as List<ReadingTime>,
      prefersSeries: null == prefersSeries
          ? _value.prefersSeries
          : prefersSeries // ignore: cast_nullable_to_non_nullable
              as bool,
      prefersFiction: null == prefersFiction
          ? _value.prefersFiction
          : prefersFiction // ignore: cast_nullable_to_non_nullable
              as bool,
      readingSpeed: null == readingSpeed
          ? _value.readingSpeed
          : readingSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      readsMultipleBooks: null == readsMultipleBooks
          ? _value.readsMultipleBooks
          : readsMultipleBooks // ignore: cast_nullable_to_non_nullable
              as bool,
      preferredThemes: null == preferredThemes
          ? _value._preferredThemes
          : preferredThemes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likesToReread: null == likesToReread
          ? _value.likesToReread
          : likesToReread // ignore: cast_nullable_to_non_nullable
              as bool,
      preferredEnvironments: null == preferredEnvironments
          ? _value._preferredEnvironments
          : preferredEnvironments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingPreferencesImpl implements _ReadingPreferences {
  const _$ReadingPreferencesImpl(
      {required this.preferredBookLength,
      required final List<ReadingFormat> preferredFormats,
      required final List<ReadingTime> preferredReadingTimes,
      required this.prefersSeries,
      required this.prefersFiction,
      required this.readingSpeed,
      required this.readsMultipleBooks,
      required final List<String> preferredThemes,
      required this.likesToReread,
      required final List<String> preferredEnvironments})
      : _preferredFormats = preferredFormats,
        _preferredReadingTimes = preferredReadingTimes,
        _preferredThemes = preferredThemes,
        _preferredEnvironments = preferredEnvironments;

  factory _$ReadingPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingPreferencesImplFromJson(json);

  /// Preferred book length (short, medium, long)
  @override
  final BookLength preferredBookLength;

  /// Preferred reading format (physical, digital, audiobook)
  final List<ReadingFormat> _preferredFormats;

  /// Preferred reading format (physical, digital, audiobook)
  @override
  List<ReadingFormat> get preferredFormats {
    if (_preferredFormats is EqualUnmodifiableListView)
      return _preferredFormats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredFormats);
  }

  /// Preferred reading time (morning, afternoon, evening, night)
  final List<ReadingTime> _preferredReadingTimes;

  /// Preferred reading time (morning, afternoon, evening, night)
  @override
  List<ReadingTime> get preferredReadingTimes {
    if (_preferredReadingTimes is EqualUnmodifiableListView)
      return _preferredReadingTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredReadingTimes);
  }

  /// Whether user prefers series or standalone books
  @override
  final bool prefersSeries;

  /// Whether user prefers fiction or non-fiction
  @override
  final bool prefersFiction;

  /// User's reading speed (pages per hour)
  @override
  final int readingSpeed;

  /// Whether user likes to read multiple books simultaneously
  @override
  final bool readsMultipleBooks;

  /// User's preferred book themes
  final List<String> _preferredThemes;

  /// User's preferred book themes
  @override
  List<String> get preferredThemes {
    if (_preferredThemes is EqualUnmodifiableListView) return _preferredThemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredThemes);
  }

  /// Whether user likes to re-read books
  @override
  final bool likesToReread;

  /// User's preferred reading environment
  final List<String> _preferredEnvironments;

  /// User's preferred reading environment
  @override
  List<String> get preferredEnvironments {
    if (_preferredEnvironments is EqualUnmodifiableListView)
      return _preferredEnvironments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredEnvironments);
  }

  @override
  String toString() {
    return 'ReadingPreferences(preferredBookLength: $preferredBookLength, preferredFormats: $preferredFormats, preferredReadingTimes: $preferredReadingTimes, prefersSeries: $prefersSeries, prefersFiction: $prefersFiction, readingSpeed: $readingSpeed, readsMultipleBooks: $readsMultipleBooks, preferredThemes: $preferredThemes, likesToReread: $likesToReread, preferredEnvironments: $preferredEnvironments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingPreferencesImpl &&
            (identical(other.preferredBookLength, preferredBookLength) ||
                other.preferredBookLength == preferredBookLength) &&
            const DeepCollectionEquality()
                .equals(other._preferredFormats, _preferredFormats) &&
            const DeepCollectionEquality()
                .equals(other._preferredReadingTimes, _preferredReadingTimes) &&
            (identical(other.prefersSeries, prefersSeries) ||
                other.prefersSeries == prefersSeries) &&
            (identical(other.prefersFiction, prefersFiction) ||
                other.prefersFiction == prefersFiction) &&
            (identical(other.readingSpeed, readingSpeed) ||
                other.readingSpeed == readingSpeed) &&
            (identical(other.readsMultipleBooks, readsMultipleBooks) ||
                other.readsMultipleBooks == readsMultipleBooks) &&
            const DeepCollectionEquality()
                .equals(other._preferredThemes, _preferredThemes) &&
            (identical(other.likesToReread, likesToReread) ||
                other.likesToReread == likesToReread) &&
            const DeepCollectionEquality()
                .equals(other._preferredEnvironments, _preferredEnvironments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      preferredBookLength,
      const DeepCollectionEquality().hash(_preferredFormats),
      const DeepCollectionEquality().hash(_preferredReadingTimes),
      prefersSeries,
      prefersFiction,
      readingSpeed,
      readsMultipleBooks,
      const DeepCollectionEquality().hash(_preferredThemes),
      likesToReread,
      const DeepCollectionEquality().hash(_preferredEnvironments));

  /// Create a copy of ReadingPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingPreferencesImplCopyWith<_$ReadingPreferencesImpl> get copyWith =>
      __$$ReadingPreferencesImplCopyWithImpl<_$ReadingPreferencesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingPreferencesImplToJson(
      this,
    );
  }
}

abstract class _ReadingPreferences implements ReadingPreferences {
  const factory _ReadingPreferences(
          {required final BookLength preferredBookLength,
          required final List<ReadingFormat> preferredFormats,
          required final List<ReadingTime> preferredReadingTimes,
          required final bool prefersSeries,
          required final bool prefersFiction,
          required final int readingSpeed,
          required final bool readsMultipleBooks,
          required final List<String> preferredThemes,
          required final bool likesToReread,
          required final List<String> preferredEnvironments}) =
      _$ReadingPreferencesImpl;

  factory _ReadingPreferences.fromJson(Map<String, dynamic> json) =
      _$ReadingPreferencesImpl.fromJson;

  /// Preferred book length (short, medium, long)
  @override
  BookLength get preferredBookLength;

  /// Preferred reading format (physical, digital, audiobook)
  @override
  List<ReadingFormat> get preferredFormats;

  /// Preferred reading time (morning, afternoon, evening, night)
  @override
  List<ReadingTime> get preferredReadingTimes;

  /// Whether user prefers series or standalone books
  @override
  bool get prefersSeries;

  /// Whether user prefers fiction or non-fiction
  @override
  bool get prefersFiction;

  /// User's reading speed (pages per hour)
  @override
  int get readingSpeed;

  /// Whether user likes to read multiple books simultaneously
  @override
  bool get readsMultipleBooks;

  /// User's preferred book themes
  @override
  List<String> get preferredThemes;

  /// Whether user likes to re-read books
  @override
  bool get likesToReread;

  /// User's preferred reading environment
  @override
  List<String> get preferredEnvironments;

  /// Create a copy of ReadingPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingPreferencesImplCopyWith<_$ReadingPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialConnections _$SocialConnectionsFromJson(Map<String, dynamic> json) {
  return _SocialConnections.fromJson(json);
}

/// @nodoc
mixin _$SocialConnections {
  /// List of user IDs that this user is following
  List<String> get following => throw _privateConstructorUsedError;

  /// List of user IDs that are following this user
  List<String> get followers => throw _privateConstructorUsedError;

  /// List of user IDs that are friends with this user
  List<String> get friends => throw _privateConstructorUsedError;

  /// List of user IDs that this user has blocked
  List<String> get blocked => throw _privateConstructorUsedError;

  /// List of user IDs that have blocked this user
  List<String> get blockedBy => throw _privateConstructorUsedError;

  /// List of reading group IDs that this user is a member of
  List<String> get readingGroups => throw _privateConstructorUsedError;

  /// List of reading group IDs that this user moderates
  List<String> get moderatedGroups => throw _privateConstructorUsedError;

  /// User's social visibility settings
  SocialVisibility get socialVisibility => throw _privateConstructorUsedError;

  /// Serializes this SocialConnections to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialConnections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialConnectionsCopyWith<SocialConnections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialConnectionsCopyWith<$Res> {
  factory $SocialConnectionsCopyWith(
          SocialConnections value, $Res Function(SocialConnections) then) =
      _$SocialConnectionsCopyWithImpl<$Res, SocialConnections>;
  @useResult
  $Res call(
      {List<String> following,
      List<String> followers,
      List<String> friends,
      List<String> blocked,
      List<String> blockedBy,
      List<String> readingGroups,
      List<String> moderatedGroups,
      SocialVisibility socialVisibility});
}

/// @nodoc
class _$SocialConnectionsCopyWithImpl<$Res, $Val extends SocialConnections>
    implements $SocialConnectionsCopyWith<$Res> {
  _$SocialConnectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialConnections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = null,
    Object? followers = null,
    Object? friends = null,
    Object? blocked = null,
    Object? blockedBy = null,
    Object? readingGroups = null,
    Object? moderatedGroups = null,
    Object? socialVisibility = null,
  }) {
    return _then(_value.copyWith(
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedBy: null == blockedBy
          ? _value.blockedBy
          : blockedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingGroups: null == readingGroups
          ? _value.readingGroups
          : readingGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderatedGroups: null == moderatedGroups
          ? _value.moderatedGroups
          : moderatedGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      socialVisibility: null == socialVisibility
          ? _value.socialVisibility
          : socialVisibility // ignore: cast_nullable_to_non_nullable
              as SocialVisibility,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialConnectionsImplCopyWith<$Res>
    implements $SocialConnectionsCopyWith<$Res> {
  factory _$$SocialConnectionsImplCopyWith(_$SocialConnectionsImpl value,
          $Res Function(_$SocialConnectionsImpl) then) =
      __$$SocialConnectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> following,
      List<String> followers,
      List<String> friends,
      List<String> blocked,
      List<String> blockedBy,
      List<String> readingGroups,
      List<String> moderatedGroups,
      SocialVisibility socialVisibility});
}

/// @nodoc
class __$$SocialConnectionsImplCopyWithImpl<$Res>
    extends _$SocialConnectionsCopyWithImpl<$Res, _$SocialConnectionsImpl>
    implements _$$SocialConnectionsImplCopyWith<$Res> {
  __$$SocialConnectionsImplCopyWithImpl(_$SocialConnectionsImpl _value,
      $Res Function(_$SocialConnectionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialConnections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = null,
    Object? followers = null,
    Object? friends = null,
    Object? blocked = null,
    Object? blockedBy = null,
    Object? readingGroups = null,
    Object? moderatedGroups = null,
    Object? socialVisibility = null,
  }) {
    return _then(_$SocialConnectionsImpl(
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blocked: null == blocked
          ? _value._blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedBy: null == blockedBy
          ? _value._blockedBy
          : blockedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingGroups: null == readingGroups
          ? _value._readingGroups
          : readingGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderatedGroups: null == moderatedGroups
          ? _value._moderatedGroups
          : moderatedGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      socialVisibility: null == socialVisibility
          ? _value.socialVisibility
          : socialVisibility // ignore: cast_nullable_to_non_nullable
              as SocialVisibility,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialConnectionsImpl implements _SocialConnections {
  const _$SocialConnectionsImpl(
      {required final List<String> following,
      required final List<String> followers,
      required final List<String> friends,
      required final List<String> blocked,
      required final List<String> blockedBy,
      required final List<String> readingGroups,
      required final List<String> moderatedGroups,
      required this.socialVisibility})
      : _following = following,
        _followers = followers,
        _friends = friends,
        _blocked = blocked,
        _blockedBy = blockedBy,
        _readingGroups = readingGroups,
        _moderatedGroups = moderatedGroups;

  factory _$SocialConnectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialConnectionsImplFromJson(json);

  /// List of user IDs that this user is following
  final List<String> _following;

  /// List of user IDs that this user is following
  @override
  List<String> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  /// List of user IDs that are following this user
  final List<String> _followers;

  /// List of user IDs that are following this user
  @override
  List<String> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  /// List of user IDs that are friends with this user
  final List<String> _friends;

  /// List of user IDs that are friends with this user
  @override
  List<String> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  /// List of user IDs that this user has blocked
  final List<String> _blocked;

  /// List of user IDs that this user has blocked
  @override
  List<String> get blocked {
    if (_blocked is EqualUnmodifiableListView) return _blocked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocked);
  }

  /// List of user IDs that have blocked this user
  final List<String> _blockedBy;

  /// List of user IDs that have blocked this user
  @override
  List<String> get blockedBy {
    if (_blockedBy is EqualUnmodifiableListView) return _blockedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedBy);
  }

  /// List of reading group IDs that this user is a member of
  final List<String> _readingGroups;

  /// List of reading group IDs that this user is a member of
  @override
  List<String> get readingGroups {
    if (_readingGroups is EqualUnmodifiableListView) return _readingGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readingGroups);
  }

  /// List of reading group IDs that this user moderates
  final List<String> _moderatedGroups;

  /// List of reading group IDs that this user moderates
  @override
  List<String> get moderatedGroups {
    if (_moderatedGroups is EqualUnmodifiableListView) return _moderatedGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderatedGroups);
  }

  /// User's social visibility settings
  @override
  final SocialVisibility socialVisibility;

  @override
  String toString() {
    return 'SocialConnections(following: $following, followers: $followers, friends: $friends, blocked: $blocked, blockedBy: $blockedBy, readingGroups: $readingGroups, moderatedGroups: $moderatedGroups, socialVisibility: $socialVisibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialConnectionsImpl &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            const DeepCollectionEquality().equals(other._blocked, _blocked) &&
            const DeepCollectionEquality()
                .equals(other._blockedBy, _blockedBy) &&
            const DeepCollectionEquality()
                .equals(other._readingGroups, _readingGroups) &&
            const DeepCollectionEquality()
                .equals(other._moderatedGroups, _moderatedGroups) &&
            (identical(other.socialVisibility, socialVisibility) ||
                other.socialVisibility == socialVisibility));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_friends),
      const DeepCollectionEquality().hash(_blocked),
      const DeepCollectionEquality().hash(_blockedBy),
      const DeepCollectionEquality().hash(_readingGroups),
      const DeepCollectionEquality().hash(_moderatedGroups),
      socialVisibility);

  /// Create a copy of SocialConnections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialConnectionsImplCopyWith<_$SocialConnectionsImpl> get copyWith =>
      __$$SocialConnectionsImplCopyWithImpl<_$SocialConnectionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialConnectionsImplToJson(
      this,
    );
  }
}

abstract class _SocialConnections implements SocialConnections {
  const factory _SocialConnections(
          {required final List<String> following,
          required final List<String> followers,
          required final List<String> friends,
          required final List<String> blocked,
          required final List<String> blockedBy,
          required final List<String> readingGroups,
          required final List<String> moderatedGroups,
          required final SocialVisibility socialVisibility}) =
      _$SocialConnectionsImpl;

  factory _SocialConnections.fromJson(Map<String, dynamic> json) =
      _$SocialConnectionsImpl.fromJson;

  /// List of user IDs that this user is following
  @override
  List<String> get following;

  /// List of user IDs that are following this user
  @override
  List<String> get followers;

  /// List of user IDs that are friends with this user
  @override
  List<String> get friends;

  /// List of user IDs that this user has blocked
  @override
  List<String> get blocked;

  /// List of user IDs that have blocked this user
  @override
  List<String> get blockedBy;

  /// List of reading group IDs that this user is a member of
  @override
  List<String> get readingGroups;

  /// List of reading group IDs that this user moderates
  @override
  List<String> get moderatedGroups;

  /// User's social visibility settings
  @override
  SocialVisibility get socialVisibility;

  /// Create a copy of SocialConnections
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialConnectionsImplCopyWith<_$SocialConnectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingStats _$ReadingStatsFromJson(Map<String, dynamic> json) {
  return _ReadingStats.fromJson(json);
}

/// @nodoc
mixin _$ReadingStats {
  /// Total number of books read
  int get totalBooksRead => throw _privateConstructorUsedError;

  /// Total number of pages read
  int get totalPagesRead => throw _privateConstructorUsedError;

  /// Total reading time in minutes
  int get totalReadingTime => throw _privateConstructorUsedError;

  /// Average reading speed (pages per hour)
  double get averageReadingSpeed => throw _privateConstructorUsedError;

  /// Number of books read this year
  int get booksReadThisYear => throw _privateConstructorUsedError;

  /// Number of books read this month
  int get booksReadThisMonth => throw _privateConstructorUsedError;

  /// Number of books read this week
  int get booksReadThisWeek => throw _privateConstructorUsedError;

  /// User's reading streak (consecutive days)
  int get readingStreak => throw _privateConstructorUsedError;

  /// Longest reading streak
  int get longestReadingStreak => throw _privateConstructorUsedError;

  /// User's favorite genres (with counts)
  Map<String, int> get genreCounts => throw _privateConstructorUsedError;

  /// User's favorite authors (with counts)
  Map<String, int> get authorCounts => throw _privateConstructorUsedError;

  /// User's average rating given
  double get averageRatingGiven => throw _privateConstructorUsedError;

  /// Number of reviews written
  int get reviewsWritten => throw _privateConstructorUsedError;

  /// Number of reading lists created
  int get readingListsCreated => throw _privateConstructorUsedError;

  /// User's reading goals and achievements
  List<ReadingAchievement> get achievements =>
      throw _privateConstructorUsedError;

  /// Serializes this ReadingStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingStatsCopyWith<ReadingStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingStatsCopyWith<$Res> {
  factory $ReadingStatsCopyWith(
          ReadingStats value, $Res Function(ReadingStats) then) =
      _$ReadingStatsCopyWithImpl<$Res, ReadingStats>;
  @useResult
  $Res call(
      {int totalBooksRead,
      int totalPagesRead,
      int totalReadingTime,
      double averageReadingSpeed,
      int booksReadThisYear,
      int booksReadThisMonth,
      int booksReadThisWeek,
      int readingStreak,
      int longestReadingStreak,
      Map<String, int> genreCounts,
      Map<String, int> authorCounts,
      double averageRatingGiven,
      int reviewsWritten,
      int readingListsCreated,
      List<ReadingAchievement> achievements});
}

/// @nodoc
class _$ReadingStatsCopyWithImpl<$Res, $Val extends ReadingStats>
    implements $ReadingStatsCopyWith<$Res> {
  _$ReadingStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooksRead = null,
    Object? totalPagesRead = null,
    Object? totalReadingTime = null,
    Object? averageReadingSpeed = null,
    Object? booksReadThisYear = null,
    Object? booksReadThisMonth = null,
    Object? booksReadThisWeek = null,
    Object? readingStreak = null,
    Object? longestReadingStreak = null,
    Object? genreCounts = null,
    Object? authorCounts = null,
    Object? averageRatingGiven = null,
    Object? reviewsWritten = null,
    Object? readingListsCreated = null,
    Object? achievements = null,
  }) {
    return _then(_value.copyWith(
      totalBooksRead: null == totalBooksRead
          ? _value.totalBooksRead
          : totalBooksRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesRead: null == totalPagesRead
          ? _value.totalPagesRead
          : totalPagesRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalReadingTime: null == totalReadingTime
          ? _value.totalReadingTime
          : totalReadingTime // ignore: cast_nullable_to_non_nullable
              as int,
      averageReadingSpeed: null == averageReadingSpeed
          ? _value.averageReadingSpeed
          : averageReadingSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      booksReadThisYear: null == booksReadThisYear
          ? _value.booksReadThisYear
          : booksReadThisYear // ignore: cast_nullable_to_non_nullable
              as int,
      booksReadThisMonth: null == booksReadThisMonth
          ? _value.booksReadThisMonth
          : booksReadThisMonth // ignore: cast_nullable_to_non_nullable
              as int,
      booksReadThisWeek: null == booksReadThisWeek
          ? _value.booksReadThisWeek
          : booksReadThisWeek // ignore: cast_nullable_to_non_nullable
              as int,
      readingStreak: null == readingStreak
          ? _value.readingStreak
          : readingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestReadingStreak: null == longestReadingStreak
          ? _value.longestReadingStreak
          : longestReadingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      genreCounts: null == genreCounts
          ? _value.genreCounts
          : genreCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      authorCounts: null == authorCounts
          ? _value.authorCounts
          : authorCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageRatingGiven: null == averageRatingGiven
          ? _value.averageRatingGiven
          : averageRatingGiven // ignore: cast_nullable_to_non_nullable
              as double,
      reviewsWritten: null == reviewsWritten
          ? _value.reviewsWritten
          : reviewsWritten // ignore: cast_nullable_to_non_nullable
              as int,
      readingListsCreated: null == readingListsCreated
          ? _value.readingListsCreated
          : readingListsCreated // ignore: cast_nullable_to_non_nullable
              as int,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<ReadingAchievement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingStatsImplCopyWith<$Res>
    implements $ReadingStatsCopyWith<$Res> {
  factory _$$ReadingStatsImplCopyWith(
          _$ReadingStatsImpl value, $Res Function(_$ReadingStatsImpl) then) =
      __$$ReadingStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalBooksRead,
      int totalPagesRead,
      int totalReadingTime,
      double averageReadingSpeed,
      int booksReadThisYear,
      int booksReadThisMonth,
      int booksReadThisWeek,
      int readingStreak,
      int longestReadingStreak,
      Map<String, int> genreCounts,
      Map<String, int> authorCounts,
      double averageRatingGiven,
      int reviewsWritten,
      int readingListsCreated,
      List<ReadingAchievement> achievements});
}

/// @nodoc
class __$$ReadingStatsImplCopyWithImpl<$Res>
    extends _$ReadingStatsCopyWithImpl<$Res, _$ReadingStatsImpl>
    implements _$$ReadingStatsImplCopyWith<$Res> {
  __$$ReadingStatsImplCopyWithImpl(
      _$ReadingStatsImpl _value, $Res Function(_$ReadingStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooksRead = null,
    Object? totalPagesRead = null,
    Object? totalReadingTime = null,
    Object? averageReadingSpeed = null,
    Object? booksReadThisYear = null,
    Object? booksReadThisMonth = null,
    Object? booksReadThisWeek = null,
    Object? readingStreak = null,
    Object? longestReadingStreak = null,
    Object? genreCounts = null,
    Object? authorCounts = null,
    Object? averageRatingGiven = null,
    Object? reviewsWritten = null,
    Object? readingListsCreated = null,
    Object? achievements = null,
  }) {
    return _then(_$ReadingStatsImpl(
      totalBooksRead: null == totalBooksRead
          ? _value.totalBooksRead
          : totalBooksRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalPagesRead: null == totalPagesRead
          ? _value.totalPagesRead
          : totalPagesRead // ignore: cast_nullable_to_non_nullable
              as int,
      totalReadingTime: null == totalReadingTime
          ? _value.totalReadingTime
          : totalReadingTime // ignore: cast_nullable_to_non_nullable
              as int,
      averageReadingSpeed: null == averageReadingSpeed
          ? _value.averageReadingSpeed
          : averageReadingSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      booksReadThisYear: null == booksReadThisYear
          ? _value.booksReadThisYear
          : booksReadThisYear // ignore: cast_nullable_to_non_nullable
              as int,
      booksReadThisMonth: null == booksReadThisMonth
          ? _value.booksReadThisMonth
          : booksReadThisMonth // ignore: cast_nullable_to_non_nullable
              as int,
      booksReadThisWeek: null == booksReadThisWeek
          ? _value.booksReadThisWeek
          : booksReadThisWeek // ignore: cast_nullable_to_non_nullable
              as int,
      readingStreak: null == readingStreak
          ? _value.readingStreak
          : readingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestReadingStreak: null == longestReadingStreak
          ? _value.longestReadingStreak
          : longestReadingStreak // ignore: cast_nullable_to_non_nullable
              as int,
      genreCounts: null == genreCounts
          ? _value._genreCounts
          : genreCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      authorCounts: null == authorCounts
          ? _value._authorCounts
          : authorCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageRatingGiven: null == averageRatingGiven
          ? _value.averageRatingGiven
          : averageRatingGiven // ignore: cast_nullable_to_non_nullable
              as double,
      reviewsWritten: null == reviewsWritten
          ? _value.reviewsWritten
          : reviewsWritten // ignore: cast_nullable_to_non_nullable
              as int,
      readingListsCreated: null == readingListsCreated
          ? _value.readingListsCreated
          : readingListsCreated // ignore: cast_nullable_to_non_nullable
              as int,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<ReadingAchievement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingStatsImpl implements _ReadingStats {
  const _$ReadingStatsImpl(
      {required this.totalBooksRead,
      required this.totalPagesRead,
      required this.totalReadingTime,
      required this.averageReadingSpeed,
      required this.booksReadThisYear,
      required this.booksReadThisMonth,
      required this.booksReadThisWeek,
      required this.readingStreak,
      required this.longestReadingStreak,
      required final Map<String, int> genreCounts,
      required final Map<String, int> authorCounts,
      required this.averageRatingGiven,
      required this.reviewsWritten,
      required this.readingListsCreated,
      required final List<ReadingAchievement> achievements})
      : _genreCounts = genreCounts,
        _authorCounts = authorCounts,
        _achievements = achievements;

  factory _$ReadingStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingStatsImplFromJson(json);

  /// Total number of books read
  @override
  final int totalBooksRead;

  /// Total number of pages read
  @override
  final int totalPagesRead;

  /// Total reading time in minutes
  @override
  final int totalReadingTime;

  /// Average reading speed (pages per hour)
  @override
  final double averageReadingSpeed;

  /// Number of books read this year
  @override
  final int booksReadThisYear;

  /// Number of books read this month
  @override
  final int booksReadThisMonth;

  /// Number of books read this week
  @override
  final int booksReadThisWeek;

  /// User's reading streak (consecutive days)
  @override
  final int readingStreak;

  /// Longest reading streak
  @override
  final int longestReadingStreak;

  /// User's favorite genres (with counts)
  final Map<String, int> _genreCounts;

  /// User's favorite genres (with counts)
  @override
  Map<String, int> get genreCounts {
    if (_genreCounts is EqualUnmodifiableMapView) return _genreCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_genreCounts);
  }

  /// User's favorite authors (with counts)
  final Map<String, int> _authorCounts;

  /// User's favorite authors (with counts)
  @override
  Map<String, int> get authorCounts {
    if (_authorCounts is EqualUnmodifiableMapView) return _authorCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_authorCounts);
  }

  /// User's average rating given
  @override
  final double averageRatingGiven;

  /// Number of reviews written
  @override
  final int reviewsWritten;

  /// Number of reading lists created
  @override
  final int readingListsCreated;

  /// User's reading goals and achievements
  final List<ReadingAchievement> _achievements;

  /// User's reading goals and achievements
  @override
  List<ReadingAchievement> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  String toString() {
    return 'ReadingStats(totalBooksRead: $totalBooksRead, totalPagesRead: $totalPagesRead, totalReadingTime: $totalReadingTime, averageReadingSpeed: $averageReadingSpeed, booksReadThisYear: $booksReadThisYear, booksReadThisMonth: $booksReadThisMonth, booksReadThisWeek: $booksReadThisWeek, readingStreak: $readingStreak, longestReadingStreak: $longestReadingStreak, genreCounts: $genreCounts, authorCounts: $authorCounts, averageRatingGiven: $averageRatingGiven, reviewsWritten: $reviewsWritten, readingListsCreated: $readingListsCreated, achievements: $achievements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingStatsImpl &&
            (identical(other.totalBooksRead, totalBooksRead) ||
                other.totalBooksRead == totalBooksRead) &&
            (identical(other.totalPagesRead, totalPagesRead) ||
                other.totalPagesRead == totalPagesRead) &&
            (identical(other.totalReadingTime, totalReadingTime) ||
                other.totalReadingTime == totalReadingTime) &&
            (identical(other.averageReadingSpeed, averageReadingSpeed) ||
                other.averageReadingSpeed == averageReadingSpeed) &&
            (identical(other.booksReadThisYear, booksReadThisYear) ||
                other.booksReadThisYear == booksReadThisYear) &&
            (identical(other.booksReadThisMonth, booksReadThisMonth) ||
                other.booksReadThisMonth == booksReadThisMonth) &&
            (identical(other.booksReadThisWeek, booksReadThisWeek) ||
                other.booksReadThisWeek == booksReadThisWeek) &&
            (identical(other.readingStreak, readingStreak) ||
                other.readingStreak == readingStreak) &&
            (identical(other.longestReadingStreak, longestReadingStreak) ||
                other.longestReadingStreak == longestReadingStreak) &&
            const DeepCollectionEquality()
                .equals(other._genreCounts, _genreCounts) &&
            const DeepCollectionEquality()
                .equals(other._authorCounts, _authorCounts) &&
            (identical(other.averageRatingGiven, averageRatingGiven) ||
                other.averageRatingGiven == averageRatingGiven) &&
            (identical(other.reviewsWritten, reviewsWritten) ||
                other.reviewsWritten == reviewsWritten) &&
            (identical(other.readingListsCreated, readingListsCreated) ||
                other.readingListsCreated == readingListsCreated) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalBooksRead,
      totalPagesRead,
      totalReadingTime,
      averageReadingSpeed,
      booksReadThisYear,
      booksReadThisMonth,
      booksReadThisWeek,
      readingStreak,
      longestReadingStreak,
      const DeepCollectionEquality().hash(_genreCounts),
      const DeepCollectionEquality().hash(_authorCounts),
      averageRatingGiven,
      reviewsWritten,
      readingListsCreated,
      const DeepCollectionEquality().hash(_achievements));

  /// Create a copy of ReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingStatsImplCopyWith<_$ReadingStatsImpl> get copyWith =>
      __$$ReadingStatsImplCopyWithImpl<_$ReadingStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingStatsImplToJson(
      this,
    );
  }
}

abstract class _ReadingStats implements ReadingStats {
  const factory _ReadingStats(
          {required final int totalBooksRead,
          required final int totalPagesRead,
          required final int totalReadingTime,
          required final double averageReadingSpeed,
          required final int booksReadThisYear,
          required final int booksReadThisMonth,
          required final int booksReadThisWeek,
          required final int readingStreak,
          required final int longestReadingStreak,
          required final Map<String, int> genreCounts,
          required final Map<String, int> authorCounts,
          required final double averageRatingGiven,
          required final int reviewsWritten,
          required final int readingListsCreated,
          required final List<ReadingAchievement> achievements}) =
      _$ReadingStatsImpl;

  factory _ReadingStats.fromJson(Map<String, dynamic> json) =
      _$ReadingStatsImpl.fromJson;

  /// Total number of books read
  @override
  int get totalBooksRead;

  /// Total number of pages read
  @override
  int get totalPagesRead;

  /// Total reading time in minutes
  @override
  int get totalReadingTime;

  /// Average reading speed (pages per hour)
  @override
  double get averageReadingSpeed;

  /// Number of books read this year
  @override
  int get booksReadThisYear;

  /// Number of books read this month
  @override
  int get booksReadThisMonth;

  /// Number of books read this week
  @override
  int get booksReadThisWeek;

  /// User's reading streak (consecutive days)
  @override
  int get readingStreak;

  /// Longest reading streak
  @override
  int get longestReadingStreak;

  /// User's favorite genres (with counts)
  @override
  Map<String, int> get genreCounts;

  /// User's favorite authors (with counts)
  @override
  Map<String, int> get authorCounts;

  /// User's average rating given
  @override
  double get averageRatingGiven;

  /// Number of reviews written
  @override
  int get reviewsWritten;

  /// Number of reading lists created
  @override
  int get readingListsCreated;

  /// User's reading goals and achievements
  @override
  List<ReadingAchievement> get achievements;

  /// Create a copy of ReadingStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingStatsImplCopyWith<_$ReadingStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivacySettings _$PrivacySettingsFromJson(Map<String, dynamic> json) {
  return _PrivacySettings.fromJson(json);
}

/// @nodoc
mixin _$PrivacySettings {
  /// Whether the profile is public
  bool get isProfilePublic => throw _privateConstructorUsedError;

  /// Whether reading activity is visible to others
  bool get isReadingActivityVisible => throw _privateConstructorUsedError;

  /// Whether reviews are visible to others
  bool get areReviewsVisible => throw _privateConstructorUsedError;

  /// Whether reading lists are visible to others
  bool get areReadingListsVisible => throw _privateConstructorUsedError;

  /// Whether friends can see detailed reading stats
  bool get canFriendsSeeDetailedStats => throw _privateConstructorUsedError;

  /// Whether the profile appears in search results
  bool get appearsInSearch => throw _privateConstructorUsedError;

  /// Whether the profile appears in recommendations
  bool get appearsInRecommendations => throw _privateConstructorUsedError;

  /// Who can send friend requests
  FriendRequestPolicy get friendRequestPolicy =>
      throw _privateConstructorUsedError;

  /// Who can see the user's reading progress
  ReadingProgressVisibility get readingProgressVisibility =>
      throw _privateConstructorUsedError;

  /// Serializes this PrivacySettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivacySettingsCopyWith<PrivacySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacySettingsCopyWith<$Res> {
  factory $PrivacySettingsCopyWith(
          PrivacySettings value, $Res Function(PrivacySettings) then) =
      _$PrivacySettingsCopyWithImpl<$Res, PrivacySettings>;
  @useResult
  $Res call(
      {bool isProfilePublic,
      bool isReadingActivityVisible,
      bool areReviewsVisible,
      bool areReadingListsVisible,
      bool canFriendsSeeDetailedStats,
      bool appearsInSearch,
      bool appearsInRecommendations,
      FriendRequestPolicy friendRequestPolicy,
      ReadingProgressVisibility readingProgressVisibility});
}

/// @nodoc
class _$PrivacySettingsCopyWithImpl<$Res, $Val extends PrivacySettings>
    implements $PrivacySettingsCopyWith<$Res> {
  _$PrivacySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProfilePublic = null,
    Object? isReadingActivityVisible = null,
    Object? areReviewsVisible = null,
    Object? areReadingListsVisible = null,
    Object? canFriendsSeeDetailedStats = null,
    Object? appearsInSearch = null,
    Object? appearsInRecommendations = null,
    Object? friendRequestPolicy = null,
    Object? readingProgressVisibility = null,
  }) {
    return _then(_value.copyWith(
      isProfilePublic: null == isProfilePublic
          ? _value.isProfilePublic
          : isProfilePublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadingActivityVisible: null == isReadingActivityVisible
          ? _value.isReadingActivityVisible
          : isReadingActivityVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      areReviewsVisible: null == areReviewsVisible
          ? _value.areReviewsVisible
          : areReviewsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      areReadingListsVisible: null == areReadingListsVisible
          ? _value.areReadingListsVisible
          : areReadingListsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      canFriendsSeeDetailedStats: null == canFriendsSeeDetailedStats
          ? _value.canFriendsSeeDetailedStats
          : canFriendsSeeDetailedStats // ignore: cast_nullable_to_non_nullable
              as bool,
      appearsInSearch: null == appearsInSearch
          ? _value.appearsInSearch
          : appearsInSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      appearsInRecommendations: null == appearsInRecommendations
          ? _value.appearsInRecommendations
          : appearsInRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      friendRequestPolicy: null == friendRequestPolicy
          ? _value.friendRequestPolicy
          : friendRequestPolicy // ignore: cast_nullable_to_non_nullable
              as FriendRequestPolicy,
      readingProgressVisibility: null == readingProgressVisibility
          ? _value.readingProgressVisibility
          : readingProgressVisibility // ignore: cast_nullable_to_non_nullable
              as ReadingProgressVisibility,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacySettingsImplCopyWith<$Res>
    implements $PrivacySettingsCopyWith<$Res> {
  factory _$$PrivacySettingsImplCopyWith(_$PrivacySettingsImpl value,
          $Res Function(_$PrivacySettingsImpl) then) =
      __$$PrivacySettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isProfilePublic,
      bool isReadingActivityVisible,
      bool areReviewsVisible,
      bool areReadingListsVisible,
      bool canFriendsSeeDetailedStats,
      bool appearsInSearch,
      bool appearsInRecommendations,
      FriendRequestPolicy friendRequestPolicy,
      ReadingProgressVisibility readingProgressVisibility});
}

/// @nodoc
class __$$PrivacySettingsImplCopyWithImpl<$Res>
    extends _$PrivacySettingsCopyWithImpl<$Res, _$PrivacySettingsImpl>
    implements _$$PrivacySettingsImplCopyWith<$Res> {
  __$$PrivacySettingsImplCopyWithImpl(
      _$PrivacySettingsImpl _value, $Res Function(_$PrivacySettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProfilePublic = null,
    Object? isReadingActivityVisible = null,
    Object? areReviewsVisible = null,
    Object? areReadingListsVisible = null,
    Object? canFriendsSeeDetailedStats = null,
    Object? appearsInSearch = null,
    Object? appearsInRecommendations = null,
    Object? friendRequestPolicy = null,
    Object? readingProgressVisibility = null,
  }) {
    return _then(_$PrivacySettingsImpl(
      isProfilePublic: null == isProfilePublic
          ? _value.isProfilePublic
          : isProfilePublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadingActivityVisible: null == isReadingActivityVisible
          ? _value.isReadingActivityVisible
          : isReadingActivityVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      areReviewsVisible: null == areReviewsVisible
          ? _value.areReviewsVisible
          : areReviewsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      areReadingListsVisible: null == areReadingListsVisible
          ? _value.areReadingListsVisible
          : areReadingListsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      canFriendsSeeDetailedStats: null == canFriendsSeeDetailedStats
          ? _value.canFriendsSeeDetailedStats
          : canFriendsSeeDetailedStats // ignore: cast_nullable_to_non_nullable
              as bool,
      appearsInSearch: null == appearsInSearch
          ? _value.appearsInSearch
          : appearsInSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      appearsInRecommendations: null == appearsInRecommendations
          ? _value.appearsInRecommendations
          : appearsInRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      friendRequestPolicy: null == friendRequestPolicy
          ? _value.friendRequestPolicy
          : friendRequestPolicy // ignore: cast_nullable_to_non_nullable
              as FriendRequestPolicy,
      readingProgressVisibility: null == readingProgressVisibility
          ? _value.readingProgressVisibility
          : readingProgressVisibility // ignore: cast_nullable_to_non_nullable
              as ReadingProgressVisibility,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivacySettingsImpl implements _PrivacySettings {
  const _$PrivacySettingsImpl(
      {required this.isProfilePublic,
      required this.isReadingActivityVisible,
      required this.areReviewsVisible,
      required this.areReadingListsVisible,
      required this.canFriendsSeeDetailedStats,
      required this.appearsInSearch,
      required this.appearsInRecommendations,
      required this.friendRequestPolicy,
      required this.readingProgressVisibility});

  factory _$PrivacySettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacySettingsImplFromJson(json);

  /// Whether the profile is public
  @override
  final bool isProfilePublic;

  /// Whether reading activity is visible to others
  @override
  final bool isReadingActivityVisible;

  /// Whether reviews are visible to others
  @override
  final bool areReviewsVisible;

  /// Whether reading lists are visible to others
  @override
  final bool areReadingListsVisible;

  /// Whether friends can see detailed reading stats
  @override
  final bool canFriendsSeeDetailedStats;

  /// Whether the profile appears in search results
  @override
  final bool appearsInSearch;

  /// Whether the profile appears in recommendations
  @override
  final bool appearsInRecommendations;

  /// Who can send friend requests
  @override
  final FriendRequestPolicy friendRequestPolicy;

  /// Who can see the user's reading progress
  @override
  final ReadingProgressVisibility readingProgressVisibility;

  @override
  String toString() {
    return 'PrivacySettings(isProfilePublic: $isProfilePublic, isReadingActivityVisible: $isReadingActivityVisible, areReviewsVisible: $areReviewsVisible, areReadingListsVisible: $areReadingListsVisible, canFriendsSeeDetailedStats: $canFriendsSeeDetailedStats, appearsInSearch: $appearsInSearch, appearsInRecommendations: $appearsInRecommendations, friendRequestPolicy: $friendRequestPolicy, readingProgressVisibility: $readingProgressVisibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacySettingsImpl &&
            (identical(other.isProfilePublic, isProfilePublic) ||
                other.isProfilePublic == isProfilePublic) &&
            (identical(
                    other.isReadingActivityVisible, isReadingActivityVisible) ||
                other.isReadingActivityVisible == isReadingActivityVisible) &&
            (identical(other.areReviewsVisible, areReviewsVisible) ||
                other.areReviewsVisible == areReviewsVisible) &&
            (identical(other.areReadingListsVisible, areReadingListsVisible) ||
                other.areReadingListsVisible == areReadingListsVisible) &&
            (identical(other.canFriendsSeeDetailedStats,
                    canFriendsSeeDetailedStats) ||
                other.canFriendsSeeDetailedStats ==
                    canFriendsSeeDetailedStats) &&
            (identical(other.appearsInSearch, appearsInSearch) ||
                other.appearsInSearch == appearsInSearch) &&
            (identical(
                    other.appearsInRecommendations, appearsInRecommendations) ||
                other.appearsInRecommendations == appearsInRecommendations) &&
            (identical(other.friendRequestPolicy, friendRequestPolicy) ||
                other.friendRequestPolicy == friendRequestPolicy) &&
            (identical(other.readingProgressVisibility,
                    readingProgressVisibility) ||
                other.readingProgressVisibility == readingProgressVisibility));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isProfilePublic,
      isReadingActivityVisible,
      areReviewsVisible,
      areReadingListsVisible,
      canFriendsSeeDetailedStats,
      appearsInSearch,
      appearsInRecommendations,
      friendRequestPolicy,
      readingProgressVisibility);

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacySettingsImplCopyWith<_$PrivacySettingsImpl> get copyWith =>
      __$$PrivacySettingsImplCopyWithImpl<_$PrivacySettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacySettingsImplToJson(
      this,
    );
  }
}

abstract class _PrivacySettings implements PrivacySettings {
  const factory _PrivacySettings(
          {required final bool isProfilePublic,
          required final bool isReadingActivityVisible,
          required final bool areReviewsVisible,
          required final bool areReadingListsVisible,
          required final bool canFriendsSeeDetailedStats,
          required final bool appearsInSearch,
          required final bool appearsInRecommendations,
          required final FriendRequestPolicy friendRequestPolicy,
          required final ReadingProgressVisibility readingProgressVisibility}) =
      _$PrivacySettingsImpl;

  factory _PrivacySettings.fromJson(Map<String, dynamic> json) =
      _$PrivacySettingsImpl.fromJson;

  /// Whether the profile is public
  @override
  bool get isProfilePublic;

  /// Whether reading activity is visible to others
  @override
  bool get isReadingActivityVisible;

  /// Whether reviews are visible to others
  @override
  bool get areReviewsVisible;

  /// Whether reading lists are visible to others
  @override
  bool get areReadingListsVisible;

  /// Whether friends can see detailed reading stats
  @override
  bool get canFriendsSeeDetailedStats;

  /// Whether the profile appears in search results
  @override
  bool get appearsInSearch;

  /// Whether the profile appears in recommendations
  @override
  bool get appearsInRecommendations;

  /// Who can send friend requests
  @override
  FriendRequestPolicy get friendRequestPolicy;

  /// Who can see the user's reading progress
  @override
  ReadingProgressVisibility get readingProgressVisibility;

  /// Create a copy of PrivacySettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacySettingsImplCopyWith<_$PrivacySettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationPreferences _$NotificationPreferencesFromJson(
    Map<String, dynamic> json) {
  return _NotificationPreferences.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreferences {
  /// Whether to receive email notifications
  bool get emailNotifications => throw _privateConstructorUsedError;

  /// Whether to receive push notifications
  bool get pushNotifications => throw _privateConstructorUsedError;

  /// Whether to receive friend request notifications
  bool get friendRequestNotifications => throw _privateConstructorUsedError;

  /// Whether to receive reading goal reminders
  bool get readingGoalReminders => throw _privateConstructorUsedError;

  /// Whether to receive book recommendations
  bool get bookRecommendations => throw _privateConstructorUsedError;

  /// Whether to receive reading group updates
  bool get readingGroupUpdates => throw _privateConstructorUsedError;

  /// Whether to receive review notifications
  bool get reviewNotifications => throw _privateConstructorUsedError;

  /// Whether to receive achievement notifications
  bool get achievementNotifications => throw _privateConstructorUsedError;

  /// Notification frequency
  NotificationFrequency get notificationFrequency =>
      throw _privateConstructorUsedError;

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
      {bool emailNotifications,
      bool pushNotifications,
      bool friendRequestNotifications,
      bool readingGoalReminders,
      bool bookRecommendations,
      bool readingGroupUpdates,
      bool reviewNotifications,
      bool achievementNotifications,
      NotificationFrequency notificationFrequency});
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
    Object? emailNotifications = null,
    Object? pushNotifications = null,
    Object? friendRequestNotifications = null,
    Object? readingGoalReminders = null,
    Object? bookRecommendations = null,
    Object? readingGroupUpdates = null,
    Object? reviewNotifications = null,
    Object? achievementNotifications = null,
    Object? notificationFrequency = null,
  }) {
    return _then(_value.copyWith(
      emailNotifications: null == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      pushNotifications: null == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      friendRequestNotifications: null == friendRequestNotifications
          ? _value.friendRequestNotifications
          : friendRequestNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      readingGoalReminders: null == readingGoalReminders
          ? _value.readingGoalReminders
          : readingGoalReminders // ignore: cast_nullable_to_non_nullable
              as bool,
      bookRecommendations: null == bookRecommendations
          ? _value.bookRecommendations
          : bookRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      readingGroupUpdates: null == readingGroupUpdates
          ? _value.readingGroupUpdates
          : readingGroupUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewNotifications: null == reviewNotifications
          ? _value.reviewNotifications
          : reviewNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      achievementNotifications: null == achievementNotifications
          ? _value.achievementNotifications
          : achievementNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationFrequency: null == notificationFrequency
          ? _value.notificationFrequency
          : notificationFrequency // ignore: cast_nullable_to_non_nullable
              as NotificationFrequency,
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
      {bool emailNotifications,
      bool pushNotifications,
      bool friendRequestNotifications,
      bool readingGoalReminders,
      bool bookRecommendations,
      bool readingGroupUpdates,
      bool reviewNotifications,
      bool achievementNotifications,
      NotificationFrequency notificationFrequency});
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
    Object? emailNotifications = null,
    Object? pushNotifications = null,
    Object? friendRequestNotifications = null,
    Object? readingGoalReminders = null,
    Object? bookRecommendations = null,
    Object? readingGroupUpdates = null,
    Object? reviewNotifications = null,
    Object? achievementNotifications = null,
    Object? notificationFrequency = null,
  }) {
    return _then(_$NotificationPreferencesImpl(
      emailNotifications: null == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      pushNotifications: null == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      friendRequestNotifications: null == friendRequestNotifications
          ? _value.friendRequestNotifications
          : friendRequestNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      readingGoalReminders: null == readingGoalReminders
          ? _value.readingGoalReminders
          : readingGoalReminders // ignore: cast_nullable_to_non_nullable
              as bool,
      bookRecommendations: null == bookRecommendations
          ? _value.bookRecommendations
          : bookRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      readingGroupUpdates: null == readingGroupUpdates
          ? _value.readingGroupUpdates
          : readingGroupUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewNotifications: null == reviewNotifications
          ? _value.reviewNotifications
          : reviewNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      achievementNotifications: null == achievementNotifications
          ? _value.achievementNotifications
          : achievementNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationFrequency: null == notificationFrequency
          ? _value.notificationFrequency
          : notificationFrequency // ignore: cast_nullable_to_non_nullable
              as NotificationFrequency,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPreferencesImpl implements _NotificationPreferences {
  const _$NotificationPreferencesImpl(
      {required this.emailNotifications,
      required this.pushNotifications,
      required this.friendRequestNotifications,
      required this.readingGoalReminders,
      required this.bookRecommendations,
      required this.readingGroupUpdates,
      required this.reviewNotifications,
      required this.achievementNotifications,
      required this.notificationFrequency});

  factory _$NotificationPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPreferencesImplFromJson(json);

  /// Whether to receive email notifications
  @override
  final bool emailNotifications;

  /// Whether to receive push notifications
  @override
  final bool pushNotifications;

  /// Whether to receive friend request notifications
  @override
  final bool friendRequestNotifications;

  /// Whether to receive reading goal reminders
  @override
  final bool readingGoalReminders;

  /// Whether to receive book recommendations
  @override
  final bool bookRecommendations;

  /// Whether to receive reading group updates
  @override
  final bool readingGroupUpdates;

  /// Whether to receive review notifications
  @override
  final bool reviewNotifications;

  /// Whether to receive achievement notifications
  @override
  final bool achievementNotifications;

  /// Notification frequency
  @override
  final NotificationFrequency notificationFrequency;

  @override
  String toString() {
    return 'NotificationPreferences(emailNotifications: $emailNotifications, pushNotifications: $pushNotifications, friendRequestNotifications: $friendRequestNotifications, readingGoalReminders: $readingGoalReminders, bookRecommendations: $bookRecommendations, readingGroupUpdates: $readingGroupUpdates, reviewNotifications: $reviewNotifications, achievementNotifications: $achievementNotifications, notificationFrequency: $notificationFrequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferencesImpl &&
            (identical(other.emailNotifications, emailNotifications) ||
                other.emailNotifications == emailNotifications) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.friendRequestNotifications,
                    friendRequestNotifications) ||
                other.friendRequestNotifications ==
                    friendRequestNotifications) &&
            (identical(other.readingGoalReminders, readingGoalReminders) ||
                other.readingGoalReminders == readingGoalReminders) &&
            (identical(other.bookRecommendations, bookRecommendations) ||
                other.bookRecommendations == bookRecommendations) &&
            (identical(other.readingGroupUpdates, readingGroupUpdates) ||
                other.readingGroupUpdates == readingGroupUpdates) &&
            (identical(other.reviewNotifications, reviewNotifications) ||
                other.reviewNotifications == reviewNotifications) &&
            (identical(
                    other.achievementNotifications, achievementNotifications) ||
                other.achievementNotifications == achievementNotifications) &&
            (identical(other.notificationFrequency, notificationFrequency) ||
                other.notificationFrequency == notificationFrequency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailNotifications,
      pushNotifications,
      friendRequestNotifications,
      readingGoalReminders,
      bookRecommendations,
      readingGroupUpdates,
      reviewNotifications,
      achievementNotifications,
      notificationFrequency);

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
          {required final bool emailNotifications,
          required final bool pushNotifications,
          required final bool friendRequestNotifications,
          required final bool readingGoalReminders,
          required final bool bookRecommendations,
          required final bool readingGroupUpdates,
          required final bool reviewNotifications,
          required final bool achievementNotifications,
          required final NotificationFrequency notificationFrequency}) =
      _$NotificationPreferencesImpl;

  factory _NotificationPreferences.fromJson(Map<String, dynamic> json) =
      _$NotificationPreferencesImpl.fromJson;

  /// Whether to receive email notifications
  @override
  bool get emailNotifications;

  /// Whether to receive push notifications
  @override
  bool get pushNotifications;

  /// Whether to receive friend request notifications
  @override
  bool get friendRequestNotifications;

  /// Whether to receive reading goal reminders
  @override
  bool get readingGoalReminders;

  /// Whether to receive book recommendations
  @override
  bool get bookRecommendations;

  /// Whether to receive reading group updates
  @override
  bool get readingGroupUpdates;

  /// Whether to receive review notifications
  @override
  bool get reviewNotifications;

  /// Whether to receive achievement notifications
  @override
  bool get achievementNotifications;

  /// Notification frequency
  @override
  NotificationFrequency get notificationFrequency;

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferencesImplCopyWith<_$NotificationPreferencesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReadingAchievement _$ReadingAchievementFromJson(Map<String, dynamic> json) {
  return _ReadingAchievement.fromJson(json);
}

/// @nodoc
mixin _$ReadingAchievement {
  /// Achievement ID
  String get id => throw _privateConstructorUsedError;

  /// Achievement name
  String get name => throw _privateConstructorUsedError;

  /// Achievement description
  String get description => throw _privateConstructorUsedError;

  /// Achievement icon
  String get icon => throw _privateConstructorUsedError;

  /// Date when achievement was earned
  DateTime get dateEarned => throw _privateConstructorUsedError;

  /// Achievement category
  AchievementCategory get category => throw _privateConstructorUsedError;

  /// Achievement rarity
  AchievementRarity get rarity => throw _privateConstructorUsedError;

  /// Achievement progress (0.0 to 1.0)
  double get progress => throw _privateConstructorUsedError;

  /// Serializes this ReadingAchievement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingAchievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingAchievementCopyWith<ReadingAchievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingAchievementCopyWith<$Res> {
  factory $ReadingAchievementCopyWith(
          ReadingAchievement value, $Res Function(ReadingAchievement) then) =
      _$ReadingAchievementCopyWithImpl<$Res, ReadingAchievement>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String icon,
      DateTime dateEarned,
      AchievementCategory category,
      AchievementRarity rarity,
      double progress});
}

/// @nodoc
class _$ReadingAchievementCopyWithImpl<$Res, $Val extends ReadingAchievement>
    implements $ReadingAchievementCopyWith<$Res> {
  _$ReadingAchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingAchievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? dateEarned = null,
    Object? category = null,
    Object? rarity = null,
    Object? progress = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      dateEarned: null == dateEarned
          ? _value.dateEarned
          : dateEarned // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AchievementCategory,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as AchievementRarity,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingAchievementImplCopyWith<$Res>
    implements $ReadingAchievementCopyWith<$Res> {
  factory _$$ReadingAchievementImplCopyWith(_$ReadingAchievementImpl value,
          $Res Function(_$ReadingAchievementImpl) then) =
      __$$ReadingAchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String icon,
      DateTime dateEarned,
      AchievementCategory category,
      AchievementRarity rarity,
      double progress});
}

/// @nodoc
class __$$ReadingAchievementImplCopyWithImpl<$Res>
    extends _$ReadingAchievementCopyWithImpl<$Res, _$ReadingAchievementImpl>
    implements _$$ReadingAchievementImplCopyWith<$Res> {
  __$$ReadingAchievementImplCopyWithImpl(_$ReadingAchievementImpl _value,
      $Res Function(_$ReadingAchievementImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingAchievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? dateEarned = null,
    Object? category = null,
    Object? rarity = null,
    Object? progress = null,
  }) {
    return _then(_$ReadingAchievementImpl(
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      dateEarned: null == dateEarned
          ? _value.dateEarned
          : dateEarned // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AchievementCategory,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as AchievementRarity,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingAchievementImpl implements _ReadingAchievement {
  const _$ReadingAchievementImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.icon,
      required this.dateEarned,
      required this.category,
      required this.rarity,
      required this.progress});

  factory _$ReadingAchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingAchievementImplFromJson(json);

  /// Achievement ID
  @override
  final String id;

  /// Achievement name
  @override
  final String name;

  /// Achievement description
  @override
  final String description;

  /// Achievement icon
  @override
  final String icon;

  /// Date when achievement was earned
  @override
  final DateTime dateEarned;

  /// Achievement category
  @override
  final AchievementCategory category;

  /// Achievement rarity
  @override
  final AchievementRarity rarity;

  /// Achievement progress (0.0 to 1.0)
  @override
  final double progress;

  @override
  String toString() {
    return 'ReadingAchievement(id: $id, name: $name, description: $description, icon: $icon, dateEarned: $dateEarned, category: $category, rarity: $rarity, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingAchievementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.dateEarned, dateEarned) ||
                other.dateEarned == dateEarned) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, icon,
      dateEarned, category, rarity, progress);

  /// Create a copy of ReadingAchievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingAchievementImplCopyWith<_$ReadingAchievementImpl> get copyWith =>
      __$$ReadingAchievementImplCopyWithImpl<_$ReadingAchievementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingAchievementImplToJson(
      this,
    );
  }
}

abstract class _ReadingAchievement implements ReadingAchievement {
  const factory _ReadingAchievement(
      {required final String id,
      required final String name,
      required final String description,
      required final String icon,
      required final DateTime dateEarned,
      required final AchievementCategory category,
      required final AchievementRarity rarity,
      required final double progress}) = _$ReadingAchievementImpl;

  factory _ReadingAchievement.fromJson(Map<String, dynamic> json) =
      _$ReadingAchievementImpl.fromJson;

  /// Achievement ID
  @override
  String get id;

  /// Achievement name
  @override
  String get name;

  /// Achievement description
  @override
  String get description;

  /// Achievement icon
  @override
  String get icon;

  /// Date when achievement was earned
  @override
  DateTime get dateEarned;

  /// Achievement category
  @override
  AchievementCategory get category;

  /// Achievement rarity
  @override
  AchievementRarity get rarity;

  /// Achievement progress (0.0 to 1.0)
  @override
  double get progress;

  /// Create a copy of ReadingAchievement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingAchievementImplCopyWith<_$ReadingAchievementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
