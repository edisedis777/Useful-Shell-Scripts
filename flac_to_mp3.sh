#!/bin/bash

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null
then
    echo "Error: ffmpeg is not installed. Install it using 'brew install ffmpeg'."
    exit 1
fi

# Check for correct usage
if [ $# -lt 1 ]; then
    echo "Usage: $0 <input_file_or_directory> [bitrate]"
    echo "Example: $0 song.flac 192k"
    exit 1
fi

INPUT="$1"
BITRATE="${2:-320k}"  # Default bitrate is 320kbps if not provided

# Function to convert a single FLAC file to MP3
convert_flac_to_mp3() {
    local file="$1"
    local filename=$(basename "$file" .flac)
    local directory=$(dirname "$file")
    local output_file="${directory}/${filename}.mp3"

    echo "Transcoding: $file -> $output_file (Bitrate: $BITRATE)"

    ffmpeg -i "$file" -ab "$BITRATE" -map_metadata 0 -id3v2_version 3 "$output_file"
}

# Check if input is a directory or a single file
if [ -d "$INPUT" ]; then
    echo "Processing all FLAC files in directory: $INPUT"
    for flac in "$INPUT"/*.flac; do
        [ -f "$flac" ] && convert_flac_to_mp3 "$flac"
    done
elif [ -f "$INPUT" ]; then
    convert_flac_to_mp3 "$INPUT"
else
    echo "Error: Invalid file or directory"
    exit 1
fi

echo "✅ FLAC to MP3 conversion completed!"
