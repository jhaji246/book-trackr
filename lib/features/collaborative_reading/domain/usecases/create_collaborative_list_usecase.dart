import 'package:dartz/dartz.dart';
import '../entities/collaborative_list_entity.dart';
import '../failures.dart';
import '../repositories/collaborative_list_repository.dart';

/// Use case for creating a new collaborative reading list
class CreateCollaborativeListUseCase {
  final CollaborativeListRepository repository;

  const CreateCollaborativeListUseCase(this.repository);

  /// Execute the use case
  Future<Either<Failure, CollaborativeListEntity>> call(CollaborativeListEntity list) async {
    // Validate collaborative list data
    final validationResult = _validateCollaborativeList(list);
    if (validationResult.isLeft()) {
      return validationResult;
    }

    // Create the collaborative list
    return await repository.createCollaborativeList(list);
  }

  /// Validate collaborative list data
  Either<Failure, CollaborativeListEntity> _validateCollaborativeList(CollaborativeListEntity list) {
    // Check required fields
    if (list.name.trim().isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'List name is required',
        field: 'name',
      ));
    }

    if (list.description.trim().isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'List description is required',
        field: 'description',
      ));
    }

    if (list.creatorId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Creator ID is required',
        field: 'creatorId',
      ));
    }

    // Validate list name length
    if (list.name.length > 100) {
      return const Left(Failure.invalidInputFailure(
        message: 'List name cannot exceed 100 characters',
        field: 'name',
      ));
    }

    // Validate description length
    if (list.description.length > 500) {
      return const Left(Failure.invalidInputFailure(
        message: 'List description cannot exceed 500 characters',
        field: 'description',
      ));
    }

    // Validate tags
    if (list.tags.length > 10) {
      return const Left(Failure.invalidInputFailure(
        message: 'Cannot have more than 10 tags',
        field: 'tags',
      ));
    }

    for (final tag in list.tags) {
      if (tag.trim().isEmpty) {
        return const Left(Failure.invalidInputFailure(
          message: 'Tags cannot be empty',
          field: 'tags',
        ));
      }
      if (tag.length > 20) {
        return const Left(Failure.invalidInputFailure(
          message: 'Tag length cannot exceed 20 characters',
          field: 'tags',
        ));
      }
    }

    // Validate member limits based on visibility
    if (list.visibility == ListVisibility.inviteOnly && list.memberIds.length > 50) {
      return const Left(Failure.invalidInputFailure(
        message: 'Invite-only lists cannot have more than 50 members',
        field: 'memberIds',
      ));
    }

    // Validate settings
    if (list.settings.maxMembers != null && list.settings.maxMembers! < list.memberIds.length) {
      return const Left(Failure.invalidInputFailure(
        message: 'Initial member count cannot exceed maximum member limit',
        field: 'memberIds',
      ));
    }

    return Right(list);
  }
}
