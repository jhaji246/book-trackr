#!/bin/bash

# BookTrackr Simple Visible Icon Script
# Creates a basic but highly visible icon

echo "🎨 Creating BookTrackr Simple Visible Icon..."

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "❌ ImageMagick is not installed. Please install it first:"
    echo "   macOS: brew install imagemagick"
    echo "   Ubuntu: sudo apt-get install imagemagick"
    echo "   Windows: Download from https://imagemagick.org/"
    exit 1
fi

# Create a simple, highly visible icon
# Purple background with white book symbol
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
  android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_simple.png

echo "✅ Simple visible icon created!"
echo "🎯 Features:"
echo "   🟣 Purple background (#6366F1)"
echo "   ⚪ White book design"
echo "   🔴 Red bookmark"
echo "   🟢 Green progress bar"
echo "   📚 Book emoji for clarity"
echo "   ✨ High contrast and visibility" 