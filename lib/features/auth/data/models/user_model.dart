import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// Data model for users, used for JSON serialization
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String uid,
    required String email,
    required String displayName,
    String? photoURL,
    required DateTime createdAt,
    required DateTime lastLoginAt,
    required bool emailVerified,
    required List<String> roles,
    Map<String, dynamic>? preferences,
    Map<String, dynamic>? profile,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  
  /// Convert from domain entity
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      uid: entity.uid,
      email: entity.email,
      displayName: entity.displayName,
      photoURL: entity.photoURL,
      createdAt: entity.createdAt,
      lastLoginAt: entity.lastLoginAt,
      emailVerified: entity.emailVerified,
      roles: entity.roles,
      preferences: entity.preferences,
      profile: entity.profile,
    );
  }
}

/// Extension to add conversion methods to UserModel
extension UserModelExtension on UserModel {
  /// Convert to domain entity
  UserEntity toEntity() {
    return UserEntity(
      uid: uid,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
      createdAt: createdAt,
      lastLoginAt: lastLoginAt,
      emailVerified: emailVerified,
      roles: roles,
      preferences: preferences,
      profile: profile,
    );
  }
}

/// Data model for authentication credentials
@freezed
class AuthCredentialsModel with _$AuthCredentialsModel {
  const factory AuthCredentialsModel({
    required String email,
    required String password,
    String? displayName,
  }) = _AuthCredentialsModel;

  factory AuthCredentialsModel.fromJson(Map<String, dynamic> json) => _$AuthCredentialsModelFromJson(json);
}

/// Data model for profile updates
@freezed
class ProfileUpdateModel with _$ProfileUpdateModel {
  const factory ProfileUpdateModel({
    String? displayName,
    String? photoURL,
    Map<String, dynamic>? preferences,
    Map<String, dynamic>? profile,
  }) = _ProfileUpdateModel;

  factory ProfileUpdateModel.fromJson(Map<String, dynamic> json) => _$ProfileUpdateModelFromJson(json);
}

/// Data model for password update
@freezed
class PasswordUpdateModel with _$PasswordUpdateModel {
  const factory PasswordUpdateModel({
    required String currentPassword,
    required String newPassword,
  }) = _PasswordUpdateModel;

  factory PasswordUpdateModel.fromJson(Map<String, dynamic> json) => _$PasswordUpdateModelFromJson(json);
}

/// Data model for email update
@freezed
class EmailUpdateModel with _$EmailUpdateModel {
  const factory EmailUpdateModel({
    required String newEmail,
    required String password,
  }) = _EmailUpdateModel;

  factory EmailUpdateModel.fromJson(Map<String, dynamic> json) => _$EmailUpdateModelFromJson(json);
}
