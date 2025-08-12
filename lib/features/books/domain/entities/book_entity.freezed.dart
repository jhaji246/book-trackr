// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get isbn => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  String get publishedDate => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get coverUrl => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  int get ratingCount => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String? get readingStatus => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  DateTime? get dateAdded => throw _privateConstructorUsedError;
  DateTime? get dateStarted => throw _privateConstructorUsedError;
  DateTime? get dateCompleted => throw _privateConstructorUsedError;

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookEntityCopyWith<BookEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEntityCopyWith<$Res> {
  factory $BookEntityCopyWith(
          BookEntity value, $Res Function(BookEntity) then) =
      _$BookEntityCopyWithImpl<$Res, BookEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String author,
      String description,
      String isbn,
      int pageCount,
      String publishedDate,
      String publisher,
      String coverUrl,
      List<String> genres,
      double averageRating,
      int ratingCount,
      String language,
      String? readingStatus,
      int? currentPage,
      DateTime? dateAdded,
      DateTime? dateStarted,
      DateTime? dateCompleted});
}

/// @nodoc
class _$BookEntityCopyWithImpl<$Res, $Val extends BookEntity>
    implements $BookEntityCopyWith<$Res> {
  _$BookEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? isbn = null,
    Object? pageCount = null,
    Object? publishedDate = null,
    Object? publisher = null,
    Object? coverUrl = null,
    Object? genres = null,
    Object? averageRating = null,
    Object? ratingCount = null,
    Object? language = null,
    Object? readingStatus = freezed,
    Object? currentPage = freezed,
    Object? dateAdded = freezed,
    Object? dateStarted = freezed,
    Object? dateCompleted = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: null == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      readingStatus: freezed == readingStatus
          ? _value.readingStatus
          : readingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateStarted: freezed == dateStarted
          ? _value.dateStarted
          : dateStarted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCompleted: freezed == dateCompleted
          ? _value.dateCompleted
          : dateCompleted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookEntityImplCopyWith<$Res>
    implements $BookEntityCopyWith<$Res> {
  factory _$$BookEntityImplCopyWith(
          _$BookEntityImpl value, $Res Function(_$BookEntityImpl) then) =
      __$$BookEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String author,
      String description,
      String isbn,
      int pageCount,
      String publishedDate,
      String publisher,
      String coverUrl,
      List<String> genres,
      double averageRating,
      int ratingCount,
      String language,
      String? readingStatus,
      int? currentPage,
      DateTime? dateAdded,
      DateTime? dateStarted,
      DateTime? dateCompleted});
}

/// @nodoc
class __$$BookEntityImplCopyWithImpl<$Res>
    extends _$BookEntityCopyWithImpl<$Res, _$BookEntityImpl>
    implements _$$BookEntityImplCopyWith<$Res> {
  __$$BookEntityImplCopyWithImpl(
      _$BookEntityImpl _value, $Res Function(_$BookEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? isbn = null,
    Object? pageCount = null,
    Object? publishedDate = null,
    Object? publisher = null,
    Object? coverUrl = null,
    Object? genres = null,
    Object? averageRating = null,
    Object? ratingCount = null,
    Object? language = null,
    Object? readingStatus = freezed,
    Object? currentPage = freezed,
    Object? dateAdded = freezed,
    Object? dateStarted = freezed,
    Object? dateCompleted = freezed,
  }) {
    return _then(_$BookEntityImpl(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: null == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      readingStatus: freezed == readingStatus
          ? _value.readingStatus
          : readingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateStarted: freezed == dateStarted
          ? _value.dateStarted
          : dateStarted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCompleted: freezed == dateCompleted
          ? _value.dateCompleted
          : dateCompleted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$BookEntityImpl extends _BookEntity {
  const _$BookEntityImpl(
      {required this.id,
      required this.title,
      required this.author,
      required this.description,
      required this.isbn,
      required this.pageCount,
      required this.publishedDate,
      required this.publisher,
      required this.coverUrl,
      required final List<String> genres,
      required this.averageRating,
      required this.ratingCount,
      required this.language,
      this.readingStatus,
      this.currentPage,
      this.dateAdded,
      this.dateStarted,
      this.dateCompleted})
      : _genres = genres,
        super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String author;
  @override
  final String description;
  @override
  final String isbn;
  @override
  final int pageCount;
  @override
  final String publishedDate;
  @override
  final String publisher;
  @override
  final String coverUrl;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final double averageRating;
  @override
  final int ratingCount;
  @override
  final String language;
  @override
  final String? readingStatus;
  @override
  final int? currentPage;
  @override
  final DateTime? dateAdded;
  @override
  final DateTime? dateStarted;
  @override
  final DateTime? dateCompleted;

  @override
  String toString() {
    return 'BookEntity(id: $id, title: $title, author: $author, description: $description, isbn: $isbn, pageCount: $pageCount, publishedDate: $publishedDate, publisher: $publisher, coverUrl: $coverUrl, genres: $genres, averageRating: $averageRating, ratingCount: $ratingCount, language: $language, readingStatus: $readingStatus, currentPage: $currentPage, dateAdded: $dateAdded, dateStarted: $dateStarted, dateCompleted: $dateCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.readingStatus, readingStatus) ||
                other.readingStatus == readingStatus) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.dateStarted, dateStarted) ||
                other.dateStarted == dateStarted) &&
            (identical(other.dateCompleted, dateCompleted) ||
                other.dateCompleted == dateCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      description,
      isbn,
      pageCount,
      publishedDate,
      publisher,
      coverUrl,
      const DeepCollectionEquality().hash(_genres),
      averageRating,
      ratingCount,
      language,
      readingStatus,
      currentPage,
      dateAdded,
      dateStarted,
      dateCompleted);

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookEntityImplCopyWith<_$BookEntityImpl> get copyWith =>
      __$$BookEntityImplCopyWithImpl<_$BookEntityImpl>(this, _$identity);
}

abstract class _BookEntity extends BookEntity {
  const factory _BookEntity(
      {required final String id,
      required final String title,
      required final String author,
      required final String description,
      required final String isbn,
      required final int pageCount,
      required final String publishedDate,
      required final String publisher,
      required final String coverUrl,
      required final List<String> genres,
      required final double averageRating,
      required final int ratingCount,
      required final String language,
      final String? readingStatus,
      final int? currentPage,
      final DateTime? dateAdded,
      final DateTime? dateStarted,
      final DateTime? dateCompleted}) = _$BookEntityImpl;
  const _BookEntity._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get author;
  @override
  String get description;
  @override
  String get isbn;
  @override
  int get pageCount;
  @override
  String get publishedDate;
  @override
  String get publisher;
  @override
  String get coverUrl;
  @override
  List<String> get genres;
  @override
  double get averageRating;
  @override
  int get ratingCount;
  @override
  String get language;
  @override
  String? get readingStatus;
  @override
  int? get currentPage;
  @override
  DateTime? get dateAdded;
  @override
  DateTime? get dateStarted;
  @override
  DateTime? get dateCompleted;

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookEntityImplCopyWith<_$BookEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
