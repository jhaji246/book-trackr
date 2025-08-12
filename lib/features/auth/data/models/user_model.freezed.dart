// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastLoginAt => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  Map<String, dynamic>? get preferences => throw _privateConstructorUsedError;
  Map<String, dynamic>? get profile => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String displayName,
      String? photoURL,
      DateTime createdAt,
      DateTime lastLoginAt,
      bool emailVerified,
      List<String> roles,
      Map<String, dynamic>? preferences,
      Map<String, dynamic>? profile});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoURL = freezed,
    Object? createdAt = null,
    Object? lastLoginAt = null,
    Object? emailVerified = null,
    Object? roles = null,
    Object? preferences = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: freezed == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: null == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String displayName,
      String? photoURL,
      DateTime createdAt,
      DateTime lastLoginAt,
      bool emailVerified,
      List<String> roles,
      Map<String, dynamic>? preferences,
      Map<String, dynamic>? profile});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoURL = freezed,
    Object? createdAt = null,
    Object? lastLoginAt = null,
    Object? emailVerified = null,
    Object? roles = null,
    Object? preferences = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$UserModelImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: freezed == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: null == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferences: freezed == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      profile: freezed == profile
          ? _value._profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.uid,
      required this.email,
      required this.displayName,
      this.photoURL,
      required this.createdAt,
      required this.lastLoginAt,
      required this.emailVerified,
      required final List<String> roles,
      final Map<String, dynamic>? preferences,
      final Map<String, dynamic>? profile})
      : _roles = roles,
        _preferences = preferences,
        _profile = profile;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? photoURL;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastLoginAt;
  @override
  final bool emailVerified;
  final List<String> _roles;
  @override
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  final Map<String, dynamic>? _preferences;
  @override
  Map<String, dynamic>? get preferences {
    final value = _preferences;
    if (value == null) return null;
    if (_preferences is EqualUnmodifiableMapView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _profile;
  @override
  Map<String, dynamic>? get profile {
    final value = _profile;
    if (value == null) return null;
    if (_profile is EqualUnmodifiableMapView) return _profile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UserModel(uid: $uid, email: $email, displayName: $displayName, photoURL: $photoURL, createdAt: $createdAt, lastLoginAt: $lastLoginAt, emailVerified: $emailVerified, roles: $roles, preferences: $preferences, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences) &&
            const DeepCollectionEquality().equals(other._profile, _profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      email,
      displayName,
      photoURL,
      createdAt,
      lastLoginAt,
      emailVerified,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_preferences),
      const DeepCollectionEquality().hash(_profile));

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String uid,
      required final String email,
      required final String displayName,
      final String? photoURL,
      required final DateTime createdAt,
      required final DateTime lastLoginAt,
      required final bool emailVerified,
      required final List<String> roles,
      final Map<String, dynamic>? preferences,
      final Map<String, dynamic>? profile}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get photoURL;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastLoginAt;
  @override
  bool get emailVerified;
  @override
  List<String> get roles;
  @override
  Map<String, dynamic>? get preferences;
  @override
  Map<String, dynamic>? get profile;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthCredentialsModel _$AuthCredentialsModelFromJson(Map<String, dynamic> json) {
  return _AuthCredentialsModel.fromJson(json);
}

/// @nodoc
mixin _$AuthCredentialsModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  /// Serializes this AuthCredentialsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthCredentialsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthCredentialsModelCopyWith<AuthCredentialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCredentialsModelCopyWith<$Res> {
  factory $AuthCredentialsModelCopyWith(AuthCredentialsModel value,
          $Res Function(AuthCredentialsModel) then) =
      _$AuthCredentialsModelCopyWithImpl<$Res, AuthCredentialsModel>;
  @useResult
  $Res call({String email, String password, String? displayName});
}

