#!/bin/bash

# Script Name: 03_dir_audit.sh
# Author: Akshat Singh
# Course: Open Source Software
# Description: Audits critical directories relevant to VLC and the system.

# Define an array of directories to audit
AUDIT_DIRS=("/usr/bin" "/usr/lib/vlc" "$HOME/.config/vlc" "/etc" "/tmp")

echo "----------------------------------------------------------"
echo "           VLC DIRECTORY & PERMISSION AUDIT             "
echo "----------------------------------------------------------"
echo -e "PERMISSIONS\tSIZE\t\tPATH"
echo "----------------------------------------------------------"

# Loop through each directory in the array
for DIR in "${AUDIT_DIRS[@]}"; do
    # Check if the directory exists
    if [ -d "$DIR" ]; then
        # Extract permissions using ls and awk (format: drwxr-xr-x)
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        
        # Calculate total size in human-readable format using du
        # --max-depth=0 ensures we only get the size of the directory itself
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        
        # Display the results in a formatted table
        echo -e "$PERMS\t$SIZE\t\t$DIR"
    else
        # Print message if the directory is not found
        echo -e "N/A\t\tN/A\t\t$DIR (Does not exist)"
    fi
done

echo "----------------------------------------------------------"
echo "Audit complete: Identified core binaries, plugins, and config paths."
