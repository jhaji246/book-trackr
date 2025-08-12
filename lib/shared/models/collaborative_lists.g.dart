// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collaborative_lists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollaborativeReadingListImpl _$$CollaborativeReadingListImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeReadingListImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      creatorId: json['creatorId'] as String,
      collaborators: (json['collaborators'] as List<dynamic>)
          .map((e) => Collaborator.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: $enumDecode(_$ListPrivacyEnumMap, json['privacy']),
      books: (json['books'] as List<dynamic>)
          .map(
              (e) => CollaborativeBookEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      coverImageUrl: json['coverImageUrl'] as String?,
      themeColor: json['themeColor'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      isActive: json['isActive'] as bool,
      settings: ListSettings.fromJson(json['settings'] as Map<String, dynamic>),
      statistics:
          ListStatistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CollaborativeReadingListImplToJson(
        _$CollaborativeReadingListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'creatorId': instance.creatorId,
      'collaborators': instance.collaborators,
      'privacy': _$ListPrivacyEnumMap[instance.privacy]!,
      'books': instance.books,
      'tags': instance.tags,
      'coverImageUrl': instance.coverImageUrl,
      'themeColor': instance.themeColor,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'isActive': instance.isActive,
      'settings': instance.settings,
      'statistics': instance.statistics,
    };

const _$ListPrivacyEnumMap = {
  ListPrivacy.public: 'public',
  ListPrivacy.unlisted: 'unlisted',
  ListPrivacy.private: 'private',
  ListPrivacy.collaborators: 'collaborators',
};

_$CollaboratorImpl _$$CollaboratorImplFromJson(Map<String, dynamic> json) =>
    _$CollaboratorImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      role: $enumDecode(_$CollaboratorRoleEnumMap, json['role']),
      permissions: CollaboratorPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>),
      dateJoined: DateTime.parse(json['dateJoined'] as String),
      isActive: json['isActive'] as bool,
      contributionCount: (json['contributionCount'] as num).toInt(),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
    );

Map<String, dynamic> _$$CollaboratorImplToJson(_$CollaboratorImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'profilePictureUrl': instance.profilePictureUrl,
      'role': _$CollaboratorRoleEnumMap[instance.role]!,
      'permissions': instance.permissions,
      'dateJoined': instance.dateJoined.toIso8601String(),
      'isActive': instance.isActive,
      'contributionCount': instance.contributionCount,
      'lastActivity': instance.lastActivity.toIso8601String(),
    };

const _$CollaboratorRoleEnumMap = {
  CollaboratorRole.owner: 'owner',
  CollaboratorRole.admin: 'admin',
  CollaboratorRole.editor: 'editor',
  CollaboratorRole.contributor: 'contributor',
  CollaboratorRole.viewer: 'viewer',
};

_$CollaboratorPermissionsImpl _$$CollaboratorPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaboratorPermissionsImpl(
      canView: json['canView'] as bool,
      canAddBooks: json['canAddBooks'] as bool,
      canRemoveBooks: json['canRemoveBooks'] as bool,
      canEditBooks: json['canEditBooks'] as bool,
      canEditList: json['canEditList'] as bool,
      canManageCollaborators: json['canManageCollaborators'] as bool,
      canDeleteList: json['canDeleteList'] as bool,
      canShareList: json['canShareList'] as bool,
    );

Map<String, dynamic> _$$CollaboratorPermissionsImplToJson(
        _$CollaboratorPermissionsImpl instance) =>
    <String, dynamic>{
      'canView': instance.canView,
      'canAddBooks': instance.canAddBooks,
      'canRemoveBooks': instance.canRemoveBooks,
      'canEditBooks': instance.canEditBooks,
      'canEditList': instance.canEditList,
      'canManageCollaborators': instance.canManageCollaborators,
      'canDeleteList': instance.canDeleteList,
      'canShareList': instance.canShareList,
    };

_$CollaborativeBookEntryImpl _$$CollaborativeBookEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeBookEntryImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverUrl: json['coverUrl'] as String?,
      description: json['description'] as String?,
      genre: json['genre'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      review: json['review'] as String?,
      notes: json['notes'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      status: $enumDecode(_$BookStatusEnumMap, json['status']),
      priority: $enumDecode(_$BookPriorityEnumMap, json['priority']),
      order: (json['order'] as num).toInt(),
      addedBy: json['addedBy'] as String,
      dateAdded: DateTime.parse(json['dateAdded'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      discussions: (json['discussions'] as List<dynamic>)
          .map((e) => BookDiscussion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollaborativeBookEntryImplToJson(
        _$CollaborativeBookEntryImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'coverUrl': instance.coverUrl,
      'description': instance.description,
      'genre': instance.genre,
      'rating': instance.rating,
      'review': instance.review,
      'notes': instance.notes,
      'tags': instance.tags,
      'status': _$BookStatusEnumMap[instance.status]!,
      'priority': _$BookPriorityEnumMap[instance.priority]!,
      'order': instance.order,
      'addedBy': instance.addedBy,
      'dateAdded': instance.dateAdded.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'recommendations': instance.recommendations,
      'discussions': instance.discussions,
    };

const _$BookStatusEnumMap = {
  BookStatus.toRead: 'toRead',
  BookStatus.reading: 'reading',
  BookStatus.completed: 'completed',
  BookStatus.abandoned: 'abandoned',
  BookStatus.onHold: 'onHold',
};

const _$BookPriorityEnumMap = {
  BookPriority.low: 'low',
  BookPriority.medium: 'medium',
  BookPriority.high: 'high',
  BookPriority.urgent: 'urgent',
};

_$BookDiscussionImpl _$$BookDiscussionImplFromJson(Map<String, dynamic> json) =>
    _$BookDiscussionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      creatorId: json['creatorId'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      replies: (json['replies'] as List<dynamic>)
          .map((e) => DiscussionReply.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isResolved: json['isResolved'] as bool,
      resolutionNotes: json['resolutionNotes'] as String?,
    );

Map<String, dynamic> _$$BookDiscussionImplToJson(
        _$BookDiscussionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'creatorId': instance.creatorId,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'replies': instance.replies,
      'tags': instance.tags,
      'isResolved': instance.isResolved,
      'resolutionNotes': instance.resolutionNotes,
    };

_$DiscussionReplyImpl _$$DiscussionReplyImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionReplyImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      authorId: json['authorId'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      isHelpful: json['isHelpful'] as bool,
      helpfulVotes: (json['helpfulVotes'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DiscussionReplyImplToJson(
        _$DiscussionReplyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'authorId': instance.authorId,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'isHelpful': instance.isHelpful,
      'helpfulVotes': instance.helpfulVotes,
      'tags': instance.tags,
    };

_$ListSettingsImpl _$$ListSettingsImplFromJson(Map<String, dynamic> json) =>
    _$ListSettingsImpl(
      allowPublicComments: json['allowPublicComments'] as bool,
      allowPublicRatings: json['allowPublicRatings'] as bool,
      allowPublicReviews: json['allowPublicReviews'] as bool,
      requireApproval: json['requireApproval'] as bool,
      allowDuplicates: json['allowDuplicates'] as bool,
      maxBooks: (json['maxBooks'] as num?)?.toInt(),
      showCollaboratorNames: json['showCollaboratorNames'] as bool,
      showBookRatings: json['showBookRatings'] as bool,
      showBookReviews: json['showBookReviews'] as bool,
      sorting: $enumDecode(_$ListSortingEnumMap, json['sorting']),
      filtering: $enumDecode(_$ListFilteringEnumMap, json['filtering']),
    );

Map<String, dynamic> _$$ListSettingsImplToJson(_$ListSettingsImpl instance) =>
    <String, dynamic>{
      'allowPublicComments': instance.allowPublicComments,
      'allowPublicRatings': instance.allowPublicRatings,
      'allowPublicReviews': instance.allowPublicReviews,
      'requireApproval': instance.requireApproval,
      'allowDuplicates': instance.allowDuplicates,
      'maxBooks': instance.maxBooks,
      'showCollaboratorNames': instance.showCollaboratorNames,
      'showBookRatings': instance.showBookRatings,
      'showBookReviews': instance.showBookReviews,
      'sorting': _$ListSortingEnumMap[instance.sorting]!,
      'filtering': _$ListFilteringEnumMap[instance.filtering]!,
    };

const _$ListSortingEnumMap = {
  ListSorting.dateAdded: 'dateAdded',
  ListSorting.title: 'title',
  ListSorting.author: 'author',
  ListSorting.rating: 'rating',
  ListSorting.priority: 'priority',
  ListSorting.status: 'status',
  ListSorting.custom: 'custom',
};

const _$ListFilteringEnumMap = {
  ListFiltering.all: 'all',
  ListFiltering.toRead: 'toRead',
  ListFiltering.reading: 'reading',
  ListFiltering.completed: 'completed',
  ListFiltering.abandoned: 'abandoned',
  ListFiltering.onHold: 'onHold',
};

_$ListStatisticsImpl _$$ListStatisticsImplFromJson(Map<String, dynamic> json) =>
    _$ListStatisticsImpl(
      totalBooks: (json['totalBooks'] as num).toInt(),
      booksByStatus: (json['booksByStatus'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$BookStatusEnumMap, k), (e as num).toInt()),
      ),
      booksByPriority: (json['booksByPriority'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$BookPriorityEnumMap, k), (e as num).toInt()),
      ),
      averageRating: (json['averageRating'] as num).toDouble(),
      totalRatings: (json['totalRatings'] as num).toInt(),
      booksWithReviews: (json['booksWithReviews'] as num).toInt(),
      activeCollaborators: (json['activeCollaborators'] as num).toInt(),
      viewCount: (json['viewCount'] as num).toInt(),
      shareCount: (json['shareCount'] as num).toInt(),
      favoriteCount: (json['favoriteCount'] as num).toInt(),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
    );

Map<String, dynamic> _$$ListStatisticsImplToJson(
        _$ListStatisticsImpl instance) =>
    <String, dynamic>{
      'totalBooks': instance.totalBooks,
      'booksByStatus': instance.booksByStatus
          .map((k, e) => MapEntry(_$BookStatusEnumMap[k]!, e)),
      'booksByPriority': instance.booksByPriority
          .map((k, e) => MapEntry(_$BookPriorityEnumMap[k]!, e)),
      'averageRating': instance.averageRating,
      'totalRatings': instance.totalRatings,
      'booksWithReviews': instance.booksWithReviews,
      'activeCollaborators': instance.activeCollaborators,
      'viewCount': instance.viewCount,
      'shareCount': instance.shareCount,
      'favoriteCount': instance.favoriteCount,
      'lastActivity': instance.lastActivity.toIso8601String(),
    };
