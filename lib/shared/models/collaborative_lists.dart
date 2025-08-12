import 'package:freezed_annotation/freezed_annotation.dart';

part 'collaborative_lists.freezed.dart';
part 'collaborative_lists.g.dart';

/// Represents a collaborative reading list
@freezed
class CollaborativeReadingList with _$CollaborativeReadingList {
  const factory CollaborativeReadingList({
    /// List ID
    required String id,
    
    /// List name
    required String name,
    
    /// List description
    required String description,
    
    /// List creator ID
    required String creatorId,
    
    /// List collaborators
    required List<Collaborator> collaborators,
    
    /// List privacy level
    required ListPrivacy privacy,
    
    /// List books
    required List<CollaborativeBookEntry> books,
    
    /// List tags
    required List<String> tags,
    
    /// List cover image URL
    String? coverImageUrl,
    
    /// List theme color
    required String themeColor,
    
    /// List creation date
    required DateTime dateCreated,
    
    /// List last updated date
    required DateTime dateUpdated,
    
    /// Whether list is active
    required bool isActive,
    
    /// List settings
    required ListSettings settings,
    
    /// List statistics
    required ListStatistics statistics,
    
    /// List view count
    @Default(0) int viewCount,
    
    /// List favorite count
    @Default(0) int favoriteCount,
  }) = _CollaborativeReadingList;

  factory CollaborativeReadingList.fromJson(Map<String, dynamic> json) => _$CollaborativeReadingListFromJson(json);
  
  /// Creates a default collaborative list
  factory CollaborativeReadingList.defaultList({
    required String id,
    required String name,
    required String description,
    required String creatorId,
  }) {
    return CollaborativeReadingList(
      id: id,
      name: name,
      description: description,
      creatorId: creatorId,
      collaborators: [
        Collaborator(
          userId: creatorId,
          displayName: 'Creator',
          profilePictureUrl: null,
          role: CollaboratorRole.owner,
          permissions: CollaboratorPermissions.all(),
          dateJoined: DateTime.now(),
          isActive: true,
          contributionCount: 0,
          lastActivity: DateTime.now(),
        ),
      ],
      privacy: ListPrivacy.public,
      books: [],
      tags: [],
      coverImageUrl: null,
      themeColor: '#2196F3',
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      isActive: true,
      settings: ListSettings.defaultSettings(),
      statistics: ListStatistics.defaultStats(),
    );
  }
}

/// List privacy levels
enum ListPrivacy {
  public('Public'),
  unlisted('Unlisted'),
  private('Private'),
  collaborators('Collaborators Only');

  const ListPrivacy(this.displayName);
  final String displayName;
}

/// Represents a collaborator on a reading list
@freezed
class Collaborator with _$Collaborator {
  const factory Collaborator({
    /// User ID
    required String userId,
    
    /// User's display name
    required String displayName,
    
    /// User's profile picture URL
    String? profilePictureUrl,
    
    /// Collaborator role
    required CollaboratorRole role,
    
    /// Collaborator permissions
    required CollaboratorPermissions permissions,
    
    /// Date when user joined as collaborator
    required DateTime dateJoined,
    
    /// Whether collaborator is active
    required bool isActive,
    
    /// Collaborator's contribution count
    required int contributionCount,
    
    /// Last activity date
    required DateTime lastActivity,
  }) = _Collaborator;

  factory Collaborator.fromJson(Map<String, dynamic> json) => _$CollaboratorFromJson(json);
}


/// Collaborator roles
enum CollaboratorRole {
  owner('Owner'),
  admin('Admin'),
  editor('Editor'),
  contributor('Contributor'),
  viewer('Viewer');

  const CollaboratorRole(this.displayName);
  final String displayName;
}

/// Represents collaborator permissions
@freezed
class CollaboratorPermissions with _$CollaboratorPermissions {
  const factory CollaboratorPermissions({
    /// Can view list
    required bool canView,
    
    /// Can add books
    required bool canAddBooks,
    
    /// Can remove books
    required bool canRemoveBooks,
    
    /// Can edit book entries
    required bool canEditBooks,
    
    /// Can edit list details
    required bool canEditList,
    
    /// Can manage collaborators
    required bool canManageCollaborators,
    
    /// Can delete list
    required bool canDeleteList,
    
    /// Can share list
    required bool canShareList,
  }) = _CollaboratorPermissions;

