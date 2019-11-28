#!/usr/bin/bash

pape=$1

# Get the width of the wallpaper
height=$(magick convert "$pape" -format "%h" info:)
width=$(magick convert "$pape" -format "%w" info:)

# Calculate appropriate height for logo on the wallpaper
logo_height=$(($height*9/16))

# Generate Mask
convert "./arch.png" -gravity center  -resize $logo_height -background white -extent "${width}x${height}" -flatten "temp_logo.png"

# Generate Wallpaper
outfile_name=$(basename "$pape")

convert "$pape" -write-mask "temp_logo.png" -gravity center \
	-blur 0x30 \
	-attenuate 0.3 +noise Laplacian\
	-evaluate Multiply 1.3 \
	"arch_btw_$outfile_name"

# Delete temporary file
rm "temp_logo.png"

# TODO: imagemagick giving colorspace warning
# TODO: Use SVG instead of png?
