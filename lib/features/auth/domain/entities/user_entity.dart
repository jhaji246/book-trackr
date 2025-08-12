import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

/// Core User entity representing a user in the business domain
/// This is the pure business object without any external dependencies
@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
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
  }) = _UserEntity;

  const UserEntity._();

  /// Creates a UserEntity from a User model
  factory UserEntity.fromUser(dynamic user) {
    return UserEntity(
      uid: user.uid,
      email: user.email,
      displayName: user.displayName,
      photoURL: user.photoURL,
      createdAt: user.createdAt,
      lastLoginAt: user.lastLoginAt,
      emailVerified: user.emailVerified,
      roles: user.roles,
      preferences: user.preferences,
      profile: user.profile,
    );
  }

  /// Checks if the user is an admin
  bool get isAdmin => roles.contains('admin');

  /// Checks if the user is a moderator
  bool get isModerator => roles.contains('moderator');

  /// Checks if the user has a specific role
  bool hasRole(String role) => roles.contains(role);

  /// Gets the user's display name or email as fallback
  String get displayNameOrEmail => displayName.isNotEmpty ? displayName : email;

  /// Checks if the user profile is complete
  bool get isProfileComplete => profile != null && profile!.isNotEmpty;
}
