# make_gif.sh

`make_gif.sh` is a simple Bash script to create a GIF from all PNG files in a specified directory using ImageMagick.

## Prerequisites

- [ImageMagick](https://imagemagick.org/index.php) must be installed on your system.

## Usage

sh ./make_gif.sh output.gif frame_duration input_directory

- `output.gif`: The name of the output GIF file.
- `frame_duration`: The duration of each frame in the GIF, specified in ticks (1 tick = 1/100th of a second).
- `input_directory`: The directory containing the PNG files to be used for creating the GIF.

## Example

To create a GIF named `animation.gif` with each frame lasting 10 ticks (0.1 seconds) from the `images` directory:

sh ./make_gif.sh animation.gif 10 images


# mix_mp3_and_gif.sh

## Description

`mix_mp3_and_gif.sh` is a Bash script that combines an MP3 audio file and a GIF image into an MP4 video file using `ffmpeg`. The output file is named with the current date and time appended to the provided output filename.

## Prerequisites

- [ffmpeg](https://ffmpeg.org/) must be installed on your system.

## Usage

sh ./mix_mp3_and_gif.sh input.mp3 input.gif output.mp4

- `input.mp3`: The MP3 audio file to be combined with the GIF.
- `input.gif`: The GIF image file to be combined with the MP3.
- `output.mp4`: The name of the output MP4 video file.

## Example

To create an MP4 video named `output.mp4` from `audio.mp3` and `animation.gif`:

sh ./mix_mp3_and_gif.sh audio.mp3 animation.gif output.mp4
