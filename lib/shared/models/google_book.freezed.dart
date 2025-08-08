// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoogleBooksResponse _$GoogleBooksResponseFromJson(Map<String, dynamic> json) {
  return _GoogleBooksResponse.fromJson(json);
}

/// @nodoc
mixin _$GoogleBooksResponse {
  int get totalItems => throw _privateConstructorUsedError;
  List<GoogleBook> get items => throw _privateConstructorUsedError;

  /// Serializes this GoogleBooksResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoogleBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleBooksResponseCopyWith<GoogleBooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleBooksResponseCopyWith<$Res> {
  factory $GoogleBooksResponseCopyWith(
          GoogleBooksResponse value, $Res Function(GoogleBooksResponse) then) =
      _$GoogleBooksResponseCopyWithImpl<$Res, GoogleBooksResponse>;
  @useResult
  $Res call({int totalItems, List<GoogleBook> items});
}

/// @nodoc
class _$GoogleBooksResponseCopyWithImpl<$Res, $Val extends GoogleBooksResponse>
    implements $GoogleBooksResponseCopyWith<$Res> {
  _$GoogleBooksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GoogleBook>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleBooksResponseImplCopyWith<$Res>
    implements $GoogleBooksResponseCopyWith<$Res> {
  factory _$$GoogleBooksResponseImplCopyWith(_$GoogleBooksResponseImpl value,
          $Res Function(_$GoogleBooksResponseImpl) then) =
      __$$GoogleBooksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalItems, List<GoogleBook> items});
}

