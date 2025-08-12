import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_item_entity.freezed.dart';
part 'agenda_item_entity.g.dart';

/// Represents an agenda item for a meeting
@freezed
class AgendaItemEntity with _$AgendaItemEntity {
  const factory AgendaItemEntity({
    /// Unique identifier for the agenda item
    required String id,
    
    /// Title of the agenda item
    required String title,
    
    /// Description of the agenda item
    required String description,
    
    /// Duration of the agenda item in minutes
    required int durationMinutes,
    
    /// Order of the agenda item in the meeting
    required int order,
    
    /// Type of the agenda item
    required AgendaItemType type,
    
    /// Whether the agenda item is required or optional
    required bool isRequired,
    
    /// Presenter or person responsible for this item
    String? presenterId,
    
    /// Additional notes for the agenda item
    String? notes,
    
    /// Materials or resources needed for this item
    List<String>? materials,
    
    /// Whether this item has been completed
    @Default(false) bool isCompleted,
  }) = _AgendaItemEntity;

  factory AgendaItemEntity.fromJson(Map<String, dynamic> json) => _$AgendaItemEntityFromJson(json);
  
  /// Creates a default agenda item
  factory AgendaItemEntity.defaultItem({
    required String title,
    required String description,
    required int durationMinutes,
    required int order,
    required AgendaItemType type,
  }) {
    return AgendaItemEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      description: description,
      durationMinutes: durationMinutes,
      order: order,
      type: type,
      isRequired: true,
    );
  }
}

/// Types of agenda items
enum AgendaItemType {
  introduction('Introduction'),
  discussion('Discussion'),
  presentation('Presentation'),
  breakTime('Break'),
  qa('Q&A'),
  conclusion('Conclusion'),
  other('Other');

  const AgendaItemType(this.displayName);
  final String displayName;
}
