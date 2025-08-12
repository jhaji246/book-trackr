// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookReview _$BookReviewFromJson(Map<String, dynamic> json) {
  return _BookReview.fromJson(json);
}

/// @nodoc
mixin _$BookReview {
  /// Unique identifier for the review
  String get id => throw _privateConstructorUsedError;

  /// ID of the book being reviewed
  String get bookId => throw _privateConstructorUsedError;

  /// ID of the user who wrote the review
  String get userId => throw _privateConstructorUsedError;

  /// User's display name
  String get userName => throw _privateConstructorUsedError;

  /// User's profile picture URL
  String? get userProfilePicture => throw _privateConstructorUsedError;

  /// Rating from 1 to 5 stars
  int get rating => throw _privateConstructorUsedError;

  /// Review title/headline
  String? get title => throw _privateConstructorUsedError;

  /// Main review content
  String get content => throw _privateConstructorUsedError;

  /// Whether the review contains spoilers
  bool get hasSpoilers => throw _privateConstructorUsedError;

  /// Date when the review was written
  DateTime get dateWritten => throw _privateConstructorUsedError;

  /// Date when the review was last edited
  DateTime get dateEdited => throw _privateConstructorUsedError;

  /// Number of helpful votes
  int get helpfulVotes => throw _privateConstructorUsedError;

  /// Number of unhelpful votes
  int get unhelpfulVotes => throw _privateConstructorUsedError;

  /// IDs of users who marked this review as helpful
  List<String> get helpfulUserIds => throw _privateConstructorUsedError;

  /// IDs of users who marked this review as unhelpful
  List<String> get unhelpfulUserIds => throw _privateConstructorUsedError;

  /// Whether the review is verified (user actually read the book)
  bool get isVerified => throw _privateConstructorUsedError;

  /// Reading progress when review was written
  int get readingProgress => throw _privateConstructorUsedError;

  /// Tags for the review (e.g., "spoiler-free", "detailed", "quick")
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this BookReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookReviewCopyWith<BookReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookReviewCopyWith<$Res> {
  factory $BookReviewCopyWith(
          BookReview value, $Res Function(BookReview) then) =
      _$BookReviewCopyWithImpl<$Res, BookReview>;
  @useResult
  $Res call(
      {String id,
      String bookId,
      String userId,
      String userName,
      String? userProfilePicture,
      int rating,
      String? title,
      String content,
      bool hasSpoilers,
      DateTime dateWritten,
      DateTime dateEdited,
      int helpfulVotes,
      int unhelpfulVotes,
      List<String> helpfulUserIds,
      List<String> unhelpfulUserIds,
      bool isVerified,
      int readingProgress,
      List<String> tags});
}

/// @nodoc
class _$BookReviewCopyWithImpl<$Res, $Val extends BookReview>
    implements $BookReviewCopyWith<$Res> {
  _$BookReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userProfilePicture = freezed,
    Object? rating = null,
    Object? title = freezed,
    Object? content = null,
    Object? hasSpoilers = null,
    Object? dateWritten = null,
    Object? dateEdited = null,
    Object? helpfulVotes = null,
    Object? unhelpfulVotes = null,
    Object? helpfulUserIds = null,
    Object? unhelpfulUserIds = null,
    Object? isVerified = null,
    Object? readingProgress = null,
    Object? tags = null,
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userProfilePicture: freezed == userProfilePicture
          ? _value.userProfilePicture
          : userProfilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      hasSpoilers: null == hasSpoilers
          ? _value.hasSpoilers
          : hasSpoilers // ignore: cast_nullable_to_non_nullable
              as bool,
      dateWritten: null == dateWritten
          ? _value.dateWritten
          : dateWritten // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateEdited: null == dateEdited
          ? _value.dateEdited
          : dateEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      helpfulVotes: null == helpfulVotes
          ? _value.helpfulVotes
          : helpfulVotes // ignore: cast_nullable_to_non_nullable
              as int,
      unhelpfulVotes: null == unhelpfulVotes
          ? _value.unhelpfulVotes
          : unhelpfulVotes // ignore: cast_nullable_to_non_nullable
              as int,
      helpfulUserIds: null == helpfulUserIds
          ? _value.helpfulUserIds
          : helpfulUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unhelpfulUserIds: null == unhelpfulUserIds
          ? _value.unhelpfulUserIds
          : unhelpfulUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      readingProgress: null == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookReviewImplCopyWith<$Res>
    implements $BookReviewCopyWith<$Res> {
  factory _$$BookReviewImplCopyWith(
          _$BookReviewImpl value, $Res Function(_$BookReviewImpl) then) =
      __$$BookReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String bookId,
      String userId,
      String userName,
      String? userProfilePicture,
      int rating,
      String? title,
      String content,
      bool hasSpoilers,
      DateTime dateWritten,
      DateTime dateEdited,
      int helpfulVotes,
      int unhelpfulVotes,
      List<String> helpfulUserIds,
      List<String> unhelpfulUserIds,
      bool isVerified,
      int readingProgress,
      List<String> tags});
}

