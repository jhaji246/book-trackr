#!/bin/bash

# BookTrackr App Runner Script
# This script runs the app with the correct environment variables

echo "🚀 Starting BookTrackr App..."
echo "================================"
echo ""

# Check if device is connected
if ! flutter devices | grep -q "sdk gphone64 arm64"; then
    echo "❌ No Android emulator found. Please start an emulator first."
    echo "   Run: flutter emulators --launch <emulator_name>"
    exit 1
fi

echo "✅ Android emulator found"
echo "🔑 Setting environment variables..."
echo ""

# Run the app with environment variables
flutter run \
    --dart-define=GOOGLE_BOOKS_API_KEY=AIzaSyDnr1rFHn0G4fXZQpWfR75fx5GTpeFM4FE \
    --dart-define=FIREBASE_API_KEY=AIzaSyB4y3t2_5AqOKVgCl7AMdmlFongOvaJ_c8 \
    --dart-define=FIREBASE_PROJECT_ID=booktrackr-app \
    --dart-define=FIREBASE_MESSAGING_SENDER_ID=957194839317 \
    --dart-define=FIREBASE_APP_ID=1:957194839317:android:913293f13975d4f459f51c

echo ""
echo "🎉 App should now be running without the splash screen issue!" 