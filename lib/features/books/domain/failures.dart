/// Common failure types for the books feature
/// These can be used by both domain and data layers

/// Base failure class for handling errors
abstract class Failure {
  const Failure();
}

/// Server failure for API-related errors
class ServerFailure extends Failure {
  final String message;
  final int? statusCode;
  
  const ServerFailure(this.message, {this.statusCode});
  
  @override
  String toString() => 'ServerFailure: $message${statusCode != null ? ' (Status: $statusCode)' : ''}';
}

/// Network failure for connectivity issues
class NetworkFailure extends Failure {
  final String message;
  
  const NetworkFailure(this.message);
  
  @override
  String toString() => 'NetworkFailure: $message';
}

/// Cache failure for local storage issues
class CacheFailure extends Failure {
  final String message;
  
  const CacheFailure(this.message);
  
  @override
  String toString() => 'CacheFailure: $message';
}

/// Invalid input failure for validation errors
class InvalidInputFailure extends Failure {
  final String message;
  
  const InvalidInputFailure(this.message);
  
  @override
  String toString() => 'InvalidInputFailure: $message';
}

/// Authentication failure for user-related errors
class AuthFailure extends Failure {
  final String message;
  
  const AuthFailure(this.message);
  
  @override
  String toString() => 'AuthFailure: $message';
}