/// @nodoc
class __$$BookReviewImplCopyWithImpl<$Res>
    extends _$BookReviewCopyWithImpl<$Res, _$BookReviewImpl>
    implements _$$BookReviewImplCopyWith<$Res> {
  __$$BookReviewImplCopyWithImpl(
      _$BookReviewImpl _value, $Res Function(_$BookReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userProfilePicture = freezed,
    Object? rating = null,
    Object? title = freezed,
    Object? content = null,
    Object? hasSpoilers = null,
    Object? dateWritten = null,
    Object? dateEdited = null,
    Object? helpfulVotes = null,
    Object? unhelpfulVotes = null,
    Object? helpfulUserIds = null,
    Object? unhelpfulUserIds = null,
    Object? isVerified = null,
    Object? readingProgress = null,
    Object? tags = null,
  }) {
    return _then(_$BookReviewImpl(
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userProfilePicture: freezed == userProfilePicture
          ? _value.userProfilePicture
          : userProfilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      hasSpoilers: null == hasSpoilers
          ? _value.hasSpoilers
          : hasSpoilers // ignore: cast_nullable_to_non_nullable
              as bool,
      dateWritten: null == dateWritten
          ? _value.dateWritten
          : dateWritten // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateEdited: null == dateEdited
          ? _value.dateEdited
          : dateEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      helpfulVotes: null == helpfulVotes
          ? _value.helpfulVotes
          : helpfulVotes // ignore: cast_nullable_to_non_nullable
              as int,
      unhelpfulVotes: null == unhelpfulVotes
          ? _value.unhelpfulVotes
          : unhelpfulVotes // ignore: cast_nullable_to_non_nullable
              as int,
      helpfulUserIds: null == helpfulUserIds
          ? _value._helpfulUserIds
          : helpfulUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unhelpfulUserIds: null == unhelpfulUserIds
          ? _value._unhelpfulUserIds
          : unhelpfulUserIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      readingProgress: null == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookReviewImpl implements _BookReview {
  const _$BookReviewImpl(
      {required this.id,
      required this.bookId,
      required this.userId,
      required this.userName,
      this.userProfilePicture,
      required this.rating,
      this.title,
      required this.content,
      required this.hasSpoilers,
      required this.dateWritten,
      required this.dateEdited,
      required this.helpfulVotes,
      required this.unhelpfulVotes,
      required final List<String> helpfulUserIds,
      required final List<String> unhelpfulUserIds,
      required this.isVerified,
      required this.readingProgress,
      required final List<String> tags})
      : _helpfulUserIds = helpfulUserIds,
        _unhelpfulUserIds = unhelpfulUserIds,
        _tags = tags;

  factory _$BookReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookReviewImplFromJson(json);

  /// Unique identifier for the review
  @override
  final String id;

  /// ID of the book being reviewed
  @override
  final String bookId;

  /// ID of the user who wrote the review
  @override
  final String userId;

  /// User's display name
  @override
  final String userName;

  /// User's profile picture URL
  @override
  final String? userProfilePicture;

  /// Rating from 1 to 5 stars
  @override
  final int rating;

  /// Review title/headline
  @override
  final String? title;

  /// Main review content
  @override
  final String content;

  /// Whether the review contains spoilers
  @override
  final bool hasSpoilers;

  /// Date when the review was written
  @override
  final DateTime dateWritten;

  /// Date when the review was last edited
  @override
  final DateTime dateEdited;

  /// Number of helpful votes
  @override
  final int helpfulVotes;

  /// Number of unhelpful votes
  @override
  final int unhelpfulVotes;

  /// IDs of users who marked this review as helpful
  final List<String> _helpfulUserIds;

  /// IDs of users who marked this review as helpful
  @override
  List<String> get helpfulUserIds {
    if (_helpfulUserIds is EqualUnmodifiableListView) return _helpfulUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_helpfulUserIds);
  }

  /// IDs of users who marked this review as unhelpful
  final List<String> _unhelpfulUserIds;

  /// IDs of users who marked this review as unhelpful
  @override
  List<String> get unhelpfulUserIds {
    if (_unhelpfulUserIds is EqualUnmodifiableListView)
      return _unhelpfulUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unhelpfulUserIds);
  }

  /// Whether the review is verified (user actually read the book)
  @override
  final bool isVerified;

  /// Reading progress when review was written
  @override
  final int readingProgress;

  /// Tags for the review (e.g., "spoiler-free", "detailed", "quick")
  final List<String> _tags;

  /// Tags for the review (e.g., "spoiler-free", "detailed", "quick")
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'BookReview(id: $id, bookId: $bookId, userId: $userId, userName: $userName, userProfilePicture: $userProfilePicture, rating: $rating, title: $title, content: $content, hasSpoilers: $hasSpoilers, dateWritten: $dateWritten, dateEdited: $dateEdited, helpfulVotes: $helpfulVotes, unhelpfulVotes: $unhelpfulVotes, helpfulUserIds: $helpfulUserIds, unhelpfulUserIds: $unhelpfulUserIds, isVerified: $isVerified, readingProgress: $readingProgress, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userProfilePicture, userProfilePicture) ||
                other.userProfilePicture == userProfilePicture) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.hasSpoilers, hasSpoilers) ||
                other.hasSpoilers == hasSpoilers) &&
            (identical(other.dateWritten, dateWritten) ||
                other.dateWritten == dateWritten) &&
            (identical(other.dateEdited, dateEdited) ||
                other.dateEdited == dateEdited) &&
            (identical(other.helpfulVotes, helpfulVotes) ||
                other.helpfulVotes == helpfulVotes) &&
            (identical(other.unhelpfulVotes, unhelpfulVotes) ||
                other.unhelpfulVotes == unhelpfulVotes) &&
            const DeepCollectionEquality()
                .equals(other._helpfulUserIds, _helpfulUserIds) &&
            const DeepCollectionEquality()
                .equals(other._unhelpfulUserIds, _unhelpfulUserIds) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.readingProgress, readingProgress) ||
                other.readingProgress == readingProgress) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bookId,
      userId,
      userName,
      userProfilePicture,
      rating,
      title,
      content,
      hasSpoilers,
      dateWritten,
      dateEdited,
      helpfulVotes,
      unhelpfulVotes,
      const DeepCollectionEquality().hash(_helpfulUserIds),
      const DeepCollectionEquality().hash(_unhelpfulUserIds),
      isVerified,
      readingProgress,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of BookReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReviewImplCopyWith<_$BookReviewImpl> get copyWith =>
      __$$BookReviewImplCopyWithImpl<_$BookReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookReviewImplToJson(
      this,
    );
  }
}

