// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collaborative_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollaborativeListModelImpl _$$CollaborativeListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeListModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      creatorId: json['creatorId'] as String,
      type: json['type'] as String,
      visibility: json['visibility'] as String,
      memberIds:
          (json['memberIds'] as List<dynamic>).map((e) => e as String).toList(),
      moderatorIds: (json['moderatorIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      books: (json['books'] as List<dynamic>)
          .map(
              (e) => CollaborativeBookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      settings: CollaborativeListSettingsModel.fromJson(
          json['settings'] as Map<String, dynamic>),
      stats: CollaborativeListStatsModel.fromJson(
          json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CollaborativeListModelImplToJson(
        _$CollaborativeListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'creatorId': instance.creatorId,
      'type': instance.type,
      'visibility': instance.visibility,
      'memberIds': instance.memberIds,
      'moderatorIds': instance.moderatorIds,
      'books': instance.books,
      'tags': instance.tags,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'settings': instance.settings,
      'stats': instance.stats,
    };

_$CollaborativeBookModelImpl _$$CollaborativeBookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeBookModelImpl(
      bookId: json['bookId'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverUrl: json['coverUrl'] as String?,
      addedByUserId: json['addedByUserId'] as String,
      addedDate: DateTime.parse(json['addedDate'] as String),
      status: json['status'] as String,
      userNotes: json['userNotes'] as String?,
      userRating: (json['userRating'] as num?)?.toDouble(),
      readingProgress: json['readingProgress'] == null
          ? null
          : ReadingProgressModel.fromJson(
              json['readingProgress'] as Map<String, dynamic>),
      discussionThreads: (json['discussionThreads'] as List<dynamic>)
          .map((e) => DiscussionThreadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollaborativeBookModelImplToJson(
        _$CollaborativeBookModelImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'coverUrl': instance.coverUrl,
      'addedByUserId': instance.addedByUserId,
      'addedDate': instance.addedDate.toIso8601String(),
      'status': instance.status,
      'userNotes': instance.userNotes,
      'userRating': instance.userRating,
      'readingProgress': instance.readingProgress,
      'discussionThreads': instance.discussionThreads,
    };

_$ReadingProgressModelImpl _$$ReadingProgressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadingProgressModelImpl(
      userId: json['userId'] as String,
      currentPage: (json['currentPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      progressPercentage: (json['progressPercentage'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      notes: json['notes'] as String?,
      sessionDurationMinutes: (json['sessionDurationMinutes'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReadingProgressModelImplToJson(
        _$ReadingProgressModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'progressPercentage': instance.progressPercentage,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'notes': instance.notes,
      'sessionDurationMinutes': instance.sessionDurationMinutes,
    };

_$DiscussionThreadModelImpl _$$DiscussionThreadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionThreadModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      authorId: json['authorId'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateUpdated: DateTime.parse(json['dateUpdated'] as String),
      replies: (json['replies'] as List<dynamic>)
          .map((e) => DiscussionReplyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      likedByUserIds: (json['likedByUserIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DiscussionThreadModelImplToJson(
        _$DiscussionThreadModelImpl instance) =>
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

_$DiscussionReplyModelImpl _$$DiscussionReplyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscussionReplyModelImpl(
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

Map<String, dynamic> _$$DiscussionReplyModelImplToJson(
        _$DiscussionReplyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'authorId': instance.authorId,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateUpdated': instance.dateUpdated.toIso8601String(),
      'likedByUserIds': instance.likedByUserIds,
      'parentReplyId': instance.parentReplyId,
    };

_$CollaborativeListSettingsModelImpl
    _$$CollaborativeListSettingsModelImplFromJson(Map<String, dynamic> json) =>
        _$CollaborativeListSettingsModelImpl(
          allowMembersToAddBooks: json['allowMembersToAddBooks'] as bool,
          allowMembersToRemoveBooks: json['allowMembersToRemoveBooks'] as bool,
          allowMembersToEditList: json['allowMembersToEditList'] as bool,
          allowPublicComments: json['allowPublicComments'] as bool,
          requireApprovalForNewMembers:
              json['requireApprovalForNewMembers'] as bool,
          maxMembers: (json['maxMembers'] as num?)?.toInt(),
          autoArchiveCompletedBooks: json['autoArchiveCompletedBooks'] as bool,
          sendNotificationsForUpdates:
              json['sendNotificationsForUpdates'] as bool,
        );

Map<String, dynamic> _$$CollaborativeListSettingsModelImplToJson(
        _$CollaborativeListSettingsModelImpl instance) =>
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

_$CollaborativeListStatsModelImpl _$$CollaborativeListStatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeListStatsModelImpl(
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

Map<String, dynamic> _$$CollaborativeListStatsModelImplToJson(
        _$CollaborativeListStatsModelImpl instance) =>
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
