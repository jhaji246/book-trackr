// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String get author => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get coverUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  double? get averageRating => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get ratingCount => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get pageCount => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get isbn => throw _privateConstructorUsedError;
  @HiveField(9)
  DateTime? get publishedDate => throw _privateConstructorUsedError;
  @HiveField(10)
  List<String>? get genres => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get publisher => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get language => throw _privateConstructorUsedError;

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String author,
      @HiveField(3) String? description,
      @HiveField(4) String? coverUrl,
      @HiveField(5) double? averageRating,
      @HiveField(6) int? ratingCount,
      @HiveField(7) int? pageCount,
      @HiveField(8) String? isbn,
      @HiveField(9) DateTime? publishedDate,
      @HiveField(10) List<String>? genres,
      @HiveField(11) String? publisher,
      @HiveField(12) String? language});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? coverUrl = freezed,
    Object? averageRating = freezed,
    Object? ratingCount = freezed,
    Object? pageCount = freezed,
    Object? isbn = freezed,
    Object? publishedDate = freezed,
    Object? genres = freezed,
    Object? publisher = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String author,
      @HiveField(3) String? description,
      @HiveField(4) String? coverUrl,
      @HiveField(5) double? averageRating,
      @HiveField(6) int? ratingCount,
      @HiveField(7) int? pageCount,
      @HiveField(8) String? isbn,
      @HiveField(9) DateTime? publishedDate,
      @HiveField(10) List<String>? genres,
      @HiveField(11) String? publisher,
      @HiveField(12) String? language});
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = freezed,
    Object? coverUrl = freezed,
    Object? averageRating = freezed,
    Object? ratingCount = freezed,
    Object? pageCount = freezed,
    Object? isbn = freezed,
    Object? publishedDate = freezed,
    Object? genres = freezed,
    Object? publisher = freezed,
    Object? language = freezed,
  }) {
    return _then(_$BookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$BookImpl implements _Book {
  const _$BookImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.author,
      @HiveField(3) this.description,
      @HiveField(4) this.coverUrl,
      @HiveField(5) this.averageRating,
      @HiveField(6) this.ratingCount,
      @HiveField(7) this.pageCount,
      @HiveField(8) this.isbn,
      @HiveField(9) this.publishedDate,
      @HiveField(10) final List<String>? genres,
      @HiveField(11) this.publisher,
      @HiveField(12) this.language})
      : _genres = genres;

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String author;
  @override
  @HiveField(3)
  final String? description;
  @override
  @HiveField(4)
  final String? coverUrl;
  @override
  @HiveField(5)
  final double? averageRating;
  @override
  @HiveField(6)
  final int? ratingCount;
  @override
  @HiveField(7)
  final int? pageCount;
  @override
  @HiveField(8)
  final String? isbn;
  @override
  @HiveField(9)
  final DateTime? publishedDate;
  final List<String>? _genres;
  @override
  @HiveField(10)
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(11)
  final String? publisher;
  @override
  @HiveField(12)
  final String? language;

  @override
  String toString() {
    return 'Book(id: $id, title: $title, author: $author, description: $description, coverUrl: $coverUrl, averageRating: $averageRating, ratingCount: $ratingCount, pageCount: $pageCount, isbn: $isbn, publishedDate: $publishedDate, genres: $genres, publisher: $publisher, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      description,
      coverUrl,
      averageRating,
      ratingCount,
      pageCount,
      isbn,
      publishedDate,
      const DeepCollectionEquality().hash(_genres),
      publisher,
      language);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String title,
      @HiveField(2) required final String author,
      @HiveField(3) final String? description,
      @HiveField(4) final String? coverUrl,
      @HiveField(5) final double? averageRating,
      @HiveField(6) final int? ratingCount,
      @HiveField(7) final int? pageCount,
      @HiveField(8) final String? isbn,
      @HiveField(9) final DateTime? publishedDate,
      @HiveField(10) final List<String>? genres,
      @HiveField(11) final String? publisher,
      @HiveField(12) final String? language}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String get author;
  @override
  @HiveField(3)
  String? get description;
  @override
  @HiveField(4)
  String? get coverUrl;
  @override
  @HiveField(5)
  double? get averageRating;
  @override
  @HiveField(6)
  int? get ratingCount;
  @override
  @HiveField(7)
  int? get pageCount;
  @override
  @HiveField(8)
  String? get isbn;
  @override
  @HiveField(9)
  DateTime? get publishedDate;
  @override
  @HiveField(10)
  List<String>? get genres;
  @override
  @HiveField(11)
  String? get publisher;
  @override
  @HiveField(12)
  String? get language;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBook _$UserBookFromJson(Map<String, dynamic> json) {
  return _UserBook.fromJson(json);
}

