#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 output.gif frame_duration input_directory"
    exit 1
}

# Check if the correct number of arguments is passed
if [ "$#" -ne 3 ]; then
    usage
fi

OUTPUT=$1
FRAME_DURATION=$2
INPUT_DIR=$3

# Validate frame duration is a positive integer
if ! [[ "$FRAME_DURATION" =~ ^[0-9]+$ ]]; then
    echo "Error: frame_duration must be a positive integer."
    usage
fi

# Validate input directory
if [ ! -d "$INPUT_DIR" ]; then
    echo "Error: $INPUT_DIR not found or is not a directory."
    exit 1
fi

echo "Creating GIF with frame duration: $FRAME_DURATION from directory: $INPUT_DIR"

# Create the GIF from all PNG files in the specified directory
if ! convert -delay "$FRAME_DURATION" -loop 0 "$INPUT_DIR"/*.png "$OUTPUT"; then
    echo "Error: Failed to create GIF."
    exit 1
fi

echo "GIF created at $OUTPUT"
