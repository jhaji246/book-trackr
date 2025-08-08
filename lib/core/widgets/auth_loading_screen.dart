import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class AuthLoadingScreen extends StatelessWidget {
  const AuthLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.lightSurface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Icon
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: AppConstants.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.book,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            
            // App Name
            Text(
              'BookTrackr',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppConstants.primaryColor,
              ),
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            
            // Loading Text
            Text(
              'Loading your reading journey...',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppConstants.lightOnSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppConstants.paddingLarge),
            
            // Loading Indicator
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppConstants.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
} 