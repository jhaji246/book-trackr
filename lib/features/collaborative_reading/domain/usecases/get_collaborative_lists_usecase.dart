import 'package:dartz/dartz.dart';
import '../entities/collaborative_list_entity.dart';
import '../failures.dart';
import '../repositories/collaborative_list_repository.dart';

/// Use case for getting collaborative reading lists with various filters
class GetCollaborativeListsUseCase {
  final CollaborativeListRepository repository;

  const GetCollaborativeListsUseCase(this.repository);

  /// Execute the use case with filters
  Future<Either<Failure, List<CollaborativeListEntity>>> call({
    String? userId,
    String? searchQuery,
    CollaborativeListType? type,
    ListVisibility? visibility,
    List<String>? tags,
    String? creatorId,
    bool? isMember,
    bool publicOnly = false,
    bool trendingOnly = false,
  }) async {
    try {
      // Validate input parameters
      final validationResult = _validateParameters(
        userId: userId,
        tags: tags,
        publicOnly: publicOnly,
        trendingOnly: trendingOnly,
      );
      
      if (validationResult.isLeft()) {
        return validationResult;
      }

      // Get lists based on filters
      if (trendingOnly) {
        return await repository.getTrendingCollaborativeLists();
      }

      if (publicOnly) {
        return await repository.getPublicCollaborativeLists();
      }

      if (type != null) {
        return await repository.getCollaborativeListsByType(type);
      }

      if (tags != null && tags.isNotEmpty) {
        return await repository.getCollaborativeListsByTags(tags);
      }

      if (userId != null) {
        return await repository.getCollaborativeListsForUser(userId);
      }

      // Use search with filters
      return await repository.searchCollaborativeLists(
        searchQuery: searchQuery,
        type: type,
        visibility: visibility,
        tags: tags,
        creatorId: creatorId,
        isMember: isMember,
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get collaborative lists: $e'));
    }
  }

  /// Validate input parameters
  Either<Failure, void> _validateParameters({
    String? userId,
    List<String>? tags,
    bool? publicOnly,
    bool? trendingOnly,
  }) {
    // Validate tags
    if (tags != null) {
      if (tags.length > 10) {
        return const Left(Failure.invalidInputFailure(
          message: 'Cannot search by more than 10 tags',
          field: 'tags',
        ));
      }
      
      for (final tag in tags) {
        if (tag.trim().isEmpty) {
          return const Left(Failure.invalidInputFailure(
            message: 'Tags cannot be empty',
            field: 'tags',
          ));
        }
      }
    }

    // Validate that at least one identifier is provided
    if (userId == null && !publicOnly && !trendingOnly) {
      return const Left(Failure.invalidInputFailure(
        message: 'Either userId, publicOnly, or trendingOnly must be provided',
        field: 'identifiers',
      ));
    }

    return const Right(null);
  }

  /// Get collaborative lists for a specific user
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsForUser(String userId) async {
    try {
      return await repository.getCollaborativeListsForUser(userId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get collaborative lists for user: $e'));
    }
  }

  /// Get public collaborative lists
  Future<Either<Failure, List<CollaborativeListEntity>>> getPublicCollaborativeLists() async {
    try {
      return await repository.getPublicCollaborativeLists();
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get public collaborative lists: $e'));
    }
  }

  /// Get trending collaborative lists
  Future<Either<Failure, List<CollaborativeListEntity>>> getTrendingCollaborativeLists() async {
    try {
      return await repository.getTrendingCollaborativeLists();
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get trending collaborative lists: $e'));
    }
  }

  /// Get collaborative lists by type
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsByType(CollaborativeListType type) async {
    try {
      return await repository.getCollaborativeListsByType(type);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get collaborative lists by type: $e'));
    }
  }

  /// Get collaborative lists by tags
  Future<Either<Failure, List<CollaborativeListEntity>>> getCollaborativeListsByTags(List<String> tags) async {
    try {
      return await repository.getCollaborativeListsByTags(tags);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get collaborative lists by tags: $e'));
    }
  }

  /// Search collaborative lists with advanced filters
  Future<Either<Failure, List<CollaborativeListEntity>>> searchCollaborativeLists({
    String? searchQuery,
    CollaborativeListType? type,
    ListVisibility? visibility,
    List<String>? tags,
    String? creatorId,
    bool? isMember,
  }) async {
    try {
      return await repository.searchCollaborativeLists(
        searchQuery: searchQuery,
        type: type,
        visibility: visibility,
        tags: tags,
        creatorId: creatorId,
        isMember: isMember,
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to search collaborative lists: $e'));
    }
  }
}
