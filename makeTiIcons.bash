#!/bin/bash

# Convert a source image file to the various icon size by resizing

# For alloy apps
PREFIX="app/assets"
# For non-alloy apps
#PREFIX="Resources"


if [ ! -f "$1" ]; then
	echo "A source image has not been specified"
	exit 2
fi

if [ ! -d "$PREFIX" ]; then
	echo "The directory structure to create the files in does not exist. Maybe this is not the root of an Appclerator project"
	exit 1
fi

# iOS app icons
echo "Making the iOS icon images"
convert "$1" -resize 512x512 $PREFIX/iphone/appicon@512.png
convert "$1" -resize 144x144 $PREFIX/iphone/appicon-144.png
convert "$1" -resize 114x114 $PREFIX/iphone/appicon@2x.png
convert "$1" -resize 72x72   $PREFIX/iphone/appicon-72.png
convert "$1" -resize 57x57   $PREFIX/iphone/appicon.png
convert "$1" -resize 50x50   $PREFIX/iphone/appicon-Small-50.png
convert "$1" -resize 29x29   $PREFIX/iphone/appicon-Small.png

# Android
echo "Making the Android icon images"
convert "$1" -resize 128x128 $PREFIX/android/appicon.png

# mobile web
echo "Making the mobileweb images"
convert "$1" -resize 128x128 $PREFIX/mobileweb/appicon.png
