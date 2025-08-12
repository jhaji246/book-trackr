// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      isbn: json['isbn'] as String,
      pageCount: (json['pageCount'] as num).toInt(),
      publishedDate: json['publishedDate'] as String,
      publisher: json['publisher'] as String,
      coverUrl: json['coverUrl'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      averageRating: (json['averageRating'] as num).toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      language: json['language'] as String,
      readingStatus: json['readingStatus'] as String?,
      currentPage: (json['currentPage'] as num?)?.toInt(),
      dateAdded: json['dateAdded'] == null
          ? null
          : DateTime.parse(json['dateAdded'] as String),
      dateStarted: json['dateStarted'] == null
          ? null
          : DateTime.parse(json['dateStarted'] as String),
      dateCompleted: json['dateCompleted'] == null
          ? null
          : DateTime.parse(json['dateCompleted'] as String),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'isbn': instance.isbn,
      'pageCount': instance.pageCount,
      'publishedDate': instance.publishedDate,
      'publisher': instance.publisher,
      'coverUrl': instance.coverUrl,
      'genres': instance.genres,
      'averageRating': instance.averageRating,
      'ratingCount': instance.ratingCount,
      'language': instance.language,
      'readingStatus': instance.readingStatus,
      'currentPage': instance.currentPage,
      'dateAdded': instance.dateAdded?.toIso8601String(),
      'dateStarted': instance.dateStarted?.toIso8601String(),
      'dateCompleted': instance.dateCompleted?.toIso8601String(),
    };
