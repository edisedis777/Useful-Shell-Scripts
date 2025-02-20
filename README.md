# Useful Shell Scripts 🖥️📜

A collection of handy shell scripts for automating tasks on macOS and Linux.

📜 Available Scripts

1️⃣ Remove GPS EXIF Data from Photos (remove_gps_exif.sh)

This script removes GPS location metadata from image files to protect privacy.

📥 Installation

Ensure you have exiftool installed:

brew install exiftool  # macOS (Homebrew)
sudo apt install libimage-exiftool-perl  # Ubuntu/Debian

🚀 Usage

Run the script with a file or directory as an argument:

./remove_gps_exif.sh path/to/photo.jpg

To process all images in a folder:

./remove_gps_exif.sh path/to/folder

⚙️ Features

Removes GPS metadata (-gps:all=)

Works on single files or entire directories

Overwrites original files to prevent data leaks

2️⃣ Compress and Resize Images (compress_resize_images.sh)

This script compresses and resizes images using ImageMagick.

📥 Installation

Ensure you have ImageMagick installed:

brew install imagemagick  # macOS (Homebrew)
sudo apt install imagemagick  # Ubuntu/Debian

🚀 Usage

Run the script with a file or directory as an argument:

Compress and resize a single image to 800x600 with 80% quality:

./compress_resize_images.sh image.jpg 800x600 80

Process all images in a folder with default quality (85%):

./compress_resize_images.sh /path/to/folder 1024x768

⚙️ Features

Supports JPG, JPEG, and PNG formats

Allows setting max width and height (800x600 format)

Adjustable compression quality (default: 85%)

Processes single files or entire directories

### 3️⃣ Transcode FLAC to MP3 (`flac_to_mp3.sh`)

This script converts FLAC audio files to MP3 format using `ffmpeg`.

#### 📥 Installation
Ensure you have `ffmpeg` installed:
sh
brew install ffmpeg  # macOS (Homebrew)
sudo apt install ffmpeg  # Ubuntu/Debian
🚀 Usage
Run the script with a file or directory as an argument:

Convert a single FLAC file to MP3 (default 320kbps):
sh
Copy
Edit
./flac_to_mp3.sh song.flac
Convert all FLAC files in a directory at 192kbps:

sh
Copy
Edit
./flac_to_mp3.sh /path/to/folder 192k

⚙️ Features
Supports batch conversion for directories
Retains metadata from the original FLAC file
Allows customizable bitrate (default: 320kbps)
Outputs MP3 files in the same directory as the source FLAC files

🛠️ More Scripts Coming Soon...
