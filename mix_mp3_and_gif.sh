#!/bin/bash

ffmpeg -i file.mp3 -ignore_loop 0 -i file.gif -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest out.mp4
