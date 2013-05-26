#!/bin/bash

# The default Ti app template created a bunch of splash screens with Ti branding.
# This just resets the images to blank
# This requires the ImageMagick tool convert is installed
#
# Good ref for the images is http://blog.mattstephens.co.uk/post/42021515092/splash-screen-launcher-icon-sizes-appcelerator-titanium

# For alloy apps
PREFIX="app/assets"
# For non-alloy apps
#PREFIX="Resources"

#BACKGROUND="xc:none"
BACKGROUND="xc:white"
#BACKGROUND="xc:black"

# iOS splash screens
convert -size 2048x1496 $BACKGROUND $PREFIX/iphone/Default-Landscape@2x.png
convert -size 1024x748 $BACKGROUND $PREFIX/iphone/Default-Landscape.png
convert -size 15362008x1004 $BACKGROUND $PREFIX/iphone/Default-Portrait@2x.png
convert -size 768x1004 $BACKGROUND $PREFIX/iphone/Default-Portrait.png
convert -size 640x1136 $BACKGROUND $PREFIX/iphone/Default-568h@2x.png
convert -size 640x960 $BACKGROUND $PREFIX/iphone/Default@2x.png
convert -size 320x480 $BACKGROUND $PREFIX/iphone/Default.png

# iOS app icons
convert -size 512x512 $BACKGROUND $PREFIX/iphone/appicon@512.png
convert -size 144x144 $BACKGROUND $PREFIX/iphone/appicon-144.png
convert -size 114x114 $BACKGROUND $PREFIX/iphone/appicon@2x.png
convert -size 72x72 $BACKGROUND $PREFIX/iphone/appicon-72.png
convert -size 57x57 $BACKGROUND $PREFIX/iphone/appicon.png
convert -size 50x50 $BACKGROUND $PREFIX/iphone/appicon-Small-50.png
convert -size 29x29 $BACKGROUND $PREFIX/iphone/appicon-Small.png

# Android
convert -size 128x128 $BACKGROUND $PREFIX/android/appicon.png

convert -size 320x480 $BACKGROUND $PREFIX/android/default.png
convert -size 800x480 $BACKGROUND $PREFIX/android/images/res-long-land-hdpi/default.png
convert -size 400x240 $BACKGROUND $PREFIX/android/images/res-long-land-ldpi/default.png
convert -size 480x800 $BACKGROUND $PREFIX/android/images/res-long-port-hdpi/default.png
convert -size 240x400 $BACKGROUND $PREFIX/android/images/res-long-port-ldpi/default.png
convert -size 800x480 $BACKGROUND $PREFIX/android/images/res-notlong-land-hdpi/default.png
convert -size 320x240 $BACKGROUND $PREFIX/android/images/res-notlong-land-ldpi/default.png
convert -size 480x320 $BACKGROUND $PREFIX/android/images/res-notlong-land-mdpi/default.png
convert -size 480x800 $BACKGROUND $PREFIX/android/images/res-notlong-port-hdpi/default.png
convert -size 240x320 $BACKGROUND $PREFIX/android/images/res-notlong-port-ldpi/default.png
convert -size 320x480 $BACKGROUND $PREFIX/android/images/res-notlong-port-mdpi/default.png

# mobile web
convert -size 128x128 $BACKGROUND $PREFIX/mobileweb/appicon.png
convert -size 748x1024 $BACKGROUND $PREFIX/mobileweb/apple_startup_images/Default-Landscape.jpg
convert -size 748x1024 $BACKGROUND $PREFIX/mobileweb/apple_startup_images/Default-Landscape.png
convert -size 768x1004 $BACKGROUND $PREFIX/mobileweb/apple_startup_images/Default-Portrait.jpg
convert -size 768x1004 $BACKGROUND $PREFIX/mobileweb/apple_startup_images/Default-Portrait.png
convert -size 320x460 $BACKGROUND $PREFIX/mobileweb/apple_startup_images/Default.jpg
convert -size 320x460 $BACKGROUND $PREFIX/mobileweb/apple_startup_images/Default.png

#$PREFIXbweb/splash/appc.png
#$PREFIX/mobileweb/splash/splash.css
#$PREFIX/mobileweb/splash/splash.html
#$PREFIX/mobileweb/splash/titanium.png
