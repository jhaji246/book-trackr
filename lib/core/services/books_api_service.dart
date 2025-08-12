import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/environment.dart';


class BooksApiService {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1';

  static Future<Map<String, dynamic>> searchBooks({
    required String query,
    int startIndex = 0,
    int maxResults = 20,
  }) async {
    try {
      final uri = Uri.parse('$_baseUrl/volumes').replace(
        queryParameters: {
          'q': query,
          'startIndex': startIndex.toString(),
          'maxResults': maxResults.toString(),
          'key': Environment.googleBooksApiKey,
        },
      );

      final response = await http.get(uri);
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load books: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to search books: $e');
    }
  }

  static Future<Map<String, dynamic>> getBookDetails(String bookId) async {
    try {
      final uri = Uri.parse('$_baseUrl/volumes/$bookId').replace(
        queryParameters: {
          'key': Environment.googleBooksApiKey,
        },
      );

      final response = await http.get(uri);
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load book details: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to get book details: $e');
    }
  }

  static Future<Map<String, dynamic>> getFeaturedBooks() async {
    // Search for featured books by using popular categories
    const featuredQueries = [
      'bestseller fiction',
      'award winning books',
      'classic literature',
      'new releases 2024',
    ];
    
    final randomQuery = featuredQueries[DateTime.now().millisecond % featuredQueries.length];
    return await searchBooks(query: randomQuery, maxResults: 20);
  }

  static Future<Map<String, dynamic>> getPopularBooks() async {
    // Search for popular books by using common terms
    const popularQueries = [
      'bestseller',
      'popular fiction',
      'new releases',
      'classic literature',
    ];
    
    final randomQuery = popularQueries[DateTime.now().millisecond % popularQueries.length];
    return await searchBooks(query: randomQuery, maxResults: 20);
  }

  static Future<Map<String, dynamic>> getBooksByCategory(String category) async {
    return await searchBooks(query: 'subject:$category', maxResults: 20);
  }
} 