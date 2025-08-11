import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../shared/providers/auth_provider.dart';
import '../../../../core/constants/app_constants.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final authState = ref.watch(authProvider);
    final formKey = useMemoized(() => GlobalKey<FormState>());

    // Validation functions
    String? validateEmail(String? value) {
      if (value == null || value.isEmpty) {
        return 'Email is required';
      }
      if (value.length < AppConstants.minEmailLength) {
        return 'Email is too short';
      }
      if (value.length > AppConstants.maxEmailLength) {
        return 'Email is too long';
      }
      if (!AppConstants.emailRegex.hasMatch(value)) {
        return 'Please enter a valid email address';
      }
      return null;
    }

    String? validatePassword(String? value) {
      if (value == null || value.isEmpty) {
        return 'Password is required';
      }
      if (value.length < AppConstants.minPasswordLength) {
        return 'Password must be at least ${AppConstants.minPasswordLength} characters';
      }
      if (value.length > AppConstants.maxPasswordLength) {
        return 'Password is too long';
      }
      return null;
    }

    void handleSignIn() async {
      if (formKey.currentState?.validate() ?? false) {
        final email = emailController.text.trim();
        final password = passwordController.text;
        
        // Additional validation
        if (email.isEmpty || password.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please fill in all fields'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }

        await ref.read(authProvider.notifier).signInWithEmail(email, password);
      }
    }

    void handleGoogleSignIn() async {
      await ref.read(authProvider.notifier).signInWithGoogle();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppConstants.paddingLarge),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Logo and Title
                  Icon(
                    Icons.book,
                    size: 80,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),
                  Text(
                    'Welcome Back',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppConstants.paddingSmall),
                  Text(
                    'Sign in to continue your reading journey',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppConstants.paddingXLarge),

                  // Email Field
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    enableSuggestions: false,
                    validator: validateEmail,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),

                  // Password Field
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    validator: validatePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: const Icon(Icons.lock_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingSmall),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => context.push('/forgot-password'),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),

                  // Sign In Button
                  FilledButton(
                    onPressed: authState.isLoading ? null : handleSignIn,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                      ),
                    ),
                    child: authState.isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text(
                            'Sign In',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),

                  // Or Divider
                  Row(
                    children: [
                      Expanded(child: Divider(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3))),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        ),
                      ),
                      Expanded(child: Divider(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3))),
                    ],
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),

                  // Google Sign In Button
                  OutlinedButton.icon(
                    onPressed: authState.isLoading ? null : handleGoogleSignIn,
                    icon: const Icon(Icons.g_mobiledata),
                    label: const Text('Continue with Google'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingLarge),

                  // Sign Up Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                      ),
                      TextButton(
                        onPressed: () => context.push('/signup'),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Error Message
                  if (authState.error != null) ...[
                    const SizedBox(height: AppConstants.paddingMedium),
                    Container(
                      padding: const EdgeInsets.all(AppConstants.paddingMedium),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          const SizedBox(width: AppConstants.paddingSmall),
                          Expanded(
                            child: Text(
                              authState.error!,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
} 