/// @nodoc
class _$AuthCredentialsModelCopyWithImpl<$Res,
        $Val extends AuthCredentialsModel>
    implements $AuthCredentialsModelCopyWith<$Res> {
  _$AuthCredentialsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthCredentialsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthCredentialsModelImplCopyWith<$Res>
    implements $AuthCredentialsModelCopyWith<$Res> {
  factory _$$AuthCredentialsModelImplCopyWith(_$AuthCredentialsModelImpl value,
          $Res Function(_$AuthCredentialsModelImpl) then) =
      __$$AuthCredentialsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String? displayName});
}

/// @nodoc
class __$$AuthCredentialsModelImplCopyWithImpl<$Res>
    extends _$AuthCredentialsModelCopyWithImpl<$Res, _$AuthCredentialsModelImpl>
    implements _$$AuthCredentialsModelImplCopyWith<$Res> {
  __$$AuthCredentialsModelImplCopyWithImpl(_$AuthCredentialsModelImpl _value,
      $Res Function(_$AuthCredentialsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthCredentialsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = freezed,
  }) {
    return _then(_$AuthCredentialsModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthCredentialsModelImpl implements _AuthCredentialsModel {
  const _$AuthCredentialsModelImpl(
      {required this.email, required this.password, this.displayName});

  factory _$AuthCredentialsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthCredentialsModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? displayName;

  @override
  String toString() {
    return 'AuthCredentialsModel(email: $email, password: $password, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCredentialsModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, displayName);

  /// Create a copy of AuthCredentialsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthCredentialsModelImplCopyWith<_$AuthCredentialsModelImpl>
      get copyWith =>
          __$$AuthCredentialsModelImplCopyWithImpl<_$AuthCredentialsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthCredentialsModelImplToJson(
      this,
    );
  }
}

abstract class _AuthCredentialsModel implements AuthCredentialsModel {
  const factory _AuthCredentialsModel(
      {required final String email,
      required final String password,
      final String? displayName}) = _$AuthCredentialsModelImpl;

  factory _AuthCredentialsModel.fromJson(Map<String, dynamic> json) =
      _$AuthCredentialsModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get displayName;

  /// Create a copy of AuthCredentialsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthCredentialsModelImplCopyWith<_$AuthCredentialsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileUpdateModel _$ProfileUpdateModelFromJson(Map<String, dynamic> json) {
  return _ProfileUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateModel {
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  Map<String, dynamic>? get preferences => throw _privateConstructorUsedError;
  Map<String, dynamic>? get profile => throw _privateConstructorUsedError;

  /// Serializes this ProfileUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileUpdateModelCopyWith<ProfileUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateModelCopyWith<$Res> {
  factory $ProfileUpdateModelCopyWith(
          ProfileUpdateModel value, $Res Function(ProfileUpdateModel) then) =
      _$ProfileUpdateModelCopyWithImpl<$Res, ProfileUpdateModel>;
  @useResult
  $Res call(
      {String? displayName,
      String? photoURL,
      Map<String, dynamic>? preferences,
      Map<String, dynamic>? profile});
}

/// @nodoc
class _$ProfileUpdateModelCopyWithImpl<$Res, $Val extends ProfileUpdateModel>
    implements $ProfileUpdateModelCopyWith<$Res> {
  _$ProfileUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? preferences = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: freezed == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileUpdateModelImplCopyWith<$Res>
    implements $ProfileUpdateModelCopyWith<$Res> {
  factory _$$ProfileUpdateModelImplCopyWith(_$ProfileUpdateModelImpl value,
          $Res Function(_$ProfileUpdateModelImpl) then) =
      __$$ProfileUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? displayName,
      String? photoURL,
      Map<String, dynamic>? preferences,
      Map<String, dynamic>? profile});
}

/// @nodoc
class __$$ProfileUpdateModelImplCopyWithImpl<$Res>
    extends _$ProfileUpdateModelCopyWithImpl<$Res, _$ProfileUpdateModelImpl>
    implements _$$ProfileUpdateModelImplCopyWith<$Res> {
  __$$ProfileUpdateModelImplCopyWithImpl(_$ProfileUpdateModelImpl _value,
      $Res Function(_$ProfileUpdateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? preferences = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$ProfileUpdateModelImpl(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: freezed == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      preferences: freezed == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      profile: freezed == profile
          ? _value._profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileUpdateModelImpl implements _ProfileUpdateModel {
  const _$ProfileUpdateModelImpl(
      {this.displayName,
      this.photoURL,
      final Map<String, dynamic>? preferences,
      final Map<String, dynamic>? profile})
      : _preferences = preferences,
        _profile = profile;

  factory _$ProfileUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileUpdateModelImplFromJson(json);

  @override
  final String? displayName;
  @override
  final String? photoURL;
  final Map<String, dynamic>? _preferences;
  @override
  Map<String, dynamic>? get preferences {
    final value = _preferences;
    if (value == null) return null;
    if (_preferences is EqualUnmodifiableMapView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _profile;
  @override
  Map<String, dynamic>? get profile {
    final value = _profile;
    if (value == null) return null;
    if (_profile is EqualUnmodifiableMapView) return _profile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ProfileUpdateModel(displayName: $displayName, photoURL: $photoURL, preferences: $preferences, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdateModelImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences) &&
            const DeepCollectionEquality().equals(other._profile, _profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayName,
      photoURL,
      const DeepCollectionEquality().hash(_preferences),
      const DeepCollectionEquality().hash(_profile));

  /// Create a copy of ProfileUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdateModelImplCopyWith<_$ProfileUpdateModelImpl> get copyWith =>
      __$$ProfileUpdateModelImplCopyWithImpl<_$ProfileUpdateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileUpdateModel implements ProfileUpdateModel {
  const factory _ProfileUpdateModel(
      {final String? displayName,
      final String? photoURL,
      final Map<String, dynamic>? preferences,
      final Map<String, dynamic>? profile}) = _$ProfileUpdateModelImpl;

  factory _ProfileUpdateModel.fromJson(Map<String, dynamic> json) =
      _$ProfileUpdateModelImpl.fromJson;

  @override
  String? get displayName;
  @override
  String? get photoURL;
  @override
  Map<String, dynamic>? get preferences;
  @override
  Map<String, dynamic>? get profile;

  /// Create a copy of ProfileUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileUpdateModelImplCopyWith<_$ProfileUpdateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PasswordUpdateModel _$PasswordUpdateModelFromJson(Map<String, dynamic> json) {
  return _PasswordUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordUpdateModel {
  String get currentPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this PasswordUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordUpdateModelCopyWith<PasswordUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUpdateModelCopyWith<$Res> {
  factory $PasswordUpdateModelCopyWith(
          PasswordUpdateModel value, $Res Function(PasswordUpdateModel) then) =
      _$PasswordUpdateModelCopyWithImpl<$Res, PasswordUpdateModel>;
  @useResult
  $Res call({String currentPassword, String newPassword});
}

/// @nodoc
class _$PasswordUpdateModelCopyWithImpl<$Res, $Val extends PasswordUpdateModel>
    implements $PasswordUpdateModelCopyWith<$Res> {
  _$PasswordUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordUpdateModelImplCopyWith<$Res>
    implements $PasswordUpdateModelCopyWith<$Res> {
  factory _$$PasswordUpdateModelImplCopyWith(_$PasswordUpdateModelImpl value,
          $Res Function(_$PasswordUpdateModelImpl) then) =
      __$$PasswordUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentPassword, String newPassword});
}

/// @nodoc
class __$$PasswordUpdateModelImplCopyWithImpl<$Res>
    extends _$PasswordUpdateModelCopyWithImpl<$Res, _$PasswordUpdateModelImpl>
    implements _$$PasswordUpdateModelImplCopyWith<$Res> {
  __$$PasswordUpdateModelImplCopyWithImpl(_$PasswordUpdateModelImpl _value,
      $Res Function(_$PasswordUpdateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$PasswordUpdateModelImpl(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordUpdateModelImpl implements _PasswordUpdateModel {
  const _$PasswordUpdateModelImpl(
      {required this.currentPassword, required this.newPassword});

  factory _$PasswordUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordUpdateModelImplFromJson(json);

  @override
  final String currentPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'PasswordUpdateModel(currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordUpdateModelImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPassword, newPassword);

  /// Create a copy of PasswordUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordUpdateModelImplCopyWith<_$PasswordUpdateModelImpl> get copyWith =>
      __$$PasswordUpdateModelImplCopyWithImpl<_$PasswordUpdateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _PasswordUpdateModel implements PasswordUpdateModel {
  const factory _PasswordUpdateModel(
      {required final String currentPassword,
      required final String newPassword}) = _$PasswordUpdateModelImpl;

  factory _PasswordUpdateModel.fromJson(Map<String, dynamic> json) =
      _$PasswordUpdateModelImpl.fromJson;

  @override
  String get currentPassword;
  @override
  String get newPassword;

  /// Create a copy of PasswordUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordUpdateModelImplCopyWith<_$PasswordUpdateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmailUpdateModel _$EmailUpdateModelFromJson(Map<String, dynamic> json) {
  return _EmailUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$EmailUpdateModel {
  String get newEmail => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this EmailUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmailUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmailUpdateModelCopyWith<EmailUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailUpdateModelCopyWith<$Res> {
  factory $EmailUpdateModelCopyWith(
          EmailUpdateModel value, $Res Function(EmailUpdateModel) then) =
      _$EmailUpdateModelCopyWithImpl<$Res, EmailUpdateModel>;
  @useResult
  $Res call({String newEmail, String password});
}

/// @nodoc
class _$EmailUpdateModelCopyWithImpl<$Res, $Val extends EmailUpdateModel>
    implements $EmailUpdateModelCopyWith<$Res> {
  _$EmailUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newEmail = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      newEmail: null == newEmail
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailUpdateModelImplCopyWith<$Res>
    implements $EmailUpdateModelCopyWith<$Res> {
  factory _$$EmailUpdateModelImplCopyWith(_$EmailUpdateModelImpl value,
          $Res Function(_$EmailUpdateModelImpl) then) =
      __$$EmailUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String newEmail, String password});
}

/// @nodoc
class __$$EmailUpdateModelImplCopyWithImpl<$Res>
    extends _$EmailUpdateModelCopyWithImpl<$Res, _$EmailUpdateModelImpl>
    implements _$$EmailUpdateModelImplCopyWith<$Res> {
  __$$EmailUpdateModelImplCopyWithImpl(_$EmailUpdateModelImpl _value,
      $Res Function(_$EmailUpdateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newEmail = null,
    Object? password = null,
  }) {
    return _then(_$EmailUpdateModelImpl(
      newEmail: null == newEmail
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailUpdateModelImpl implements _EmailUpdateModel {
  const _$EmailUpdateModelImpl(
      {required this.newEmail, required this.password});

  factory _$EmailUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailUpdateModelImplFromJson(json);

  @override
  final String newEmail;
  @override
  final String password;

  @override
  String toString() {
    return 'EmailUpdateModel(newEmail: $newEmail, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailUpdateModelImpl &&
            (identical(other.newEmail, newEmail) ||
                other.newEmail == newEmail) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newEmail, password);

  /// Create a copy of EmailUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailUpdateModelImplCopyWith<_$EmailUpdateModelImpl> get copyWith =>
      __$$EmailUpdateModelImplCopyWithImpl<_$EmailUpdateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _EmailUpdateModel implements EmailUpdateModel {
  const factory _EmailUpdateModel(
      {required final String newEmail,
      required final String password}) = _$EmailUpdateModelImpl;

  factory _EmailUpdateModel.fromJson(Map<String, dynamic> json) =
      _$EmailUpdateModelImpl.fromJson;

  @override
  String get newEmail;
  @override
  String get password;

  /// Create a copy of EmailUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailUpdateModelImplCopyWith<_$EmailUpdateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
