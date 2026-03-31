#!/bin/bash

# Script Name: 04_log_analyzer.sh
# Author: Akshat Singh
# Course: Open Source Software
# Description: Processes VLC log files to identify specific keywords or errors.

# Check if a file argument is provided
if [ -z "$1" ]; then
    echo "No log file provided. Generating a dummy VLC log: vlc_debug.log"
    
    # Create a simulated VLC log file with warnings and errors
    cat <<EOF > vlc_debug.log
[000055c] core warning: picture is too late to be displayed
[000055c] core warning: picture is too late to be displayed
[000078a] codec error: cannot open codec: aac
[000078a] core warning: cannot create audio sink
[000099b] codec error: missing h.264 decoder plugin
[000099b] core warning: output may be stuttered
EOF
    
    LOG_FILE="vlc_debug.log"
else
    LOG_FILE="$1"
fi

# Set the search keyword (default to "core warning" if second argument is missing)
KEYWORD=${2:-"core warning"}
COUNTER=0

echo "----------------------------------------------------------"
echo "Analysing $LOG_FILE for keyword: '$KEYWORD'..."
echo "----------------------------------------------------------"

# Check if the file exists before reading
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File $LOG_FILE not found."
    exit 1
fi

# Read the log file line-by-line using a while loop
while read -r LINE; do
    # Check if the line contains the specified keyword
    if [[ "$LINE" == *"$KEYWORD"* ]]; then
        echo "[MATCH] $LINE"
        # Increment the counter for every match
        ((COUNTER++))
    fi
done < "$LOG_FILE"

echo "----------------------------------------------------------"
echo "Analysis Complete: Found $COUNTER instances of '$KEYWORD'."
echo "----------------------------------------------------------"
