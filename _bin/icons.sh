#!/bin/sh

ICON="../_graphics/icon.png"
OUT=".."

# favicon.ico
convert ${ICON} \
  \( -clone 0 -resize 16x16 \) \
  \( -clone 0 -resize 32x32 \) \
  \( -clone 0 -resize 48x48 \) \
  \( -clone 0 -resize 64x64 \) \
  -delete 0 ${OUT}/favicon.ico

# Apple icons
convert ${ICON} -resize 144x144 ${OUT}/apple-touch-icon-144x144-precomposed.png
convert ${ICON} -resize 114x114 ${OUT}/apple-touch-icon-114x114-precomposed.png
convert ${ICON} -resize 72x72 ${OUT}/apple-touch-icon-72x72-precomposed.png
convert ${ICON} -resize 57x57 ${OUT}/apple-touch-icon-57x57-precomposed.png
cp ${OUT}/apple-touch-icon-57x57-precomposed.png ${OUT}/apple-touch-icon-precomposed.png
cp ${OUT}/apple-touch-icon-57x57-precomposed.png ${OUT}/apple-touch-icon.png

