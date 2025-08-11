import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/animated_widgets.dart';
import '../../../../core/widgets/custom_page_transition.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/providers/auth_provider.dart';
import 'forgot_password_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final authState = ref.watch(authProvider);
    final formKey = useMemoized(() => GlobalKey<FormState>());

    // Clear any existing errors when the screen loads
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (authState.error != null) {
          ref.read(authProvider.notifier).clearAllErrors();
        }
      });
      return null;
    }, []);

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
                  AnimatedFadeIn(
                    delay: const Duration(milliseconds: 100),
                    child: Icon(
                      Icons.book,
                      size: 80,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),
                  AnimatedFadeIn(
                    delay: const Duration(milliseconds: 200),
                    child: Text(
                      'Welcome Back',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingSmall),
                  AnimatedFadeIn(
                    delay: const Duration(milliseconds: 300),
                    child: Text(
                      'Sign in to continue your reading journey',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingXLarge),

                  // Email Field
                  AnimatedFadeIn(
                    delay: const Duration(milliseconds: 400),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      enableSuggestions: false,
                      validator: validateEmail,
                      onChanged: (value) {
                        // Clear error when user starts typing
                        if (authState.error != null) {
                          ref.read(authProvider.notifier).clearAuthError();
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        prefixIcon: const Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),

                  // Password Field
                  AnimatedFadeIn(
                    delay: const Duration(milliseconds: 500),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      validator: validatePassword,
                      onChanged: (value) {
                        // Clear error when user starts typing
                        if (authState.error != null) {
                          ref.read(authProvider.notifier).clearAuthError();
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        prefixIcon: const Icon(Icons.lock_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingSmall),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: GradientTextButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()),
                      ),
                      text: 'Forgot Password?',
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingMedium),

                  // Sign In Button
                  GradientButton(
                    onPressed: authState.isLoading ? null : handleSignIn,
                    text: 'Sign In',
                    isLoading: authState.isLoading,
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
                  GradientOutlinedButton(
                    onPressed: authState.isLoading ? null : handleGoogleSignIn,
                    icon: Icons.g_mobiledata,
                    text: 'Continue with Google',
                    colors: [
                      Colors.grey.shade700,
                      Colors.grey.shade600,
                    ],
                  ),
                  const SizedBox(height: AppConstants.paddingLarge),

                  // Sign Up Link
                  const SizedBox(height: AppConstants.paddingMedium),
                  AnimatedFadeIn(
                    delay: const Duration(milliseconds: 800),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        ),
                        GradientTextButton(
                          text: 'Sign Up',
                          onPressed: () => Navigator.of(context).push(
                            CustomPageTransitions.slideRight(
                              child: const SignupScreen(),
                            ),
                          ),
                          colors: [Colors.purple, Colors.purple.shade600],
                        ),
                      ],
                    ),
                  ),

                  // Error Message
                  if (authState.error != null) ...[
                    const SizedBox(height: AppConstants.paddingMedium),
                    AnimatedFadeIn(
                      delay: const Duration(milliseconds: 700),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.error,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.error_outline,
                              color: Theme.of(context).colorScheme.error,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                authState.error!,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onErrorContainer,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.close,
                                color: Theme.of(context).colorScheme.error,
                                size: 18,
                              ),
                              onPressed: () => ref.read(authProvider.notifier).clearAuthError(),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(
                                minWidth: 24,
                                minHeight: 24,
                              ),
                            ),
                          ],
                        ),
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