  factory CollaboratorPermissions.fromJson(Map<String, dynamic> json) => _$CollaboratorPermissionsFromJson(json);
  
  /// Creates permissions for owner role
  factory CollaboratorPermissions.owner() {
    return const CollaboratorPermissions(
      canView: true,
      canAddBooks: true,
      canRemoveBooks: true,
      canEditBooks: true,
      canEditList: true,
      canManageCollaborators: true,
      canDeleteList: true,
      canShareList: true,
    );
  }
  
  /// Creates permissions for admin role
  factory CollaboratorPermissions.admin() {
    return const CollaboratorPermissions(
      canView: true,
      canAddBooks: true,
      canRemoveBooks: true,
      canEditBooks: true,
      canEditList: true,
      canManageCollaborators: true,
      canDeleteList: false,
      canShareList: true,
    );
  }
  
  /// Creates permissions for editor role
  factory CollaboratorPermissions.editor() {
    return const CollaboratorPermissions(
      canView: true,
      canAddBooks: true,
      canRemoveBooks: true,
      canEditBooks: true,
      canEditList: false,
      canManageCollaborators: false,
      canDeleteList: false,
      canShareList: true,
    );
  }
  
  /// Creates permissions for contributor role
  factory CollaboratorPermissions.contributor() {
    return const CollaboratorPermissions(
      canView: true,
      canAddBooks: true,
      canRemoveBooks: false,
      canEditBooks: false,
      canEditList: false,
      canManageCollaborators: false,
      canDeleteList: false,
      canShareList: true,
    );
  }
  
  /// Creates permissions for viewer role
  factory CollaboratorPermissions.viewer() {
    return const CollaboratorPermissions(
      canView: true,
      canAddBooks: false,
      canRemoveBooks: false,
      canEditBooks: false,
      canEditList: false,
      canManageCollaborators: false,
      canDeleteList: false,
      canShareList: false,
    );
  }
  
  /// Creates all permissions
  factory CollaboratorPermissions.all() {
    return const CollaboratorPermissions(
      canView: true,
      canAddBooks: true,
      canRemoveBooks: true,
      canEditBooks: true,
      canEditList: true,
      canManageCollaborators: true,
      canDeleteList: true,
      canShareList: true,
    );
  }
}

/// Represents a book entry in a collaborative list
@freezed
class CollaborativeBookEntry with _$CollaborativeBookEntry {
  const factory CollaborativeBookEntry({
    /// Book ID
    required String bookId,
    
    /// Book title
    required String title,
    
    /// Book author
    required String author,
    
    /// Book cover URL
    String? coverUrl,
    
    /// Book description
    String? description,
    
    /// Book genre
    String? genre,
    
    /// Book rating
    double? rating,
    
    /// Book review
    String? review,
    
    /// Book notes
    String? notes,
    
    /// Book tags
    required List<String> tags,
    
    /// Book status
    required BookStatus status,
    
    /// Book priority
    required BookPriority priority,
    
    /// Book order in list
    required int order,
    
    /// User who added the book
    required String addedBy,
    
    /// Date when book was added
    required DateTime dateAdded,
    
    /// Date when book was last updated
    required DateTime dateUpdated,
    
    /// Book recommendations
    required List<String> recommendations,
    
    /// Book discussions
    required List<BookDiscussion> discussions,
  }) = _CollaborativeBookEntry;

  factory CollaborativeBookEntry.fromJson(Map<String, dynamic> json) => _$CollaborativeBookEntryFromJson(json);
  
  /// Creates a default book entry
  factory CollaborativeBookEntry.defaultEntry({
    required String bookId,
    required String title,
    required String author,
    String? coverUrl,
    String? description,
    String? genre,
    required String addedBy,
    required int order,
  }) {
    return CollaborativeBookEntry(
      bookId: bookId,
      title: title,
      author: author,
      coverUrl: coverUrl,
      description: description,
      genre: genre,
      rating: null,
      review: null,
      notes: null,
      tags: genre != null ? [genre] : [],
      status: BookStatus.toRead,
      priority: BookPriority.medium,
      order: order,
      addedBy: addedBy,
      dateAdded: DateTime.now(),
      dateUpdated: DateTime.now(),
      recommendations: [],
      discussions: [],
    );
  }
}

/// Book status in collaborative list
enum BookStatus {
  toRead('To Read'),
  reading('Reading'),
  completed('Completed'),
  abandoned('Abandoned'),
  onHold('On Hold');

  const BookStatus(this.displayName);
  final String displayName;
}

/// Book priority in collaborative list
enum BookPriority {
  low('Low'),
  medium('Medium'),
  high('High'),
  urgent('Urgent');

  const BookPriority(this.displayName);
  final String displayName;
}

/// Represents a book discussion in a collaborative list
@freezed
class BookDiscussion with _$BookDiscussion {
  const factory BookDiscussion({
    /// Discussion ID
    required String id,
    
    /// Discussion title
    required String title,
    
    /// Discussion content
    required String content,
    
    /// Discussion creator ID
    required String creatorId,
    
    /// Discussion creation date
    required DateTime dateCreated,
    
    /// Discussion last updated date
    required DateTime dateUpdated,
    
    /// Discussion replies
    required List<DiscussionReply> replies,
    
    /// Discussion tags
    required List<String> tags,
    
    /// Whether discussion is resolved
    required bool isResolved,
    
    /// Discussion resolution notes
    String? resolutionNotes,
  }) = BookDiscussion;

  factory BookDiscussion.fromJson(Map<String, dynamic> json) => _$BookDiscussionFromJson(json);
}

/// Represents a reply to a book discussion
@freezed
class DiscussionReply with _$DiscussionReply {
  const factory DiscussionReply({
    /// Reply ID
    required String id,
    
    /// Reply content
    required String content,
    
    /// Reply author ID
    required String authorId,
    
    /// Reply creation date
    required DateTime dateCreated,
    
    /// Reply last updated date
    required DateTime dateUpdated,
    
    /// Whether reply is helpful
    required bool isHelpful,
    
    /// Reply helpful votes
    required int helpfulVotes,
    
    /// Reply tags
    required List<String> tags,
  }) = DiscussionReply;

  factory DiscussionReply.fromJson(Map<String, dynamic> json) => _$DiscussionReplyFromJson(json);
}

/// Represents list settings
@freezed
class ListSettings with _$ListSettings {
  const factory ListSettings({
    /// Whether list allows public comments
    required bool allowPublicComments,
    
    /// Whether list allows public ratings
    required bool allowPublicRatings,
    
    /// Whether list allows public reviews
    required bool allowPublicReviews,
    
    /// Whether list requires approval for new books
    required bool requireApproval,
    
    /// Whether list allows duplicate books
    required bool allowDuplicates,
    
    /// Maximum number of books allowed
    int? maxBooks,
    
    /// Whether list shows collaborator names
    required bool showCollaboratorNames,
    
    /// Whether list shows book ratings
    required bool showBookRatings,
    
    /// Whether list shows book reviews
    required bool showBookReviews,
    
    /// List sorting preference
    required ListSorting sorting,
    
    /// List filtering preferences
    required ListFiltering filtering,
  }) = ListSettings;

  factory ListSettings.fromJson(Map<String, dynamic> json) => _$ListSettingsFromJson(json);
  
  /// Creates default list settings
  factory ListSettings.defaultSettings() {
    return const ListSettings(
      allowPublicComments: true,
      allowPublicRatings: true,
      allowPublicReviews: true,
      requireApproval: false,
      allowDuplicates: false,
      maxBooks: null,
      showCollaboratorNames: true,
      showBookRatings: true,
      showBookReviews: true,
      sorting: ListSorting.dateAdded,
      filtering: ListFiltering.all,
    );
  }
}

/// List sorting options
enum ListSorting {
  dateAdded('Date Added'),
  title('Title'),
  author('Author'),
  rating('Rating'),
  priority('Priority'),
  status('Status'),
  custom('Custom Order');

  const ListSorting(this.displayName);
  final String displayName;
}

/// List filtering options
enum ListFiltering {
  all('All Books'),
  toRead('To Read'),
  reading('Reading'),
  completed('Completed'),
  abandoned('Abandoned'),
  onHold('On Hold');

  const ListFiltering(this.displayName);
  final String displayName;
}

/// Represents list statistics
@freezed
class ListStatistics with _$ListStatistics {
  const factory ListStatistics({
    /// Total number of books
    required int totalBooks,
    
    /// Number of books by status
    required Map<BookStatus, int> booksByStatus,
    
    /// Number of books by priority
    required Map<BookPriority, int> booksByPriority,
    
    /// Average book rating
    required double averageRating,
    
    /// Total number of ratings
    required int totalRatings,
    
    /// Number of books with reviews
    required int booksWithReviews,
    
    /// Number of active collaborators
    required int activeCollaborators,
    
    /// List view count
    required int viewCount,
    
    /// List share count
    required int shareCount,
    
    /// List favorite count
    required int favoriteCount,
    
    /// Last activity date
    required DateTime lastActivity,
  }) = ListStatistics;

  factory ListStatistics.fromJson(Map<String, dynamic> json) => _$ListStatisticsFromJson(json);
  
  /// Creates default list statistics
  factory ListStatistics.defaultStats() {
    return ListStatistics(
      totalBooks: 0,
      booksByStatus: {
        for (final status in BookStatus.values) status: 0,
      },
      booksByPriority: {
        for (final priority in BookPriority.values) priority: 0,
      },
      averageRating: 0.0,
      totalRatings: 0,
      booksWithReviews: 0,
      activeCollaborators: 0,
      viewCount: 0,
      shareCount: 0,
      favoriteCount: 0,
      lastActivity: DateTime.now(),
    );
  }
}

/// Extension methods for CollaborativeReadingList
extension CollaborativeReadingListExtension on CollaborativeReadingList {
  /// Check if list is public
  bool get isPublic => privacy == ListPrivacy.public;
  
  /// Check if list is private
  bool get isPrivate => privacy == ListPrivacy.private;
  
  /// Check if list is unlisted
  bool get isUnlisted => privacy == ListPrivacy.unlisted;
  
  /// Check if list is collaborators only
  bool get isCollaboratorsOnly => privacy == ListPrivacy.collaborators;
  
  /// Get list age
  Duration get age => DateTime.now().difference(dateCreated);
  
  /// Get list age in days
  int get ageInDays => age.inDays;
  
  /// Check if list is recent (within 7 days)
  bool get isRecent => ageInDays < 7;
  
  /// Check if list is popular (high view/favorite count)
  bool get isPopular => viewCount > 100 || favoriteCount > 10;
  
  /// Get list completion percentage
  double get completionPercentage {
    if (books.isEmpty) return 0.0;
    final completedBooks = books.where((book) => book.status == BookStatus.completed).length;
    return (completedBooks / books.length) * 100;
  }
  
  /// Get list reading progress
  double get readingProgress {
    if (books.isEmpty) return 0.0;
    final readingBooks = books.where((book) => book.status == BookStatus.reading).length;
    final completedBooks = books.where((book) => book.status == BookStatus.completed).length;
    return ((readingBooks + completedBooks) / books.length) * 100;
  }
  
  /// Get list average rating
  double get averageRating {
    final ratedBooks = books.where((book) => book.rating != null).toList();
    if (ratedBooks.isEmpty) return 0.0;
    
    final totalRating = ratedBooks.fold<double>(0.0, (sum, book) => sum + (book.rating ?? 0));
    return totalRating / ratedBooks.length;
  }
  
  /// Check if user is owner
  bool isOwner(String userId) => creatorId == userId;
  
  /// Check if user is collaborator
  bool isCollaborator(String userId) => collaborators.any((c) => c.userId == userId);
  
  /// Check if user is admin
  bool isAdmin(String userId) {
    final collaborator = collaborators.firstWhere((c) => c.userId == userId);
    return collaborator.role == CollaboratorRole.admin;
  }
  
  /// Get user's collaborator info
  Collaborator? getCollaboratorInfo(String userId) {
    try {
      return collaborators.firstWhere((c) => c.userId == userId);
    } catch (e) {
      return null;
    }
  }
  
  /// Check if user can edit list
  bool canEdit(String userId) {
    if (isOwner(userId)) return true;
    final collaborator = getCollaboratorInfo(userId);
    return collaborator?.permissions.canEditList ?? false;
  }
  
