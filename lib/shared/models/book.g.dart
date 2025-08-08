// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookStatusAdapter extends TypeAdapter<BookStatus> {
  @override
  final int typeId = 2;

  @override
  BookStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return BookStatus.wantToRead;
      case 1:
        return BookStatus.reading;
      case 2:
        return BookStatus.completed;
      case 3:
        return BookStatus.dnf;
      default:
        return BookStatus.wantToRead;
    }
  }

  @override
  void write(BinaryWriter writer, BookStatus obj) {
    switch (obj) {
      case BookStatus.wantToRead:
        writer.writeByte(0);
        break;
      case BookStatus.reading:
        writer.writeByte(1);
        break;
      case BookStatus.completed:
        writer.writeByte(2);
        break;
      case BookStatus.dnf:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BookImplAdapter extends TypeAdapter<_$BookImpl> {
  @override
  final int typeId = 0;

  @override
  _$BookImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BookImpl(
      id: fields[0] as String,
      title: fields[1] as String,
      author: fields[2] as String,
      description: fields[3] as String?,
      coverUrl: fields[4] as String?,
      averageRating: fields[5] as double?,
      ratingCount: fields[6] as int?,
      pageCount: fields[7] as int?,
      isbn: fields[8] as String?,
      publishedDate: fields[9] as DateTime?,
      genres: (fields[10] as List?)?.cast<String>(),
      publisher: fields[11] as String?,
      language: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$BookImpl obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.coverUrl)
      ..writeByte(5)
      ..write(obj.averageRating)
      ..writeByte(6)
      ..write(obj.ratingCount)
      ..writeByte(7)
      ..write(obj.pageCount)
      ..writeByte(8)
      ..write(obj.isbn)
      ..writeByte(9)
      ..write(obj.publishedDate)
      ..writeByte(11)
      ..write(obj.publisher)
      ..writeByte(12)
      ..write(obj.language)
      ..writeByte(10)
      ..write(obj.genres);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserBookImplAdapter extends TypeAdapter<_$UserBookImpl> {
  @override
  final int typeId = 1;

  @override
  _$UserBookImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserBookImpl(
      id: fields[0] as String,
      bookId: fields[1] as String,
      userId: fields[2] as String,
      status: fields[3] as BookStatus,
      currentPage: fields[4] as int?,
      rating: fields[5] as double?,
      review: fields[6] as String?,
      createdAt: fields[7] as DateTime?,
      updatedAt: fields[8] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserBookImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.bookId)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.currentPage)
      ..writeByte(5)
      ..write(obj.rating)
      ..writeByte(6)
      ..write(obj.review)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserBookImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String?,
      coverUrl: json['coverUrl'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      pageCount: (json['pageCount'] as num?)?.toInt(),
      isbn: json['isbn'] as String?,
      publishedDate: json['publishedDate'] == null
          ? null
          : DateTime.parse(json['publishedDate'] as String),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publisher: json['publisher'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'coverUrl': instance.coverUrl,
      'averageRating': instance.averageRating,
      'ratingCount': instance.ratingCount,
      'pageCount': instance.pageCount,
      'isbn': instance.isbn,
      'publishedDate': instance.publishedDate?.toIso8601String(),
      'genres': instance.genres,
      'publisher': instance.publisher,
      'language': instance.language,
    };

_$UserBookImpl _$$UserBookImplFromJson(Map<String, dynamic> json) =>
    _$UserBookImpl(
      id: json['id'] as String,
      bookId: json['bookId'] as String,
      userId: json['userId'] as String,
      status: $enumDecode(_$BookStatusEnumMap, json['status']),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      review: json['review'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserBookImplToJson(_$UserBookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'userId': instance.userId,
      'status': _$BookStatusEnumMap[instance.status]!,
      'currentPage': instance.currentPage,
      'rating': instance.rating,
      'review': instance.review,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$BookStatusEnumMap = {
  BookStatus.wantToRead: 'wantToRead',
  BookStatus.reading: 'reading',
  BookStatus.completed: 'completed',
  BookStatus.dnf: 'dnf',
};
