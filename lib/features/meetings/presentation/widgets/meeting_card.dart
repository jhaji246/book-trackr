import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../domain/entities/meeting_entity.dart';
import '../../domain/entities/meeting_helpers.dart';

/// Widget to display meeting information in a card format
class MeetingCard extends StatelessWidget {
  final MeetingEntity meeting;

  const MeetingCard({
    super.key,
    required this.meeting,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: () => _showMeetingDetails(context),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 12),
              _buildDescription(),
              const SizedBox(height: 12),
              _buildDetails(context),
              const SizedBox(height: 12),
              _buildActions(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        _buildMeetingTypeIcon(),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                meeting.title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              _buildStatusChip(),
            ],
          ),
        ),
        _buildTimeInfo(context),
      ],
    );
  }

  Widget _buildMeetingTypeIcon() {
    IconData iconData;
    Color iconColor;
    
    switch (meeting.type) {
      case MeetingType.bookDiscussion:
        iconData = Icons.book;
        iconColor = Colors.blue;
        break;
      case MeetingType.readingCheckIn:
        iconData = Icons.check_circle;
        iconColor = Colors.green;
        break;
      case MeetingType.authorInterview:
        iconData = Icons.person;
        iconColor = Colors.purple;
        break;
      case MeetingType.writingWorkshop:
        iconData = Icons.edit;
        iconColor = Colors.orange;
        break;
      case MeetingType.social:
        iconData = Icons.people;
        iconColor = Colors.pink;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: iconColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: 24,
      ),
    );
  }

  Widget _buildStatusChip() {
    Color chipColor;
    String statusText;
    
    switch (meeting.status) {
      case MeetingStatus.scheduled:
        chipColor = Colors.blue;
        statusText = MeetingHelpers.getStatusText(meeting.status);
        break;
      case MeetingStatus.inProgress:
        chipColor = Colors.green;
        statusText = MeetingHelpers.getStatusText(meeting.status);
        break;
      case MeetingStatus.completed:
        chipColor = Colors.grey;
        statusText = MeetingHelpers.getStatusText(meeting.status);
        break;
      case MeetingStatus.cancelled:
        chipColor = Colors.red;
        statusText = MeetingHelpers.getStatusText(meeting.status);
        break;
      case MeetingStatus.postponed:
        chipColor = Colors.orange;
        statusText = MeetingHelpers.getStatusText(meeting.status);
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: chipColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: chipColor.withOpacity(0.3)),
      ),
      child: Text(
        statusText,
        style: TextStyle(
          color: chipColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildTimeInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          _formatTime(meeting.meetingDateTime),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Text(
          _formatDate(meeting.meetingDateTime),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.grey[600],
          ),
        ),
        if (MeetingHelpers.isUpcoming(meeting)) ...[
          const SizedBox(height: 4),
          Text(
            MeetingHelpers.getTimeUntilStartText(meeting),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.green[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      meeting.description,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black87,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildDetails(BuildContext context) {
    return Row(
      children: [
        _buildDetailItem(
          Icons.access_time,
          '${meeting.durationMinutes} min',
          context,
        ),
        const SizedBox(width: 16),
        _buildDetailItem(
          Icons.video_call,
          MeetingHelpers.getPlatformText(meeting.platform),
          context,
        ),
        const SizedBox(width: 16),
        _buildDetailItem(
          Icons.people,
          '${meeting.participants.length} participants',
          context,
        ),
      ],
    );
  }

  Widget _buildDetailItem(IconData icon, String text, BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: Colors.grey[600],
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      children: [
        if (meeting.meetingLink != null && MeetingHelpers.isUpcoming(meeting))
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () => _joinMeeting(),
              icon: const Icon(Icons.video_call, size: 18),
              label: const Text('Join Meeting'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
            ),
          ),
        if (meeting.meetingLink != null && MeetingHelpers.isUpcoming(meeting))
          const SizedBox(width: 8),
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => _showMeetingDetails(context),
            icon: const Icon(Icons.info_outline, size: 18),
            label: const Text('Details'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
      ],
    );
  }

  String _formatTime(DateTime dateTime) {
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  String _formatDate(DateTime dateTime) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final meetingDate = DateTime(dateTime.year, dateTime.month, dateTime.day);
    
    if (meetingDate == today) {
      return 'Today';
    } else if (meetingDate == today.add(const Duration(days: 1))) {
      return 'Tomorrow';
    } else {
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    }
  }

  Future<void> _joinMeeting() async {
    if (meeting.meetingLink != null) {
      final uri = Uri.parse(meeting.meetingLink!);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    }
  }

  void _showMeetingDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _MeetingDetailsSheet(meeting: meeting),
    );
  }
}

/// Bottom sheet to show detailed meeting information
class _MeetingDetailsSheet extends StatelessWidget {
  final MeetingEntity meeting;

  const _MeetingDetailsSheet({required this.meeting});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          _buildHandle(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle(context),
                  const SizedBox(height: 20),
                  _buildInfoSection(context),
                  const SizedBox(height: 20),
                  _buildAgendaSection(context),
                  const SizedBox(height: 20),
                  _buildParticipantsSection(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHandle() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      width: 40,
      height: 4,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          meeting.title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          meeting.description,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Meeting Information',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        _buildInfoRow('Date & Time', _formatFullDateTime(meeting.meetingDateTime)),
        _buildInfoRow('Duration', '${meeting.durationMinutes} minutes'),
        _buildInfoRow('Platform', meeting.platformText),
        _buildInfoRow('Status', meeting.statusText),
        if (meeting.meetingLink != null)
          _buildInfoRow('Meeting Link', meeting.meetingLink!),
      ],
    );
  }

  Widget _buildAgendaSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Agenda',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        ...meeting.agenda.map((item) => _buildAgendaItem(item)),
      ],
    );
  }

  Widget _buildAgendaItem(AgendaItemEntity item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  '${item.durationMinutes} min',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParticipantsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Participants (${meeting.participants.length})',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          children: meeting.participants.map((participantId) {
            return Chip(
              label: Text(participantId),
              backgroundColor: Colors.grey[100],
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  String _formatFullDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} at ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
