TiTools
=======

A collection of various scripts that help with Appcelerator Titanium apps

### resetImageAssets.sh
The Titanium app creation templates create a bunch of image files with the Titanium branding. I don't quite understand this as I can't see anyone releasing (or even prototyping) an app with the Ti branding. Anyhow I submitted a [JIRA task](https://jira.appcelerator.org/browse/TC-2042) that got rejected.

So this script replaces the default images with blank ones. It also creates some of the missing images.

### makeTiIcons.sh
Use convert (ImageMagick) to resize a source image file to all the various appicons. The only one it does not do is the 512x512 ones as this should probably be designed specifically