abstract class _BookReview implements BookReview {
  const factory _BookReview(
      {required final String id,
      required final String bookId,
      required final String userId,
      required final String userName,
      final String? userProfilePicture,
      required final int rating,
      final String? title,
      required final String content,
      required final bool hasSpoilers,
      required final DateTime dateWritten,
      required final DateTime dateEdited,
      required final int helpfulVotes,
      required final int unhelpfulVotes,
      required final List<String> helpfulUserIds,
      required final List<String> unhelpfulUserIds,
      required final bool isVerified,
      required final int readingProgress,
      required final List<String> tags}) = _$BookReviewImpl;

  factory _BookReview.fromJson(Map<String, dynamic> json) =
      _$BookReviewImpl.fromJson;

  /// Unique identifier for the review
  @override
  String get id;

  /// ID of the book being reviewed
  @override
  String get bookId;

  /// ID of the user who wrote the review
  @override
  String get userId;

  /// User's display name
  @override
  String get userName;

  /// User's profile picture URL
  @override
  String? get userProfilePicture;

  /// Rating from 1 to 5 stars
  @override
  int get rating;

  /// Review title/headline
  @override
  String? get title;

  /// Main review content
  @override
  String get content;

  /// Whether the review contains spoilers
  @override
  bool get hasSpoilers;

  /// Date when the review was written
  @override
  DateTime get dateWritten;

  /// Date when the review was last edited
  @override
  DateTime get dateEdited;

  /// Number of helpful votes
  @override
  int get helpfulVotes;

  /// Number of unhelpful votes
  @override
  int get unhelpfulVotes;

  /// IDs of users who marked this review as helpful
  @override
  List<String> get helpfulUserIds;

  /// IDs of users who marked this review as unhelpful
  @override
  List<String> get unhelpfulUserIds;

  /// Whether the review is verified (user actually read the book)
  @override
  bool get isVerified;

  /// Reading progress when review was written
  @override
  int get readingProgress;

  /// Tags for the review (e.g., "spoiler-free", "detailed", "quick")
  @override
  List<String> get tags;

  /// Create a copy of BookReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookReviewImplCopyWith<_$BookReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
