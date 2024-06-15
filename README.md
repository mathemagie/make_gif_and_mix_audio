# make_gif.sh

`make_gif.sh` is a simple Bash script to create a GIF from all PNG files in the current directory using ImageMagick.

## Prerequisites

- [ImageMagick](https://imagemagick.org/index.php) must be installed on your system.

## Usage

sh ./make_gif.sh output.gif frame_duration


- `output.gif`: The name of the output GIF file.
- `frame_duration`: The duration of each frame in the GIF, specified in ticks (1 tick = 1/100th of a second).

## Example

To create a GIF named `animation.gif` with each frame lasting 10 ticks (0.1 seconds):

