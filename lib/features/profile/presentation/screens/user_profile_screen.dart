import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/models/user_profile.dart';
import '../../../../shared/providers/user_profiles_provider.dart';
import '../../../../shared/providers/auth_provider.dart';
import '../../../../shared/providers/reviews_provider.dart';
import '../../../../shared/providers/reading_lists_provider.dart';

class UserProfileScreen extends HookConsumerWidget {
  final String userId;
  final bool isOwnProfile;

  const UserProfileScreen({
    super.key,
    required this.userId,
    this.isOwnProfile = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfilesState = ref.watch(userProfilesProvider);
    final authState = ref.watch(authProvider);
    
    // Select the profile to display
    ref.read(userProfilesProvider.notifier).selectProfile(userId);
    
    final profile = userProfilesState.selectedProfile;
    final currentUserId = authState.user?.uid;
    final isCurrentUser = currentUserId == userId;

    if (profile == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(profile.displayName),
        actions: [
          if (!isCurrentUser) ...[
            IconButton(
              onPressed: () => _showProfileOptions(context, ref, profile),
              icon: const Icon(Icons.more_vert),
              tooltip: 'Profile Options',
            ),
          ],
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            _buildProfileHeader(context, ref, profile, isCurrentUser),
            
            // Profile Stats
            _buildProfileStats(context, profile),
            
            // Social Connections
            _buildSocialConnections(context, ref, profile),
            
            // Reading Preferences
            _buildReadingPreferences(context, profile),
            
            // Recent Activity
            _buildRecentActivity(context, ref, profile),
            
            // Reading Lists
            _buildReadingLists(context, ref, profile),
            
            // Reviews
            _buildUserReviews(context, ref, profile),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, WidgetRef ref, UserProfile profile, bool isCurrentUser) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingLarge),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(AppConstants.radiusLarge),
          bottomRight: Radius.circular(AppConstants.radiusLarge),
        ),
      ),
      child: Column(
        children: [
          // Profile Picture and Basic Info
          Row(
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 50,
                backgroundColor: theme.colorScheme.primaryContainer,
                child: profile.profilePictureUrl != null
                    ? ClipOval(
                        child: Image.network(
                          profile.profilePictureUrl!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.person,
                              size: 50,
                              color: theme.colorScheme.onPrimaryContainer,
                            );
                          },
                        ),
                      )
                    : Icon(
                        Icons.person,
                        size: 50,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
              ),
              
              const SizedBox(width: AppConstants.paddingLarge),
              
              // Basic Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          profile.displayName,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (profile.isVerified) ...[
                          const SizedBox(width: AppConstants.paddingSmall),
                          Icon(
                            Icons.verified,
                            color: theme.colorScheme.primary,
                            size: 20,
                          ),
                        ],
                      ],
                    ),
                    
                    const SizedBox(height: AppConstants.paddingSmall),
                    
                    if (profile.bio != null && profile.bio!.isNotEmpty) ...[
                      Text(
                        profile.bio!,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: AppConstants.paddingSmall),
                    ],
                    
                    if (profile.location != null) ...[
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            profile.location!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppConstants.paddingSmall),
                    ],
                    
                    Text(
                      'Member since ${_formatDate(profile.dateCreated)}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          const SizedBox(height: AppConstants.paddingMedium),
          
          // Action Buttons
          if (!isCurrentUser) ...[
            Row(
              children: [
                Expanded(
                  child: _buildActionButton(
                    context,
                    ref,
                    profile,
                    'Follow',
                    Icons.person_add,
                    () => _handleFollow(ref, profile),
                    isFollowing: profile.isFollowedBy(currentUserId ?? ''),
                  ),
                ),
                
                const SizedBox(width: AppConstants.paddingSmall),
                
                Expanded(
                  child: _buildActionButton(
                    context,
                    ref,
                    profile,
                    'Message',
                    Icons.message,
                    () => _handleMessage(profile),
                  ),
                ),
              ],
            ),
          ] else ...[
            Row(
              children: [
                Expanded(
                  child: GradientButton(
                    onPressed: () => _editProfile(context, ref, profile),
                    text: 'Edit Profile',
                    icon: Icons.edit,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildProfileStats(BuildContext context, UserProfile profile) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      child: Row(
        children: [
          Expanded(
            child: _buildStatCard(
              context,
              'Books Read',
              '${profile.readingStats.totalBooksRead}',
              Icons.book,
            ),
          ),
          
          Expanded(
            child: _buildStatCard(
              context,
              'Pages Read',
              '${profile.readingStats.totalPagesRead}',
              Icons.pages,
            ),
          ),
          
          Expanded(
            child: _buildStatCard(
              context,
              'Reading Streak',
              '${profile.readingStats.readingStreak} days',
              Icons.local_fire_department,
            ),
          ),
          
          Expanded(
            child: _buildStatCard(
              context,
              'Reviews',
              '${profile.readingStats.reviewsWritten}',
              Icons.rate_review,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String label, String value, IconData icon) {
    final theme = Theme.of(context);
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppConstants.paddingSmall),
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: theme.colorScheme.primary,
            size: 24,
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSocialConnections(BuildContext context, WidgetRef ref, UserProfile profile) {
    final theme = Theme.of(context);
    
    return Container(
      margin: const EdgeInsets.all(AppConstants.paddingMedium),
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Connections',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          
          const SizedBox(height: AppConstants.paddingMedium),
          
          Row(
            children: [
              Expanded(
                child: _buildConnectionCard(
                  context,
                  '${profile.followerCount}',
                  'Followers',
                  Icons.people,
                ),
              ),
              
              Expanded(
                child: _buildConnectionCard(
                  context,
                  '${profile.followingCount}',
                  'Following',
                  Icons.person_add,
                ),
              ),
              
              Expanded(
                child: _buildConnectionCard(
                  context,
                  '${profile.friendCount}',
                  'Friends',
                  Icons.favorite,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildConnectionCard(BuildContext context, String count, String label, IconData icon) {
    final theme = Theme.of(context);
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppConstants.paddingSmall),
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: theme.colorScheme.primary,
            size: 20,
          ),
          const SizedBox(height: AppConstants.paddingSmall),
          Text(
            count,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildReadingPreferences(BuildContext context, UserProfile profile) {
    final theme = Theme.of(context);
    
    return Container(
      margin: const EdgeInsets.all(AppConstants.paddingMedium),
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reading Preferences',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          
          const SizedBox(height: AppConstants.paddingMedium),
          
          Wrap(
            spacing: AppConstants.paddingSmall,
            children: [
              _buildPreferenceChip('${profile.readingPreferences.readingSpeed} pages/hour'),
              _buildPreferenceChip(profile.readingPreferences.preferredBookLength.displayName),
              _buildPreferenceChip(profile.readingPreferences.prefersFiction ? 'Fiction' : 'Non-Fiction'),
              if (profile.readingPreferences.prefersSeries) _buildPreferenceChip('Series'),
              if (profile.readingPreferences.likesToReread) _buildPreferenceChip('Re-reads'),
            ],
          ),
          
          if (profile.favoriteGenres.isNotEmpty) ...[
            const SizedBox(height: AppConstants.paddingMedium),
            Text(
              'Favorite Genres',
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            Wrap(
              spacing: AppConstants.paddingSmall,
              children: profile.favoriteGenres.map((genre) => 
                _buildGenreChip(genre)
              ).toList(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildPreferenceChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
        vertical: AppConstants.paddingSmall,
      ),
      decoration: BoxDecoration(
        color: Colors.blue.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
        border: Border.all(
          color: Colors.blue.withValues(alpha: 0.3),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildGenreChip(String genre) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
        vertical: AppConstants.paddingSmall,
      ),
      decoration: BoxDecoration(
        color: Colors.purple.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
        border: Border.all(
          color: Colors.purple.withValues(alpha: 0.3),
        ),
      ),
      child: Text(
        genre,
        style: const TextStyle(
          color: Colors.purple,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildRecentActivity(BuildContext context, WidgetRef ref, UserProfile profile) {
    // TODO: Implement recent activity feed
    return const SizedBox.shrink();
  }

  Widget _buildReadingLists(BuildContext context, WidgetRef ref, UserProfile profile) {
    // TODO: Implement reading lists display
    return const SizedBox.shrink();
  }

  Widget _buildUserReviews(BuildContext context, WidgetRef ref, UserProfile profile) {
    // TODO: Implement user reviews display
    return const SizedBox.shrink();
  }

  Widget _buildActionButton(
    BuildContext context,
    WidgetRef ref,
    UserProfile profile,
    String text,
    IconData icon,
    VoidCallback onPressed, {
    bool isFollowing = false,
  }) {
    final theme = Theme.of(context);
    
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(isFollowing ? 'Following' : text),
      style: ElevatedButton.styleFrom(
        backgroundColor: isFollowing 
            ? theme.colorScheme.primaryContainer
            : theme.colorScheme.primary,
        foregroundColor: isFollowing 
            ? theme.colorScheme.onPrimaryContainer
            : theme.colorScheme.onPrimary,
      ),
    );
  }

  void _handleFollow(WidgetRef ref, UserProfile profile) {
    final currentUserId = ref.read(userProfilesProvider).currentUserId;
    if (currentUserId == null) return;
    
    if (profile.isFollowedBy(currentUserId)) {
      ref.read(userProfilesProvider.notifier).unfollowUser(profile.id);
    } else {
      ref.read(userProfilesProvider.notifier).followUser(profile.id);
    }
  }

  void _handleMessage(UserProfile profile) {
    // TODO: Implement messaging system
  }

  void _editProfile(BuildContext context, WidgetRef ref, UserProfile profile) {
    // TODO: Implement profile editing
  }

  void _showProfileOptions(BuildContext context, WidgetRef ref, UserProfile profile) {
    showModalBottomSheet(
      context: context,
      builder: (context) => _buildProfileOptionsSheet(context, ref, profile),
    );
  }

  Widget _buildProfileOptionsSheet(BuildContext context, WidgetRef ref, UserProfile profile) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingLarge),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share Profile'),
            onTap: () {
              Navigator.pop(context);
              // TODO: Implement profile sharing
            },
          ),
          
          ListTile(
            leading: const Icon(Icons.report),
            title: const Text('Report User'),
            onTap: () {
              Navigator.pop(context);
              // TODO: Implement user reporting
            },
          ),
          
          ListTile(
            leading: const Icon(Icons.block),
            title: const Text('Block User'),
            onTap: () {
              Navigator.pop(context);
              ref.read(userProfilesProvider.notifier).blockUser(profile.id);
            },
          ),
          
          const SizedBox(height: AppConstants.paddingMedium),
          
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays < 365) {
      return '${(difference.inDays / 30).round()} months ago';
    } else {
      return '${(difference.inDays / 365).round()} years ago';
    }
  }
}
