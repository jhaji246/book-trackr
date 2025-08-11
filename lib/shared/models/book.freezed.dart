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
  /// Unique identifier for the book
  String get id => throw _privateConstructorUsedError;

  /// Title of the book
  String get title => throw _privateConstructorUsedError;

  /// Author(s) of the book
  String get author => throw _privateConstructorUsedError;

  /// URL to the book's cover image
  String get coverUrl => throw _privateConstructorUsedError;

  /// International Standard Book Number
  String get isbn => throw _privateConstructorUsedError;

  /// Total number of pages in the book
  int get pageCount => throw _privateConstructorUsedError;

  /// Publication date in ISO format (YYYY-MM-DD)
  String get publishedDate => throw _privateConstructorUsedError;

  /// Brief description or summary of the book
  String get description => throw _privateConstructorUsedError;

  /// List of genres the book belongs to
  List<String> get genres => throw _privateConstructorUsedError;

  /// Average rating from all users (0.0 to 5.0)
  double get averageRating => throw _privateConstructorUsedError;

  /// Publisher of the book
  String get publisher => throw _privateConstructorUsedError;

  /// Language code (e.g., 'en' for English)
  String get language => throw _privateConstructorUsedError;

  /// Total number of ratings received
  int get ratingCount => throw _privateConstructorUsedError;

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
      {String id,
      String title,
      String author,
      String coverUrl,
      String isbn,
      int pageCount,
      String publishedDate,
      String description,
      List<String> genres,
      double averageRating,
      String publisher,
      String language,
      int ratingCount});
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
    Object? coverUrl = null,
    Object? isbn = null,
    Object? pageCount = null,
    Object? publishedDate = null,
    Object? description = null,
    Object? genres = null,
    Object? averageRating = null,
    Object? publisher = null,
    Object? language = null,
    Object? ratingCount = null,
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
      coverUrl: null == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      {String id,
      String title,
      String author,
      String coverUrl,
      String isbn,
      int pageCount,
      String publishedDate,
      String description,
      List<String> genres,
      double averageRating,
      String publisher,
      String language,
      int ratingCount});
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
    Object? coverUrl = null,
    Object? isbn = null,
    Object? pageCount = null,
    Object? publishedDate = null,
    Object? description = null,
    Object? genres = null,
    Object? averageRating = null,
    Object? publisher = null,
    Object? language = null,
    Object? ratingCount = null,
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
      coverUrl: null == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl(
      {required this.id,
      required this.title,
      required this.author,
      required this.coverUrl,
      required this.isbn,
      required this.pageCount,
      required this.publishedDate,
      required this.description,
      required final List<String> genres,
      required this.averageRating,
      required this.publisher,
      required this.language,
      required this.ratingCount})
      : _genres = genres;

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  /// Unique identifier for the book
  @override
  final String id;

  /// Title of the book
  @override
  final String title;

  /// Author(s) of the book
  @override
  final String author;

  /// URL to the book's cover image
  @override
  final String coverUrl;

  /// International Standard Book Number
  @override
  final String isbn;

  /// Total number of pages in the book
  @override
  final int pageCount;

  /// Publication date in ISO format (YYYY-MM-DD)
  @override
  final String publishedDate;

  /// Brief description or summary of the book
  @override
  final String description;

  /// List of genres the book belongs to
  final List<String> _genres;

  /// List of genres the book belongs to
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  /// Average rating from all users (0.0 to 5.0)
  @override
  final double averageRating;

  /// Publisher of the book
  @override
  final String publisher;

  /// Language code (e.g., 'en' for English)
  @override
  final String language;

  /// Total number of ratings received
  @override
  final int ratingCount;

  @override
  String toString() {
    return 'Book(id: $id, title: $title, author: $author, coverUrl: $coverUrl, isbn: $isbn, pageCount: $pageCount, publishedDate: $publishedDate, description: $description, genres: $genres, averageRating: $averageRating, publisher: $publisher, language: $language, ratingCount: $ratingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      coverUrl,
      isbn,
      pageCount,
      publishedDate,
      description,
      const DeepCollectionEquality().hash(_genres),
      averageRating,
      publisher,
      language,
      ratingCount);

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
      {required final String id,
      required final String title,
      required final String author,
      required final String coverUrl,
      required final String isbn,
      required final int pageCount,
      required final String publishedDate,
      required final String description,
      required final List<String> genres,
      required final double averageRating,
      required final String publisher,
      required final String language,
      required final int ratingCount}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  /// Unique identifier for the book
  @override
  String get id;

  /// Title of the book
  @override
  String get title;

  /// Author(s) of the book
  @override
  String get author;

  /// URL to the book's cover image
  @override
  String get coverUrl;

  /// International Standard Book Number
  @override
  String get isbn;

  /// Total number of pages in the book
  @override
  int get pageCount;

  /// Publication date in ISO format (YYYY-MM-DD)
  @override
  String get publishedDate;

  /// Brief description or summary of the book
  @override
  String get description;

  /// List of genres the book belongs to
  @override
  List<String> get genres;

  /// Average rating from all users (0.0 to 5.0)
  @override
  double get averageRating;

  /// Publisher of the book
  @override
  String get publisher;

  /// Language code (e.g., 'en' for English)
  @override
  String get language;

  /// Total number of ratings received
  @override
  int get ratingCount;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
