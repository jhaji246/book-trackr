#!/bin/bash

# BookTrackr Icon Installation Script
# This script copies the generated icons to the appropriate Android and iOS directories

echo "🚀 Installing BookTrackr App Icons..."

# Check if generated icons exist
if [ ! -d "assets/icons/generated" ]; then
    echo "❌ Generated icons not found. Please run ./scripts/generate_icons.sh first."
    exit 1
fi

# Install Android icons
echo "📱 Installing Android icons..."
cp assets/icons/generated/android/ic_launcher_48x48.png android/app/src/main/res/mipmap-mdpi/ic_launcher.png
cp assets/icons/generated/android/ic_launcher_72x72.png android/app/src/main/res/mipmap-hdpi/ic_launcher.png
cp assets/icons/generated/android/ic_launcher_96x96.png android/app/src/main/res/mipmap-xhdpi/ic_launcher.png
cp assets/icons/generated/android/ic_launcher_144x144.png android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png
cp assets/icons/generated/android/ic_launcher_192x192.png android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png

echo "✅ Android icons installed successfully!"

# Install iOS icons
echo "🍎 Installing iOS icons..."
cp assets/icons/generated/ios/Icon-App-20x20@1x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png
cp assets/icons/generated/ios/Icon-App-20x20@2x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png
cp assets/icons/generated/ios/Icon-App-20x20@3x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png
cp assets/icons/generated/ios/Icon-App-29x29@1x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png
cp assets/icons/generated/ios/Icon-App-29x29@2x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png
cp assets/icons/generated/ios/Icon-App-29x29@3x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png
cp assets/icons/generated/ios/Icon-App-40x40@1x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png
cp assets/icons/generated/ios/Icon-App-40x40@2x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png
cp assets/icons/generated/ios/Icon-App-40x40@3x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png
cp assets/icons/generated/ios/Icon-App-60x60@2x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png
cp assets/icons/generated/ios/Icon-App-60x60@3x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png
cp assets/icons/generated/ios/Icon-App-76x76@2x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png
cp assets/icons/generated/ios/Icon-App-83.5x83.5@2x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png
cp assets/icons/generated/ios/Icon-App-1024x1024@1x.png ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png

echo "✅ iOS icons installed successfully!"

echo ""
echo "🎉 All icons have been installed successfully!"
echo ""
echo "🔄 Next steps:"
echo "   1. Clean and rebuild your Flutter project:"
echo "      flutter clean && flutter pub get"
echo "   2. Test the app on both Android and iOS devices"
echo "   3. Verify the new icon appears correctly"
echo ""
echo "🎯 Your new BookTrackr icon features:"
echo "   📚 Modern book design with reading glasses"
echo "   🔖 Red bookmark for organization"
echo "   📖 Progress bar showing reading tracking"
echo "   🎨 Beautiful purple gradient background"
echo "   ✨ Professional, app store ready design" 