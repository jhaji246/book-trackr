import '../../shared/models/book.dart';

class DummyData {
  static final List<Book> books = [
    Book(
      id: '1',
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1490528560i/4671.jpg',
      description: 'A story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan.',
      genres: ['Fiction', 'Classic', 'Romance'],
      averageRating: 4.2,
      pageCount: 180,
      isbn: '978-0743273565',
      publishedDate: DateTime(1925, 4, 10),
    ),
    Book(
      id: '2',
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1553383690i/2657.jpg',
      description: 'The story of young Scout Finch and her father Atticus in a racially divided Alabama town.',
      genres: ['Fiction', 'Classic', 'Historical Fiction'],
      averageRating: 4.3,
      pageCount: 281,
      isbn: '978-0446310789',
      publishedDate: DateTime(1960, 7, 11),
    ),
    Book(
      id: '3',
      title: '1984',
      author: 'George Orwell',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1657780315i/5470.jpg',
      description: 'A dystopian novel about totalitarianism and surveillance society.',
      genres: ['Fiction', 'Dystopian', 'Science Fiction'],
      averageRating: 4.1,
      pageCount: 328,
      isbn: '978-0451524935',
      publishedDate: DateTime(1949, 6, 8),
    ),
    Book(
      id: '4',
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1320399351i/1885.jpg',
      description: 'The story of Elizabeth Bennet and Mr. Darcy in Georgian-era England.',
      genres: ['Fiction', 'Classic', 'Romance'],
      averageRating: 4.3,
      pageCount: 432,
      isbn: '978-0141439518',
      publishedDate: DateTime(1813, 1, 28),
    ),
    Book(
      id: '5',
      title: 'The Hobbit',
      author: 'J.R.R. Tolkien',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1546071216i/5907.jpg',
      description: 'Bilbo Baggins embarks on an unexpected journey with thirteen dwarves.',
      genres: ['Fantasy', 'Adventure', 'Fiction'],
      averageRating: 4.3,
      pageCount: 366,
      isbn: '978-0547928241',
      publishedDate: DateTime(1937, 9, 21),
    ),
    Book(
      id: '6',
      title: 'The Catcher in the Rye',
      author: 'J.D. Salinger',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1398034300i/5107.jpg',
      description: 'Holden Caulfield\'s journey through New York City after being expelled from prep school.',
      genres: ['Fiction', 'Classic', 'Coming of Age'],
      averageRating: 3.8,
      pageCount: 277,
      isbn: '978-0316769488',
      publishedDate: DateTime(1951, 7, 16),
    ),
    Book(
      id: '7',
      title: 'Lord of the Flies',
      author: 'William Golding',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1327869409i/7624.jpg',
      description: 'A group of British boys stranded on an uninhabited island and their attempt to govern themselves.',
      genres: ['Fiction', 'Classic', 'Allegory'],
      averageRating: 3.7,
      pageCount: 182,
      isbn: '978-0399501487',
      publishedDate: DateTime(1954, 9, 17),
    ),
    Book(
      id: '8',
      title: 'Animal Farm',
      author: 'George Orwell',
      coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1327942880i/7613.jpg',
      description: 'A farm is taken over by its overworked, mistreated animals with a dream of prosperity.',
      genres: ['Fiction', 'Classic', 'Allegory'],
      averageRating: 3.9,
      pageCount: 122,
      isbn: '978-0451526342',
      publishedDate: DateTime(1945, 8, 17),
    ),
  ];

  static Book getBookById(String id) {
    return books.firstWhere((book) => book.id == id);
  }

  static List<Book> searchBooks(String query) {
    final lowercaseQuery = query.toLowerCase();
    return books.where((book) {
      return book.title.toLowerCase().contains(lowercaseQuery) ||
             book.author.toLowerCase().contains(lowercaseQuery) ||
             (book.genres?.any((genre) => genre.toLowerCase().contains(lowercaseQuery)) ?? false);
    }).toList();
  }
} 