# Image to GIF/Video Conversion Tools

A collection of bash scripts to create GIFs from images and combine them with audio.
[Complete example with images and sound track](#complete-example-creating-a-gif-with-sound)

## Tools Included

- [`make_gif.sh`](#make_gifsh) - Create GIFs from PNG images
- [`mix_mp3_and_gif.sh`](#mix_mp3_and_gifsh) - Combine GIF and MP3 into MP4

## Prerequisites

Before using these tools, ensure you have the following installed:

- [ImageMagick](https://imagemagick.org/index.php) - For GIF creation
- [FFmpeg](https://ffmpeg.org/) - For combining audio and GIF


# make_gif.sh

`make_gif.sh` is a simple Bash script to create a GIF from all PNG files in a specified directory using ImageMagick.

## Prerequisites

- [ImageMagick](https://imagemagick.org/index.php) must be installed on your system.

## Usage

```bash
./make_gif.sh <output-name>.gif <frame-duration> <images-folder>
```

#### Parameters Explained
| Parameter | Description | Example |
|-----------|-------------|----------|
| output-name.gif | Name for your GIF file | `ocean.gif` |
| frame-duration | How long each frame shows (in 1/100th seconds) | `50` = 0.5 seconds |
| images-folder | Folder containing your PNG images | `images` |

## Example

To create a GIF named `animation.gif` with each frame lasting 10 ticks (0.1 seconds) from the `images` directory:

```bash
./make_gif.sh animation.gif 10 images
```



# mix_mp3_and_gif.sh

## Description

`mix_mp3_and_gif.sh` is a Bash script that combines an MP3 audio file and a GIF image into an MP4 video file using `ffmpeg`. The output file is named with the current date and time appended to the provided output filename.

## Prerequisites

- [ffmpeg](https://ffmpeg.org/) must be installed on your system.

## Usage

```bash
./mix_mp3_and_gif.sh <audio-file>.mp3 <gif-file>.gif <output-name>.mp4
```

#### Parameters Explained
| Parameter | Description | Example |
|-----------|-------------|----------|
| audio-file.mp3 | Your audio file | `ocean.mp3` |
| gif-file.gif | Your animated GIF | `ocean.gif` |
| output-name.mp4 | Name for final video | `final_video.mp4` |

## Example


To create an MP4 video named `output.mp4` from `audio.mp3` and `animation.gif`:

```bash
./mix_mp3_and_gif.sh audio.mp3 animation.gif output.mp4
```

 
# Complete Example: Creating a GIF with Sound

This example demonstrates how to create a GIF from multiple images and combine it with an audio file to create an MP4 video.

## Step 1: Prepare Your Files

1. Create an `images` folder:
   ```bash
   mkdir images
   ```

2. Add your PNG images to this folder:
   - Name them sequentially (e.g., 1.png, 2.png, 3.png, 4.png)
   - Ensure all images are the same size
   - Use PNG format for best quality


Example Images:
<details>
<summary>Click to see example images</summary>

![Image 1](https://github.com/user-attachments/assets/68cc5886-8b19-4877-bae3-495eec800d7b)
![Image 2](https://github.com/user-attachments/assets/049d32a9-9fa7-44ad-ab67-84e83745a225)
![Image 3](https://github.com/user-attachments/assets/56208352-e416-4528-93f4-8b6189b613fd)
![Image 4](https://github.com/user-attachments/assets/bd9fab47-8b02-4681-b2e7-21553a0dc4ea)
</details>



## Step 2: Create the GIF

Run the following command to create a GIF with each frame lasting 0.5 seconds (50 ticks):

1. Run the GIF creation script:
```bash
./make_gif.sh ocean.gif 50 images
```

2. Check your GIF:
   - It should appear in your current directory
   - Open it to verify the animation

This command creates a GIF file named 'ocean.gif' in your current directory.

<details>
<summary>Click to see example GIF</summary>

![ocean](https://github.com/user-attachments/assets/e6f10abb-8062-43d8-ba83-c0772b70917b)
</details>


## Step 3: Combine Audio and GIF into MP4

1. Ensure you have the audio file `ocean.mp3` ready in your working directory (included in this repository)
To generate this MP3 file, I used the Sound Effect feature of Eleven Labs with the prompt "sea ocean deep"

https://elevenlabs.io/app/sound-effects/generate

<img width="1061" alt="Screenshot 2025-03-08 at 17 51 36" src="https://github.com/user-attachments/assets/33f90baa-a345-4ff3-a44d-97969a471c00" />


2. Run the following command to combine the audio and GIF into an MP4 video:

```bash
./mix_mp3_and_gif.sh ocean.mp3 ocean.gif ocean.mp4
```

https://github.com/user-attachments/assets/0eb18e19-d7e4-4962-8d91-5b6c3bfd91a3
