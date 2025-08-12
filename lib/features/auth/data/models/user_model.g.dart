// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      photoURL: json['photoURL'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastLoginAt: DateTime.parse(json['lastLoginAt'] as String),
      emailVerified: json['emailVerified'] as bool,
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
      preferences: json['preferences'] as Map<String, dynamic>?,
      profile: json['profile'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt.toIso8601String(),
      'emailVerified': instance.emailVerified,
      'roles': instance.roles,
      'preferences': instance.preferences,
      'profile': instance.profile,
    };

_$AuthCredentialsModelImpl _$$AuthCredentialsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthCredentialsModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      displayName: json['displayName'] as String?,
    );

Map<String, dynamic> _$$AuthCredentialsModelImplToJson(
        _$AuthCredentialsModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'displayName': instance.displayName,
    };

_$ProfileUpdateModelImpl _$$ProfileUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUpdateModelImpl(
      displayName: json['displayName'] as String?,
      photoURL: json['photoURL'] as String?,
      preferences: json['preferences'] as Map<String, dynamic>?,
      profile: json['profile'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ProfileUpdateModelImplToJson(
        _$ProfileUpdateModelImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'preferences': instance.preferences,
      'profile': instance.profile,
    };

_$PasswordUpdateModelImpl _$$PasswordUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordUpdateModelImpl(
      currentPassword: json['currentPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$$PasswordUpdateModelImplToJson(
        _$PasswordUpdateModelImpl instance) =>
    <String, dynamic>{
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
    };

_$EmailUpdateModelImpl _$$EmailUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailUpdateModelImpl(
      newEmail: json['newEmail'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$EmailUpdateModelImplToJson(
        _$EmailUpdateModelImpl instance) =>
    <String, dynamic>{
      'newEmail': instance.newEmail,
      'password': instance.password,
    };
