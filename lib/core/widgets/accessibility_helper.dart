import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

/// Helper class for implementing accessibility features throughout the app.
/// 
/// This class provides utility methods and widgets to make the app more
/// accessible to users with disabilities, including screen readers,
/// voice control, and other assistive technologies.
/// 
/// Example usage:
/// ```dart
/// AccessibilityHelper.semanticLabel(
///   child: IconButton(
///     onPressed: () {},
///     icon: Icon(Icons.add),
///   ),
///   label: 'Add book to shelf',
/// )
/// ```
class AccessibilityHelper {
  /// Wraps a widget with semantic information for screen readers.
  /// 
  /// Parameters:
  /// - [child]: The widget to wrap
  /// - [label]: The semantic label for screen readers
  /// - [hint]: Optional hint text for additional context
  /// - [isButton]: Whether the widget should be treated as a button
  /// - [isImage]: Whether the widget should be treated as an image
  static Widget semanticLabel({
    required Widget child,
    required String label,
    String? hint,
    bool isButton = false,
    bool isImage = false,
  }) {
    return Semantics(
      label: label,
      hint: hint,
      button: isButton,
      image: isImage,
      child: child,
    );
  }

  /// Creates an accessible button with proper semantic labels.
  /// 
  /// Parameters:
  /// - [onPressed]: The callback when the button is pressed
  /// - [icon]: The icon to display
  /// - [label]: The semantic label for screen readers
  /// - [hint]: Optional hint text
  /// - [style]: The button style
  static Widget accessibleButton({
    required VoidCallback? onPressed,
    required IconData icon,
    required String label,
    String? hint,
    ButtonStyle? style,
  }) {
    return Semantics(
      label: label,
      hint: hint,
      button: true,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        style: style,
      ),
    );
  }

  /// Creates an accessible text widget with proper semantic labels.
  /// 
  /// Parameters:
  /// - [text]: The text to display
  /// - [style]: The text style
  /// - [semanticLabel]: Optional custom semantic label
  /// - [isHeading]: Whether this text should be treated as a heading
  static Widget accessibleText({
    required String text,
    TextStyle? style,
    String? semanticLabel,
    bool isHeading = false,
  }) {
    return Semantics(
      label: semanticLabel ?? text,
      header: isHeading,
      child: Text(
        text,
        style: style,
      ),
    );
  }

  /// Creates an accessible image with proper semantic labels.
  /// 
  /// Parameters:
  /// - [imageUrl]: The URL of the image
  /// - [altText]: Alternative text for screen readers
  /// - [width]: The width of the image
  /// - [height]: The height of the image
  /// - [fit]: How the image should fit in its container
  static Widget accessibleImage({
    required String imageUrl,
    required String altText,
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
  }) {
    return Semantics(
      label: altText,
      image: true,
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          return Semantics(
            label: 'Image failed to load: $altText',
            image: true,
            child: Container(
              width: width,
              height: height,
              color: Colors.grey[300],
              child: Icon(
                Icons.broken_image,
                color: Colors.grey[600],
              ),
            ),
          );
        },
      ),
    );
  }

  /// Creates an accessible card with proper semantic labels.
  /// 
  /// Parameters:
  /// - [child]: The content of the card
  /// - [label]: The semantic label for the card
  /// - [hint]: Optional hint text
  /// - [onTap]: Optional tap callback
  static Widget accessibleCard({
    required Widget child,
    required String label,
    String? hint,
    VoidCallback? onTap,
  }) {
    Widget cardWidget = Card(child: child);
    
    if (onTap != null) {
      cardWidget = InkWell(
        onTap: onTap,
        child: cardWidget,
      );
    }

    return Semantics(
      label: label,
      hint: hint,
      button: onTap != null,
      child: cardWidget,
    );
  }

  /// Creates an accessible list tile with proper semantic labels.
  /// 
  /// Parameters:
  /// - [title]: The title text
  /// - [subtitle]: Optional subtitle text
  /// - [leading]: Optional leading widget
  /// - [trailing]: Optional trailing widget
  /// - [onTap]: Optional tap callback
  /// - [semanticLabel]: Optional custom semantic label
  static Widget accessibleListTile({
    required String title,
    String? subtitle,
    Widget? leading,
    Widget? trailing,
    VoidCallback? onTap,
    String? semanticLabel,
  }) {
    return Semantics(
      label: semanticLabel ?? title,
      hint: subtitle,
      button: onTap != null,
      child: ListTile(
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        leading: leading,
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }

  /// Creates an accessible rating widget.
  /// 
  /// Parameters:
  /// - [rating]: The current rating value
  /// - [maxRating]: The maximum possible rating
  /// - [onRatingChanged]: Callback when rating changes
  /// - [size]: The size of the rating stars
  static Widget accessibleRating({
    required double rating,
    int maxRating = 5,
    ValueChanged<double>? onRatingChanged,
    double size = 24.0,
  }) {
    return Semantics(
      label: 'Rating: ${rating.toStringAsFixed(1)} out of $maxRating',
      hint: onRatingChanged != null ? 'Double tap to change rating' : null,
      button: onRatingChanged != null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(maxRating, (index) {
          final isFilled = index < rating;
          return GestureDetector(
            onTap: onRatingChanged != null
                ? () => onRatingChanged(index + 1.0)
                : null,
            child: Icon(
              isFilled ? Icons.star : Icons.star_border,
              size: size,
              color: Colors.amber[600],
            ),
          );
        }),
      ),
    );
  }

  /// Creates an accessible progress indicator.
  /// 
  /// Parameters:
  /// - [value]: The current progress value (0.0 to 1.0)
  /// - [label]: The semantic label for the progress
  /// - [backgroundColor]: The background color
  /// - [valueColor]: The color of the progress bar
  static Widget accessibleProgress({
    required double value,
    required String label,
    Color? backgroundColor,
    Color? valueColor,
  }) {
    return Semantics(
      label: label,
      value: '${(value * 100).toInt()}%',
      child: LinearProgressIndicator(
        value: value,
        backgroundColor: backgroundColor,
        valueColor: AlwaysStoppedAnimation<Color>(valueColor ?? Colors.blue),
      ),
    );
  }

  /// Creates an accessible search field.
  /// 
  /// Parameters:
  /// - [controller]: The text editing controller
  /// - [hintText]: The hint text for the search field
  /// - [onChanged]: Callback when text changes
  /// - [onSubmitted]: Callback when search is submitted
  static Widget accessibleSearchField({
    required TextEditingController controller,
    required String hintText,
    ValueChanged<String>? onChanged,
    ValueChanged<String>? onSubmitted,
  }) {
    return Semantics(
      label: 'Search field',
      hint: 'Enter text to search for books',
      textField: true,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: const Icon(Icons.search),
        ),
        onChanged: onChanged,
        onSubmitted: onSubmitted,
      ),
    );
  }

  /// Creates an accessible navigation bar.
  /// 
  /// Parameters:
  /// - [destinations]: The navigation destinations
  /// - [selectedIndex]: The currently selected index
  /// - [onDestinationSelected]: Callback when destination is selected
  static Widget accessibleNavigationBar({
    required List<NavigationDestination> destinations,
    required int selectedIndex,
    required ValueChanged<int> onDestinationSelected,
  }) {
    return Semantics(
      label: 'Bottom navigation bar',
      child: NavigationBar(
        destinations: destinations,
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }

  /// Creates an accessible dialog.
  /// 
  /// Parameters:
  /// - [title]: The dialog title
  /// - [content]: The dialog content
  /// - [actions]: The dialog actions
  /// - [semanticLabel]: Optional custom semantic label
  static Widget accessibleDialog({
    required String title,
    required Widget content,
    required List<Widget> actions,
    String? semanticLabel,
  }) {
    return Semantics(
      label: semanticLabel ?? 'Dialog: $title',
      child: AlertDialog(
        title: Text(title),
        content: content,
        actions: actions,
      ),
    );
  }

  /// Creates an accessible snackbar.
  /// 
  /// Parameters:
  /// - [content]: The snackbar content
  /// - [action]: Optional action button
  /// - [duration]: The duration to show the snackbar
  static SnackBar accessibleSnackBar({
    required String content,
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 4),
  }) {
    return SnackBar(
      content: Semantics(
        label: content,
        child: Text(content),
      ),
      action: action,
      duration: duration,
    );
  }

  /// Creates an accessible tooltip.
  /// 
  /// Parameters:
  /// - [message]: The tooltip message
  /// - [child]: The widget to show the tooltip for
  /// - [showDuration]: How long to show the tooltip
  static Widget accessibleTooltip({
    required String message,
    required Widget child,
    Duration showDuration = const Duration(seconds: 2),
  }) {
    return Semantics(
      label: message,
      hint: 'Long press for more information',
      child: Tooltip(
        message: message,
        showDuration: showDuration,
        child: child,
      ),
    );
  }
} 