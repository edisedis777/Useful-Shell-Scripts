#!/bin/bash

# Check if exiftool is installed
if ! command -v exiftool &> /dev/null
then
    echo "Error: exiftool is not installed. Install it using 'brew install exiftool'."
    exit 1
fi

# Check if an argument (folder or file) is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file or directory>"
    exit 1
fi

TARGET="$1"

# Remove GPS EXIF metadata
if [ -d "$TARGET" ]; then
    echo "Processing all images in directory: $TARGET"
    exiftool -gps:all= -overwrite_original "$TARGET"/*
elif [ -f "$TARGET" ]; then
    echo "Processing file: $TARGET"
    exiftool -gps:all= -overwrite_original "$TARGET"
else
    echo "Error: Invalid file or directory"
    exit 1
fi

echo "GPS data removed successfully."
