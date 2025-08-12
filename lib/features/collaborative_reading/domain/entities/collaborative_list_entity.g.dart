// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collaborative_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollaborativeListEntityImpl _$$CollaborativeListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeListEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      creatorId: json['creatorId'] as String,
      type: $enumDecode(_$CollaborativeListTypeEnumMap, json['type']),
      visibility: $enumDecode(_$ListVisibilityEnumMap, json['visibility']),
      memberIds:
          (json['memberIds'] as List<dynamic>).map((e) => e as String).toList(),
      moderatorIds: (json['moderatorIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      books: (json['books'] as List<dynamic>)
          .map((e) =>
              CollaborativeBookEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      settings: CollaborativeListSettings.fromJson(
          json['settings'] as Map<String, dynamic>),
      stats: CollaborativeListStats.fromJson(
          json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CollaborativeListEntityImplToJson(
        _$CollaborativeListEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'creatorId': instance.creatorId,
      'type': _$CollaborativeListTypeEnumMap[instance.type]!,
      'visibility': _$ListVisibilityEnumMap[instance.visibility]!,
      'memberIds': instance.memberIds,
      'moderatorIds': instance.moderatorIds,
      'books': instance.books,
      'tags': instance.tags,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'settings': instance.settings,
      'stats': instance.stats,
    };

const _$CollaborativeListTypeEnumMap = {
  CollaborativeListType.bookClub: 'bookClub',
  CollaborativeListType.readingChallenge: 'readingChallenge',
  CollaborativeListType.sharedRecommendations: 'sharedRecommendations',
  CollaborativeListType.studyGroup: 'studyGroup',
  CollaborativeListType.socialReading: 'socialReading',
  CollaborativeListType.custom: 'custom',
};

const _$ListVisibilityEnumMap = {
  ListVisibility.public: 'public',
  ListVisibility.private: 'private',
  ListVisibility.membersOnly: 'membersOnly',
  ListVisibility.inviteOnly: 'inviteOnly',
};

_$CollaborativeBookEntityImpl _$$CollaborativeBookEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeBookEntityImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverUrl: json['coverUrl'] as String?,
      addedByUserId: json['addedByUserId'] as String,
      addedDate: DateTime.parse(json['addedDate'] as String),
      status: $enumDecode(_$BookListStatusEnumMap, json['status']),
      userNotes: json['userNotes'] as String?,
      userRating: (json['userRating'] as num?)?.toDouble(),
      readingProgress: json['readingProgress'] == null
          ? null
          : ReadingProgressEntity.fromJson(
              json['readingProgress'] as Map<String, dynamic>),
      discussionThreads: (json['discussionThreads'] as List<dynamic>)
          .map(
              (e) => DiscussionThreadEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollaborativeBookEntityImplToJson(
        _$CollaborativeBookEntityImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'coverUrl': instance.coverUrl,
      'addedByUserId': instance.addedByUserId,
      'addedDate': instance.addedDate.toIso8601String(),
      'status': _$BookListStatusEnumMap[instance.status]!,
      'userNotes': instance.userNotes,
      'userRating': instance.userRating,
      'readingProgress': instance.readingProgress,
      'discussionThreads': instance.discussionThreads,
    };

const _$BookListStatusEnumMap = {
  BookListStatus.toRead: 'toRead',
  BookListStatus.currentlyReading: 'currentlyReading',
  BookListStatus.completed: 'completed',
  BookListStatus.abandoned: 'abandoned',
  BookListStatus.recommended: 'recommended',
};

_$ReadingProgressEntityImpl _$$ReadingProgressEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingProgressEntityImpl(
      userId: json['userId'] as String,
      currentPage: (json['currentPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      progressPercentage: (json['progressPercentage'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      notes: json['notes'] as String?,
      sessionDuration: json['sessionDuration'] == null
          ? null
          : Duration(microseconds: (json['sessionDuration'] as num).toInt()),
    );

Map<String, dynamic> _$$ReadingProgressEntityImplToJson(
        _$ReadingProgressEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'progressPercentage': instance.progressPercentage,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'notes': instance.notes,
      'sessionDuration': instance.sessionDuration?.inMicroseconds,
    };

_$DiscussionThreadEntityImpl _$$DiscussionThreadEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionThreadEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      authorId: json['authorId'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      replies: (json['replies'] as List<dynamic>)
          .map((e) => DiscussionReplyEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      likedByUserIds: (json['likedByUserIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DiscussionThreadEntityImplToJson(
        _$DiscussionThreadEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'authorId': instance.authorId,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'replies': instance.replies,
      'likedByUserIds': instance.likedByUserIds,
      'tags': instance.tags,
    };

_$DiscussionReplyEntityImpl _$$DiscussionReplyEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionReplyEntityImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      authorId: json['authorId'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      likedByUserIds: (json['likedByUserIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      parentReplyId: json['parentReplyId'] as String?,
    );

Map<String, dynamic> _$$DiscussionReplyEntityImplToJson(
        _$DiscussionReplyEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'authorId': instance.authorId,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'likedByUserIds': instance.likedByUserIds,
      'parentReplyId': instance.parentReplyId,
    };

_$CollaborativeListSettingsImpl _$$CollaborativeListSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeListSettingsImpl(
      allowMembersToAddBooks: json['allowMembersToAddBooks'] as bool,
      allowMembersToRemoveBooks: json['allowMembersToRemoveBooks'] as bool,
      allowMembersToEditList: json['allowMembersToEditList'] as bool,
      allowPublicComments: json['allowPublicComments'] as bool,
      requireApprovalForNewMembers:
          json['requireApprovalForNewMembers'] as bool,
      maxMembers: (json['maxMembers'] as num?)?.toInt(),
      autoArchiveCompletedBooks: json['autoArchiveCompletedBooks'] as bool,
      sendNotificationsForUpdates: json['sendNotificationsForUpdates'] as bool,
    );

Map<String, dynamic> _$$CollaborativeListSettingsImplToJson(
        _$CollaborativeListSettingsImpl instance) =>
    <String, dynamic>{
      'allowMembersToAddBooks': instance.allowMembersToAddBooks,
      'allowMembersToRemoveBooks': instance.allowMembersToRemoveBooks,
      'allowMembersToEditList': instance.allowMembersToEditList,
      'allowPublicComments': instance.allowPublicComments,
      'requireApprovalForNewMembers': instance.requireApprovalForNewMembers,
      'maxMembers': instance.maxMembers,
      'autoArchiveCompletedBooks': instance.autoArchiveCompletedBooks,
      'sendNotificationsForUpdates': instance.sendNotificationsForUpdates,
    };

_$CollaborativeListStatsImpl _$$CollaborativeListStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeListStatsImpl(
      totalBooks: (json['totalBooks'] as num).toInt(),
      completedBooks: (json['completedBooks'] as num).toInt(),
      currentlyReading: (json['currentlyReading'] as num).toInt(),
      toReadBooks: (json['toReadBooks'] as num).toInt(),
      totalMembers: (json['totalMembers'] as num).toInt(),
      activeMembers: (json['activeMembers'] as num).toInt(),
      totalDiscussionThreads: (json['totalDiscussionThreads'] as num).toInt(),
      totalReplies: (json['totalReplies'] as num).toInt(),
      averageRating: (json['averageRating'] as num).toDouble(),
      mostActiveMemberId: json['mostActiveMemberId'] as String?,
      lastActivityDate: DateTime.parse(json['lastActivityDate'] as String),
    );

Map<String, dynamic> _$$CollaborativeListStatsImplToJson(
        _$CollaborativeListStatsImpl instance) =>
    <String, dynamic>{
      'totalBooks': instance.totalBooks,
      'completedBooks': instance.completedBooks,
      'currentlyReading': instance.currentlyReading,
      'toReadBooks': instance.toReadBooks,
      'totalMembers': instance.totalMembers,
      'activeMembers': instance.activeMembers,
      'totalDiscussionThreads': instance.totalDiscussionThreads,
      'totalReplies': instance.totalReplies,
      'averageRating': instance.averageRating,
      'mostActiveMemberId': instance.mostActiveMemberId,
      'lastActivityDate': instance.lastActivityDate.toIso8601String(),
    };
