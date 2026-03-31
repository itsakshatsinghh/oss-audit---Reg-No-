#!/bin/bash

# Script Name: 02_pkg_inspector.sh
# Author: Akshat Singh
# Course: Open Source Software
# Description: Checks for VLC installation and highlights FOSS philosophy.

# Define the package to inspect
PACKAGE="vlc"

echo "Checking system for package: $PACKAGE..."

# Check if the package is installed using dpkg-query
# -W shows the package version if it's installed, redirects error to /dev/null
if dpkg-query -W -f='${Status}' "$PACKAGE" 2>/dev/null | grep -q "ok installed"; then
    # Extract version if package is found
    VERSION=$(dpkg-query -W -f='${Version}' "$PACKAGE")
    echo "[FOUND] $PACKAGE is installed. Version: $VERSION"
else
    # Notify if package is missing
    echo "[MISSING] $PACKAGE is not found on this system."
fi

echo ""
echo "FOSS Multimedia Suite Notes:"
echo "-----------------------------------"

# Case statement to provide philosophy notes for different packages
for PKG in "vlc" "ffmpeg" "mplayer" "alsa-utils"; do
    case "$PKG" in
        "vlc")
            echo "VLC: Originally built by students in Paris to play absolutely anything (GPL)."
            ;;
        "ffmpeg")
            echo "FFmpeg: The universal 'Swiss Army Knife' for multimedia conversion and stream logic."
            ;;
        "mplayer")
            echo "MPlayer: A powerful movie player for Linux that supports a wide range of output drivers."
            ;;
        "alsa-utils")
            echo "ALSA: Advanced Linux Sound Architecture providing kernel-driven audio functionality."
            ;;
        *)
            echo "$PKG: An essential component of the Linux multimedia ecosystem."
            ;;
    esac
done

echo "-----------------------------------"
