import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../constants/app_constants.dart';

/// A widget that catches errors in its child widget tree and displays
/// a fallback UI instead of crashing the app.
/// 
/// This error boundary is useful for catching unexpected errors in specific
/// parts of the app while allowing the rest of the app to continue functioning.
/// 
/// Example usage:
/// ```dart
/// ErrorBoundary(
///   onError: (error, stackTrace) {
///     // Log the error or send to analytics
///     print('Error caught: $error');
///   },
///   child: MyWidget(),
/// )
/// ```
class ErrorBoundary extends StatefulWidget {
  /// The widget to render if no error occurs
  final Widget child;
  
  /// Callback function called when an error is caught
  final void Function(Object error, StackTrace? stackTrace)? onError;
  
  /// Custom error widget to display when an error occurs
  final Widget Function(Object error, VoidCallback retry)? errorBuilder;
  
  /// Whether to show a retry button in the error UI
  final bool showRetry;

  const ErrorBoundary({
    super.key,
    required this.child,
    this.onError,
    this.errorBuilder,
    this.showRetry = true,
  });

  @override
  State<ErrorBoundary> createState() => _ErrorBoundaryState();
}

class _ErrorBoundaryState extends State<ErrorBoundary> {
  Object? _error;
  StackTrace? _stackTrace;

  @override
  void initState() {
    super.initState();
    // Set up error handling for Flutter framework errors
    FlutterError.onError = (FlutterErrorDetails details) {
      if (kDebugMode) {
        FlutterError.dumpErrorToConsole(details);
      }
      _handleError(details.exception, details.stack);
    };
  }

  void _handleError(Object error, StackTrace? stackTrace) {
    setState(() {
      _error = error;
      _stackTrace = stackTrace;
    });

    // Call the error callback if provided
    widget.onError?.call(error, stackTrace);

    // Log error in debug mode
    if (kDebugMode) {
      print('ErrorBoundary caught error: $error');
      if (stackTrace != null) {
        print('StackTrace: $stackTrace');
      }
    }
  }

  void _retry() {
    setState(() {
      _error = null;
      _stackTrace = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return widget.errorBuilder?.call(_error!, _retry) ?? 
             _buildDefaultErrorWidget();
    }

    return widget.child;
  }

  Widget _buildDefaultErrorWidget() {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.paddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.errorContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.error_outline,
                  size: 60,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Something went wrong',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'We encountered an unexpected error. Please try again.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
              if (widget.showRetry) ...[
                const SizedBox(height: 24),
                FilledButton.icon(
                  onPressed: _retry,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Try Again'),
                ),
              ],
              if (kDebugMode) ...[
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Debug Info:',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _error.toString(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// A specialized error boundary for async operations.
/// 
/// This widget is designed to handle errors that occur during async operations
/// like API calls, database operations, or file I/O.
class AsyncErrorBoundary extends StatefulWidget {
  /// The async operation to perform
  final Future<void> Function() operation;
  
  /// Widget to show while the operation is loading
  final Widget? loadingWidget;
  
  /// Widget to show when the operation completes successfully
  final Widget Function() successWidget;
  
  /// Callback function called when an error occurs
  final void Function(Object error, StackTrace? stackTrace)? onError;
  
  /// Custom error widget to display when an error occurs
  final Widget Function(Object error, VoidCallback retry)? errorBuilder;

  const AsyncErrorBoundary({
    super.key,
    required this.operation,
    this.loadingWidget,
    required this.successWidget,
    this.onError,
    this.errorBuilder,
  });

  @override
  State<AsyncErrorBoundary> createState() => _AsyncErrorBoundaryState();
}

class _AsyncErrorBoundaryState extends State<AsyncErrorBoundary> {
  bool _isLoading = true;
  Object? _error;
  StackTrace? _stackTrace;

  @override
  void initState() {
    super.initState();
    _executeOperation();
  }

  Future<void> _executeOperation() async {
    try {
      setState(() {
        _isLoading = true;
        _error = null;
        _stackTrace = null;
      });

      await widget.operation();

      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (error, stackTrace) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _error = error;
          _stackTrace = stackTrace;
        });
      }

      widget.onError?.call(error, stackTrace);

      if (kDebugMode) {
        print('AsyncErrorBoundary caught error: $error');
        print('StackTrace: $stackTrace');
      }
    }
  }

  void _retry() {
    _executeOperation();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return widget.loadingWidget ?? 
             const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return widget.errorBuilder?.call(_error!, _retry) ?? 
             _buildDefaultErrorWidget();
    }

    return widget.successWidget();
  }

  Widget _buildDefaultErrorWidget() {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.paddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.errorContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.error_outline,
                  size: 60,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Operation Failed',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'The operation could not be completed. Please try again.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: _retry,
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 