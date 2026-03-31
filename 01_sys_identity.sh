#!/bin/bash

# Script Name: 01_sys_identity.sh
# Author: Akshat Singh
# Course: Open Source Software
# Description: Displays system identity and VLC audit context.

# Clear the screen for a clean presentation
clear

echo "=========================================================="
echo "         THE OPEN SOURCE AUDIT: SYSTEM IDENTITY         "
echo "=========================================================="

# Extract distribution name from /etc/os-release
# Format: PRETTY_NAME="Ubuntu 22.04.3 LTS"
OS_NAME=$(grep "PRETTY_NAME" /etc/os-release | cut -d '"' -f 2)

# Get kernel version using uname -r
KERNEL_VERSION=$(uname -r)

# Identify the currently logged-in user
CURRENT_USER=$(whoami)

# Get the absolute path to the user's home directory
USER_HOME=$HOME

# Get system uptime in a brief format
UPTIME_STAT=$(uptime -p)

# Get the current system date and time
CURRENT_DATE=$(date)

# Display the collected information
echo "Linux Distribution: $OS_NAME"
echo "Kernel Version:     $KERNEL_VERSION"
echo "Logged-in User:     $CURRENT_USER"
echo "Home Directory:     $USER_HOME"
echo "System Uptime:      $UPTIME_STAT"
echo "Current Date/Time:  $CURRENT_DATE"

echo "----------------------------------------------------------"
# Final context message for the VLC audit project
echo "Host OS Open Source License: GPL | Target Audit Software: VLC Media Player (GPL/LGPL)"
echo "=========================================================="
