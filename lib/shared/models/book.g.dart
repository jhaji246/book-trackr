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

_$UserBookImpl _$$UserBookImplFromJson(Map<String, dynamic> json) =>
    _$UserBookImpl(
      book: Book.fromJson(json['book'] as Map<String, dynamic>),
      status: BookStatus.fromJson(json['status'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toInt() ?? 0,
      review: json['review'] as String? ?? '',
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserBookImplToJson(_$UserBookImpl instance) =>
    <String, dynamic>{
      'book': instance.book,
      'status': instance.status,
      'rating': instance.rating,
      'review': instance.review,
      'currentPage': instance.currentPage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$WantToReadImpl _$$WantToReadImplFromJson(Map<String, dynamic> json) =>
    _$WantToReadImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WantToReadImplToJson(_$WantToReadImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ReadingImpl _$$ReadingImplFromJson(Map<String, dynamic> json) =>
    _$ReadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReadingImplToJson(_$ReadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CompletedImpl _$$CompletedImplFromJson(Map<String, dynamic> json) =>
    _$CompletedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CompletedImplToJson(_$CompletedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$DnfImpl _$$DnfImplFromJson(Map<String, dynamic> json) => _$DnfImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DnfImplToJson(_$DnfImpl instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };
