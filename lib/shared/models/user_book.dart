import 'book.dart';
import 'reading_status.dart';

class UserBook {
  final String id;
  final String title;
  final String author;
  final String description;
  final String coverUrl;
  final double averageRating;
  final int ratingCount;
  final int pageCount;
  final String isbn;
  final String publishedDate;
  final List<String> genres;
  final String publisher;
  final String language;
  final ReadingStatus status;
  final DateTime dateAdded;
  final DateTime? dateStarted;
  final DateTime? dateCompleted;
  final int currentPage;
  final String notes;
  final int rating;

  const UserBook({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.coverUrl,
    required this.averageRating,
    required this.ratingCount,
    required this.pageCount,
    required this.isbn,
    required this.publishedDate,
    required this.genres,
    required this.publisher,
    required this.language,
    required this.status,
    required this.dateAdded,
    this.dateStarted,
    this.dateCompleted,
    required this.currentPage,
    required this.notes,
    required this.rating,
  });

  factory UserBook.fromBook(Book book) {
    return UserBook(
      id: book.id,
      title: book.title,
      author: book.author,
      description: book.description,
      coverUrl: book.coverUrl,
      averageRating: book.averageRating,
      ratingCount: book.ratingCount,
      pageCount: book.pageCount,
      isbn: book.isbn,
      publishedDate: book.publishedDate,
      genres: book.genres,
      publisher: book.publisher,
      language: book.language,
      status: ReadingStatus.toRead,
      dateAdded: DateTime.now(),
      dateStarted: null,
      dateCompleted: null,
      currentPage: 0,
      notes: '',
      rating: 0,
    );
  }

  factory UserBook.fromJson(Map<String, dynamic> json) {
    return UserBook(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      coverUrl: json['coverUrl'] as String,
      averageRating: (json['averageRating'] as num).toDouble(),
      ratingCount: json['ratingCount'] as int,
      pageCount: json['pageCount'] as int,
      isbn: json['isbn'] as String,
      publishedDate: json['publishedDate'] as String,
      genres: List<String>.from(json['genres'] as List),
      publisher: json['publisher'] as String,
      language: json['language'] as String,
      status: ReadingStatus.values.firstWhere(
        (e) => e.toString() == json['status'],
        orElse: () => ReadingStatus.toRead,
      ),
      dateAdded: DateTime.parse(json['dateAdded'] as String),
      dateStarted: json['dateStarted'] != null 
          ? DateTime.parse(json['dateStarted'] as String) 
          : null,
      dateCompleted: json['dateCompleted'] != null 
          ? DateTime.parse(json['dateCompleted'] as String) 
          : null,
      currentPage: json['currentPage'] as int,
      notes: json['notes'] as String,
      rating: json['rating'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'description': description,
      'coverUrl': coverUrl,
      'averageRating': averageRating,
      'ratingCount': ratingCount,
      'pageCount': pageCount,
      'isbn': isbn,
      'publishedDate': publishedDate,
      'genres': genres,
      'publisher': publisher,
      'language': language,
      'status': status.toString(),
      'dateAdded': dateAdded.toIso8601String(),
      'dateStarted': dateStarted?.toIso8601String(),
      'dateCompleted': dateCompleted?.toIso8601String(),
      'currentPage': currentPage,
      'notes': notes,
      'rating': rating,
    };
  }

  UserBook copyWith({
    String? id,
    String? title,
    String? author,
    String? description,
    String? coverUrl,
    double? averageRating,
    int? ratingCount,
    int? pageCount,
    String? isbn,
    String? publishedDate,
    List<String>? genres,
    String? publisher,
    String? language,
    ReadingStatus? status,
    DateTime? dateAdded,
    DateTime? dateStarted,
    DateTime? dateCompleted,
    int? currentPage,
    String? notes,
    int? rating,
  }) {
    return UserBook(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      description: description ?? this.description,
      coverUrl: coverUrl ?? this.coverUrl,
      averageRating: averageRating ?? this.averageRating,
      ratingCount: ratingCount ?? this.ratingCount,
      pageCount: pageCount ?? this.pageCount,
      isbn: isbn ?? this.isbn,
      publishedDate: publishedDate ?? this.publishedDate,
      genres: genres ?? this.genres,
      publisher: publisher ?? this.publisher,
      language: language ?? this.language,
      status: status ?? this.status,
      dateAdded: dateAdded ?? this.dateAdded,
      dateStarted: dateStarted ?? this.dateStarted,
      dateCompleted: dateCompleted ?? this.dateCompleted,
      currentPage: currentPage ?? this.currentPage,
      notes: notes ?? this.notes,
      rating: rating ?? this.rating,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UserBook &&
        other.id == id &&
        other.title == title &&
        other.author == author &&
        other.description == description &&
        other.coverUrl == coverUrl &&
        other.averageRating == averageRating &&
        other.ratingCount == ratingCount &&
        other.pageCount == pageCount &&
        other.isbn == isbn &&
        other.publishedDate == publishedDate &&
        other.genres == genres &&
        other.publisher == publisher &&
        other.language == language &&
        other.status == status &&
        other.dateAdded == dateAdded &&
        other.dateStarted == dateStarted &&
        other.dateCompleted == dateCompleted &&
        other.currentPage == currentPage &&
        other.notes == notes &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return Object.hash(
      id, title, author, description, coverUrl, averageRating,
      ratingCount, pageCount, isbn, publishedDate, genres,
      publisher, language, status, dateAdded, dateStarted,
      dateCompleted, currentPage, notes, rating,
    );
  }

  @override
  String toString() {
    return 'UserBook(id: $id, title: $title, author: $author, status: $status)';
  }
} 