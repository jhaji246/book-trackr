// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleBooksResponseImpl _$$GoogleBooksResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleBooksResponseImpl(
      totalItems: (json['totalItems'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => GoogleBook.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoogleBooksResponseImplToJson(
        _$GoogleBooksResponseImpl instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'items': instance.items,
    };

_$GoogleBookImpl _$$GoogleBookImplFromJson(Map<String, dynamic> json) =>
    _$GoogleBookImpl(
      id: json['id'] as String,
      volumeInfo:
          VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: json['saleInfo'] == null
          ? null
          : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
      accessInfo: json['accessInfo'] == null
          ? null
          : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GoogleBookImplToJson(_$GoogleBookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'volumeInfo': instance.volumeInfo,
      'saleInfo': instance.saleInfo,
      'accessInfo': instance.accessInfo,
    };

_$VolumeInfoImpl _$$VolumeInfoImplFromJson(Map<String, dynamic> json) =>
    _$VolumeInfoImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publisher: json['publisher'] as String?,
      publishedDate: json['publishedDate'] as String?,
      description: json['description'] as String?,
      industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
          ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      readingModes: json['readingModes'] == null
          ? null
          : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
      pageCount: (json['pageCount'] as num?)?.toInt(),
      printType: json['printType'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      maturityRating: json['maturityRating'] as String?,
      allowAnonLogging: json['allowAnonLogging'] as bool?,
      contentVersion: json['contentVersion'] as String?,
      imageLinks: json['imageLinks'] == null
          ? null
          : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      language: json['language'] as String?,
      previewLink: json['previewLink'] as String?,
      infoLink: json['infoLink'] as String?,
      canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      ratingsCount: (json['ratingsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VolumeInfoImplToJson(_$VolumeInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'industryIdentifiers': instance.industryIdentifiers,
      'readingModes': instance.readingModes,
      'pageCount': instance.pageCount,
      'printType': instance.printType,
      'categories': instance.categories,
      'maturityRating': instance.maturityRating,
      'allowAnonLogging': instance.allowAnonLogging,
      'contentVersion': instance.contentVersion,
      'imageLinks': instance.imageLinks,
      'language': instance.language,
      'previewLink': instance.previewLink,
      'infoLink': instance.infoLink,
      'canonicalVolumeLink': instance.canonicalVolumeLink,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
    };

_$IndustryIdentifierImpl _$$IndustryIdentifierImplFromJson(
        Map<String, dynamic> json) =>
    _$IndustryIdentifierImpl(
      type: json['type'] as String,
      identifier: json['identifier'] as String,
    );

Map<String, dynamic> _$$IndustryIdentifierImplToJson(
        _$IndustryIdentifierImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'identifier': instance.identifier,
    };

_$ReadingModesImpl _$$ReadingModesImplFromJson(Map<String, dynamic> json) =>
    _$ReadingModesImpl(
      text: json['text'] as bool,
      image: json['image'] as bool,
    );

Map<String, dynamic> _$$ReadingModesImplToJson(_$ReadingModesImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image': instance.image,
    };

_$ImageLinksImpl _$$ImageLinksImplFromJson(Map<String, dynamic> json) =>
    _$ImageLinksImpl(
      smallThumbnail: json['smallThumbnail'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$ImageLinksImplToJson(_$ImageLinksImpl instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };

_$SaleInfoImpl _$$SaleInfoImplFromJson(Map<String, dynamic> json) =>
    _$SaleInfoImpl(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool?,
      listPrice: json['listPrice'] == null
          ? null
          : ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
      retailPrice: json['retailPrice'] == null
          ? null
          : RetailPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
      buyLink: json['buyLink'] as String?,
    );

Map<String, dynamic> _$$SaleInfoImplToJson(_$SaleInfoImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'saleability': instance.saleability,
      'isEbook': instance.isEbook,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
      'buyLink': instance.buyLink,
    };

_$ListPriceImpl _$$ListPriceImplFromJson(Map<String, dynamic> json) =>
    _$ListPriceImpl(
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$$ListPriceImplToJson(_$ListPriceImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };

_$RetailPriceImpl _$$RetailPriceImplFromJson(Map<String, dynamic> json) =>
    _$RetailPriceImpl(
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$$RetailPriceImplToJson(_$RetailPriceImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };

_$AccessInfoImpl _$$AccessInfoImplFromJson(Map<String, dynamic> json) =>
    _$AccessInfoImpl(
      country: json['country'] as String?,
      viewability: json['viewability'] as String?,
      embeddable: json['embeddable'] as bool?,
      publicDomain: json['publicDomain'] as bool?,
      textToSpeechPermission: json['textToSpeechPermission'] as String?,
      epub: json['epub'] == null
          ? null
          : Epub.fromJson(json['epub'] as Map<String, dynamic>),
      pdf: json['pdf'] == null
          ? null
          : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
      webReaderLink: json['webReaderLink'] as String?,
      accessViewStatus: json['accessViewStatus'] as String?,
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
    );

Map<String, dynamic> _$$AccessInfoImplToJson(_$AccessInfoImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'viewability': instance.viewability,
      'embeddable': instance.embeddable,
      'publicDomain': instance.publicDomain,
      'textToSpeechPermission': instance.textToSpeechPermission,
      'epub': instance.epub,
      'pdf': instance.pdf,
      'webReaderLink': instance.webReaderLink,
      'accessViewStatus': instance.accessViewStatus,
      'quoteSharingAllowed': instance.quoteSharingAllowed,
    };

_$EpubImpl _$$EpubImplFromJson(Map<String, dynamic> json) => _$EpubImpl(
      isAvailable: json['isAvailable'] as bool,
      acsTokenLink: json['acsTokenLink'] as String?,
    );

Map<String, dynamic> _$$EpubImplToJson(_$EpubImpl instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'acsTokenLink': instance.acsTokenLink,
    };

_$PdfImpl _$$PdfImplFromJson(Map<String, dynamic> json) => _$PdfImpl(
      isAvailable: json['isAvailable'] as bool,
      acsTokenLink: json['acsTokenLink'] as String?,
    );

Map<String, dynamic> _$$PdfImplToJson(_$PdfImpl instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'acsTokenLink': instance.acsTokenLink,
    };
