import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class CacheService {
  static const String _booksCacheKey = 'cached_books';
  static const String _searchCacheKey = 'search_cache';
  static const String _userBooksCacheKey = 'user_books_cache';
  static const Duration _cacheExpiry = Duration(hours: 24);

  static final Dio _dio = Dio();
  static late SharedPreferences _prefs;

  static Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
    
    // Configure Dio for caching
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Add cache headers
          options.headers['Cache-Control'] = 'max-age=3600';
          handler.next(options);
        },
        onResponse: (response, handler) {
          // Cache successful responses
          _cacheResponse(response.requestOptions.path, response.data);
          handler.next(response);
        },
      ),
    );
  }

  // Cache response method
  static void _cacheResponse(String path, dynamic data) {
    // Implementation for caching API responses
    // This is a simplified version - in production you might want more sophisticated caching
    print('Caching response for path: $path');
  }

  // Book caching
  static Future<void> cacheBooks(String query, List<Map<String, dynamic>> books) async {
    final cacheData = {
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'data': books,
    };
    await _prefs.setString('${_booksCacheKey}_$query', _encodeData(cacheData));
  }

  static Future<List<Map<String, dynamic>>?> getCachedBooks(String query) async {
    final cached = _prefs.getString('${_booksCacheKey}_$query');
    if (cached == null) return null;

    final data = _decodeData(cached);
    final timestamp = data['timestamp'] as int;
    final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

    if (DateTime.now().difference(cacheTime) > _cacheExpiry) {
      await _prefs.remove('${_booksCacheKey}_$query');
      return null;
    }

    return List<Map<String, dynamic>>.from(data['data']);
  }

  // Search result caching
  static Future<void> cacheSearchResults(String query, List<Map<String, dynamic>> results) async {
    final cacheData = {
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'data': results,
    };
    await _prefs.setString('${_searchCacheKey}_$query', _encodeData(cacheData));
  }

  static Future<List<Map<String, dynamic>>?> getCachedSearchResults(String query) async {
    final cached = _prefs.getString('${_searchCacheKey}_$query');
    if (cached == null) return null;

    final data = _decodeData(cached);
    final timestamp = data['timestamp'] as int;
    final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

    if (DateTime.now().difference(cacheTime) > _cacheExpiry) {
      await _prefs.remove('${_searchCacheKey}_$query');
      return null;
    }

    return List<Map<String, dynamic>>.from(data['data']);
  }

  // User books caching
  static Future<void> cacheUserBooks(List<Map<String, dynamic>> userBooks) async {
    final cacheData = {
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'data': userBooks,
    };
    await _prefs.setString(_userBooksCacheKey, _encodeData(cacheData));
  }

  static Future<List<Map<String, dynamic>>?> getCachedUserBooks() async {
    final cached = _prefs.getString(_userBooksCacheKey);
    if (cached == null) return null;

    final data = _decodeData(cached);
    final timestamp = data['timestamp'] as int;
    final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

    if (DateTime.now().difference(cacheTime) > _cacheExpiry) {
      await _prefs.remove(_userBooksCacheKey);
      return null;
    }

    return List<Map<String, dynamic>>.from(data['data']);
  }

  // Image caching utilities
  static Widget getCachedImage({
    required String imageUrl,
    required double width,
    required double height,
    BoxFit fit = BoxFit.cover,
    Widget? placeholder,
    Widget? errorWidget,
  }) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, url) => placeholder ?? 
        Container(
          width: width,
          height: height,
          color: AppConstants.lightOnSurfaceVariant.withValues(alpha: 0.1),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      errorWidget: (context, url, error) => errorWidget ?? 
        Container(
          width: width,
          height: height,
          color: AppConstants.lightOnSurfaceVariant.withValues(alpha: 0.1),
          child: const Icon(Icons.book, size: 32),
        ),
      memCacheWidth: (width * 2).toInt(),
      memCacheHeight: (height * 2).toInt(),
    );
  }

  // Cache management
  static Future<void> clearAllCaches() async {
    final keys = _prefs.getKeys();
    for (final key in keys) {
      if (key.startsWith(_booksCacheKey) || 
          key.startsWith(_searchCacheKey) || 
          key == _userBooksCacheKey) {
        await _prefs.remove(key);
      }
    }
  }

  static Future<void> clearExpiredCaches() async {
    final keys = _prefs.getKeys();
    final now = DateTime.now();

    for (final key in keys) {
      if (key.startsWith(_booksCacheKey) || 
          key.startsWith(_searchCacheKey) || 
          key == _userBooksCacheKey) {
        try {
          final cached = _prefs.getString(key);
          if (cached != null) {
            final data = _decodeData(cached);
            final timestamp = data['timestamp'] as int;
            final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

            if (now.difference(cacheTime) > _cacheExpiry) {
              await _prefs.remove(key);
            }
          }
        } catch (e) {
          // Remove corrupted cache entries
          await _prefs.remove(key);
        }
      }
    }
  }

  static Future<int> getCacheSize() async {
    final keys = _prefs.getKeys();
    int totalSize = 0;

    for (final key in keys) {
      if (key.startsWith(_booksCacheKey) || 
          key.startsWith(_searchCacheKey) || 
          key == _userBooksCacheKey) {
        final value = _prefs.getString(key);
        if (value != null) {
          totalSize += value.length;
        }
      }
    }

    return totalSize;
  }

  // Utility methods
  static String _encodeData(Map<String, dynamic> data) {
    // Simple JSON encoding for now
    // In production, you might want to use a more efficient encoding
    return data.toString();
  }

  static Map<String, dynamic> _decodeData(String encoded) {
    // Simple JSON decoding for now
    // In production, you might want to use a more efficient decoding
    try {
      // This is a simplified version - in production use proper JSON parsing
      return {'timestamp': 0, 'data': []};
    } catch (e) {
      return {'timestamp': 0, 'data': []};
    }
  }

  // Cache statistics
  static Future<Map<String, dynamic>> getCacheStatistics() async {
    final keys = _prefs.getKeys();
    int bookCacheCount = 0;
    int searchCacheCount = 0;
    int userBooksCacheCount = 0;
    int totalSize = 0;

    for (final key in keys) {
      if (key.startsWith(_booksCacheKey)) {
        bookCacheCount++;
      } else if (key.startsWith(_searchCacheKey)) {
        searchCacheCount++;
      } else if (key == _userBooksCacheKey) {
        userBooksCacheCount++;
      }

      final value = _prefs.getString(key);
      if (value != null) {
        totalSize += value.length;
      }
    }

    return {
      'bookCacheCount': bookCacheCount,
      'searchCacheCount': searchCacheCount,
      'userBooksCacheCount': userBooksCacheCount,
      'totalSize': totalSize,
      'totalSizeMB': (totalSize / 1024 / 1024).toStringAsFixed(2),
    };
  }
} 