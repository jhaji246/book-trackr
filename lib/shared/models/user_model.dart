class UserModel {
  final String id;
  final String email;
  final String displayName;
  final String? photoURL;
  final bool isEmailVerified;

  const UserModel({
    required this.id,
    required this.email,
    required this.displayName,
    this.photoURL,
    required this.isEmailVerified,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      photoURL: json['photoURL'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'displayName': displayName,
      'photoURL': photoURL,
      'isEmailVerified': isEmailVerified,
    };
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? displayName,
    String? photoURL,
    bool? isEmailVerified,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      photoURL: photoURL ?? this.photoURL,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UserModel &&
        other.id == id &&
        other.email == email &&
        other.displayName == displayName &&
        other.photoURL == photoURL &&
        other.isEmailVerified == isEmailVerified;
  }

  @override
  int get hashCode {
    return Object.hash(id, email, displayName, photoURL, isEmailVerified);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, displayName: $displayName, photoURL: $photoURL, isEmailVerified: $isEmailVerified)';
  }
} 