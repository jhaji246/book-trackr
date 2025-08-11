# Environment Setup

This document explains how to set up environment variables for the BookTrackr app.

## Required Environment Variables

### Google Books API Key

To use the Google Books API, you need to obtain an API key:

1. Go to the [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select an existing one
3. Enable the Google Books API
4. Create credentials (API Key)
5. Set the API key as an environment variable

### Firebase Configuration

The app requires Firebase configuration for authentication, cloud storage, and other Firebase services:

1. Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
2. Download the `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) files
3. Place them in the appropriate directories:
   - Android: `android/app/google-services.json`
   - iOS: `ios/Runner/GoogleService-Info.plist`
4. Set the Firebase environment variables

## Setting Environment Variables

### Method 1: Using --dart-define (Recommended)

Set environment variables when running or building the app:

```bash
# For development
flutter run --dart-define=GOOGLE_BOOKS_API_KEY=your_api_key_here \
            --dart-define=FIREBASE_API_KEY=your_firebase_api_key \
            --dart-define=FIREBASE_PROJECT_ID=your_project_id \
            --dart-define=FIREBASE_MESSAGING_SENDER_ID=your_sender_id \
            --dart-define=FIREBASE_APP_ID=your_app_id

# For production builds
flutter build apk --dart-define=GOOGLE_BOOKS_API_KEY=your_api_key_here \
                  --dart-define=FIREBASE_API_KEY=your_firebase_api_key \
                  --dart-define=FIREBASE_PROJECT_ID=your_project_id \
                  --dart-define=FIREBASE_MESSAGING_SENDER_ID=your_sender_id \
                  --dart-define=FIREBASE_APP_ID=your_app_id
```

### Method 2: Using .env file (Development only)

Create a `.env` file in the project root (not tracked by git):

```bash
GOOGLE_BOOKS_API_KEY=your_actual_api_key_here
FIREBASE_API_KEY=your_firebase_api_key
FIREBASE_PROJECT_ID=your_project_id
FIREBASE_MESSAGING_SENDER_ID=your_sender_id
FIREBASE_APP_ID=your_app_id
```

**Important**: Never commit API keys to version control. The `.env` file is already added to `.gitignore`.

### Method 3: Using launch.json (VS Code)

Create or update `.vscode/launch.json`:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "BookTrackr Debug",
      "request": "launch",
      "type": "dart",
      "args": [
        "--dart-define=GOOGLE_BOOKS_API_KEY=your_api_key_here",
        "--dart-define=FIREBASE_API_KEY=your_firebase_api_key",
        "--dart-define=FIREBASE_PROJECT_ID=your_project_id",
        "--dart-define=FIREBASE_MESSAGING_SENDER_ID=your_sender_id",
        "--dart-define=FIREBASE_APP_ID=your_app_id"
      ]
    }
  ]
}
```

## Environment Variables Reference

| Variable | Description | Required | Example |
|----------|-------------|----------|---------|
| `GOOGLE_BOOKS_API_KEY` | Google Books API key for book search | Yes | `AIzaSy...` |
| `FIREBASE_API_KEY` | Firebase API key | Yes | `AIzaSy...` |
| `FIREBASE_PROJECT_ID` | Firebase project ID | Yes | `booktrackr-app` |
| `FIREBASE_MESSAGING_SENDER_ID` | Firebase messaging sender ID | Yes | `957194839317` |
| `FIREBASE_APP_ID` | Firebase app ID | Yes | `1:957194839317:android:...` |

## Development vs Production

- **Development**: Can use fallback data when API calls fail or API key is not configured
- **Production**: Requires valid API keys and proper error handling
- **Security**: API keys are never hardcoded in the source code

## Troubleshooting

### API Key Issues

If you see "Invalid API request" errors:

1. Check that your API key is valid
2. Ensure the Google Books API is enabled in your Google Cloud project
3. Verify the API key has the necessary permissions

### Firebase Issues

If you see Firebase initialization errors:

1. Verify all Firebase environment variables are set correctly
2. Check that `google-services.json` and `GoogleService-Info.plist` are in the right locations
3. Ensure Firebase services are enabled in your Firebase project

### Network Issues

If you see network errors:

1. Check your internet connection
2. Verify the API endpoints are accessible
3. Check if you've exceeded API rate limits

### Development Fallback

In debug mode, if the API fails, the app will show fallback data instead of an error screen. This helps with development and testing.

## Security Best Practices

1. **Never commit secrets to version control**
2. **Use environment variables for all sensitive configuration**
3. **Rotate API keys regularly**
4. **Use least privilege principle for API permissions**
5. **Monitor API usage for unusual activity** 