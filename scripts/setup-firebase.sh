#!/bin/bash

# Firebase Setup Script for BookTrackr App
# This script helps you set up Firebase configuration

echo "🚀 BookTrackr Firebase Setup"
echo "=============================="
echo ""

# Check if .env file exists
if [ -f ".env" ]; then
    echo "⚠️  .env file already exists!"
    read -p "Do you want to overwrite it? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Setup cancelled. Your existing .env file is preserved."
        exit 0
    fi
fi

echo "📋 Setting up Firebase configuration..."
echo ""

# Copy env.example to .env
cp env.example .env

echo "✅ Created .env file from env.example"
echo ""
echo "🔧 Now you need to fill in your Firebase project details:"
echo ""

echo "1. Go to your Firebase Console: https://console.firebase.google.com/"
echo "2. Select your project (or create a new one)"
echo "3. Go to Project Settings (gear icon)"
echo "4. Copy the following values:"
echo ""

echo "📱 For Android/iOS/Web apps:"
echo "   - API Key"
echo "   - Project ID"
echo "   - Messaging Sender ID"
echo "   - App ID"
echo ""

echo "📝 Edit the .env file and replace the placeholder values:"
echo "   FIREBASE_API_KEY=your_actual_api_key_here"
echo "   FIREBASE_PROJECT_ID=your_actual_project_id_here"
echo "   FIREBASE_MESSAGING_SENDER_ID=your_actual_sender_id_here"
echo "   FIREBASE_APP_ID=your_actual_app_id_here"
echo ""

echo "🔑 For Google Books API (optional but recommended):"
echo "1. Go to Google Cloud Console: https://console.cloud.google.com/"
echo "2. Enable Google Books API"
echo "3. Create credentials (API Key)"
echo "4. Add the API key to .env file"
echo ""

echo "📱 After updating .env file:"
echo "1. Restart your Flutter app"
echo "2. The login should now work properly"
echo ""

echo "❓ Need help? Check the Firebase documentation:"
echo "   https://firebase.flutter.dev/docs/overview/"
echo ""

echo "🎯 Setup complete! Edit .env file with your Firebase credentials."
