#!/bin/bash

# Convert a source image file to the various icon size by resizing

# For alloy apps
PREFIX="app/assets"
# For non-alloy apps
#PREFIX="Resources"

usage ()
{
  echo $0 [source icon 512x512]
}

if [ ! -f "$1" ]; then
	echo "A source image has not been specified"
	usage
	exit 2
fi

if [ ! -d "$PREFIX" ]; then
	echo "The directory structure to create the files in does not exist. Maybe this is not the root of an Appclerator project"
	usage
	exit 1
fi

# iOS app icons
echo "Making the iOS icon images"
# Input should be the 512 icon
convert "$1" -resize 512x512 $PREFIX/iphone/iTunesArtwork
#convert "$1" -resize 512x512 $PREFIX/iphone/appicon@512.png
convert "$1" -resize 114x114 $PREFIX/iphone/appicon@2x.png
convert "$1" -resize 72x72   $PREFIX/iphone/appicon-72.png
convert "$1" -resize 144x144   $PREFIX/iphone/appicon-72@2x.png
convert "$1" -resize 57x57   $PREFIX/iphone/appicon.png
convert "$1" -resize 50x50   $PREFIX/iphone/appicon-Small-50.png
convert "$1" -resize 100x100   $PREFIX/iphone/appicon-Small-50@2x.png
convert "$1" -resize 29x29   $PREFIX/iphone/appicon-Small.png
convert "$1" -resize 58x58   $PREFIX/iphone/appicon-Small@2x.png

# new iOS 7 icons
echo "Making the iOS 7 icon images"
convert "$1" -resize 40x40 $PREFIX/iphone/appicon-Small-40.png
convert "$1" -resize 80x80 $PREFIX/iphone/appicon-Small-40@2x.png
convert "$1" -resize 120x120 $PREFIX/iphone/appicon-60@2x.png
convert "$1" -resize 76x76 $PREFIX/iphone/appicon-76.png
convert "$1" -resize 152x152 $PREFIX/iphone/appicon-76@2x.png

# Android
echo "Making the Android icon images"
convert -size 128x128 xc:none -fill white -draw 'roundRectangle 0,0 128,128 10,10' "$1"[128x128] -compose SrcIn -composite $PREFIX/android/appicon.png

# mobile web
echo "Making the mobileweb images"
convert "$1" -resize 128x128 $PREFIX/mobileweb/appicon.png
