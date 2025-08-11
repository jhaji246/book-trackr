#!/bin/bash

# BookTrackr Environment Setup Script
# This script helps you set up environment variables for development

echo "🚀 BookTrackr Environment Setup"
echo "================================"
echo ""

# Check if .env file exists
if [ -f ".env" ]; then
    echo "⚠️  .env file already exists. Backing up to .env.backup"
    cp .env .env.backup
fi

# Create .env file
echo "📝 Creating .env file..."
cat > .env << EOF
# BookTrackr Environment Variables
# Fill in your actual values below

# Google Books API Configuration
GOOGLE_BOOKS_API_KEY=your_google_books_api_key_here

# Firebase Configuration
FIREBASE_API_KEY=your_firebase_api_key_here
FIREBASE_PROJECT_ID=your_firebase_project_id_here
FIREBASE_MESSAGING_SENDER_ID=your_firebase_messaging_sender_id_here
FIREBASE_APP_ID=your_firebase_app_id_here

# Flutter Environment
FLUTTER_DEBUG=true
FLUTTER_RELEASE=false
EOF

echo "✅ .env file created successfully!"
echo ""
echo "🔑 Next steps:"
echo "1. Edit the .env file and replace the placeholder values with your actual API keys"
echo "2. Never commit the .env file to version control"
echo "3. Run 'flutter run' to start the app"
echo ""
echo "📚 For more information, see docs/environment-setup.md"
echo ""
echo "⚠️  Security Note: The .env file is already added to .gitignore"
echo "   Make sure to keep your API keys secure and never share them publicly." 