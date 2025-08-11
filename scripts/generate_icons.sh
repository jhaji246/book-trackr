#!/bin/bash

# BookTrackr Icon Generation Script
# This script converts the SVG icon to PNG files in required sizes

echo "🎨 Generating BookTrackr App Icons..."

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "❌ ImageMagick is not installed. Please install it first:"
    echo "   macOS: brew install imagemagick"
    echo "   Ubuntu: sudo apt-get install imagemagick"
    echo "   Windows: Download from https://imagemagick.org/"
    exit 1
fi

# Create output directories
mkdir -p assets/icons/generated/android
mkdir -p assets/icons/generated/ios

# Android icon sizes
echo "📱 Generating Android icons..."
magick assets/icons/booktrackr_icon_simple.svg -resize 48x48 assets/icons/generated/android/ic_launcher_48x48.png
magick assets/icons/booktrackr_icon_simple.svg -resize 72x72 assets/icons/generated/android/ic_launcher_72x72.png
magick assets/icons/booktrackr_icon_simple.svg -resize 96x96 assets/icons/generated/android/ic_launcher_96x96.png
magick assets/icons/booktrackr_icon_simple.svg -resize 144x144 assets/icons/generated/android/ic_launcher_144x144.png
magick assets/icons/booktrackr_icon_simple.svg -resize 192x192 assets/icons/generated/android/ic_launcher_192x192.png

# iOS icon sizes
echo "🍎 Generating iOS icons..."
magick assets/icons/booktrackr_icon_simple.svg -resize 20x20 assets/icons/generated/ios/Icon-App-20x20@1x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 40x40 assets/icons/generated/ios/Icon-App-20x20@2x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 60x60 assets/icons/generated/ios/Icon-App-20x20@3x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 29x29 assets/icons/generated/ios/Icon-App-29x29@1x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 58x58 assets/icons/generated/ios/Icon-App-29x29@2x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 87x87 assets/icons/generated/ios/Icon-App-29x29@3x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 40x40 assets/icons/generated/ios/Icon-App-40x40@1x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 80x80 assets/icons/generated/ios/Icon-App-40x40@2x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 120x120 assets/icons/generated/ios/Icon-App-40x40@3x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 120x120 assets/icons/generated/ios/Icon-App-60x60@2x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 180x180 assets/icons/generated/ios/Icon-App-60x60@3x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 152x152 assets/icons/generated/ios/Icon-App-76x76@2x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 167x167 assets/icons/generated/ios/Icon-App-83.5x83.5@2x.png
magick assets/icons/booktrackr_icon_simple.svg -resize 1024x1024 assets/icons/generated/ios/Icon-App-1024x1024@1x.png

# App store icon (with text)
echo "🏪 Generating App Store icon..."
magick assets/icons/booktrackr_icon.svg -resize 1024x1024 assets/icons/generated/app_store_icon_1024x1024.png

echo "✅ Icon generation complete!"
echo ""
echo "📁 Generated icons are in:"
echo "   Android: assets/icons/generated/android/"
echo "   iOS: assets/icons/generated/ios/"
echo "   App Store: assets/icons/generated/app_store_icon_1024x1024.png"
echo ""
echo "🔄 Next steps:"
echo "   1. Copy Android icons to android/app/src/main/res/mipmap-*"
echo "   2. Copy iOS icons to ios/Runner/Assets.xcassets/AppIcon.appiconset/"
echo "   3. Update app metadata and test on devices"
echo ""
echo "🎯 The new icon represents:"
echo "   📚 Book tracking and reading progress"
echo "   🔍 Focus and learning (reading glasses)"
echo "   🔖 Bookmarking and organization"
echo "   🎨 Modern, attractive design with purple gradient" 