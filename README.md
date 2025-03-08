Complete example with images and sound track at the bottom of the README file

# make_gif.sh

`make_gif.sh` is a simple Bash script to create a GIF from all PNG files in a specified directory using ImageMagick.

## Prerequisites

- [ImageMagick](https://imagemagick.org/index.php) must be installed on your system.

## Usage

```bash
sh ./make_gif.sh output.gif frame_duration input_directory
```

- `output.gif`: The name of the output GIF file.
- `frame_duration`: The duration of each frame in the GIF, specified in ticks (1 tick = 1/100th of a second).
- `input_directory`: The directory containing the PNG files to be used for creating the GIF.

## Example

To create a GIF named `animation.gif` with each frame lasting 10 ticks (0.1 seconds) from the `images` directory:

```bash
sh ./make_gif.sh animation.gif 10 images
```



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


# Complete Example: Creating a GIF with Sound

This example demonstrates how to create a GIF from multiple images and combine it with an audio file to create an MP4 video.

## Step 1: Prepare Your Files

1. Create a directory called `images` and save these 4 images in it:
- 1.png
- 2.png 
- 3.png
- 4.png

![mathemagie _macro_vivid_vibrant_primitive_beginnings_of_new_l_69c0ade5-a3e3-45fb-98d1-edc5c77dc63f_0](https://github.com/user-attachments/assets/68cc5886-8b19-4877-bae3-495eec800d7b)
![mathemagie _macro_vivid_vibrant_primitive_beginnings_of_new_l_69c0ade5-a3e3-45fb-98d1-edc5c77dc63f_1](https://github.com/user-attachments/assets/049d32a9-9fa7-44ad-ab67-84e83745a225)
![mathemagie _macro_vivid_vibrant_primitive_beginnings_of_new_l_69c0ade5-a3e3-45fb-98d1-edc5c77dc63f_2](https://github.com/user-attachments/assets/56208352-e416-4528-93f4-8b6189b613fd)
![mathemagie _macro_vivid_vibrant_primitive_beginnings_of_new_l_69c0ade5-a3e3-45fb-98d1-edc5c77dc63f_3](https://github.com/user-attachments/assets/bd9fab47-8b02-4681-b2e7-21553a0dc4ea)



## Step 2: Create the GIF

Run the following command to create a GIF with each frame lasting 0.5 seconds (50 ticks):

```bash
sh ./make_gif.sh animation.gif 50 images
```


## Step 3: mix 

2. Have your audio file `ocean.mp3` ready in your working directory

