import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../shared/providers/auth_provider.dart';
import 'login_screen.dart';

class ForgotPasswordScreen extends HookConsumerWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final authState = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: AppConstants.paddingXLarge),
            
            // Header
            Icon(
              Icons.lock_reset,
              size: 80,
              color: AppConstants.primaryColor,
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            
            Text(
              'Reset Your Password',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            
            Text(
              'Enter your email address and we\'ll send you a link to reset your password.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.paddingXLarge),

            // Email Input
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                ),
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),

            // Error Message
            if (authState.error != null)
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

            const SizedBox(height: AppConstants.paddingLarge),

            // Reset Button
            GradientButton(
              onPressed: authState.isLoading
                  ? null
                  : () async {
                      final email = emailController.text.trim();
                      
                      if (email.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please enter your email address'),
                            backgroundColor: Colors.red,
                          ),
                        );
                        return;
                      }
                      
                      try {
                        await ref.read(authProvider.notifier).resetPassword(email);
                        
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Password reset email sent! Check your inbox.'),
                              backgroundColor: Colors.green,
                            ),
                          );
                          
                          // Navigate to login screen
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                            (route) => false,
                          );
                        }
                      } catch (e) {
                        // Error is already handled by the provider
                        debugPrint('Password reset error: $e');
                      }
                    },
              text: 'Send Reset Link',
              isLoading: authState.isLoading,
            ),

            const Spacer(),

            // Back to Login
            GradientTextButton(
              onPressed: () => Navigator.of(context).pop(),
              text: 'Back to Login',
            ),
          ],
        ),
      ),
    );
  }
} 