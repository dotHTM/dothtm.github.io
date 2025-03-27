#!/usr/bin/env bash
# iconer.sh

input_icon=$1


magick $input_icon \
-gravity center \
-crop 1132x1132+0+0 \
+repage \
cropped.png


magick cropped.png \
-resize 192x192 \
./android-chrome-192x192.png

magick cropped.png \
-resize 512x512 \
./android-chrome-512x512.png

magick cropped.png \
-resize 512x512 \
./apple-touch-icon.png

magick cropped.png \
-resize 16x16 \
./favicon-16x16.png

magick cropped.png \
-resize 32x32 \
./favicon-32x32.png

magick cropped.png \
-resize 48x48 \
./favicon.ico

magick cropped.png \
-resize 150x150 \
./mstile-150x150.png

magick cropped.png \
./image/dot_logo.png
