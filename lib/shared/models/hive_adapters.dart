import 'package:hive/hive.dart';
import 'book.dart';

class BookAdapter extends TypeAdapter<Book> {
  @override
  final int typeId = 0;

  @override
  Book read(BinaryReader reader) {
    return Book(
      id: reader.readString(),
      title: reader.readString(),
      author: reader.readString(),
      coverUrl: reader.readString(),
      isbn: reader.readString(),
      pageCount: reader.readInt(),
      publishedDate: reader.readString(),
      description: reader.readString(),
      genres: List<String>.from(reader.readList()),
      averageRating: reader.readDouble(),
      publisher: reader.readString(),
      language: reader.readString(),
      ratingCount: reader.readInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Book obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.title);
    writer.writeString(obj.author);
    writer.writeString(obj.coverUrl);
    writer.writeString(obj.isbn);
    writer.writeInt(obj.pageCount);
    writer.writeString(obj.publishedDate);
    writer.writeString(obj.description);
    writer.writeList(obj.genres);
    writer.writeDouble(obj.averageRating);
    writer.writeString(obj.publisher);
    writer.writeString(obj.language);
    writer.writeInt(obj.ratingCount);
  }
}

class UserBookAdapter extends TypeAdapter<UserBook> {
  @override
  final int typeId = 1;

  @override
  UserBook read(BinaryReader reader) {
    return UserBook(
      book: reader.read() as Book,
      status: reader.read() as BookStatus,
      rating: reader.readInt(),
      review: reader.readString(),
      currentPage: reader.readInt(),
      createdAt: reader.read() as DateTime?,
      updatedAt: reader.read() as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, UserBook obj) {
    writer.write(obj.book);
    writer.write(obj.status);
    writer.writeInt(obj.rating);
    writer.writeString(obj.review);
    writer.writeInt(obj.currentPage);
    writer.write(obj.createdAt);
    writer.write(obj.updatedAt);
  }
}

class BookStatusAdapter extends TypeAdapter<BookStatus> {
  @override
  final int typeId = 2;

  @override
  BookStatus read(BinaryReader reader) {
    final index = reader.readByte();
    switch (index) {
      case 0:
        return const BookStatus.wantToRead();
      case 1:
        return const BookStatus.reading();
      case 2:
        return const BookStatus.completed();
      case 3:
        return const BookStatus.dnf();
      default:
        return const BookStatus.wantToRead();
    }
  }

  @override
  void write(BinaryWriter writer, BookStatus obj) {
    obj.when(
      wantToRead: () => writer.writeByte(0),
      reading: () => writer.writeByte(1),
      completed: () => writer.writeByte(2),
      dnf: () => writer.writeByte(3),
    );
  }
} 