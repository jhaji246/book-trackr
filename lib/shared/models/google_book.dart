import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_book.freezed.dart';
part 'google_book.g.dart';

@freezed
class GoogleBooksResponse with _$GoogleBooksResponse {
  const factory GoogleBooksResponse({
    required int totalItems,
    required List<GoogleBook> items,
  }) = _GoogleBooksResponse;

  factory GoogleBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleBooksResponseFromJson(json);
}

@freezed
class GoogleBook with _$GoogleBook {
  const factory GoogleBook({
    required String id,
    required VolumeInfo volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
  }) = _GoogleBook;

  factory GoogleBook.fromJson(Map<String, dynamic> json) =>
      _$GoogleBookFromJson(json);
}

@freezed
class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    required String title,
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
    String? canonicalVolumeLink,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}

@freezed
class IndustryIdentifier with _$IndustryIdentifier {
  const factory IndustryIdentifier({
    required String type,
    required String identifier,
  }) = _IndustryIdentifier;

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);
}

@freezed
class ReadingModes with _$ReadingModes {
  const factory ReadingModes({
    required bool text,
    required bool image,
  }) = _ReadingModes;

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);
}

@freezed
class ImageLinks with _$ImageLinks {
  const factory ImageLinks({
    String? smallThumbnail,
    String? thumbnail,
  }) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}

@freezed
class SaleInfo with _$SaleInfo {
  const factory SaleInfo({
    String? country,
    String? saleability,
    bool? isEbook,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    String? buyLink,
  }) = _SaleInfo;

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
}

@freezed
class ListPrice with _$ListPrice {
  const factory ListPrice({
    required double amount,
    required String currencyCode,
  }) = _ListPrice;

  factory ListPrice.fromJson(Map<String, dynamic> json) =>
      _$ListPriceFromJson(json);
}

@freezed
class RetailPrice with _$RetailPrice {
  const factory RetailPrice({
    required double amount,
    required String currencyCode,
  }) = _RetailPrice;

  factory RetailPrice.fromJson(Map<String, dynamic> json) =>
      _$RetailPriceFromJson(json);
}

@freezed
class AccessInfo with _$AccessInfo {
  const factory AccessInfo({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) = _AccessInfo;

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);
}

@freezed
class Epub with _$Epub {
  const factory Epub({
    required bool isAvailable,
    String? acsTokenLink,
  }) = _Epub;

  factory Epub.fromJson(Map<String, dynamic> json) =>
      _$EpubFromJson(json);
}

@freezed
class Pdf with _$Pdf {
  const factory Pdf({
    required bool isAvailable,
    String? acsTokenLink,
  }) = _Pdf;

  factory Pdf.fromJson(Map<String, dynamic> json) =>
      _$PdfFromJson(json);
} 