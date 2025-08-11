#!/bin/bash

# BookTrackr Foreground Icon Generation Script
# This script creates a foreground icon that will be more visible on modern Android devices

echo "🎨 Generating BookTrackr Foreground Icon..."

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "❌ ImageMagick is not installed. Please install it first:"
    echo "   macOS: brew install imagemagick"
    echo "   Ubuntu: sudo apt-get install imagemagick"
    echo "   Windows: Download from https://imagemagick.org/"
    exit 1
fi

# Create output directory
mkdir -p android/app/src/main/res/mipmap-anydpi-v26

# Generate foreground icon with transparent background and white book design
# This will be more visible against the purple background
magick -size 108x108 xc:transparent \
  -fill white \
  -stroke "#E5E7EB" \
  -strokewidth 2 \
  -draw "rectangle 20,15 88,93 rounded 8" \
  -fill "#FEF3C7" \
  -draw "rectangle 28,23 80,85 rounded 6" \
  -fill "#10B981" \
  -draw "rectangle 32,35 76,43 rounded 2" \
  -fill "#EF4444" \
  -draw "polygon 75,10 85,25 95,10 85,35" \
  -draw "rectangle 82,10 88,35" \
  -fill "#6B7280" \
  -draw "line 35,50 70,50" \
  -draw "line 35,58 65,58" \
  -draw "line 35,66 75,66" \
  -draw "line 35,74 60,74" \
  -fill none \
  -stroke "#6B7280" \
  -strokewidth 3 \
  -draw "circle 45,70 10" \
  -draw "circle 65,70 10" \
  -draw "line 55,70 65,70" \
  -draw "line 75,70 85,65" \
  android/app/src/main/res/mipmap-anydpi-v26/ic_launcher_foreground.png

echo "✅ Foreground icon generated successfully!"
echo ""
echo "🎯 The new foreground icon features:"
echo "   📚 Clean white book design"
echo "   🔖 Red bookmark for visibility"
echo "   📖 Green progress bar"
echo "   👓 Reading glasses design"
echo "   ✨ Transparent background for adaptive icon"
echo "   🎨 Will be displayed on purple background" 