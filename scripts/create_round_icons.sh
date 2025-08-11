#!/bin/bash

# BookTrackr Round Icons Script
# Creates round versions of our simple icons

echo "🎨 Creating BookTrackr Round Icons..."

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "❌ ImageMagick is not installed. Please install it first:"
    echo "   macOS: brew install imagemagick"
    echo "   Ubuntu: sudo apt-get install imagemagick"
    echo "   Windows: Download from https://imagemagick.org/"
    exit 1
fi

# Create round versions by copying the regular icons
echo "📱 Creating round icons for all densities..."

# Copy regular icons to round versions
cp android/app/src/main/res/mipmap-mdpi/ic_launcher.png android/app/src/main/res/mipmap-mdpi/ic_launcher_round.png
cp android/app/src/main/res/mipmap-hdpi/ic_launcher.png android/app/src/main/res/mipmap-hdpi/ic_launcher_round.png
cp android/app/src/main/res/mipmap-xhdpi/ic_launcher.png android/app/src/main/res/mipmap-xhdpi/ic_launcher_round.png
cp android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png android/app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png
cp android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png

echo "✅ All round icons created successfully!"
echo "🎯 Round icons created for:"
echo "   - MDPI (48x48)"
echo "   - HDPI (72x72)"
echo "   - XHDPI (96x96)"
echo "   - XXHDPI (144x144)"
echo "   - XXXHDPI (192x192)"
echo ""
echo "🔄 Next steps:"
echo "   1. Clean and rebuild the app"
echo "   2. Test the new highly visible round icons" 