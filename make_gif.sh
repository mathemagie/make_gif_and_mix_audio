#!/bin/bash

# Check if the correct number of arguments is passed
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 output.gif frame_duration image1 image2 ..."
    exit 1
fi

OUTPUT=$1
shift
FRAME_DURATION=$1
shift

# Create the GIF
convert -delay $FRAME_DURATION -loop 0 "$@" $OUTPUT

echo "GIF created at $OUTPUT"
