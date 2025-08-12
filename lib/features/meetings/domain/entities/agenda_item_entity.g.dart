// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgendaItemEntityImpl _$$AgendaItemEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AgendaItemEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      type: $enumDecode(_$AgendaItemTypeEnumMap, json['type']),
      isRequired: json['isRequired'] as bool,
      presenterId: json['presenterId'] as String?,
      notes: json['notes'] as String?,
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$AgendaItemEntityImplToJson(
        _$AgendaItemEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'durationMinutes': instance.durationMinutes,
      'order': instance.order,
      'type': _$AgendaItemTypeEnumMap[instance.type]!,
      'isRequired': instance.isRequired,
      'presenterId': instance.presenterId,
      'notes': instance.notes,
      'materials': instance.materials,
      'isCompleted': instance.isCompleted,
    };

const _$AgendaItemTypeEnumMap = {
  AgendaItemType.introduction: 'introduction',
  AgendaItemType.discussion: 'discussion',
  AgendaItemType.presentation: 'presentation',
  AgendaItemType.breakTime: 'breakTime',
  AgendaItemType.qa: 'qa',
  AgendaItemType.conclusion: 'conclusion',
  AgendaItemType.other: 'other',
};
