import 'package:dartz/dartz.dart';
import '../entities/meeting_entity.dart';
import '../failures.dart';
import '../repositories/meeting_repository.dart';

/// Use case for getting meetings with various filters
class GetMeetingsUseCase {
  final MeetingRepository repository;

  const GetMeetingsUseCase(this.repository);

  /// Execute the use case with filters
  Future<Either<Failure, List<MeetingEntity>>> call({
    String? groupId,
    String? userId,
    MeetingType? type,
    MeetingStatus? status,
    DateTime? fromDate,
    DateTime? toDate,
    String? searchQuery,
    bool upcomingOnly = false,
    bool pastOnly = false,
    bool happeningNow = false,
  }) async {
    try {
      // Validate input parameters
      final validationResult = _validateParameters(
        groupId: groupId,
        userId: userId,
        fromDate: fromDate,
        toDate: toDate,
      );
      
      if (validationResult.isLeft()) {
        return validationResult;
      }

      // Get meetings based on filters
      if (happeningNow) {
        return await repository.getMeetingsHappeningNow();
      }

      if (upcomingOnly && groupId != null) {
        return await repository.getUpcomingMeetings(groupId);
      }

      if (pastOnly && groupId != null) {
        return await repository.getPastMeetings(groupId);
      }

      if (groupId != null) {
        return await repository.getMeetingsForGroup(groupId);
      }

      if (userId != null) {
        return await repository.getMeetingsForUser(userId);
      }

      // Use search with filters
      return await repository.searchMeetings(
        groupId: groupId,
        type: type,
        status: status,
        fromDate: fromDate,
        toDate: toDate,
        searchQuery: searchQuery,
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meetings: $e'));
    }
  }

  /// Validate input parameters
  Either<Failure, void> _validateParameters({
    String? groupId,
    String? userId,
    DateTime? fromDate,
    DateTime? toDate,
  }) {
    // Validate date range
    if (fromDate != null && toDate != null) {
      if (fromDate.isAfter(toDate)) {
        return const Left(Failure.invalidInputFailure(
          message: 'From date cannot be after to date',
          field: 'dateRange',
        ));
      }
    }

    // Validate that at least one identifier is provided
    if (groupId == null && userId == null) {
      return const Left(Failure.invalidInputFailure(
        message: 'Either groupId or userId must be provided',
        field: 'identifiers',
      ));
    }

    return const Right(null);
  }

  /// Get meetings for a specific group
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsForGroup(String groupId) async {
    try {
      return await repository.getMeetingsForGroup(groupId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meetings for group: $e'));
    }
  }

  /// Get meetings for a specific user
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsForUser(String userId) async {
    try {
      return await repository.getMeetingsForUser(userId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meetings for user: $e'));
    }
  }

  /// Get upcoming meetings for a group
  Future<Either<Failure, List<MeetingEntity>>> getUpcomingMeetings(String groupId) async {
    try {
      return await repository.getUpcomingMeetings(groupId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get upcoming meetings: $e'));
    }
  }

  /// Get past meetings for a group
  Future<Either<Failure, List<MeetingEntity>>> getPastMeetings(String groupId) async {
    try {
      return await repository.getPastMeetings(groupId);
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get past meetings: $e'));
    }
  }

  /// Get meetings happening now
  Future<Either<Failure, List<MeetingEntity>>> getMeetingsHappeningNow() async {
    try {
      return await repository.getMeetingsHappeningNow();
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to get meetings happening now: $e'));
    }
  }

  /// Search meetings with advanced filters
  Future<Either<Failure, List<MeetingEntity>>> searchMeetings({
    String? groupId,
    String? hostId,
    MeetingType? type,
    MeetingStatus? status,
    DateTime? fromDate,
    DateTime? toDate,
    String? searchQuery,
  }) async {
    try {
      return await repository.searchMeetings(
        groupId: groupId,
        hostId: hostId,
        type: type,
        status: status,
        fromDate: fromDate,
        toDate: toDate,
        searchQuery: searchQuery,
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to search meetings: $e'));
    }
  }
}
