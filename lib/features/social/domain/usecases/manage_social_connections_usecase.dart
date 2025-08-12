import 'package:dartz/dartz.dart';
import '../entities/social_reading_entity.dart';
import '../failures.dart';
import '../repositories/social_reading_repository.dart';

/// Use case for managing social connections and friend requests
class ManageSocialConnectionsUseCase {
  final SocialReadingRepository repository;

  const ManageSocialConnectionsUseCase(this.repository);

  /// Send a connection request to another user
  Future<Either<Failure, SocialConnectionEntity>> sendConnectionRequest(
    String fromUserId,
    String toUserId,
    String? message,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateConnectionRequest(fromUserId, toUserId, message);
      if (validationResult.isLeft()) {
        return validationResult.fold(
          (failure) => Left(failure),
          (_) => throw Exception('Unexpected success result from validation'),
        );
      }

      // Send connection request using the repository
      return await repository.sendConnectionRequest(fromUserId, toUserId, message);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to send connection request: $e',
      ));
    }
  }

  /// Accept a connection request
  Future<Either<Failure, SocialConnectionEntity>> acceptConnectionRequest(
    String connectionId,
  ) async {
    try {
      // Validate connection ID
      if (connectionId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'Connection ID cannot be empty',
          field: 'connectionId',
        ));
      }

      // Accept connection request using the repository
      return await repository.acceptConnectionRequest(connectionId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to accept connection request: $e',
      ));
    }
  }

  /// Reject a connection request
  Future<Either<Failure, void>> rejectConnectionRequest(String connectionId) async {
    try {
      // Validate connection ID
      if (connectionId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'Connection ID cannot be empty',
          field: 'connectionId',
        ));
      }

      // Reject connection request using the repository
      return await repository.rejectConnectionRequest(connectionId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to reject connection request: $e',
      ));
    }
  }

  /// Block a user
  Future<Either<Failure, void>> blockUser(String userId, String blockedUserId) async {
    try {
      // Validate input parameters
      final validationResult = _validateBlockUser(userId, blockedUserId);
      if (validationResult.isLeft()) {
        return validationResult;
      }

      // Block user using the repository
      return await repository.blockUser(userId, blockedUserId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to block user: $e',
      ));
    }
  }

  /// Remove a connection
  Future<Either<Failure, void>> removeConnection(String connectionId) async {
    try {
      // Validate connection ID
      if (connectionId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'Connection ID cannot be empty',
          field: 'connectionId',
        ));
      }

      // Remove connection using the repository
      return await repository.removeConnection(connectionId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to remove connection: $e',
      ));
    }
  }

  /// Get user connections
  Future<Either<Failure, List<SocialConnectionEntity>>> getUserConnections(
    String userId,
  ) async {
    try {
      // Validate user ID
      if (userId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'User ID cannot be empty',
          field: 'userId',
        ));
      }

      // Get user connections using the repository
      return await repository.getUserConnections(userId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to get user connections: $e',
      ));
    }
  }

  /// Get mutual connections between two users
  Future<Either<Failure, List<SocialConnectionEntity>>> getMutualConnections(
    String userId1,
    String userId2,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateGetMutualConnections(userId1, userId2);
      if (validationResult.isLeft()) {
        return validationResult.fold(
          (failure) => Left(failure),
          (_) => throw Exception('Unexpected success result from validation'),
        );
      }

      // Get mutual connections using the repository
      return await repository.getMutualConnections(userId1, userId2);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to get mutual connections: $e',
      ));
    }
  }

  /// Search for users by name, email, or username
  Future<Either<Failure, List<SocialProfileEntity>>> searchUsers(
    String query,
    String currentUserId,
    {int limit = 20}
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateSearchUsers(query, currentUserId, limit);
      if (validationResult.isLeft()) {
        return validationResult.fold(
          (failure) => Left(failure),
          (_) => throw Exception('Unexpected success result from validation'),
        );
      }

      // Search users using the repository
      return await repository.searchUsers(query, currentUserId, limit: limit);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to search users: $e',
      ));
    }
  }

  /// Get friend recommendations
  Future<Either<Failure, List<SocialProfileEntity>>> getFriendRecommendations(
    String userId,
  ) async {
    try {
      // Validate user ID
      if (userId.isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'User ID cannot be empty',
          field: 'userId',
        ));
      }

      // Get friend recommendations using the repository
      return await repository.getFriendRecommendations(userId);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to get friend recommendations: $e',
      ));
    }
  }

  /// Get reading compatibility score between two users
  Future<Either<Failure, double>> getReadingCompatibilityScore(
    String userId1,
    String userId2,
  ) async {
    try {
      // Validate input parameters
      final validationResult = _validateGetReadingCompatibilityScore(userId1, userId2);
      if (validationResult.isLeft()) {
        return validationResult.fold(
          (failure) => Left(failure),
          (_) => throw Exception('Unexpected success result from validation'),
        );
      }

      // Get reading compatibility score using the repository
      return await repository.getReadingCompatibilityScore(userId1, userId2);
    } catch (e) {
      return Left(Failure.serverFailure(
        message: 'Failed to get reading compatibility score: $e',
      ));
    }
  }

  /// Validate connection request parameters
  Either<Failure, void> _validateConnectionRequest(
    String fromUserId,
    String toUserId,
    String? message,
  ) {
    // Check if user IDs are not empty
    if (fromUserId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'From user ID cannot be empty',
        field: 'fromUserId',
      ));
    }

    if (toUserId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'To user ID cannot be empty',
        field: 'toUserId',
      ));
    }

    // Check if user is not trying to connect with themselves
    if (fromUserId == toUserId) {
      return const Left(Failure.selfConnectionFailure(
        message: 'Cannot send connection request to yourself',
      ));
    }

    // Validate message length if provided
    if (message != null && message.length > 500) {
      return const Left(Failure.invalidInputFailure(
        message: 'Message cannot exceed 500 characters',
        field: 'message',
      ));
    }

    return const Right(null);
  }

  /// Validate block user parameters
  Either<Failure, void> _validateBlockUser(String userId, String blockedUserId) {
    // Check if user IDs are not empty
    if (userId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID cannot be empty',
        field: 'userId',
      ));
    }

    if (blockedUserId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Blocked user ID cannot be empty',
        field: 'blockedUserId',
      ));
    }

    // Check if user is not trying to block themselves
    if (userId == blockedUserId) {
      return const Left(Failure.selfConnectionFailure(
        message: 'Cannot block yourself',
      ));
    }

    return const Right(null);
  }

  /// Validate mutual connections parameters
  Either<Failure, void> _validateMutualConnections(String userId1, String userId2) {
    // Check if user IDs are not empty
    if (userId1.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID 1 cannot be empty',
        field: 'userId1',
      ));
    }

    if (userId2.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID 2 cannot be empty',
        field: 'userId2',
      ));
    }

    // Check if user IDs are different
    if (userId1 == userId2) {
      return const Left(Failure.invalidInputFailure(
        message: 'User IDs must be different',
        field: 'userIds',
      ));
    }

    return const Right(null);
  }

  /// Validate search parameters
  Either<Failure, void> _validateSearchParameters(
    String? searchQuery,
    List<String>? interests,
    List<String>? favoriteGenres,
  ) {
    // Validate search query length if provided
    if (searchQuery != null && searchQuery.length > 100) {
      return const Left(Failure.invalidInputFailure(
        message: 'Search query cannot exceed 100 characters',
        field: 'searchQuery',
      ));
    }

    // Validate interests list if provided
    if (interests != null) {
      if (interests.length > 20) {
        return const Left(Failure.invalidInputFailure(
          message: 'Cannot search by more than 20 interests',
          field: 'interests',
        ));
      }

      for (final interest in interests) {
        if (interest.trim().isEmpty) {
          return const Left(Failure.invalidInputFailure(
            message: 'Interests cannot be empty',
            field: 'interests',
          ));
        }
        if (interest.length > 50) {
          return const Left(Failure.invalidInputFailure(
            message: 'Interest length cannot exceed 50 characters',
            field: 'interests',
          ));
        }
      }
    }

    // Validate favorite genres list if provided
    if (favoriteGenres != null) {
      if (favoriteGenres.length > 15) {
        return const Left(Failure.invalidInputFailure(
          message: 'Cannot search by more than 15 favorite genres',
          field: 'favoriteGenres',
        ));
      }

      for (final genre in favoriteGenres) {
        if (genre.trim().isEmpty) {
          return const Left(Failure.invalidInputFailure(
            message: 'Favorite genres cannot be empty',
            field: 'favoriteGenres',
          ));
        }
        if (genre.length > 30) {
          return const Left(Failure.invalidInputFailure(
            message: 'Genre length cannot exceed 30 characters',
            field: 'favoriteGenres',
          ));
        }
      }
    }

    return const Right(null);
  }

  /// Validate compatibility request parameters
  Either<Failure, void> _validateCompatibilityRequest(String userId1, String userId2) {
    // Check if user IDs are not empty
    if (userId1.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID 1 cannot be empty',
        field: 'userId1',
      ));
    }

    if (userId2.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID 2 cannot be empty',
        field: 'userId2',
      ));
    }

    // Check if user IDs are different
    if (userId1 == userId2) {
      return const Left(Failure.invalidInputFailure(
        message: 'User IDs must be different',
        field: 'userIds',
      ));
    }

    return const Right(null);
  }

  /// Validate compatibility request parameters
  Either<Failure, void> _validateGetReadingCompatibilityScore(String userId1, String userId2) {
    // Check if user IDs are not empty
    if (userId1.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID 1 cannot be empty',
        field: 'userId1',
      ));
    }

    if (userId2.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'User ID 2 cannot be empty',
        field: 'userId2',
      ));
    }

    // Check if user IDs are different
    if (userId1 == userId2) {
      return const Left(Failure.invalidInputFailure(
        message: 'User IDs must be different',
        field: 'userIds',
      ));
    }

    return const Right(null);
  }
}
