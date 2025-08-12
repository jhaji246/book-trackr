// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingListImpl _$$ReadingListImplFromJson(Map<String, dynamic> json) =>
    _$ReadingListImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
      isPublic: json['isPublic'] as bool,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dateModified: DateTime.parse(json['dateModified'] as String),
      bookIds:
          (json['bookIds'] as List<dynamic>).map((e) => e as String).toList(),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$ReadingListImplToJson(_$ReadingListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'color': instance.color,
      'icon': instance.icon,
      'isPublic': instance.isPublic,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dateModified': instance.dateModified.toIso8601String(),
      'bookIds': instance.bookIds,
      'userId': instance.userId,
    };
