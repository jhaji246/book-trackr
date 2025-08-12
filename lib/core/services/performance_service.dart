import 'dart:async';
import 'package:hive/hive.dart';

/// Performance optimization service for caching and optimization
class PerformanceService {
  static const String _cacheBoxName = 'performance_cache';
  static const Duration _defaultCacheExpiry = Duration(hours: 1);

  late Box<dynamic> _cacheBox;
  final Map<String, Timer> _cacheTimers = {};

  /// Initialize the performance service
  Future<void> initialize() async {
    _cacheBox = await Hive.openBox(_cacheBoxName);
  }

  /// Cache data with automatic expiry
  Future<void> cacheData(
    String key,
    dynamic data, {
    Duration? expiry,
  }) async {
    try {
      final cacheEntry = _CacheEntry(
        data: data,
        timestamp: DateTime.now(),
        expiry: expiry ?? _defaultCacheExpiry,
      );

      await _cacheBox.put(key, cacheEntry);

      // Set up automatic cleanup
      _setupCacheCleanup(key, cacheEntry.expiry);
    } catch (e) {
      // Silent error handling for production
    }
  }

  /// Retrieve cached data
  T? getCachedData<T>(String key) {
    try {
      final cacheEntry = _cacheBox.get(key) as _CacheEntry?;
      if (cacheEntry == null) return null;

      // Check if cache has expired
      if (_isCacheExpired(cacheEntry)) {
        _removeCacheEntry(key);
        return null;
      }

      return cacheEntry.data as T;
    } catch (e) {
      return null;
    }
  }

  /// Check if data is cached and valid
  bool isDataCached(String key) {
    try {
      final cacheEntry = _cacheBox.get(key) as _CacheEntry?;
      if (cacheEntry == null) return false;

      return !_isCacheExpired(cacheEntry);
    } catch (e) {
      return false;
    }
  }

  /// Remove specific cache entry
  Future<void> removeCacheEntry(String key) async {
    try {
      await _cacheBox.delete(key);
      _cacheTimers[key]?.cancel();
      _cacheTimers.remove(key);
    } catch (e) {
      // Silent error handling for production
    }
  }

  /// Clear all cache
  Future<void> clearAllCache() async {
    try {
      await _cacheBox.clear();
      for (final timer in _cacheTimers.values) {
        timer.cancel();
      }
      _cacheTimers.clear();
    } catch (e) {
      // Silent error handling for production
    }
  }

  /// Get cache statistics
  Map<String, dynamic> getCacheStatistics() {
    try {
      final totalEntries = _cacheBox.length;
      final activeEntries = _cacheBox.values
          .where((entry) => entry is _CacheEntry && !_isCacheExpired(entry))
          .length;

      return {
        'totalEntries': totalEntries,
        'activeEntries': activeEntries,
        'expiredEntries': totalEntries - activeEntries,
      };
    } catch (e) {
      return {};
    }
  }

  // Private helper methods

  bool _isCacheExpired(_CacheEntry entry) {
    return DateTime.now().isAfter(entry.timestamp.add(entry.expiry));
  }

  void _setupCacheCleanup(String key, Duration expiry) {
    // Cancel existing timer if any
    _cacheTimers[key]?.cancel();

    // Set up new timer
    _cacheTimers[key] = Timer(expiry, () {
      _removeCacheEntry(key);
    });
  }

  Future<void> _removeCacheEntry(String key) async {
    await removeCacheEntry(key);
  }

  /// Dispose resources
  Future<void> dispose() async {
    try {
      for (final timer in _cacheTimers.values) {
        timer.cancel();
      }
      _cacheTimers.clear();
      await _cacheBox.close();
    } catch (e) {
      // Silent error handling for production
    }
  }
}

/// Cache entry class for storing cached data
class _CacheEntry {
  final dynamic data;
  final DateTime timestamp;
  final Duration expiry;

  _CacheEntry({
    required this.data,
    required this.timestamp,
    required this.expiry,
  });
}
