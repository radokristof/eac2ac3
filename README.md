# eac2ac3
A simple tool using ffmpeg and eac3to to convert audio from E-AC to AC3 on Windows (Batch tool).  
Most new TV series and movies uses E-AC sound, which is not supported by many (not too old) amplifiers and AV receivers.  
This tool converts the E-AC sound to AC3 in order to solve this problem and be able to enjoy digital (surround) sound.  
  
I know that for example the eac3to can convert from E-AC to AC3, but I found that on many amplifier it has a choppy/claking sound.  
Also using just ffmpeg to extract the sound from the mkv and convert it, had some issues, that's why I'm using both tools.  

The process:
- eac3to will scan the given media if it has E-AC sound, and it will extract it
- ffmpeg will convert the extracted sound to AC3
- mkvtoolnix will merge this new sound into the original file (and make this channel default). It will not delete the original E-AC sound, so if you move to a new system which supports E-AC sound, you can still use this file and get the benefits of the new E-AC format.

Normally, the given file become bigger, because a new sound channel will be added to the file.

## How to install
You will need to download:
- [ffmpeg](https://www.ffmpeg.org/download.html) 
- [eac3to](https://www.videohelp.com/software/eac3to)
- [mkvtoolnix](https://mkvtoolnix.download/)

Installing:
- Create a folder for this tool somewhere on your hard drive.
- Clone this repo and place the files into that created folder (or download the latest release on the Releases page as .zip and place the files in the zip to your folder).
- Create a folder in that folder called "ffmpeg" and unzip the downloaded ffmpeg into that folder.
- Create another folder in your folder called "eac3to" and place eac3to in that folder.
- Create a third folder "mkvtoolnix" and place mkvtoolnix in that folder.

## How to use this tool
Just open a Command Prompt in your folder where "eac2ac3.bat" can be found and add your mkv file as a parameter.

For example:

```
eac2ac3.bat "d:\download\YourMovie.mkv"
```
*Warning! This tool will copy your mkv file into that folder where "eac2ac3.bat" can be found. So it maybe a good option to place this tool on that drive where your movie files are. I'm working on a better solution for this!*

For converting more files (eg.: a TV series) just simply create a batch file where you call the "eac2ac3.bat" just as many time as you want.  
I'm still working on a better solution for this, for example automatically scan the given folder and convert all .mkv files in that folder...

- First, create a batch file in the folder where "eac2ac3.bat" can be found.
- In that file copy your files path like this:

```
@echo off
call eac2ac3 "f:\Sorozatok\HD\The Grand Tour (2016)\The.Grand.Tour.S02.720p\The.Grand.Tour.S02E01.720p.WEB.H264-STRiFE\the.grand.tour.s02e01.720p.web.h264-strife.mkv"
call eac2ac3 "f:\Sorozatok\HD\The Grand Tour (2016)\The.Grand.Tour.S02.720p\The.Grand.Tour.S02E02.720p.WEB.h264-SKGTV\the.grand.tour.s02e02.720p.web.h264-skgtv.mkv"
call eac2ac3 "f:\Sorozatok\HD\The Grand Tour (2016)\The.Grand.Tour.S02.720p\The.Grand.Tour.S02E03.720p.WEB.h264-SKGTV\the.grand.tour.s02e03.720p.web.h264-skgtv.mkv"
```

- Save this file as .bat and you can run it. It will convert all .mkv files which you copied into your new batch file.

### Delete track
This is just a simple help tool to delete the created ac3 sound from a file.  
Works as the "eac2ac3.bat" just give the file as parameter, in which you want to delete the created ac3 file.  

### Known issues
For me, it sometimes cuts the end of the file... Still don't know why, if anyone finds out, please make an issue regarding the cause of the problem.

### Disclaimer
Still in "beta".  
Issues and pull requests are welcome!  
