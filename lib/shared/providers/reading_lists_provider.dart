import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/reading_list.dart';
import '../models/user_book.dart';
import '../models/user.dart';
import 'auth_provider.dart';

/// Provider for managing reading lists
final readingListsProvider = StateNotifierProvider<ReadingListsNotifier, ReadingListsState>((ref) {
  final authState = ref.watch(authProvider);
  return ReadingListsNotifier(authState.user?.uid);
});

/// State for reading lists
class ReadingListsState {
  final List<ReadingList> lists;
  final bool isLoading;
  final String? error;
  final String? selectedListId;

  const ReadingListsState({
    this.lists = const [],
    this.isLoading = false,
    this.error,
    this.selectedListId,
  });

  ReadingListsState copyWith({
    List<ReadingList>? lists,
    bool? isLoading,
    String? error,
    String? selectedListId,
  }) {
    return ReadingListsState(
      lists: lists ?? this.lists,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      selectedListId: selectedListId ?? this.selectedListId,
    );
  }

  /// Get the currently selected list
  ReadingList? get selectedList {
    if (selectedListId == null) return null;
    try {
      return lists.firstWhere((list) => list.id == selectedListId);
    } catch (e) {
      return null;
    }
  }

  /// Get lists by user ID
  List<ReadingList> getListsForUser(String userId) {
    return lists.where((list) => list.userId == userId).toList();
  }

  /// Get a specific list by ID
  ReadingList? getListById(String listId) {
    try {
      return lists.firstWhere((list) => list.id == listId);
    } catch (e) {
      return null;
    }
  }

  /// Get books in a specific list
  List<UserBook> getBooksInList(String listId, List<UserBook> allBooks) {
    final list = getListById(listId);
    if (list == null) return [];
    
    return allBooks.where((book) => list.bookIds.contains(book.id)).toList();
  }
}

/// Notifier for managing reading lists
class ReadingListsNotifier extends StateNotifier<ReadingListsState> {
  final String? _userId;

  ReadingListsNotifier(this._userId) : super(const ReadingListsState()) {
    _initializeDefaultLists();
  }

  /// Initialize default reading lists for new users
  void _initializeDefaultLists() {
    if (_userId == null) return;

    final defaultLists = ReadingListTemplates.allTemplates.asMap().entries.map((entry) {
      return ReadingListTemplates.fromTemplate(
        userId: _userId!,
        templateIndex: entry.key,
      );
    }).toList();

    state = state.copyWith(lists: defaultLists);
  }

  /// Create a new reading list
  void createList({
    required String name,
    required String description,
    String? color,
    String? icon,
  }) {
    if (_userId == null) return;

    final newList = ReadingList.defaultList(
      userId: _userId!,
      name: name,
      description: description,
      color: color,
      icon: icon,
    );

    state = state.copyWith(
      lists: [...state.lists, newList],
      error: null,
    );
  }

  /// Update an existing reading list
  void updateList(String listId, {
    String? name,
    String? description,
    String? color,
    String? icon,
  }) {
    final updatedLists = state.lists.map((list) {
      if (list.id == listId) {
        return list.updateDetails(
          name: name,
          description: description,
          color: color,
          icon: icon,
        );
      }
      return list;
    }).toList();

    state = state.copyWith(
      lists: updatedLists,
      error: null,
    );
  }

  /// Delete a reading list
  void deleteList(String listId) {
    final updatedLists = state.lists.where((list) => list.id != listId).toList();
    
    state = state.copyWith(
      lists: updatedLists,
      selectedListId: state.selectedListId == listId ? null : state.selectedListId,
      error: null,
    );
  }

  /// Add a book to a reading list
  void addBookToList(String listId, String bookId) {
    final updatedLists = state.lists.map((list) {
      if (list.id == listId) {
        return list.addBook(bookId);
      }
      return list;
    }).toList();

    state = state.copyWith(
      lists: updatedLists,
      error: null,
    );
  }

  /// Remove a book from a reading list
  void removeBookFromList(String listId, String bookId) {
    final updatedLists = state.lists.map((list) {
      if (list.id == listId) {
        return list.removeBook(bookId);
      }
      return list;
    }).toList();

    state = state.copyWith(
      lists: updatedLists,
      error: null,
    );
  }

  /// Move a book within a list
  void moveBookInList(String listId, String bookId, int newIndex) {
    final updatedLists = state.lists.map((list) {
      if (list.id == listId) {
        return list.moveBook(bookId, newIndex);
      }
      return list;
    }).toList();

    state = state.copyWith(
      lists: updatedLists,
      error: null,
    );
  }

  /// Select a reading list
  void selectList(String? listId) {
    state = state.copyWith(selectedListId: listId);
  }

  /// Get books in the currently selected list
  List<UserBook> getBooksInSelectedList(List<UserBook> allBooks) {
    if (state.selectedListId == null) return [];
    return state.getBooksInList(state.selectedListId!, allBooks);
  }

  /// Check if a book is in a specific list
  bool isBookInList(String listId, String bookId) {
    final list = state.getListById(listId);
    return list?.containsBook(bookId) ?? false;
  }

  /// Get all lists that contain a specific book
  List<ReadingList> getListsContainingBook(String bookId) {
    return state.lists.where((list) => list.containsBook(bookId)).toList();
  }

  /// Clear any errors
  void clearError() {
    state = state.copyWith(error: null);
  }

  /// Set an error message
  void setError(String error) {
    state = state.copyWith(error: error);
  }

  /// Get lists by category (for filtering)
  List<ReadingList> getListsByCategory(String category) {
    switch (category.toLowerCase()) {
      case 'all':
        return state.lists;
      case 'public':
        return state.lists.where((list) => list.isPublic).toList();
      case 'private':
        return state.lists.where((list) => !list.isPublic).toList();
      case 'recent':
        final sortedLists = List<ReadingList>.from(state.lists);
        sortedLists.sort((a, b) => b.dateModified.compareTo(a.dateModified));
        return sortedLists.take(5).toList();
      default:
        return state.lists;
    }
  }

  /// Search lists by name or description
  List<ReadingList> searchLists(String query) {
    if (query.isEmpty) return state.lists;
    
    final lowercaseQuery = query.toLowerCase();
    return state.lists.where((list) {
      return list.name.toLowerCase().contains(lowercaseQuery) ||
             list.description.toLowerCase().contains(lowercaseQuery);
    }).toList();
  }
}
