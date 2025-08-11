#!/bin/bash

# BookTrackr Visible Icon Generation Script
# This script creates a more visible version of our icon with better contrast

echo "🎨 Generating BookTrackr Visible Icon..."

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "❌ ImageMagick is not installed. Please install it first:"
    echo "   macOS: brew install imagemagick"
    echo "   Ubuntu: sudo apt-get install imagemagick"
    echo "   Windows: Download from https://imagemagick.org/"
    exit 1
fi

# Create output directories
mkdir -p assets/icons/generated/visible
mkdir -p android/app/src/main/res/mipmap-visible

# Generate a more visible icon with better contrast
# This version will have a stronger purple background and more prominent white elements
magick -size 192x192 xc:"#4F46E5" \
  -fill white \
  -stroke "#1E1B4B" \
  -strokewidth 4 \
  -draw "circle 96,96 80" \
  -fill "#8B5CF6" \
  -draw "circle 96,96 75" \
  -fill white \
  -stroke "#1E1B4B" \
  -strokewidth 3 \
  -draw "rectangle 60,40 132,152 rounded 12" \
  -fill "#FEF3C7" \
  -draw "rectangle 68,48 124,144 rounded 10" \
  -fill "#10B981" \
  -draw "rectangle 72,70 120,90 rounded 4" \
  -fill "#EF4444" \
  -draw "polygon 140,30 155,50 170,30 155,60" \
  -draw "rectangle 150,30 160,60" \
  -fill "#1E1B4B" \
  -draw "line 75,100 130,100" \
  -draw "line 75,110 125,110" \
  -draw "line 75,120 135,120" \
  -draw "line 75,130 120,130" \
  -fill none \
  -stroke "#1E1B4B" \
  -strokewidth 4 \
  -draw "circle 80,110 15" \
  -draw "circle 110,110 15" \
  -draw "line 95,110 110,110" \
  -draw "line 125,110 140,105" \
  assets/icons/generated/visible/booktrackr_visible_192x192.png

# Generate different sizes for Android
echo "📱 Generating Android visible icons..."
magick assets/icons/generated/visible/booktrackr_visible_192x192.png -resize 48x48 android/app/src/main/res/mipmap-visible/ic_launcher_48x48.png
magick assets/icons/generated/visible/booktrackr_visible_192x192.png -resize 72x72 android/app/src/main/res/mipmap-visible/ic_launcher_72x72.png
magick assets/icons/generated/visible/booktrackr_visible_192x192.png -resize 96x96 android/app/src/main/res/mipmap-visible/ic_launcher_96x96.png
magick assets/icons/generated/visible/booktrackr_visible_192x192.png -resize 144x144 android/app/src/main/res/mipmap-visible/ic_launcher_144x144.png
magick assets/icons/generated/visible/booktrackr_visible_192x192.png -resize 192x192 android/app/src/main/res/mipmap-visible/ic_launcher_192x192.png

echo "✅ Visible icons generated successfully!"
echo ""
echo "🎯 The new visible icon features:"
echo "   🟣 Strong purple background (#4F46E5)"
echo "   ⚪ High contrast white book design"
echo "   🔴 Prominent red bookmark"
echo "   🟢 Bright green progress bar"
echo   "⚫ Dark outlines for maximum visibility"
echo "   ✨ Better contrast against any background"
echo ""
echo "🔄 Next steps:"
echo "   1. Copy visible icons to mipmap directories"
echo "   2. Clean and rebuild the app"
echo "   3. Test the new highly visible icon" 