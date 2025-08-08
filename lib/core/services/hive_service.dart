import 'package:hive_flutter/hive_flutter.dart';
import '../../shared/models/book.dart';
import '../../shared/models/hive_adapters.dart';

class HiveService {
  static Future<void> initialize() async {
    // Register adapters
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(BookAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(UserBookAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(BookStatusAdapter());
    }
  }

  // Box getters
  static Box<Book> get booksBox => Hive.box<Book>('books');
  static Box<UserBook> get userBooksBox => Hive.box<UserBook>('userBooks');
} 