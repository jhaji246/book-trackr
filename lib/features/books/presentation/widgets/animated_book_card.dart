import 'package:flutter/material.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../shared/models/book.dart';
import 'book_card.dart';

/// Animated book card with hover effects and smooth transitions
class AnimatedBookCard extends StatefulWidget {
  final Book book;
  final VoidCallback? onTap;

  const AnimatedBookCard({
    super.key,
    required this.book,
    this.onTap,
  });

  @override
  State<AnimatedBookCard> createState() => _AnimatedBookCardState();
}

class _AnimatedBookCardState extends State<AnimatedBookCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _elevationAnimation;
  late Animation<Color?> _shadowColorAnimation;

  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _elevationAnimation = Tween<double>(
      begin: 2.0,
      end: 8.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _shadowColorAnimation = ColorTween(
      begin: Colors.black.withOpacity(0.1),
      end: Colors.black.withOpacity(0.3),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
    
    if (isHovered) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
              boxShadow: [
                BoxShadow(
                  color: _shadowColorAnimation.value ?? Colors.black.withOpacity(0.1),
                  blurRadius: _elevationAnimation.value * 2,
                  offset: Offset(0, _elevationAnimation.value),
                ),
              ],
            ),
            child: MouseRegion(
              onEnter: (_) => _onHover(true),
              onExit: (_) => _onHover(false),
              child: BookCard(
                book: widget.book,
                onTap: widget.onTap,
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Animated book list with staggered entrance animations
class AnimatedBookList extends StatelessWidget {
  final List<Book> books;
  final VoidCallback? Function(Book)? onBookTap;
  final int crossAxisCount;
  final double childAspectRatio;
  final EdgeInsets padding;
  final ScrollPhysics? physics;

  const AnimatedBookList({
    super.key,
    required this.books,
    this.onBookTap,
    this.crossAxisCount = 2,
    this.childAspectRatio = 0.7,
    this.padding = const EdgeInsets.all(16),
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding,
      physics: physics,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return AnimatedListItem(
          index: index,
          child: AnimatedBookCard(
            book: book,
            onTap: onBookTap?.call(book),
          ),
        );
      },
    );
  }
} 