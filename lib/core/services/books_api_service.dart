import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants/app_constants.dart';

class BooksApiService {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1';
  static const String _apiKey = 'AIzaSyDnr1rFHn0G4fXZQpWfR75fx5GTpeFM4FE';

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
          'key': _apiKey,
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
          'key': _apiKey,
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