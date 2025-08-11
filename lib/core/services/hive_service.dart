import 'package:hive_flutter/hive_flutter.dart';
import '../../shared/models/user_book.dart';
import '../../shared/models/reading_status.dart';
import '../../shared/models/book.dart';
import '../../shared/models/hive_adapters.dart';

class HiveService {
  static Future<void> initialize() async {
    await Hive.initFlutter();
    
    // Register adapters
    Hive.registerAdapter(UserBookAdapter());
    Hive.registerAdapter(ReadingStatusAdapter());
    
    // Open boxes
    await Hive.openBox<UserBook>('userBooks');
  }

  // Box getters
  static Box<Book> get booksBox => Hive.box<Book>('books');
  static Box<UserBook> get userBooksBox => Hive.box<UserBook>('userBooks');
} 