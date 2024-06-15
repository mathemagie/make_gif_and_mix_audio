#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 output.gif frame_duration"
    exit 1
}

# Check if the correct number of arguments is passed
if [ "$#" -ne 2 ]; then
    usage
fi

OUTPUT=$1
FRAME_DURATION=$2

# Validate frame duration is a positive integer
if ! [[ "$FRAME_DURATION" =~ ^[0-9]+$ ]]; then
    echo "Error: frame_duration must be a positive integer."
    usage
fi

echo "Creating GIF with frame duration: $FRAME_DURATION"

# Create the GIF from all PNG files in the current directory
if ! convert -delay "$FRAME_DURATION" -loop 0 *.png "$OUTPUT"; then
    echo "Error: Failed to create GIF."
    exit 1
fi

echo "GIF created at $OUTPUT"
