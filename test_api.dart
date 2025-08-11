import 'package:dio/dio.dart';
import 'lib/core/config/environment.dart';

void main() async {
  // Get API key from environment variables
  final apiKey = Environment.googleBooksApiKey;
  
  if (apiKey.isEmpty) {
    print('❌ No API key found. Please set GOOGLE_BOOKS_API_KEY environment variable.');
    print('   Run: flutter run --dart-define=GOOGLE_BOOKS_API_KEY=your_api_key_here');
    return;
  }

  final dio = Dio();
  final baseUrl = 'https://www.googleapis.com/books/v1';

  try {
    print('🔍 Testing Google Books API...');
    
    final response = await dio.get(
      '$baseUrl/volumes',
      queryParameters: {
        'q': 'Harry Potter',
        'key': apiKey,
        'maxResults': 5,
      },
    );

    if (response.statusCode == 200) {
      print('✅ API Key is working!');
      print('📚 Found ${response.data['totalItems']} books');
      
      final items = response.data['items'] as List;
      if (items.isNotEmpty) {
        print('\n📖 Sample books:');
        for (int i = 0; i < items.length && i < 3; i++) {
          final book = items[i]['volumeInfo'];
          final title = book['title'] ?? 'Unknown Title';
          final author = book['authors']?.first ?? 'Unknown Author';
          print('  • $title by $author');
        }
      }
    } else {
      print('❌ API returned status code: ${response.statusCode}');
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 400) {
      print('❌ Invalid API request. Check your API key.');
    } else if (e.response?.statusCode == 403) {
      print('❌ API key is invalid or quota exceeded.');
    } else {
      print('❌ Network error: ${e.message}');
    }
  } catch (e) {
    print('❌ Error: $e');
  }
} 