import 'package:dio/dio.dart';
import 'lib/core/config/environment.dart';

void main() async {
  // Get API key from environment variables
  final apiKey = Environment.googleBooksApiKey;
  
  if (apiKey.isEmpty) {
    // No API key found
    return;
  }

  final dio = Dio();
  final baseUrl = 'https://www.googleapis.com/books/v1';

  try {
  
    
    final response = await dio.get(
      '$baseUrl/volumes',
      queryParameters: {
        'q': 'Harry Potter',
        'key': apiKey,
        'maxResults': 5,
      },
    );

    if (response.statusCode == 200) {

      
      final items = response.data['items'] as List;
      if (items.isNotEmpty) {
        // Sample books found
      }
    } else {
      // API returned error status code
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 400) {
      // Invalid API request
    } else if (e.response?.statusCode == 403) {
      // API key is invalid or quota exceeded
    } else {
      // Network error
    }
  } catch (e) {
    // General error
  }
} 