// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      coverUrl: json['coverUrl'] as String,
      isbn: json['isbn'] as String,
      pageCount: (json['pageCount'] as num).toInt(),
      publishedDate: json['publishedDate'] as String,
      description: json['description'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      averageRating: (json['averageRating'] as num).toDouble(),
      publisher: json['publisher'] as String,
      language: json['language'] as String,
      ratingCount: (json['ratingCount'] as num).toInt(),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'coverUrl': instance.coverUrl,
      'isbn': instance.isbn,
      'pageCount': instance.pageCount,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'genres': instance.genres,
      'averageRating': instance.averageRating,
      'publisher': instance.publisher,
      'language': instance.language,
      'ratingCount': instance.ratingCount,
    };
