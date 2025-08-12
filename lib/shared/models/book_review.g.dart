// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookReviewImpl _$$BookReviewImplFromJson(Map<String, dynamic> json) =>
    _$BookReviewImpl(
      id: json['id'] as String,
      bookId: json['bookId'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userProfilePicture: json['userProfilePicture'] as String?,
      rating: (json['rating'] as num).toInt(),
      title: json['title'] as String?,
      content: json['content'] as String,
      hasSpoilers: json['hasSpoilers'] as bool,
      dateWritten: DateTime.parse(json['dateWritten'] as String),
      dateEdited: DateTime.parse(json['dateEdited'] as String),
      helpfulVotes: (json['helpfulVotes'] as num).toInt(),
      unhelpfulVotes: (json['unhelpfulVotes'] as num).toInt(),
      helpfulUserIds: (json['helpfulUserIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      unhelpfulUserIds: (json['unhelpfulUserIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isVerified: json['isVerified'] as bool,
      readingProgress: (json['readingProgress'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BookReviewImplToJson(_$BookReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userProfilePicture': instance.userProfilePicture,
      'rating': instance.rating,
      'title': instance.title,
      'content': instance.content,
      'hasSpoilers': instance.hasSpoilers,
      'dateWritten': instance.dateWritten.toIso8601String(),
      'dateEdited': instance.dateEdited.toIso8601String(),
      'helpfulVotes': instance.helpfulVotes,
      'unhelpfulVotes': instance.unhelpfulVotes,
      'helpfulUserIds': instance.helpfulUserIds,
      'unhelpfulUserIds': instance.unhelpfulUserIds,
      'isVerified': instance.isVerified,
      'readingProgress': instance.readingProgress,
      'tags': instance.tags,
    };
