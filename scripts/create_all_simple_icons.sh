#!/bin/bash

# BookTrackr All Simple Icons Script
# Creates simple visible icons for all Android densities

echo "🎨 Creating BookTrackr Simple Icons for All Densities..."

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "❌ ImageMagick is not installed. Please install it first:"
    echo "   macOS: brew install imagemagick"
    echo "   Ubuntu: sudo apt-get install imagemagick"
    echo "   Windows: Download from https://imagemagick.org/"
    exit 1
fi

# Create the base icon (192x192)
magick -size 192x192 xc:"#6366F1" \
  -fill white \
  -stroke "#4F46E5" \
  -strokewidth 8 \
  -draw "rectangle 40,40 152,152" \
  -fill "#FEF3C7" \
  -draw "rectangle 48,48 144,144" \
  -fill "#10B981" \
  -draw "rectangle 56,80 136,96" \
  -fill "#EF4444" \
  -draw "polygon 160,30 175,50 190,30 175,60" \
  -fill white \
  -font Arial-Bold \
  -pointsize 24 \
  -gravity center \
  -draw "text 0,0 '📚'" \
  temp_base_icon.png

# Generate all sizes
echo "📱 Generating icons for all densities..."

# MDPI (48x48)
magick temp_base_icon.png -resize 48x48 android/app/src/main/res/mipmap-mdpi/ic_launcher.png

# HDPI (72x72)
magick temp_base_icon.png -resize 72x72 android/app/src/main/res/mipmap-hdpi/ic_launcher.png

# XHDPI (96x96)
magick temp_base_icon.png -resize 96x96 android/app/src/main/res/mipmap-xhdpi/ic_launcher.png

# XXHDPI (144x144)
magick temp_base_icon.png -resize 144x144 android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png

# XXXHDPI (192x192)
magick temp_base_icon.png -resize 192x192 android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png

# Clean up temporary file
rm temp_base_icon.png

echo "✅ All simple icons created successfully!"
echo "🎯 Features across all densities:"
echo "   🟣 Purple background (#6366F1)"
echo "   ⚪ White book design"
echo "   🔴 Red bookmark"
echo "   🟢 Green progress bar"
echo "   📚 Book emoji for clarity"
echo "   ✨ High contrast and visibility"
echo ""
echo "📱 Icons created for:"
echo "   - MDPI (48x48)"
echo "   - HDPI (72x72)"
echo "   - XHDPI (96x96)"
echo "   - XXHDPI (144x144)"
echo "   - XXXHDPI (192x192)" 