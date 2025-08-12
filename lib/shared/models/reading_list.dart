import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_book.dart';

part 'reading_list.freezed.dart';
part 'reading_list.g.dart';

/// Represents a custom reading list created by the user
@freezed
class ReadingList with _$ReadingList {
  const factory ReadingList({
    /// Unique identifier for the reading list
    required String id,
    
    /// Name of the reading list
    required String name,
    
    /// Description of the reading list
    required String description,
    
    /// Color theme for the reading list (hex color)
    required String color,
    
    /// Icon for the reading list
    required String icon,
    
    /// Whether the list is public or private
    required bool isPublic,
    
    /// Date when the list was created
    required DateTime dateCreated,
    
    /// Date when the list was last modified
    required DateTime dateModified,
    
    /// List of book IDs in this reading list
    required List<String> bookIds,
    
    /// User ID who created this list
    required String userId,
  }) = _ReadingList;

  /// Creates a ReadingList instance from JSON data
  factory ReadingList.fromJson(Map<String, dynamic> json) => _$ReadingListFromJson(json);
  
  /// Creates a default reading list
  factory ReadingList.defaultList({
    required String userId,
    required String name,
    String? description,
    String? color,
    String? icon,
  }) {
    return ReadingList(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      description: description ?? 'A custom reading list',
      color: color ?? '#6200EE',
      icon: icon ?? 'bookmark',
      isPublic: false,
      dateCreated: DateTime.now(),
      dateModified: DateTime.now(),
      bookIds: [],
      userId: userId,
    );
  }
}

/// Extension methods for ReadingList
extension ReadingListExtension on ReadingList {
  /// Get the number of books in this list
  int get bookCount => bookIds.length;
  
  /// Check if the list is empty
  bool get isEmpty => bookIds.isEmpty;
  
  /// Check if the list is not empty
  bool get isNotEmpty => bookIds.isNotEmpty;
  
  /// Add a book to the list
  ReadingList addBook(String bookId) {
    if (!bookIds.contains(bookId)) {
      return copyWith(
        bookIds: [...bookIds, bookId],
        dateModified: DateTime.now(),
      );
    }
    return this;
  }
  
  /// Remove a book from the list
  ReadingList removeBook(String bookId) {
    return copyWith(
      bookIds: bookIds.where((id) => id != bookId).toList(),
      dateModified: DateTime.now(),
    );
  }
  
  /// Check if a book is in this list
  bool containsBook(String bookId) {
    return bookIds.contains(bookId);
  }
  
  /// Move a book to a different position in the list
  ReadingList moveBook(String bookId, int newIndex) {
    if (!bookIds.contains(bookId)) return this;
    
    final currentIndex = bookIds.indexOf(bookId);
    if (currentIndex == -1 || newIndex < 0 || newIndex >= bookIds.length) {
      return this;
    }
    
    final newBookIds = List<String>.from(bookIds);
    newBookIds.removeAt(currentIndex);
    newBookIds.insert(newIndex, bookId);
    
    return copyWith(
      bookIds: newBookIds,
      dateModified: DateTime.now(),
    );
  }
  
  /// Get a copy with updated name and description
  ReadingList updateDetails({
    String? name,
    String? description,
    String? color,
    String? icon,
  }) {
    return copyWith(
      name: name ?? this.name,
      description: description ?? this.description,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      dateModified: DateTime.now(),
    );
  }
}

/// Predefined reading list templates
class ReadingListTemplates {
  static const List<Map<String, dynamic>> templates = [
    {
      'name': 'Currently Reading',
      'description': 'Books I\'m actively reading',
      'color': '#FF6B35',
      'icon': 'play_arrow',
    },
    {
      'name': 'Want to Read',
      'description': 'Books I plan to read',
      'color': '#4ECDC4',
      'icon': 'bookmark_add',
    },
    {
      'name': 'Completed',
      'description': 'Books I\'ve finished reading',
      'color': '#45B7D1',
      'icon': 'check_circle',
    },
    {
      'name': 'Favorites',
      'description': 'My all-time favorite books',
      'color': '#FFD93D',
      'icon': 'favorite',
    },
    {
      'name': 'DNF (Did Not Finish)',
      'description': 'Books I started but couldn\'t finish',
      'color': '#FF6B6B',
      'icon': 'stop',
    },
    {
      'name': 'Re-reads',
      'description': 'Books I want to read again',
      'color': '#6C5CE7',
      'icon': 'replay',
    },
  ];
  
  /// Create a reading list from a template
  static ReadingList fromTemplate({
    required String userId,
    required int templateIndex,
  }) {
    if (templateIndex < 0 || templateIndex >= templates.length) {
      throw ArgumentError('Invalid template index');
    }
    
    final template = templates[templateIndex];
    return ReadingList.defaultList(
      userId: userId,
      name: template['name'] as String,
      description: template['description'] as String,
      color: template['color'] as String,
      icon: template['icon'] as String,
    );
  }
  
  /// Get all available templates
  static List<Map<String, dynamic>> get allTemplates => templates;
}
