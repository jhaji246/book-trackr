import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/auth_provider.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isPasswordVisible = useState(false);
    final authState = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppConstants.paddingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppConstants.paddingLarge),
              
              // Header
              Icon(
                Icons.book,
                size: 60,
                color: AppConstants.primaryColor,
              ),
              const SizedBox(height: AppConstants.paddingLarge),
              
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppConstants.paddingMedium),
              
              Text(
                'Sign in to continue tracking your reading journey',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppConstants.lightOnSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppConstants.paddingLarge),

              // Email Input
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                  ),
                ),
              ),
              const SizedBox(height: AppConstants.paddingLarge),

              // Password Input
              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible.value,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
                      color: AppConstants.lightOnSurfaceVariant,
                    ),
                    onPressed: () {
                      isPasswordVisible.value = !isPasswordVisible.value;
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                  ),
                ),
              ),
              const SizedBox(height: AppConstants.paddingMedium),

              // Forgot Password Link
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => _showForgotPasswordDialog(context, ref),
                  child: const Text('Forgot Password?'),
                ),
              ),

              // Error Message
              if (authState.error != null) ...[
                const SizedBox(height: AppConstants.paddingMedium),
                Container(
                  padding: const EdgeInsets.all(AppConstants.paddingMedium),
                  decoration: BoxDecoration(
                    color: AppConstants.errorColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.error, color: AppConstants.errorColor),
                      const SizedBox(width: AppConstants.paddingSmall),
                      Expanded(
                        child: Text(
                          authState.error!,
                          style: TextStyle(color: AppConstants.errorColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

              const SizedBox(height: AppConstants.paddingLarge),

              // Login Button
              FilledButton(
                onPressed: authState.isLoading
                    ? null
                    : () async {
                        final email = emailController.text.trim();
                        final password = passwordController.text;
                        
                        if (email.isEmpty || password.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please fill in all fields'),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }
                        
                        try {
                          await ref.read(authProvider.notifier).signInWithEmail(email, password);
                          
                          // Check if sign in was successful
                          if (ref.read(authProvider).isAuthenticated) {
                            if (context.mounted) {
                              context.go('/');
                            }
                          }
                        } catch (e) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Sign in failed: $e'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        }
                      },
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
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
              const SizedBox(height: AppConstants.paddingMedium),

              // Google Sign In Button
              OutlinedButton.icon(
                onPressed: authState.isLoading
                    ? null
                    : () async {
                        try {
                          await ref.read(authProvider.notifier).signInWithGoogle();
                          
                          // Check if sign in was successful
                          if (ref.read(authProvider).isAuthenticated) {
                            if (context.mounted) {
                              context.go('/');
                            }
                          }
                        } catch (e) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Google sign in failed: $e'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        }
                      },
                icon: const Icon(Icons.g_mobiledata),
                label: const Text('Sign in with Google'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                  ),
                ),
              ),

              const SizedBox(height: AppConstants.paddingXLarge),

              // Help Text - Make it clickable
              GestureDetector(
                onTap: () {
                  context.go('/signup');
                },
                child: Container(
                  padding: const EdgeInsets.all(AppConstants.paddingMedium),
                  decoration: BoxDecoration(
                    color: AppConstants.primaryColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                    border: Border.all(
                      color: AppConstants.primaryColor.withValues(alpha: 0.3),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_add,
                            size: 20,
                            color: AppConstants.primaryColor,
                          ),
                          const SizedBox(width: AppConstants.paddingSmall),
                          Text(
                            'New to BookTrackr?',
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppConstants.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppConstants.paddingSmall),
                      Text(
                        'Tap here to create an account and start tracking your reading journey',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.lightOnSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppConstants.paddingMedium),

              // Sign Up Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {
                      context.go('/signup');
                    },
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showForgotPasswordDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Forgot Password'),
          content: const Text('This feature is not yet implemented.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
} 