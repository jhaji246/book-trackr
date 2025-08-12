import 'package:dartz/dartz.dart';
import '../entities/meeting_entity.dart';
import '../failures.dart';
import '../repositories/meeting_repository.dart';

/// Use case for creating a new meeting
class CreateMeetingUseCase {
  final MeetingRepository repository;

  const CreateMeetingUseCase(this.repository);

  /// Execute the use case
  Future<Either<Failure, MeetingEntity>> call(MeetingEntity meeting) async {
    // Validate meeting data
    final validationResult = _validateMeeting(meeting);
    if (validationResult.isLeft()) {
      return validationResult;
    }

    // Check for scheduling conflicts
    final conflictResult = await _checkForConflicts(meeting);
    if (conflictResult.isLeft()) {
      return conflictResult;
    }

    // Create the meeting
    return await repository.createMeeting(meeting);
  }

  /// Validate meeting data
  Either<Failure, MeetingEntity> _validateMeeting(MeetingEntity meeting) {
    // Check required fields
    if (meeting.title.trim().isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Meeting title is required',
        field: 'title',
      ));
    }

    if (meeting.description.trim().isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Meeting description is required',
        field: 'description',
      ));
    }

    if (meeting.meetingDateTime.isBefore(DateTime.now())) {
      return const Left(Failure.invalidInputFailure(
        message: 'Meeting date must be in the future',
        field: 'meetingDateTime',
      ));
    }

    if (meeting.durationMinutes <= 0) {
      return const Left(Failure.invalidInputFailure(
        message: 'Meeting duration must be positive',
        field: 'durationMinutes',
      ));
    }

    if (meeting.hostId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Meeting host is required',
        field: 'hostId',
      ));
    }

    if (meeting.groupId.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Group ID is required',
        field: 'groupId',
      ));
    }

    // Validate agenda items
    if (meeting.agenda.isEmpty) {
      return const Left(Failure.invalidInputFailure(
        message: 'Meeting agenda cannot be empty',
        field: 'agenda',
      ));
    }

    // Validate agenda item durations
    final totalAgendaDuration = meeting.agenda
        .map((item) => item.durationMinutes)
        .reduce((a, b) => a + b);
    
    if (totalAgendaDuration > meeting.durationMinutes) {
      return const Left(Failure.invalidInputFailure(
        message: 'Agenda duration cannot exceed meeting duration',
        field: 'agenda',
      ));
    }

    return Right(meeting);
  }

  /// Check for scheduling conflicts
  Future<Either<Failure, void>> _checkForConflicts(MeetingEntity meeting) async {
    try {
      // Get existing meetings for the group in the same time range
      final existingMeetings = await repository.getMeetingsForGroup(meeting.groupId);
      
      return existingMeetings.fold(
        (failure) => Left(failure),
        (meetings) {
          final meetingStart = meeting.meetingDateTime;
          final meetingEnd = meetingStart.add(Duration(minutes: meeting.durationMinutes));
          
          for (final existingMeeting in meetings) {
            if (existingMeeting.status == MeetingStatus.cancelled ||
                existingMeeting.status == MeetingStatus.postponed) {
              continue;
            }
            
            final existingStart = existingMeeting.meetingDateTime;
            final existingEnd = existingStart.add(Duration(minutes: existingMeeting.durationMinutes));
            
            // Check for overlap
            if (meetingStart.isBefore(existingEnd) && meetingEnd.isAfter(existingStart)) {
              return Left(Failure.meetingConflictFailure(
                message: 'Meeting conflicts with existing meeting: ${existingMeeting.title}',
                conflictingTime: existingStart,
              ));
            }
          }
          
          return const Right(null);
        },
      );
    } catch (e) {
      return Left(Failure.serverFailure(message: 'Failed to check for conflicts: $e'));
    }
  }
}
