import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'dart:ui' as ui;

class CachedNetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;
  final String? fallbackText;

  const CachedNetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.placeholder,
    this.errorWidget,
    this.fallbackText,
  });

  /// Checks if the image URL is valid and accessible
  static Future<bool> isImageUrlValid(String url) async {
    if (url.isEmpty) return false;
    
    try {
      final response = await http.head(Uri.parse(url));
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  /// Generates a custom placeholder image with book cover design
  static Widget _generateBookCoverPlaceholder({
    required double width,
    required double height,
    required String title,
    required String author,
    BorderRadius? borderRadius,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue[400]!,
              Colors.purple[600]!,
            ],
          ),
        ),
        child: Stack(
          children: [
            // Background pattern
            Positioned.fill(
              child: CustomPaint(
                painter: BookCoverPatternPainter(),
              ),
            ),
            // Content
            Padding(
              padding: const EdgeInsets.all(4.0), // Reduced padding
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min, // Prevent expansion
                children: [
                  // Book icon
                  Icon(
                    Icons.book,
                    size: 24, // Reduced size
                    color: Colors.white,
                  ),
                  const SizedBox(height: 4), // Reduced spacing
                  // Title
                  Flexible(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 8, // Reduced font size
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 2), // Reduced spacing
                  // Author
                  Flexible(
                    child: Text(
                      author,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 6, // Reduced font size
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: SizedBox(
        width: width,
        height: height,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: width,
          height: height,
          fit: fit,
          placeholder: (context, url) => _buildLoadingPlaceholder(),
          errorWidget: (context, url, error) {
            debugPrint('Image loading failed for URL: $url');
            debugPrint('Error: $error');
            
            // Use custom book cover placeholder if fallbackText is provided
            if (fallbackText != null && fallbackText!.isNotEmpty) {
              final parts = fallbackText!.split(' by ');
              final title = parts.isNotEmpty ? parts[0] : fallbackText!;
              final author = parts.length > 1 ? parts[1] : '';
              
              return _generateBookCoverPlaceholder(
                width: width ?? 150,
                height: height ?? 200,
                title: title,
                author: author,
                borderRadius: borderRadius,
              );
            }
            
            return _buildDefaultErrorWidget();
          },
          memCacheWidth: width?.toInt(),
          memCacheHeight: height?.toInt(),
          maxWidthDiskCache: width?.toInt(),
          maxHeightDiskCache: height?.toInt(),
        ),
      ),
    );
  }

  Widget _buildLoadingPlaceholder() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: borderRadius,
      ),
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
      ),
    );
  }

  Widget _buildDefaultErrorWidget() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: borderRadius,
      ),
      child: Center(
        child: Icon(
          Icons.book,
          size: 24,
          color: Colors.grey[600],
        ),
      ),
    );
  }


}

/// Custom painter for book cover background pattern
class BookCoverPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withValues(alpha: 0.1)
      ..strokeWidth = 1;

    // Draw diagonal lines
    for (int i = 0; i < size.width + size.height; i += 20) {
      canvas.drawLine(
        Offset(i.toDouble(), 0),
        Offset(0, i.toDouble()),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 