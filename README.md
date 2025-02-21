# Useful Shell Scripts 🖥️📜

A collection of handy shell scripts for automating tasks on macOS and Linux.

---

## 📜 Available Scripts

### 1️⃣ Remove GPS EXIF Data from Photos (`remove_gps_exif.sh`)

This script removes GPS location metadata from image files to protect privacy.

#### 📥 Installation
Ensure you have `exiftool` installed:
sh
brew install exiftool  # macOS (Homebrew)
sudo apt install libimage-exiftool-perl  # Ubuntu/Debian

#### 🚀 Usage
Run the script with a file or directory as an argument:
sh
Copy
Edit
./remove_gps_exif.sh path/to/photo.jpg

To process all images in a folder:
sh
Copy
Edit
./remove_gps_exif.sh path/to/folder

#### ⚙️ Features
Removes GPS metadata (-gps:all=)
Works on single files or entire directories
Overwrites original files to prevent data leaks

### 2️⃣ Compress and Resize Images (compress_resize_images.sh)
This script compresses and resizes images using ImageMagick.

#### 📥 Installation
Ensure you have ImageMagick installed:
sh
Copy
Edit
brew install imagemagick  # macOS (Homebrew)
sudo apt install imagemagick  # Ubuntu/Debian

#### 🚀 Usage
Run the script with a file or directory as an argument

Compress and resize a single image to 800x600 with 80% quality:
sh
Copy
Edit
./compress_resize_images.sh image.jpg 800x600 80

Process all images in a folder with default quality (85%):
sh
Copy
Edit
./compress_resize_images.sh /path/to/folder 1024x768

#### ⚙️ Features
Supports JPG, JPEG, and PNG formats
Allows setting max width and height (800x600 format)
Adjustable compression quality (default: 85%)
Processes single files or entire directories

### 3️⃣ Transcode FLAC to MP3 (flac_to_mp3.sh)
This script converts FLAC audio files to MP3 format using ffmpeg.

#### 📥 Installation
Ensure you have ffmpeg installed:
sh
Copy
Edit
brew install ffmpeg  # macOS (Homebrew)
sudo apt install ffmpeg  # Ubuntu/Debian

#### 🚀 Usage
Run the script with a file or directory as an argument

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

#### ⚙️ Features
Supports batch conversion for directories
Retains metadata from the original FLAC file
Allows customizable bitrate (default: 320kbps)
Outputs MP3 files in the same directory as the source FLAC files

## 4️⃣ Disk Space Checker for macOS
This is a simple shell script designed for macOS to monitor available disk space on your main volume (`/`) and provide a visual alert if it falls below a customizable threshold.

### 📥 Installation

#### Download the Script:
   - Clone this repository or download `disk_space_checker.sh` directly:
     bash
     git clone https://github.com/yourusername/your-repo.git
     cd your-repo
#### Make It Executable:
Run the following command in your Terminal to make the script executable:
bash
Wrap
Copy
chmod +x disk_space_checker.sh
Optional: Move to a Bin Directory:
For easy access, move it to a directory in your $PATH, like /usr/local/bin:
bash
Wrap
Copy
mv disk_space_checker.sh /usr/local/bin/disk_space_checker
Now you can run it from anywhere by typing disk_space_checker.

### 🚀 Usage
Run the Script:
Execute the script from its location:
bash
Wrap
Copy
./disk_space_checker.sh
Or, if you moved it to a bin directory:
bash
Wrap
Copy
disk_space_checker

#### Example Output:
When disk space is sufficient:
text
Wrap
Copy
Disk space looks good!
45 GB available out of 250 GB.
Usage: [=========                                         ] 18%
When disk space is low:
text
Wrap
Copy
WARNING: Low disk space!
8 GB available out of 250 GB.
Consider freeing up some space.
Usage: [=                                                 ] 3%

#### Customize the Threshold:
Open the script in a text editor (e.g., nano disk_space_checker.sh).
Adjust the THRESHOLD variable (default is 10 GB):
bash
Wrap
Copy
THRESHOLD=20  # Change to 20 GB

#### ⚙️ Features
- Color-Coded Alerts: Green for sufficient space, red and yellow for low space warnings.
- Customizable Threshold: Set your own low-space limit by editing the THRESHOLD variable.
- Visual Progress Bar: Displays a simple bar showing the percentage of used disk space.
- Error Handling: Checks for valid disk space data and exits gracefully if retrieval fails.
- Lightweight: No dependencies beyond standard macOS tools (df, bash).

## Contributions or suggestions are welcome!

##### 🛠️ More Scripts Coming Soon...
