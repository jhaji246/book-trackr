import 'package:flutter/material.dart';

/// A beautiful gradient button widget that can be used throughout the app
class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final double? width;
  final double height;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final List<Color>? colors;
  final TextStyle? textStyle;
  final bool isLoading;
  final Widget? child;

  const GradientButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.width,
    this.height = 56.0,
    this.padding,
    this.borderRadius,
    this.colors,
    this.textStyle,
    this.isLoading = false,
    this.child,
  });

  const GradientButton.outlined({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.width,
    this.height = 56.0,
    this.padding,
    this.borderRadius,
    this.colors,
    this.textStyle,
    this.isLoading = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final defaultColors = colors ?? [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
    ];

    final defaultBorderRadius = borderRadius ?? BorderRadius.circular(16.0);
    final defaultPadding = padding ?? const EdgeInsets.symmetric(horizontal: 24.0);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: defaultColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: defaultBorderRadius,
        boxShadow: onPressed != null
            ? [
                BoxShadow(
                  color: defaultColors.first.withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: defaultBorderRadius,
          child: Container(
            padding: defaultPadding,
            child: Center(
              child: isLoading
                  ? SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.white,
                        ),
                      ),
                    )
                  : child ??
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (icon != null) ...[
                            Icon(
                              icon,
                              color: Colors.white,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                          ],
                          Text(
                            text,
                            style: textStyle ??
                                const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
            ),
          ),
        ),
      ),
    );
  }
}

/// A gradient outlined button with transparent background
class GradientOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final double? width;
  final double height;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final List<Color>? colors;
  final TextStyle? textStyle;
  final bool isLoading;
  final Widget? child;
  final double borderWidth;

  const GradientOutlinedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.width,
    this.height = 56.0,
    this.padding,
    this.borderRadius,
    this.colors,
    this.textStyle,
    this.isLoading = false,
    this.child,
    this.borderWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    final defaultColors = colors ?? [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
    ];

    final defaultBorderRadius = borderRadius ?? BorderRadius.circular(16.0);
    final defaultPadding = padding ?? const EdgeInsets.symmetric(horizontal: 24.0);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: defaultBorderRadius,
        border: Border.all(
          color: defaultColors.first,
          width: borderWidth,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: defaultBorderRadius,
          child: Container(
            padding: defaultPadding,
            child: Center(
              child: isLoading
                  ? SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          defaultColors.first,
                        ),
                      ),
                    )
                  : child ??
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (icon != null) ...[
                            Icon(
                              icon,
                              color: defaultColors.first,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                          ],
                          Text(
                            text,
                            style: textStyle ??
                                TextStyle(
                                  color: defaultColors.first,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
            ),
          ),
        ),
      ),
    );
  }
}

/// A gradient text button
class GradientTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final List<Color>? colors;
  final bool isLoading;

  const GradientTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.textStyle,
    this.colors,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final defaultColors = colors ?? [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
    ];

    return isLoading
        ? SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                defaultColors.first,
              ),
            ),
          )
        : ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: defaultColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds),
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                text,
                style: textStyle ??
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          );
  }
} 