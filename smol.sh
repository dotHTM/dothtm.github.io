#!/usr/bin/env bash
# smol.sh

find . -type f -iname "*.mov" -exec ffmpeg -i {} {}.mp4 \;
find . -type f -iname "*.mov" -delete
