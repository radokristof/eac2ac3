@echo off
.\eac3to\eac3to.exe %1 2: .\temp\temp.eac3 -0dB || exit 1
ren ".\temp\temp*.eac3" temp.eac3 || exit 1
.\eac3to\eac3to .\temp\temp.eac3 stdout.w64 | .\ffmpeg\bin\ffmpeg -i - -c:a ac3 -b:a 640k -center_mixlev 0.707 .\temp\temp.ac3 || exit 1
.\mkvtoolnix\mkvmerge.exe -o .\temp\muxed.mkv --language 0:eng %1 --default-track 0:true --language 0:eng .\temp\temp.ac3 || exit 1
xcopy /y .\temp\muxed.mkv %1 || exit 1
del ".\temp\temp - Log.txt"
del ".\temp\audio - Log.txt"
del ".\temp\temp.ac3"
del ".\temp\temp.eac3"
del ".\temp\muxed.mkv"