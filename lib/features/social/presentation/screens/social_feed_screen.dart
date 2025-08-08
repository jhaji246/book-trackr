import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/models/book.dart';

class SocialFeedScreen extends ConsumerWidget {
  const SocialFeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Feed'),
        backgroundColor: AppConstants.lightSurface,
        foregroundColor: AppConstants.lightOnSurface,
        actions: [
          IconButton(
            onPressed: () => _showShareDialog(context),
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          children: [
            _buildMyActivityCard(context),
            const SizedBox(height: AppConstants.paddingLarge),
            _buildFriendsActivity(context),
          ],
        ),
      ),
    );
  }

  Widget _buildMyActivityCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: AppConstants.primaryColor.withValues(alpha: 0.1),
                  child: const Icon(Icons.person, color: AppConstants.primaryColor),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Activity',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Share your reading journey',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.lightOnSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => _showShareDialog(context),
                  icon: const Icon(Icons.edit),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            _buildActivityItem(
              context,
              'Just finished reading "The Great Gatsby"',
              '2 hours ago',
              Icons.check_circle,
              Colors.green,
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            _buildActivityItem(
              context,
              'Added "1984" to your reading list',
              '1 day ago',
              Icons.bookmark_add,
              Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFriendsActivity(BuildContext context) {
    final friends = [
      {
        'name': 'Sarah Johnson',
        'avatar': 'SJ',
        'activity': 'Just finished "Pride and Prejudice"',
        'time': '30 minutes ago',
        'rating': 5,
        'bookCover': 'https://covers.openlibrary.org/b/id/8310911-L.jpg',
      },
      {
        'name': 'Mike Chen',
        'avatar': 'MC',
        'activity': 'Started reading "Dune"',
        'time': '2 hours ago',
        'rating': null,
        'bookCover': 'https://covers.openlibrary.org/b/id/8310911-L.jpg',
      },
      {
        'name': 'Emma Davis',
        'avatar': 'ED',
        'activity': 'Rated "The Hobbit" 4 stars',
        'time': '1 day ago',
        'rating': 4,
        'bookCover': 'https://covers.openlibrary.org/b/id/8310911-L.jpg',
      },
      {
        'name': 'Alex Thompson',
        'avatar': 'AT',
        'activity': 'Added "Brave New World" to reading list',
        'time': '2 days ago',
        'rating': null,
        'bookCover': 'https://covers.openlibrary.org/b/id/8310911-L.jpg',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Friends Activity',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: AppConstants.paddingMedium),
        ...friends.map((friend) => _buildFriendActivityCard(context, friend)),
      ],
    );
  }

  Widget _buildFriendActivityCard(BuildContext context, Map<String, dynamic> friend) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppConstants.primaryColor.withValues(alpha: 0.1),
                  child: Text(
                    friend['avatar'] as String,
                    style: TextStyle(
                      color: AppConstants.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        friend['name'] as String,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        friend['time'] as String,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.lightOnSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                if (friend['rating'] != null)
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < friend['rating'] ? Icons.star : Icons.star_border,
                        size: 16,
                        color: Colors.yellow[700],
                      );
                    }),
                  ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                  child: Image.network(
                    friend['bookCover'] as String,
                    width: 50,
                    height: 75,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 50,
                        height: 75,
                        color: Colors.grey[300],
                        child: const Icon(Icons.book, size: 24),
                      );
                    },
                  ),
                ),
                const SizedBox(width: AppConstants.paddingMedium),
                Expanded(
                  child: Text(
                    friend['activity'] as String,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Row(
              children: [
                IconButton(
                  onPressed: () => _likeActivity(context),
                  icon: const Icon(Icons.favorite_border, size: 20),
                ),
                IconButton(
                  onPressed: () => _commentActivity(context),
                  icon: const Icon(Icons.comment_outlined, size: 20),
                ),
                IconButton(
                  onPressed: () => _shareActivity(context),
                  icon: const Icon(Icons.share_outlined, size: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem(BuildContext context, String activity, String time, IconData icon, Color color) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: AppConstants.paddingSmall),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                activity,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                time,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppConstants.lightOnSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showShareDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Share Your Reading'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.check_circle),
              title: const Text('Finished a book'),
              onTap: () {
                Navigator.of(context).pop();
                _showFinishedBookDialog(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_add),
              title: const Text('Added to reading list'),
              onTap: () {
                Navigator.of(context).pop();
                _showAddedBookDialog(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rated a book'),
              onTap: () {
                Navigator.of(context).pop();
                _showRatedBookDialog(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.trending_up),
              title: const Text('Reading milestone'),
              onTap: () {
                Navigator.of(context).pop();
                _showMilestoneDialog(context);
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _showFinishedBookDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Finished Reading'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Book Title',
                hintText: 'Enter the book title',
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Row(
              children: [
                const Text('Rating: '),
                ...List.generate(5, (index) {
                  return IconButton(
                    onPressed: () {},
                    icon: Icon(
                      index < 4 ? Icons.star : Icons.star_border,
                      color: Colors.yellow[700],
                    ),
                  );
                }),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Review (optional)',
                hintText: 'Share your thoughts...',
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Shared your reading activity!')),
              );
            },
            child: const Text('Share'),
          ),
        ],
      ),
    );
  }

  void _showAddedBookDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Added to Reading List'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Book Title',
                hintText: 'Enter the book title',
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Why are you excited? (optional)',
                hintText: 'Share why you want to read this...',
              ),
              maxLines: 2,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Shared your reading activity!')),
              );
            },
            child: const Text('Share'),
          ),
        ],
      ),
    );
  }

  void _showRatedBookDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Rated a Book'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Book Title',
                hintText: 'Enter the book title',
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            Row(
              children: [
                const Text('Rating: '),
                ...List.generate(5, (index) {
                  return IconButton(
                    onPressed: () {},
                    icon: Icon(
                      index < 4 ? Icons.star : Icons.star_border,
                      color: Colors.yellow[700],
                    ),
                  );
                }),
              ],
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Review (optional)',
                hintText: 'Share your thoughts...',
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Shared your rating!')),
              );
            },
            child: const Text('Share'),
          ),
        ],
      ),
    );
  }

  void _showMilestoneDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reading Milestone'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Milestone',
                hintText: 'e.g., "Read 50 books this year"',
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Description (optional)',
                hintText: 'Share your achievement...',
              ),
              maxLines: 2,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Shared your milestone!')),
              );
            },
            child: const Text('Share'),
          ),
        ],
      ),
    );
  }

  void _likeActivity(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Liked! ❤️')),
    );
  }

  void _commentActivity(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Comment'),
        content: TextField(
          decoration: const InputDecoration(
            labelText: 'Comment',
            hintText: 'Write a comment...',
          ),
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Comment added! 💬')),
              );
            },
            child: const Text('Post'),
          ),
        ],
      ),
    );
  }

  void _shareActivity(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Shared! ��')),
    );
  }
} 