/// @nodoc
mixin _$UserBook {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get bookId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get userId => throw _privateConstructorUsedError;
  @HiveField(3)
  BookStatus get status => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get currentPage => throw _privateConstructorUsedError;
  @HiveField(5)
  double? get rating => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get review => throw _privateConstructorUsedError;
  @HiveField(7)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBookCopyWith<UserBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookCopyWith<$Res> {
  factory $UserBookCopyWith(UserBook value, $Res Function(UserBook) then) =
      _$UserBookCopyWithImpl<$Res, UserBook>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String bookId,
      @HiveField(2) String userId,
      @HiveField(3) BookStatus status,
      @HiveField(4) int? currentPage,
      @HiveField(5) double? rating,
      @HiveField(6) String? review,
      @HiveField(7) DateTime? createdAt,
      @HiveField(8) DateTime? updatedAt});
}

/// @nodoc
class _$UserBookCopyWithImpl<$Res, $Val extends UserBook>
    implements $UserBookCopyWith<$Res> {
  _$UserBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? userId = null,
    Object? status = null,
    Object? currentPage = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookStatus,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBookImplCopyWith<$Res>
    implements $UserBookCopyWith<$Res> {
  factory _$$UserBookImplCopyWith(
          _$UserBookImpl value, $Res Function(_$UserBookImpl) then) =
      __$$UserBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String bookId,
      @HiveField(2) String userId,
      @HiveField(3) BookStatus status,
      @HiveField(4) int? currentPage,
      @HiveField(5) double? rating,
      @HiveField(6) String? review,
      @HiveField(7) DateTime? createdAt,
      @HiveField(8) DateTime? updatedAt});
}

/// @nodoc
class __$$UserBookImplCopyWithImpl<$Res>
    extends _$UserBookCopyWithImpl<$Res, _$UserBookImpl>
    implements _$$UserBookImplCopyWith<$Res> {
  __$$UserBookImplCopyWithImpl(
      _$UserBookImpl _value, $Res Function(_$UserBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? userId = null,
    Object? status = null,
    Object? currentPage = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserBookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookStatus,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$UserBookImpl implements _UserBook {
  const _$UserBookImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.bookId,
      @HiveField(2) required this.userId,
      @HiveField(3) required this.status,
      @HiveField(4) this.currentPage,
      @HiveField(5) this.rating,
      @HiveField(6) this.review,
      @HiveField(7) this.createdAt,
      @HiveField(8) this.updatedAt});

  factory _$UserBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBookImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String bookId;
  @override
  @HiveField(2)
  final String userId;
  @override
  @HiveField(3)
  final BookStatus status;
  @override
  @HiveField(4)
  final int? currentPage;
  @override
  @HiveField(5)
  final double? rating;
  @override
  @HiveField(6)
  final String? review;
  @override
  @HiveField(7)
  final DateTime? createdAt;
  @override
  @HiveField(8)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserBook(id: $id, bookId: $bookId, userId: $userId, status: $status, currentPage: $currentPage, rating: $rating, review: $review, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookId, userId, status,
      currentPage, rating, review, createdAt, updatedAt);

  /// Create a copy of UserBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBookImplCopyWith<_$UserBookImpl> get copyWith =>
      __$$UserBookImplCopyWithImpl<_$UserBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBookImplToJson(
      this,
    );
  }
}

abstract class _UserBook implements UserBook {
  const factory _UserBook(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String bookId,
      @HiveField(2) required final String userId,
      @HiveField(3) required final BookStatus status,
      @HiveField(4) final int? currentPage,
      @HiveField(5) final double? rating,
      @HiveField(6) final String? review,
      @HiveField(7) final DateTime? createdAt,
      @HiveField(8) final DateTime? updatedAt}) = _$UserBookImpl;

  factory _UserBook.fromJson(Map<String, dynamic> json) =
      _$UserBookImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get bookId;
  @override
  @HiveField(2)
  String get userId;
  @override
  @HiveField(3)
  BookStatus get status;
  @override
  @HiveField(4)
  int? get currentPage;
  @override
  @HiveField(5)
  double? get rating;
  @override
  @HiveField(6)
  String? get review;
  @override
  @HiveField(7)
  DateTime? get createdAt;
  @override
  @HiveField(8)
  DateTime? get updatedAt;

  /// Create a copy of UserBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBookImplCopyWith<_$UserBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
