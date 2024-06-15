#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 input.mp3 input.gif output.mp4"
    exit 1
}

# Check if the correct number of arguments is passed
if [ "$#" -ne 3 ]; then
    usage
fi

INPUT_MP3=$1
INPUT_GIF=$2
OUTPUT_MP4=$3

# Validate input files
if [ ! -f "$INPUT_MP3" ]; then
    echo "Error: $INPUT_MP3 not found."
    exit 1
fi

if [ ! -f "$INPUT_GIF" ]; then
    echo "Error: $INPUT_GIF not found."
    exit 1
fi

# Get the current date and time in YYYY-MM-DD_HH-MM format
current_date_time=$(date +%F_%H-%M)

# Run ffmpeg command
ffmpeg -i "$INPUT_MP3" -ignore_loop 0 -i "$INPUT_GIF" -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest "${OUTPUT_MP4%.*}_$current_date_time.mp4"
