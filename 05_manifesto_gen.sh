#!/bin/bash

# Script Name: 05_manifesto_gen.sh
# Author: Partha Khare
# Course: Open Source Software
# Description: Interactively generates an Open Source Multimedia Manifesto.

echo "=========================================================="
echo "      VLC OPEN SOURCE MULTIMEDIA MANIFESTO GENERATOR      "
echo "=========================================================="

# Interactive user input using read
read -p "What is your media creator/hacker alias? " ALIAS
read -p "If you could ensure one media format stays free forever (e.g., MP4, MKV), what would it be? " FORMAT
read -p "What does 'digital media freedom' mean to you in one sentence? " FREEDOM_DEF

# Define the manifesto filename
OUTPUT_FILE="multimedia_manifesto.txt"

# Compose the personalized manifesto and write it to a file
# First sentence uses concatenation with user input
MANIFESTO="My name is $ALIAS, and I stand for the accessibility of digital media."
# Second sentence highlights the importance of the chosen format
MANIFESTO="$MANIFESTO The $FORMAT format must remain an open standard to prevent proprietary gatekeeping."
# Third sentence incorporates the user's definition of freedom
MANIFESTO="$MANIFESTO To me, digital media freedom means $FREEDOM_DEF"

# Overwrite the file with the manifesto paragraph
echo "$MANIFESTO" > "$OUTPUT_FILE"

# Append the current date and time using >>
echo "" >> "$OUTPUT_FILE"
echo "Manifesto Generated On: $(date)" >> "$OUTPUT_FILE"

echo "----------------------------------------------------------"
echo "[SUCCESS] Your manifesto has been encrypted into $OUTPUT_FILE."
echo "----------------------------------------------------------"

# Display the contents of the file to the terminal
cat "$OUTPUT_FILE"

echo "----------------------------------------------------------"
echo "Thank you for supporting Open Source Multimedia and VLC."
