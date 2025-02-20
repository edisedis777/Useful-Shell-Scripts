#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null
then
    echo "Error: ImageMagick is not installed. Install it using 'brew install imagemagick'."
    exit 1
fi

# Check for correct usage
if [ $# -lt 2 ]; then
    echo "Usage: $0 <input_file_or_directory> <max_width>x<max_height> [quality]"
    echo "Example: $0 image.jpg 800x600 80"
    exit 1
fi

INPUT="$1"
SIZE="$2"
QUALITY="${3:-85}"  # Default quality is 85 if not provided

# Function to process an image
compress_resize() {
    local file="$1"
    local filename=$(basename "$file")
    local directory=$(dirname "$file")
    local output_file="${directory}/compressed_${filename}"

    echo "Processing: $file -> $output_file"

    convert "$file" -resize "$SIZE" -quality "$QUALITY" "$output_file"
}

# Check if input is a directory or a single file
if [ -d "$INPUT" ]; then
    echo "Processing all images in directory: $INPUT"
    for img in "$INPUT"/*.{jpg,jpeg,png}; do
        [ -f "$img" ] && compress_resize "$img"
    done
elif [ -f "$INPUT" ]; then
    compress_resize "$INPUT"
else
    echo "Error: Invalid file or directory"
    exit 1
fi

echo "✅ Compression & resizing completed!"
