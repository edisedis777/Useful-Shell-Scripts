#!/bin/bash

# Script to check disk space on macOS and warn if it's low

# Define colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Set the threshold for low disk space (in GB)
THRESHOLD=10

# Get disk space info using 'df' (in KB, then convert to GB)
# Use '-k' to get output in KB for consistency, skip header with 'tail'
DISK_INFO=$(df -k / | tail -1)
AVAILABLE_KB=$(echo "$DISK_INFO" | awk '{print $4}')  # Available space in KB
TOTAL_KB=$(echo "$DISK_INFO" | awk '{print $2}')      # Total space in KB

# Convert KB to GB (1 GB = 1048576 KB)
AVAILABLE_GB=$((AVAILABLE_KB / 1048576))
TOTAL_GB=$((TOTAL_KB / 1048576))

# Check if we got valid numbers
if ! [[ "$AVAILABLE_GB" =~ ^[0-9]+$ ]] || ! [[ "$TOTAL_GB" =~ ^[0-9]+$ ]]; then
    echo "Error: Unable to retrieve disk space info."
    exit 1
fi

# Check if available space is below the threshold
if [ "$AVAILABLE_GB" -lt "$THRESHOLD" ]; then
    echo -e "${RED}WARNING: Low disk space!${NC}"
    echo -e "Only ${YELLOW}${AVAILABLE_GB} GB${NC} available out of ${TOTAL_GB} GB."
    echo "Consider freeing up some space."
else
    echo -e "${GREEN}Disk space looks good!${NC}"
    echo -e "${AVAILABLE_GB} GB available out of ${TOTAL_GB} GB."
fi

# Optional: Show a simple progress bar (approximate percentage)
PERCENT=$((AVAILABLE_GB * 100 / TOTAL_GB))
echo -n "Usage: ["
for ((i = 0; i < 50; i++)); do
    if [ $((i * 2)) -lt "$PERCENT" ]; then
        echo -n "="
    else
        echo -n " "
    fi
done
echo "] ${PERCENT}%"