  /// Check if user can add books
  bool canAddBooks(String userId) {
    if (isOwner(userId)) return true;
    final collaborator = getCollaboratorInfo(userId);
    return collaborator?.permissions.canAddBooks ?? false;
  }
  
  /// Check if user can remove books
  bool canRemoveBooks(String userId) {
    if (isOwner(userId)) return true;
    final collaborator = getCollaboratorInfo(userId);
    return collaborator?.permissions.canRemoveBooks ?? false;
  }
  
  /// Check if user can manage collaborators
  bool canManageCollaborators(String userId) {
    if (isOwner(userId)) return true;
    final collaborator = getCollaboratorInfo(userId);
    return collaborator?.permissions.canManageCollaborators ?? false;
  }
  
  /// Get books by status
  List<CollaborativeBookEntry> getBooksByStatus(BookStatus status) {
    return books.where((book) => book.status == status).toList();
  }
  
  /// Get books by priority
  List<CollaborativeBookEntry> getBooksByPriority(BookPriority priority) {
    return books.where((book) => book.priority == priority).toList();
  }
  
  /// Get books by genre
  List<CollaborativeBookEntry> getBooksByGenre(String genre) {
    return books.where((book) => book.genre == genre).toList();
  }
  
  /// Get sorted books
  List<CollaborativeBookEntry> getSortedBooks(ListSorting sorting) {
    final sortedBooks = List<CollaborativeBookEntry>.from(books);
    
    switch (sorting) {
      case ListSorting.dateAdded:
        sortedBooks.sort((a, b) => b.dateAdded.compareTo(a.dateAdded));
        break;
      case ListSorting.title:
        sortedBooks.sort((a, b) => a.title.compareTo(b.title));
        break;
      case ListSorting.author:
        sortedBooks.sort((a, b) => a.author.compareTo(b.author));
        break;
      case ListSorting.rating:
        sortedBooks.sort((a, b) => (b.rating ?? 0).compareTo(a.rating ?? 0));
        break;
      case ListSorting.priority:
        sortedBooks.sort((a, b) => a.priority.index.compareTo(b.priority.index));
        break;
      case ListSorting.status:
        sortedBooks.sort((a, b) => a.status.index.compareTo(b.status.index));
        break;
      case ListSorting.custom:
        sortedBooks.sort((a, b) => a.order.compareTo(b.order));
        break;
    }
    
    return sortedBooks;
  }
}

/// Extension methods for CollaborativeBookEntry
extension CollaborativeBookEntryExtension on CollaborativeBookEntry {
  /// Check if book has rating
  bool get hasRating => rating != null;
  
  /// Check if book has review
  bool get hasReview => review != null && review!.isNotEmpty;
  
  /// Check if book has notes
  bool get hasNotes => notes != null && notes!.isNotEmpty;
  
  /// Check if book is high priority
  bool get isHighPriority => priority == BookPriority.high || priority == BookPriority.urgent;
  
  /// Check if book is completed
  bool get isCompleted => status == BookStatus.completed;
  
  /// Check if book is reading
  bool get isReading => status == BookStatus.reading;
  
  /// Check if book is to read
  bool get isToRead => status == BookStatus.toRead;
  
  /// Get book age
  Duration get age => DateTime.now().difference(dateAdded);
  
  /// Get book age in days
  int get ageInDays => age.inDays;
  
  /// Check if book is recent (within 7 days)
  bool get isRecent => ageInDays < 7;
  
  /// Get book status color
  String get statusColor {
    switch (status) {
      case BookStatus.toRead:
        return '#2196F3';
      case BookStatus.reading:
        return '#FF9800';
      case BookStatus.completed:
        return '#4CAF50';
      case BookStatus.abandoned:
        return '#F44336';
      case BookStatus.onHold:
        return '#9C27B0';
    }
  }
  
  /// Get priority color
  String get priorityColor {
    switch (priority) {
      case BookPriority.low:
        return '#4CAF50';
      case BookPriority.medium:
        return '#FF9800';
      case BookPriority.high:
        return '#F44336';
      case BookPriority.urgent:
        return '#9C27B0';
    }
  }
}
