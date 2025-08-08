import 'package:hive_flutter/hive_flutter.dart';
import '../constants/app_constants.dart';
import '../../shared/models/book.dart';
import '../../shared/models/user.dart';

class HiveService {
  static late Box<Book> booksBox;
  static late Box<UserBook> userBooksBox;
  static late Box<User> usersBox;

  static Future<void> initialize() async {
    await Hive.initFlutter();

    // Register adapters only if not already registered
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(BookImplAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(UserBookImplAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(BookStatusAdapter());
    }
    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter(UserAdapter());
    }

    // Open boxes
    booksBox = await Hive.openBox<Book>(AppConstants.booksBoxName);
    userBooksBox = await Hive.openBox<UserBook>(AppConstants.userBooksBoxName);
    usersBox = await Hive.openBox<User>(AppConstants.usersBoxName);
  }

  static Future<void> close() async {
    await booksBox.close();
    await userBooksBox.close();
    await usersBox.close();
  }
} 