/// @nodoc
class __$$GoogleBooksResponseImplCopyWithImpl<$Res>
    extends _$GoogleBooksResponseCopyWithImpl<$Res, _$GoogleBooksResponseImpl>
    implements _$$GoogleBooksResponseImplCopyWith<$Res> {
  __$$GoogleBooksResponseImplCopyWithImpl(_$GoogleBooksResponseImpl _value,
      $Res Function(_$GoogleBooksResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? items = null,
  }) {
    return _then(_$GoogleBooksResponseImpl(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GoogleBook>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleBooksResponseImpl implements _GoogleBooksResponse {
  const _$GoogleBooksResponseImpl(
      {required this.totalItems, required final List<GoogleBook> items})
      : _items = items;

  factory _$GoogleBooksResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleBooksResponseImplFromJson(json);

  @override
  final int totalItems;
  final List<GoogleBook> _items;
  @override
  List<GoogleBook> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'GoogleBooksResponse(totalItems: $totalItems, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleBooksResponseImpl &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalItems, const DeepCollectionEquality().hash(_items));

  /// Create a copy of GoogleBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleBooksResponseImplCopyWith<_$GoogleBooksResponseImpl> get copyWith =>
      __$$GoogleBooksResponseImplCopyWithImpl<_$GoogleBooksResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleBooksResponseImplToJson(
      this,
    );
  }
}

abstract class _GoogleBooksResponse implements GoogleBooksResponse {
  const factory _GoogleBooksResponse(
      {required final int totalItems,
      required final List<GoogleBook> items}) = _$GoogleBooksResponseImpl;

  factory _GoogleBooksResponse.fromJson(Map<String, dynamic> json) =
      _$GoogleBooksResponseImpl.fromJson;

  @override
  int get totalItems;
  @override
  List<GoogleBook> get items;

  /// Create a copy of GoogleBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleBooksResponseImplCopyWith<_$GoogleBooksResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoogleBook _$GoogleBookFromJson(Map<String, dynamic> json) {
  return _GoogleBook.fromJson(json);
}

/// @nodoc
mixin _$GoogleBook {
  String get id => throw _privateConstructorUsedError;
  VolumeInfo get volumeInfo => throw _privateConstructorUsedError;
  SaleInfo? get saleInfo => throw _privateConstructorUsedError;
  AccessInfo? get accessInfo => throw _privateConstructorUsedError;

  /// Serializes this GoogleBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoogleBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleBookCopyWith<GoogleBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleBookCopyWith<$Res> {
  factory $GoogleBookCopyWith(
          GoogleBook value, $Res Function(GoogleBook) then) =
      _$GoogleBookCopyWithImpl<$Res, GoogleBook>;
  @useResult
  $Res call(
      {String id,
      VolumeInfo volumeInfo,
      SaleInfo? saleInfo,
      AccessInfo? accessInfo});

  $VolumeInfoCopyWith<$Res> get volumeInfo;
  $SaleInfoCopyWith<$Res>? get saleInfo;
  $AccessInfoCopyWith<$Res>? get accessInfo;
}

/// @nodoc
class _$GoogleBookCopyWithImpl<$Res, $Val extends GoogleBook>
    implements $GoogleBookCopyWith<$Res> {
  _$GoogleBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? volumeInfo = null,
    Object? saleInfo = freezed,
    Object? accessInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      volumeInfo: null == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
      saleInfo: freezed == saleInfo
          ? _value.saleInfo
          : saleInfo // ignore: cast_nullable_to_non_nullable
              as SaleInfo?,
      accessInfo: freezed == accessInfo
          ? _value.accessInfo
          : accessInfo // ignore: cast_nullable_to_non_nullable
              as AccessInfo?,
    ) as $Val);
  }

  /// Create a copy of GoogleBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VolumeInfoCopyWith<$Res> get volumeInfo {
    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value) as $Val);
    });
  }

  /// Create a copy of GoogleBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaleInfoCopyWith<$Res>? get saleInfo {
    if (_value.saleInfo == null) {
      return null;
    }

    return $SaleInfoCopyWith<$Res>(_value.saleInfo!, (value) {
      return _then(_value.copyWith(saleInfo: value) as $Val);
    });
  }

  /// Create a copy of GoogleBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccessInfoCopyWith<$Res>? get accessInfo {
    if (_value.accessInfo == null) {
      return null;
    }

    return $AccessInfoCopyWith<$Res>(_value.accessInfo!, (value) {
      return _then(_value.copyWith(accessInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoogleBookImplCopyWith<$Res>
    implements $GoogleBookCopyWith<$Res> {
  factory _$$GoogleBookImplCopyWith(
          _$GoogleBookImpl value, $Res Function(_$GoogleBookImpl) then) =
      __$$GoogleBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      VolumeInfo volumeInfo,
      SaleInfo? saleInfo,
      AccessInfo? accessInfo});

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo;
  @override
  $SaleInfoCopyWith<$Res>? get saleInfo;
  @override
  $AccessInfoCopyWith<$Res>? get accessInfo;
}

/// @nodoc
class __$$GoogleBookImplCopyWithImpl<$Res>
    extends _$GoogleBookCopyWithImpl<$Res, _$GoogleBookImpl>
    implements _$$GoogleBookImplCopyWith<$Res> {
  __$$GoogleBookImplCopyWithImpl(
      _$GoogleBookImpl _value, $Res Function(_$GoogleBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? volumeInfo = null,
    Object? saleInfo = freezed,
    Object? accessInfo = freezed,
  }) {
    return _then(_$GoogleBookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      volumeInfo: null == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
      saleInfo: freezed == saleInfo
          ? _value.saleInfo
          : saleInfo // ignore: cast_nullable_to_non_nullable
              as SaleInfo?,
      accessInfo: freezed == accessInfo
          ? _value.accessInfo
          : accessInfo // ignore: cast_nullable_to_non_nullable
              as AccessInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleBookImpl implements _GoogleBook {
  const _$GoogleBookImpl(
      {required this.id,
      required this.volumeInfo,
      this.saleInfo,
      this.accessInfo});

  factory _$GoogleBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleBookImplFromJson(json);

  @override
  final String id;
  @override
  final VolumeInfo volumeInfo;
  @override
  final SaleInfo? saleInfo;
  @override
  final AccessInfo? accessInfo;

  @override
  String toString() {
    return 'GoogleBook(id: $id, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleBookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.volumeInfo, volumeInfo) ||
                other.volumeInfo == volumeInfo) &&
            (identical(other.saleInfo, saleInfo) ||
                other.saleInfo == saleInfo) &&
            (identical(other.accessInfo, accessInfo) ||
                other.accessInfo == accessInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, volumeInfo, saleInfo, accessInfo);

  /// Create a copy of GoogleBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleBookImplCopyWith<_$GoogleBookImpl> get copyWith =>
      __$$GoogleBookImplCopyWithImpl<_$GoogleBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleBookImplToJson(
      this,
    );
  }
}

abstract class _GoogleBook implements GoogleBook {
  const factory _GoogleBook(
      {required final String id,
      required final VolumeInfo volumeInfo,
      final SaleInfo? saleInfo,
      final AccessInfo? accessInfo}) = _$GoogleBookImpl;

  factory _GoogleBook.fromJson(Map<String, dynamic> json) =
      _$GoogleBookImpl.fromJson;

  @override
  String get id;
  @override
  VolumeInfo get volumeInfo;
  @override
  SaleInfo? get saleInfo;
  @override
  AccessInfo? get accessInfo;

  /// Create a copy of GoogleBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleBookImplCopyWith<_$GoogleBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

/// @nodoc
mixin _$VolumeInfo {
  String get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  List<String>? get authors => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  String? get publishedDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<IndustryIdentifier>? get industryIdentifiers =>
      throw _privateConstructorUsedError;
  ReadingModes? get readingModes => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  String? get printType => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  String? get maturityRating => throw _privateConstructorUsedError;
  bool? get allowAnonLogging => throw _privateConstructorUsedError;
  String? get contentVersion => throw _privateConstructorUsedError;
  ImageLinks? get imageLinks => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get previewLink => throw _privateConstructorUsedError;
  String? get infoLink => throw _privateConstructorUsedError;
  String? get canonicalVolumeLink => throw _privateConstructorUsedError;

  /// Serializes this VolumeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolumeInfoCopyWith<VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
          VolumeInfo value, $Res Function(VolumeInfo) then) =
      _$VolumeInfoCopyWithImpl<$Res, VolumeInfo>;
  @useResult
  $Res call(
      {String title,
      String? subtitle,
      List<String>? authors,
      String? publisher,
      String? publishedDate,
      String? description,
      List<IndustryIdentifier>? industryIdentifiers,
      ReadingModes? readingModes,
      int? pageCount,
      String? printType,
      List<String>? categories,
      String? maturityRating,
      bool? allowAnonLogging,
      String? contentVersion,
      ImageLinks? imageLinks,
      String? language,
      String? previewLink,
      String? infoLink,
      String? canonicalVolumeLink});

  $ReadingModesCopyWith<$Res>? get readingModes;
  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res, $Val extends VolumeInfo>
    implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? industryIdentifiers = freezed,
    Object? readingModes = freezed,
    Object? pageCount = freezed,
    Object? printType = freezed,
    Object? categories = freezed,
    Object? maturityRating = freezed,
    Object? allowAnonLogging = freezed,
    Object? contentVersion = freezed,
    Object? imageLinks = freezed,
    Object? language = freezed,
    Object? previewLink = freezed,
    Object? infoLink = freezed,
    Object? canonicalVolumeLink = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      industryIdentifiers: freezed == industryIdentifiers
          ? _value.industryIdentifiers
          : industryIdentifiers // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifier>?,
      readingModes: freezed == readingModes
          ? _value.readingModes
          : readingModes // ignore: cast_nullable_to_non_nullable
              as ReadingModes?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      printType: freezed == printType
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      maturityRating: freezed == maturityRating
          ? _value.maturityRating
          : maturityRating // ignore: cast_nullable_to_non_nullable
              as String?,
      allowAnonLogging: freezed == allowAnonLogging
          ? _value.allowAnonLogging
          : allowAnonLogging // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentVersion: freezed == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLinks: freezed == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      previewLink: freezed == previewLink
          ? _value.previewLink
          : previewLink // ignore: cast_nullable_to_non_nullable
              as String?,
      infoLink: freezed == infoLink
          ? _value.infoLink
          : infoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalVolumeLink: freezed == canonicalVolumeLink
          ? _value.canonicalVolumeLink
          : canonicalVolumeLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadingModesCopyWith<$Res>? get readingModes {
    if (_value.readingModes == null) {
      return null;
    }

    return $ReadingModesCopyWith<$Res>(_value.readingModes!, (value) {
      return _then(_value.copyWith(readingModes: value) as $Val);
    });
  }

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageLinksCopyWith<$Res>? get imageLinks {
    if (_value.imageLinks == null) {
      return null;
    }

    return $ImageLinksCopyWith<$Res>(_value.imageLinks!, (value) {
      return _then(_value.copyWith(imageLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VolumeInfoImplCopyWith<$Res>
    implements $VolumeInfoCopyWith<$Res> {
  factory _$$VolumeInfoImplCopyWith(
          _$VolumeInfoImpl value, $Res Function(_$VolumeInfoImpl) then) =
      __$$VolumeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? subtitle,
      List<String>? authors,
      String? publisher,
      String? publishedDate,
      String? description,
      List<IndustryIdentifier>? industryIdentifiers,
      ReadingModes? readingModes,
      int? pageCount,
      String? printType,
      List<String>? categories,
      String? maturityRating,
      bool? allowAnonLogging,
      String? contentVersion,
      ImageLinks? imageLinks,
      String? language,
      String? previewLink,
      String? infoLink,
      String? canonicalVolumeLink});

  @override
  $ReadingModesCopyWith<$Res>? get readingModes;
  @override
  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class __$$VolumeInfoImplCopyWithImpl<$Res>
    extends _$VolumeInfoCopyWithImpl<$Res, _$VolumeInfoImpl>
    implements _$$VolumeInfoImplCopyWith<$Res> {
  __$$VolumeInfoImplCopyWithImpl(
      _$VolumeInfoImpl _value, $Res Function(_$VolumeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? industryIdentifiers = freezed,
    Object? readingModes = freezed,
    Object? pageCount = freezed,
    Object? printType = freezed,
    Object? categories = freezed,
    Object? maturityRating = freezed,
    Object? allowAnonLogging = freezed,
    Object? contentVersion = freezed,
    Object? imageLinks = freezed,
    Object? language = freezed,
    Object? previewLink = freezed,
    Object? infoLink = freezed,
    Object? canonicalVolumeLink = freezed,
  }) {
    return _then(_$VolumeInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      industryIdentifiers: freezed == industryIdentifiers
          ? _value._industryIdentifiers
          : industryIdentifiers // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifier>?,
      readingModes: freezed == readingModes
          ? _value.readingModes
          : readingModes // ignore: cast_nullable_to_non_nullable
              as ReadingModes?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      printType: freezed == printType
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      maturityRating: freezed == maturityRating
          ? _value.maturityRating
          : maturityRating // ignore: cast_nullable_to_non_nullable
              as String?,
      allowAnonLogging: freezed == allowAnonLogging
          ? _value.allowAnonLogging
          : allowAnonLogging // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentVersion: freezed == contentVersion
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLinks: freezed == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      previewLink: freezed == previewLink
          ? _value.previewLink
          : previewLink // ignore: cast_nullable_to_non_nullable
              as String?,
      infoLink: freezed == infoLink
          ? _value.infoLink
          : infoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalVolumeLink: freezed == canonicalVolumeLink
          ? _value.canonicalVolumeLink
          : canonicalVolumeLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolumeInfoImpl implements _VolumeInfo {
  const _$VolumeInfoImpl(
      {required this.title,
      this.subtitle,
      final List<String>? authors,
      this.publisher,
      this.publishedDate,
      this.description,
      final List<IndustryIdentifier>? industryIdentifiers,
      this.readingModes,
      this.pageCount,
      this.printType,
      final List<String>? categories,
      this.maturityRating,
      this.allowAnonLogging,
      this.contentVersion,
      this.imageLinks,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink})
      : _authors = authors,
        _industryIdentifiers = industryIdentifiers,
        _categories = categories;

  factory _$VolumeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolumeInfoImplFromJson(json);

  @override
  final String title;
  @override
  final String? subtitle;
  final List<String>? _authors;
  @override
  List<String>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? publisher;
  @override
  final String? publishedDate;
  @override
  final String? description;
  final List<IndustryIdentifier>? _industryIdentifiers;
  @override
  List<IndustryIdentifier>? get industryIdentifiers {
    final value = _industryIdentifiers;
    if (value == null) return null;
    if (_industryIdentifiers is EqualUnmodifiableListView)
      return _industryIdentifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ReadingModes? readingModes;
  @override
  final int? pageCount;
  @override
  final String? printType;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? maturityRating;
  @override
  final bool? allowAnonLogging;
  @override
  final String? contentVersion;
  @override
  final ImageLinks? imageLinks;
  @override
  final String? language;
  @override
  final String? previewLink;
  @override
  final String? infoLink;
  @override
  final String? canonicalVolumeLink;

  @override
  String toString() {
    return 'VolumeInfo(title: $title, subtitle: $subtitle, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, industryIdentifiers: $industryIdentifiers, readingModes: $readingModes, pageCount: $pageCount, printType: $printType, categories: $categories, maturityRating: $maturityRating, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolumeInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._industryIdentifiers, _industryIdentifiers) &&
            (identical(other.readingModes, readingModes) ||
                other.readingModes == readingModes) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.printType, printType) ||
                other.printType == printType) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.maturityRating, maturityRating) ||
                other.maturityRating == maturityRating) &&
            (identical(other.allowAnonLogging, allowAnonLogging) ||
                other.allowAnonLogging == allowAnonLogging) &&
            (identical(other.contentVersion, contentVersion) ||
                other.contentVersion == contentVersion) &&
            (identical(other.imageLinks, imageLinks) ||
                other.imageLinks == imageLinks) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.previewLink, previewLink) ||
                other.previewLink == previewLink) &&
            (identical(other.infoLink, infoLink) ||
                other.infoLink == infoLink) &&
            (identical(other.canonicalVolumeLink, canonicalVolumeLink) ||
                other.canonicalVolumeLink == canonicalVolumeLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        subtitle,
        const DeepCollectionEquality().hash(_authors),
        publisher,
        publishedDate,
        description,
        const DeepCollectionEquality().hash(_industryIdentifiers),
        readingModes,
        pageCount,
        printType,
        const DeepCollectionEquality().hash(_categories),
        maturityRating,
        allowAnonLogging,
        contentVersion,
        imageLinks,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink
      ]);

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      __$$VolumeInfoImplCopyWithImpl<_$VolumeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolumeInfoImplToJson(
      this,
    );
  }
}

abstract class _VolumeInfo implements VolumeInfo {
  const factory _VolumeInfo(
      {required final String title,
      final String? subtitle,
      final List<String>? authors,
      final String? publisher,
      final String? publishedDate,
      final String? description,
      final List<IndustryIdentifier>? industryIdentifiers,
      final ReadingModes? readingModes,
      final int? pageCount,
      final String? printType,
      final List<String>? categories,
      final String? maturityRating,
      final bool? allowAnonLogging,
      final String? contentVersion,
      final ImageLinks? imageLinks,
      final String? language,
      final String? previewLink,
      final String? infoLink,
      final String? canonicalVolumeLink}) = _$VolumeInfoImpl;

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$VolumeInfoImpl.fromJson;

  @override
  String get title;
  @override
  String? get subtitle;
  @override
  List<String>? get authors;
  @override
  String? get publisher;
  @override
  String? get publishedDate;
  @override
  String? get description;
  @override
  List<IndustryIdentifier>? get industryIdentifiers;
  @override
  ReadingModes? get readingModes;
  @override
  int? get pageCount;
  @override
  String? get printType;
  @override
  List<String>? get categories;
  @override
  String? get maturityRating;
  @override
  bool? get allowAnonLogging;
  @override
  String? get contentVersion;
  @override
  ImageLinks? get imageLinks;
  @override
  String? get language;
  @override
  String? get previewLink;
  @override
  String? get infoLink;
  @override
  String? get canonicalVolumeLink;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndustryIdentifier _$IndustryIdentifierFromJson(Map<String, dynamic> json) {
  return _IndustryIdentifier.fromJson(json);
}

/// @nodoc
mixin _$IndustryIdentifier {
  String get type => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  /// Serializes this IndustryIdentifier to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndustryIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndustryIdentifierCopyWith<IndustryIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryIdentifierCopyWith<$Res> {
  factory $IndustryIdentifierCopyWith(
          IndustryIdentifier value, $Res Function(IndustryIdentifier) then) =
      _$IndustryIdentifierCopyWithImpl<$Res, IndustryIdentifier>;
  @useResult
  $Res call({String type, String identifier});
}

/// @nodoc
class _$IndustryIdentifierCopyWithImpl<$Res, $Val extends IndustryIdentifier>
    implements $IndustryIdentifierCopyWith<$Res> {
  _$IndustryIdentifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndustryIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndustryIdentifierImplCopyWith<$Res>
    implements $IndustryIdentifierCopyWith<$Res> {
  factory _$$IndustryIdentifierImplCopyWith(_$IndustryIdentifierImpl value,
          $Res Function(_$IndustryIdentifierImpl) then) =
      __$$IndustryIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String identifier});
}

/// @nodoc
class __$$IndustryIdentifierImplCopyWithImpl<$Res>
    extends _$IndustryIdentifierCopyWithImpl<$Res, _$IndustryIdentifierImpl>
    implements _$$IndustryIdentifierImplCopyWith<$Res> {
  __$$IndustryIdentifierImplCopyWithImpl(_$IndustryIdentifierImpl _value,
      $Res Function(_$IndustryIdentifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of IndustryIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? identifier = null,
  }) {
    return _then(_$IndustryIdentifierImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndustryIdentifierImpl implements _IndustryIdentifier {
  const _$IndustryIdentifierImpl(
      {required this.type, required this.identifier});

  factory _$IndustryIdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndustryIdentifierImplFromJson(json);

  @override
  final String type;
  @override
  final String identifier;

  @override
  String toString() {
    return 'IndustryIdentifier(type: $type, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustryIdentifierImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, identifier);

  /// Create a copy of IndustryIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndustryIdentifierImplCopyWith<_$IndustryIdentifierImpl> get copyWith =>
      __$$IndustryIdentifierImplCopyWithImpl<_$IndustryIdentifierImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndustryIdentifierImplToJson(
      this,
    );
  }
}

abstract class _IndustryIdentifier implements IndustryIdentifier {
  const factory _IndustryIdentifier(
      {required final String type,
      required final String identifier}) = _$IndustryIdentifierImpl;

  factory _IndustryIdentifier.fromJson(Map<String, dynamic> json) =
      _$IndustryIdentifierImpl.fromJson;

  @override
  String get type;
  @override
  String get identifier;

  /// Create a copy of IndustryIdentifier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndustryIdentifierImplCopyWith<_$IndustryIdentifierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingModes _$ReadingModesFromJson(Map<String, dynamic> json) {
  return _ReadingModes.fromJson(json);
}

/// @nodoc
mixin _$ReadingModes {
  bool get text => throw _privateConstructorUsedError;
  bool get image => throw _privateConstructorUsedError;

  /// Serializes this ReadingModes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingModes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingModesCopyWith<ReadingModes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingModesCopyWith<$Res> {
  factory $ReadingModesCopyWith(
          ReadingModes value, $Res Function(ReadingModes) then) =
      _$ReadingModesCopyWithImpl<$Res, ReadingModes>;
  @useResult
  $Res call({bool text, bool image});
}

/// @nodoc
class _$ReadingModesCopyWithImpl<$Res, $Val extends ReadingModes>
    implements $ReadingModesCopyWith<$Res> {
  _$ReadingModesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingModes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingModesImplCopyWith<$Res>
    implements $ReadingModesCopyWith<$Res> {
  factory _$$ReadingModesImplCopyWith(
          _$ReadingModesImpl value, $Res Function(_$ReadingModesImpl) then) =
      __$$ReadingModesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool text, bool image});
}

/// @nodoc
class __$$ReadingModesImplCopyWithImpl<$Res>
    extends _$ReadingModesCopyWithImpl<$Res, _$ReadingModesImpl>
    implements _$$ReadingModesImplCopyWith<$Res> {
  __$$ReadingModesImplCopyWithImpl(
      _$ReadingModesImpl _value, $Res Function(_$ReadingModesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingModes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
  }) {
    return _then(_$ReadingModesImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingModesImpl implements _ReadingModes {
  const _$ReadingModesImpl({required this.text, required this.image});

  factory _$ReadingModesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingModesImplFromJson(json);

  @override
  final bool text;
  @override
  final bool image;

  @override
  String toString() {
    return 'ReadingModes(text: $text, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingModesImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, image);

  /// Create a copy of ReadingModes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingModesImplCopyWith<_$ReadingModesImpl> get copyWith =>
      __$$ReadingModesImplCopyWithImpl<_$ReadingModesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingModesImplToJson(
      this,
    );
  }
}

abstract class _ReadingModes implements ReadingModes {
  const factory _ReadingModes(
      {required final bool text,
      required final bool image}) = _$ReadingModesImpl;

  factory _ReadingModes.fromJson(Map<String, dynamic> json) =
      _$ReadingModesImpl.fromJson;

  @override
  bool get text;
  @override
  bool get image;

  /// Create a copy of ReadingModes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingModesImplCopyWith<_$ReadingModesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) {
  return _ImageLinks.fromJson(json);
}

/// @nodoc
mixin _$ImageLinks {
  String? get smallThumbnail => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this ImageLinks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageLinksCopyWith<ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinksCopyWith<$Res> {
  factory $ImageLinksCopyWith(
          ImageLinks value, $Res Function(ImageLinks) then) =
      _$ImageLinksCopyWithImpl<$Res, ImageLinks>;
  @useResult
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class _$ImageLinksCopyWithImpl<$Res, $Val extends ImageLinks>
    implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      smallThumbnail: freezed == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageLinksImplCopyWith<$Res>
    implements $ImageLinksCopyWith<$Res> {
  factory _$$ImageLinksImplCopyWith(
          _$ImageLinksImpl value, $Res Function(_$ImageLinksImpl) then) =
      __$$ImageLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class __$$ImageLinksImplCopyWithImpl<$Res>
    extends _$ImageLinksCopyWithImpl<$Res, _$ImageLinksImpl>
    implements _$$ImageLinksImplCopyWith<$Res> {
  __$$ImageLinksImplCopyWithImpl(
      _$ImageLinksImpl _value, $Res Function(_$ImageLinksImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$ImageLinksImpl(
      smallThumbnail: freezed == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageLinksImpl implements _ImageLinks {
  const _$ImageLinksImpl({this.smallThumbnail, this.thumbnail});

  factory _$ImageLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageLinksImplFromJson(json);

  @override
  final String? smallThumbnail;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLinksImpl &&
            (identical(other.smallThumbnail, smallThumbnail) ||
                other.smallThumbnail == smallThumbnail) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, smallThumbnail, thumbnail);

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      __$$ImageLinksImplCopyWithImpl<_$ImageLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageLinksImplToJson(
      this,
    );
  }
}

abstract class _ImageLinks implements ImageLinks {
  const factory _ImageLinks(
      {final String? smallThumbnail,
      final String? thumbnail}) = _$ImageLinksImpl;

  factory _ImageLinks.fromJson(Map<String, dynamic> json) =
      _$ImageLinksImpl.fromJson;

  @override
  String? get smallThumbnail;
  @override
  String? get thumbnail;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) {
  return _SaleInfo.fromJson(json);
}

/// @nodoc
mixin _$SaleInfo {
  String? get country => throw _privateConstructorUsedError;
  String? get saleability => throw _privateConstructorUsedError;
  bool? get isEbook => throw _privateConstructorUsedError;
  ListPrice? get listPrice => throw _privateConstructorUsedError;
  RetailPrice? get retailPrice => throw _privateConstructorUsedError;
  String? get buyLink => throw _privateConstructorUsedError;

  /// Serializes this SaleInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaleInfoCopyWith<SaleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInfoCopyWith<$Res> {
  factory $SaleInfoCopyWith(SaleInfo value, $Res Function(SaleInfo) then) =
      _$SaleInfoCopyWithImpl<$Res, SaleInfo>;
  @useResult
  $Res call(
      {String? country,
      String? saleability,
      bool? isEbook,
      ListPrice? listPrice,
      RetailPrice? retailPrice,
      String? buyLink});

  $ListPriceCopyWith<$Res>? get listPrice;
  $RetailPriceCopyWith<$Res>? get retailPrice;
}

/// @nodoc
class _$SaleInfoCopyWithImpl<$Res, $Val extends SaleInfo>
    implements $SaleInfoCopyWith<$Res> {
  _$SaleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? saleability = freezed,
    Object? isEbook = freezed,
    Object? listPrice = freezed,
    Object? retailPrice = freezed,
    Object? buyLink = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      saleability: freezed == saleability
          ? _value.saleability
          : saleability // ignore: cast_nullable_to_non_nullable
              as String?,
      isEbook: freezed == isEbook
          ? _value.isEbook
          : isEbook // ignore: cast_nullable_to_non_nullable
              as bool?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as ListPrice?,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as RetailPrice?,
      buyLink: freezed == buyLink
          ? _value.buyLink
          : buyLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListPriceCopyWith<$Res>? get listPrice {
    if (_value.listPrice == null) {
      return null;
    }

    return $ListPriceCopyWith<$Res>(_value.listPrice!, (value) {
      return _then(_value.copyWith(listPrice: value) as $Val);
    });
  }

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RetailPriceCopyWith<$Res>? get retailPrice {
    if (_value.retailPrice == null) {
      return null;
    }

    return $RetailPriceCopyWith<$Res>(_value.retailPrice!, (value) {
      return _then(_value.copyWith(retailPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaleInfoImplCopyWith<$Res>
    implements $SaleInfoCopyWith<$Res> {
  factory _$$SaleInfoImplCopyWith(
          _$SaleInfoImpl value, $Res Function(_$SaleInfoImpl) then) =
      __$$SaleInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? country,
      String? saleability,
      bool? isEbook,
      ListPrice? listPrice,
      RetailPrice? retailPrice,
      String? buyLink});

  @override
  $ListPriceCopyWith<$Res>? get listPrice;
  @override
  $RetailPriceCopyWith<$Res>? get retailPrice;
}

/// @nodoc
class __$$SaleInfoImplCopyWithImpl<$Res>
    extends _$SaleInfoCopyWithImpl<$Res, _$SaleInfoImpl>
    implements _$$SaleInfoImplCopyWith<$Res> {
  __$$SaleInfoImplCopyWithImpl(
      _$SaleInfoImpl _value, $Res Function(_$SaleInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? saleability = freezed,
    Object? isEbook = freezed,
    Object? listPrice = freezed,
    Object? retailPrice = freezed,
    Object? buyLink = freezed,
  }) {
    return _then(_$SaleInfoImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      saleability: freezed == saleability
          ? _value.saleability
          : saleability // ignore: cast_nullable_to_non_nullable
              as String?,
      isEbook: freezed == isEbook
          ? _value.isEbook
          : isEbook // ignore: cast_nullable_to_non_nullable
              as bool?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as ListPrice?,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as RetailPrice?,
      buyLink: freezed == buyLink
          ? _value.buyLink
          : buyLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleInfoImpl implements _SaleInfo {
  const _$SaleInfoImpl(
      {this.country,
      this.saleability,
      this.isEbook,
      this.listPrice,
      this.retailPrice,
      this.buyLink});

  factory _$SaleInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleInfoImplFromJson(json);

  @override
  final String? country;
  @override
  final String? saleability;
  @override
  final bool? isEbook;
  @override
  final ListPrice? listPrice;
  @override
  final RetailPrice? retailPrice;
  @override
  final String? buyLink;

  @override
  String toString() {
    return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook, listPrice: $listPrice, retailPrice: $retailPrice, buyLink: $buyLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleInfoImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.saleability, saleability) ||
                other.saleability == saleability) &&
            (identical(other.isEbook, isEbook) || other.isEbook == isEbook) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.retailPrice, retailPrice) ||
                other.retailPrice == retailPrice) &&
            (identical(other.buyLink, buyLink) || other.buyLink == buyLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, saleability, isEbook,
      listPrice, retailPrice, buyLink);

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleInfoImplCopyWith<_$SaleInfoImpl> get copyWith =>
      __$$SaleInfoImplCopyWithImpl<_$SaleInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleInfoImplToJson(
      this,
    );
  }
}

abstract class _SaleInfo implements SaleInfo {
  const factory _SaleInfo(
      {final String? country,
      final String? saleability,
      final bool? isEbook,
      final ListPrice? listPrice,
      final RetailPrice? retailPrice,
      final String? buyLink}) = _$SaleInfoImpl;

  factory _SaleInfo.fromJson(Map<String, dynamic> json) =
      _$SaleInfoImpl.fromJson;

  @override
  String? get country;
  @override
  String? get saleability;
  @override
  bool? get isEbook;
  @override
  ListPrice? get listPrice;
  @override
  RetailPrice? get retailPrice;
  @override
  String? get buyLink;

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaleInfoImplCopyWith<_$SaleInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListPrice _$ListPriceFromJson(Map<String, dynamic> json) {
  return _ListPrice.fromJson(json);
}

/// @nodoc
mixin _$ListPrice {
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  /// Serializes this ListPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListPriceCopyWith<ListPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPriceCopyWith<$Res> {
  factory $ListPriceCopyWith(ListPrice value, $Res Function(ListPrice) then) =
      _$ListPriceCopyWithImpl<$Res, ListPrice>;
  @useResult
  $Res call({double amount, String currencyCode});
}

/// @nodoc
class _$ListPriceCopyWithImpl<$Res, $Val extends ListPrice>
    implements $ListPriceCopyWith<$Res> {
  _$ListPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListPriceImplCopyWith<$Res>
    implements $ListPriceCopyWith<$Res> {
  factory _$$ListPriceImplCopyWith(
          _$ListPriceImpl value, $Res Function(_$ListPriceImpl) then) =
      __$$ListPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String currencyCode});
}

/// @nodoc
class __$$ListPriceImplCopyWithImpl<$Res>
    extends _$ListPriceCopyWithImpl<$Res, _$ListPriceImpl>
    implements _$$ListPriceImplCopyWith<$Res> {
  __$$ListPriceImplCopyWithImpl(
      _$ListPriceImpl _value, $Res Function(_$ListPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currencyCode = null,
  }) {
    return _then(_$ListPriceImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListPriceImpl implements _ListPrice {
  const _$ListPriceImpl({required this.amount, required this.currencyCode});

  factory _$ListPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListPriceImplFromJson(json);

  @override
  final double amount;
  @override
  final String currencyCode;

  @override
  String toString() {
    return 'ListPrice(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListPriceImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  /// Create a copy of ListPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListPriceImplCopyWith<_$ListPriceImpl> get copyWith =>
      __$$ListPriceImplCopyWithImpl<_$ListPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListPriceImplToJson(
      this,
    );
  }
}

abstract class _ListPrice implements ListPrice {
  const factory _ListPrice(
      {required final double amount,
      required final String currencyCode}) = _$ListPriceImpl;

  factory _ListPrice.fromJson(Map<String, dynamic> json) =
      _$ListPriceImpl.fromJson;

  @override
  double get amount;
  @override
  String get currencyCode;

  /// Create a copy of ListPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListPriceImplCopyWith<_$ListPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RetailPrice _$RetailPriceFromJson(Map<String, dynamic> json) {
  return _RetailPrice.fromJson(json);
}

/// @nodoc
mixin _$RetailPrice {
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  /// Serializes this RetailPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetailPriceCopyWith<RetailPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetailPriceCopyWith<$Res> {
  factory $RetailPriceCopyWith(
          RetailPrice value, $Res Function(RetailPrice) then) =
      _$RetailPriceCopyWithImpl<$Res, RetailPrice>;
  @useResult
  $Res call({double amount, String currencyCode});
}

/// @nodoc
class _$RetailPriceCopyWithImpl<$Res, $Val extends RetailPrice>
    implements $RetailPriceCopyWith<$Res> {
  _$RetailPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RetailPriceImplCopyWith<$Res>
    implements $RetailPriceCopyWith<$Res> {
  factory _$$RetailPriceImplCopyWith(
          _$RetailPriceImpl value, $Res Function(_$RetailPriceImpl) then) =
      __$$RetailPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String currencyCode});
}

/// @nodoc
class __$$RetailPriceImplCopyWithImpl<$Res>
    extends _$RetailPriceCopyWithImpl<$Res, _$RetailPriceImpl>
    implements _$$RetailPriceImplCopyWith<$Res> {
  __$$RetailPriceImplCopyWithImpl(
      _$RetailPriceImpl _value, $Res Function(_$RetailPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currencyCode = null,
  }) {
    return _then(_$RetailPriceImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetailPriceImpl implements _RetailPrice {
  const _$RetailPriceImpl({required this.amount, required this.currencyCode});

  factory _$RetailPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetailPriceImplFromJson(json);

  @override
  final double amount;
  @override
  final String currencyCode;

  @override
  String toString() {
    return 'RetailPrice(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetailPriceImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetailPriceImplCopyWith<_$RetailPriceImpl> get copyWith =>
      __$$RetailPriceImplCopyWithImpl<_$RetailPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetailPriceImplToJson(
      this,
    );
  }
}

abstract class _RetailPrice implements RetailPrice {
  const factory _RetailPrice(
      {required final double amount,
      required final String currencyCode}) = _$RetailPriceImpl;

  factory _RetailPrice.fromJson(Map<String, dynamic> json) =
      _$RetailPriceImpl.fromJson;

  @override
  double get amount;
  @override
  String get currencyCode;

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetailPriceImplCopyWith<_$RetailPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccessInfo _$AccessInfoFromJson(Map<String, dynamic> json) {
  return _AccessInfo.fromJson(json);
}

/// @nodoc
mixin _$AccessInfo {
  String? get country => throw _privateConstructorUsedError;
  String? get viewability => throw _privateConstructorUsedError;
  bool? get embeddable => throw _privateConstructorUsedError;
  bool? get publicDomain => throw _privateConstructorUsedError;
  String? get textToSpeechPermission => throw _privateConstructorUsedError;
  Epub? get epub => throw _privateConstructorUsedError;
  Pdf? get pdf => throw _privateConstructorUsedError;
  String? get webReaderLink => throw _privateConstructorUsedError;
  String? get accessViewStatus => throw _privateConstructorUsedError;
  bool? get quoteSharingAllowed => throw _privateConstructorUsedError;

  /// Serializes this AccessInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccessInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccessInfoCopyWith<AccessInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessInfoCopyWith<$Res> {
  factory $AccessInfoCopyWith(
          AccessInfo value, $Res Function(AccessInfo) then) =
      _$AccessInfoCopyWithImpl<$Res, AccessInfo>;
  @useResult
  $Res call(
      {String? country,
      String? viewability,
      bool? embeddable,
      bool? publicDomain,
      String? textToSpeechPermission,
      Epub? epub,
      Pdf? pdf,
      String? webReaderLink,
      String? accessViewStatus,
      bool? quoteSharingAllowed});

  $EpubCopyWith<$Res>? get epub;
  $PdfCopyWith<$Res>? get pdf;
}

/// @nodoc
class _$AccessInfoCopyWithImpl<$Res, $Val extends AccessInfo>
    implements $AccessInfoCopyWith<$Res> {
  _$AccessInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccessInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? viewability = freezed,
    Object? embeddable = freezed,
    Object? publicDomain = freezed,
    Object? textToSpeechPermission = freezed,
    Object? epub = freezed,
    Object? pdf = freezed,
    Object? webReaderLink = freezed,
    Object? accessViewStatus = freezed,
    Object? quoteSharingAllowed = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      viewability: freezed == viewability
          ? _value.viewability
          : viewability // ignore: cast_nullable_to_non_nullable
              as String?,
      embeddable: freezed == embeddable
          ? _value.embeddable
          : embeddable // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicDomain: freezed == publicDomain
          ? _value.publicDomain
          : publicDomain // ignore: cast_nullable_to_non_nullable
              as bool?,
      textToSpeechPermission: freezed == textToSpeechPermission
          ? _value.textToSpeechPermission
          : textToSpeechPermission // ignore: cast_nullable_to_non_nullable
              as String?,
      epub: freezed == epub
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as Epub?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Pdf?,
      webReaderLink: freezed == webReaderLink
          ? _value.webReaderLink
          : webReaderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      accessViewStatus: freezed == accessViewStatus
          ? _value.accessViewStatus
          : accessViewStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteSharingAllowed: freezed == quoteSharingAllowed
          ? _value.quoteSharingAllowed
          : quoteSharingAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of AccessInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpubCopyWith<$Res>? get epub {
    if (_value.epub == null) {
      return null;
    }

    return $EpubCopyWith<$Res>(_value.epub!, (value) {
      return _then(_value.copyWith(epub: value) as $Val);
    });
  }

  /// Create a copy of AccessInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PdfCopyWith<$Res>? get pdf {
    if (_value.pdf == null) {
      return null;
    }

    return $PdfCopyWith<$Res>(_value.pdf!, (value) {
      return _then(_value.copyWith(pdf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccessInfoImplCopyWith<$Res>
    implements $AccessInfoCopyWith<$Res> {
  factory _$$AccessInfoImplCopyWith(
          _$AccessInfoImpl value, $Res Function(_$AccessInfoImpl) then) =
      __$$AccessInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? country,
      String? viewability,
      bool? embeddable,
      bool? publicDomain,
      String? textToSpeechPermission,
      Epub? epub,
      Pdf? pdf,
      String? webReaderLink,
      String? accessViewStatus,
      bool? quoteSharingAllowed});

  @override
  $EpubCopyWith<$Res>? get epub;
  @override
  $PdfCopyWith<$Res>? get pdf;
}

/// @nodoc
class __$$AccessInfoImplCopyWithImpl<$Res>
    extends _$AccessInfoCopyWithImpl<$Res, _$AccessInfoImpl>
    implements _$$AccessInfoImplCopyWith<$Res> {
  __$$AccessInfoImplCopyWithImpl(
      _$AccessInfoImpl _value, $Res Function(_$AccessInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? viewability = freezed,
    Object? embeddable = freezed,
    Object? publicDomain = freezed,
    Object? textToSpeechPermission = freezed,
    Object? epub = freezed,
    Object? pdf = freezed,
    Object? webReaderLink = freezed,
    Object? accessViewStatus = freezed,
    Object? quoteSharingAllowed = freezed,
  }) {
    return _then(_$AccessInfoImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      viewability: freezed == viewability
          ? _value.viewability
          : viewability // ignore: cast_nullable_to_non_nullable
              as String?,
      embeddable: freezed == embeddable
          ? _value.embeddable
          : embeddable // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicDomain: freezed == publicDomain
          ? _value.publicDomain
          : publicDomain // ignore: cast_nullable_to_non_nullable
              as bool?,
      textToSpeechPermission: freezed == textToSpeechPermission
          ? _value.textToSpeechPermission
          : textToSpeechPermission // ignore: cast_nullable_to_non_nullable
              as String?,
      epub: freezed == epub
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as Epub?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Pdf?,
      webReaderLink: freezed == webReaderLink
          ? _value.webReaderLink
          : webReaderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      accessViewStatus: freezed == accessViewStatus
          ? _value.accessViewStatus
          : accessViewStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteSharingAllowed: freezed == quoteSharingAllowed
          ? _value.quoteSharingAllowed
          : quoteSharingAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessInfoImpl implements _AccessInfo {
  const _$AccessInfoImpl(
      {this.country,
      this.viewability,
      this.embeddable,
      this.publicDomain,
      this.textToSpeechPermission,
      this.epub,
      this.pdf,
      this.webReaderLink,
      this.accessViewStatus,
      this.quoteSharingAllowed});

  factory _$AccessInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessInfoImplFromJson(json);

  @override
  final String? country;
  @override
  final String? viewability;
  @override
  final bool? embeddable;
  @override
  final bool? publicDomain;
  @override
  final String? textToSpeechPermission;
  @override
  final Epub? epub;
  @override
  final Pdf? pdf;
  @override
  final String? webReaderLink;
  @override
  final String? accessViewStatus;
  @override
  final bool? quoteSharingAllowed;

  @override
  String toString() {
    return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, epub: $epub, pdf: $pdf, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessInfoImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.viewability, viewability) ||
                other.viewability == viewability) &&
            (identical(other.embeddable, embeddable) ||
                other.embeddable == embeddable) &&
            (identical(other.publicDomain, publicDomain) ||
                other.publicDomain == publicDomain) &&
            (identical(other.textToSpeechPermission, textToSpeechPermission) ||
                other.textToSpeechPermission == textToSpeechPermission) &&
            (identical(other.epub, epub) || other.epub == epub) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.webReaderLink, webReaderLink) ||
                other.webReaderLink == webReaderLink) &&
            (identical(other.accessViewStatus, accessViewStatus) ||
                other.accessViewStatus == accessViewStatus) &&
            (identical(other.quoteSharingAllowed, quoteSharingAllowed) ||
                other.quoteSharingAllowed == quoteSharingAllowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed);

  /// Create a copy of AccessInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessInfoImplCopyWith<_$AccessInfoImpl> get copyWith =>
      __$$AccessInfoImplCopyWithImpl<_$AccessInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessInfoImplToJson(
      this,
    );
  }
}

abstract class _AccessInfo implements AccessInfo {
  const factory _AccessInfo(
      {final String? country,
      final String? viewability,
      final bool? embeddable,
      final bool? publicDomain,
      final String? textToSpeechPermission,
      final Epub? epub,
      final Pdf? pdf,
      final String? webReaderLink,
      final String? accessViewStatus,
      final bool? quoteSharingAllowed}) = _$AccessInfoImpl;

  factory _AccessInfo.fromJson(Map<String, dynamic> json) =
      _$AccessInfoImpl.fromJson;

  @override
  String? get country;
  @override
  String? get viewability;
  @override
  bool? get embeddable;
  @override
  bool? get publicDomain;
  @override
  String? get textToSpeechPermission;
  @override
  Epub? get epub;
  @override
  Pdf? get pdf;
  @override
  String? get webReaderLink;
  @override
  String? get accessViewStatus;
  @override
  bool? get quoteSharingAllowed;

  /// Create a copy of AccessInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccessInfoImplCopyWith<_$AccessInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Epub _$EpubFromJson(Map<String, dynamic> json) {
  return _Epub.fromJson(json);
}

/// @nodoc
mixin _$Epub {
  bool get isAvailable => throw _privateConstructorUsedError;
  String? get acsTokenLink => throw _privateConstructorUsedError;

  /// Serializes this Epub to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Epub
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpubCopyWith<Epub> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubCopyWith<$Res> {
  factory $EpubCopyWith(Epub value, $Res Function(Epub) then) =
      _$EpubCopyWithImpl<$Res, Epub>;
  @useResult
  $Res call({bool isAvailable, String? acsTokenLink});
}

/// @nodoc
class _$EpubCopyWithImpl<$Res, $Val extends Epub>
    implements $EpubCopyWith<$Res> {
  _$EpubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Epub
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
    Object? acsTokenLink = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      acsTokenLink: freezed == acsTokenLink
          ? _value.acsTokenLink
          : acsTokenLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpubImplCopyWith<$Res> implements $EpubCopyWith<$Res> {
  factory _$$EpubImplCopyWith(
          _$EpubImpl value, $Res Function(_$EpubImpl) then) =
      __$$EpubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAvailable, String? acsTokenLink});
}

/// @nodoc
class __$$EpubImplCopyWithImpl<$Res>
    extends _$EpubCopyWithImpl<$Res, _$EpubImpl>
    implements _$$EpubImplCopyWith<$Res> {
  __$$EpubImplCopyWithImpl(_$EpubImpl _value, $Res Function(_$EpubImpl) _then)
      : super(_value, _then);

  /// Create a copy of Epub
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
    Object? acsTokenLink = freezed,
  }) {
    return _then(_$EpubImpl(
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      acsTokenLink: freezed == acsTokenLink
          ? _value.acsTokenLink
          : acsTokenLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpubImpl implements _Epub {
  const _$EpubImpl({required this.isAvailable, this.acsTokenLink});

  factory _$EpubImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpubImplFromJson(json);

  @override
  final bool isAvailable;
  @override
  final String? acsTokenLink;

  @override
  String toString() {
    return 'Epub(isAvailable: $isAvailable, acsTokenLink: $acsTokenLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpubImpl &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.acsTokenLink, acsTokenLink) ||
                other.acsTokenLink == acsTokenLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isAvailable, acsTokenLink);

  /// Create a copy of Epub
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpubImplCopyWith<_$EpubImpl> get copyWith =>
      __$$EpubImplCopyWithImpl<_$EpubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpubImplToJson(
      this,
    );
  }
}

abstract class _Epub implements Epub {
  const factory _Epub(
      {required final bool isAvailable,
      final String? acsTokenLink}) = _$EpubImpl;

  factory _Epub.fromJson(Map<String, dynamic> json) = _$EpubImpl.fromJson;

  @override
  bool get isAvailable;
  @override
  String? get acsTokenLink;

  /// Create a copy of Epub
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpubImplCopyWith<_$EpubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pdf _$PdfFromJson(Map<String, dynamic> json) {
  return _Pdf.fromJson(json);
}

/// @nodoc
mixin _$Pdf {
  bool get isAvailable => throw _privateConstructorUsedError;
  String? get acsTokenLink => throw _privateConstructorUsedError;

  /// Serializes this Pdf to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pdf
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PdfCopyWith<Pdf> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCopyWith<$Res> {
  factory $PdfCopyWith(Pdf value, $Res Function(Pdf) then) =
      _$PdfCopyWithImpl<$Res, Pdf>;
  @useResult
  $Res call({bool isAvailable, String? acsTokenLink});
}

/// @nodoc
class _$PdfCopyWithImpl<$Res, $Val extends Pdf> implements $PdfCopyWith<$Res> {
  _$PdfCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pdf
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
    Object? acsTokenLink = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      acsTokenLink: freezed == acsTokenLink
          ? _value.acsTokenLink
          : acsTokenLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PdfImplCopyWith<$Res> implements $PdfCopyWith<$Res> {
  factory _$$PdfImplCopyWith(_$PdfImpl value, $Res Function(_$PdfImpl) then) =
      __$$PdfImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAvailable, String? acsTokenLink});
}

/// @nodoc
class __$$PdfImplCopyWithImpl<$Res> extends _$PdfCopyWithImpl<$Res, _$PdfImpl>
    implements _$$PdfImplCopyWith<$Res> {
  __$$PdfImplCopyWithImpl(_$PdfImpl _value, $Res Function(_$PdfImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pdf
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
    Object? acsTokenLink = freezed,
  }) {
    return _then(_$PdfImpl(
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      acsTokenLink: freezed == acsTokenLink
          ? _value.acsTokenLink
          : acsTokenLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PdfImpl implements _Pdf {
  const _$PdfImpl({required this.isAvailable, this.acsTokenLink});

  factory _$PdfImpl.fromJson(Map<String, dynamic> json) =>
      _$$PdfImplFromJson(json);

  @override
  final bool isAvailable;
  @override
  final String? acsTokenLink;

  @override
  String toString() {
    return 'Pdf(isAvailable: $isAvailable, acsTokenLink: $acsTokenLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfImpl &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.acsTokenLink, acsTokenLink) ||
                other.acsTokenLink == acsTokenLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isAvailable, acsTokenLink);

  /// Create a copy of Pdf
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfImplCopyWith<_$PdfImpl> get copyWith =>
      __$$PdfImplCopyWithImpl<_$PdfImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PdfImplToJson(
      this,
    );
  }
}

abstract class _Pdf implements Pdf {
  const factory _Pdf(
      {required final bool isAvailable,
      final String? acsTokenLink}) = _$PdfImpl;

  factory _Pdf.fromJson(Map<String, dynamic> json) = _$PdfImpl.fromJson;

  @override
  bool get isAvailable;
  @override
  String? get acsTokenLink;

  /// Create a copy of Pdf
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PdfImplCopyWith<_$PdfImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
