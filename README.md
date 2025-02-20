# Useful Shell Scripts 🖥️📜

A collection of handy shell scripts for automating tasks on macOS and Linux.

## 📜 Available Scripts

### 1️⃣ Remove GPS EXIF Data from Photos (`remove_gps_exif.sh`)

This script removes GPS location metadata from image files to protect privacy.

#### 📥 Installation
Ensure you have `exiftool` installed:
sh
brew install exiftool  # macOS (Homebrew)
sudo apt install libimage-exiftool-perl  # Ubuntu/Debian

🚀 Usage
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

⚙️ Features
Removes GPS metadata (-gps:all=)
Works on single files or entire directories
Overwrites original files to prevent data leaks

🛠️ More Scripts Coming Soon...
System Cleanup Scripts 🧹
Backup & Restore Utilities 💾
Network & Security Tools 🔒
Stay tuned! 🚀
