import 'package:hive/hive.dart';
import 'user_book.dart';
import 'reading_status.dart';

class UserBookAdapter extends TypeAdapter<UserBook> {
  @override
  final int typeId = 1;

  @override
  UserBook read(BinaryReader reader) {
    return UserBook(
      id: reader.read() as String,
      title: reader.read() as String,
      author: reader.read() as String,
      description: reader.read() as String,
      coverUrl: reader.read() as String,
      averageRating: reader.read() as double,
      ratingCount: reader.read() as int,
      pageCount: reader.read() as int,
      isbn: reader.read() as String,
      publishedDate: reader.read() as String,
      genres: List<String>.from(reader.read() as List),
      publisher: reader.read() as String,
      language: reader.read() as String,
      status: reader.read() as ReadingStatus,
      dateAdded: reader.read() as DateTime,
      dateStarted: reader.read() as DateTime?,
      dateCompleted: reader.read() as DateTime?,
      currentPage: reader.read() as int,
      notes: reader.read() as String,
      rating: reader.read() as int,
    );
  }

  @override
  void write(BinaryWriter writer, UserBook obj) {
    writer.write(obj.id);
    writer.write(obj.title);
    writer.write(obj.author);
    writer.write(obj.description);
    writer.write(obj.coverUrl);
    writer.write(obj.averageRating);
    writer.write(obj.ratingCount);
    writer.write(obj.pageCount);
    writer.write(obj.isbn);
    writer.write(obj.publishedDate);
    writer.write(obj.genres);
    writer.write(obj.publisher);
    writer.write(obj.language);
    writer.write(obj.status);
    writer.write(obj.dateAdded);
    writer.write(obj.dateStarted);
    writer.write(obj.dateCompleted);
    writer.write(obj.currentPage);
    writer.write(obj.notes);
    writer.write(obj.rating);
  }
}

class ReadingStatusAdapter extends TypeAdapter<ReadingStatus> {
  @override
  final int typeId = 2;

  @override
  ReadingStatus read(BinaryReader reader) {
    final status = reader.read() as String;
    switch (status) {
      case 'toRead':
        return ReadingStatus.toRead;
      case 'reading':
        return ReadingStatus.reading;
      case 'completed':
        return ReadingStatus.completed;
      case 'abandoned':
        return ReadingStatus.abandoned;
      default:
        return ReadingStatus.toRead;
    }
  }

  @override
  void write(BinaryWriter writer, ReadingStatus obj) {
    writer.write(obj.toString());
  }
} 