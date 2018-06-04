# eac2ac3
A simple tool using ffmpeg and eac3to to convert audio from E-AC to AC3 on Windows (Batch tool)
Most new series and movies uses E-AC sound, which is not supported by many (not too old) amplifiers and AV receivers.
This tool converts the E-AC sound to AC3 in order to solve this problem and be able to enjoy digital (surround) sound.

I know that for example the ac3to can convert from E-AC to AC3, but I found that on many amplifier it has a choppy/claking sound.
Also using just ffmpeg to extract the sound from the mkv and convert it, had some issues, that's why I'm using both tools.

The process:
- eac3to will scan the given media if it has E-AC sound, and it will extract it
- ffmpeg will convert the extracted sound to AC3
- mkvtoolnix will merge this new sound into the original file (and make this channel default). It will not delete the original E-AC sound, so if you move to a new system which supports E-AC sound, you can still use this file and get the benefits of the new E-AC format.

Normally, the given file become bigger, because a new sound channel will be added to the file.

## How to install
You will need to download:
- ffmpeg: 
- eac3to: 
- mkvtoolnix: 

Installing:
- Create a folder for this tool somewhere on your hard drive.
- Clone this repo and place the files into that created folder (or download this repo as zip and place eac2ac3.bat and deletetrack.bat into your folder).
- Create a folder in that folder called "ffmpeg" and unzip the downloaded ffmpeg into that folder.

## How to use this tool

### Delete track

### Disclaimer
Still in "beta", issues and pull requests are welcome!
