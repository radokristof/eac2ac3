@echo off
c:\tools\eac3to\eac3to.exe %1 2: c:\temp\temp.eac3 -0dB || exit 1
ren "c:\temp\temp*.eac3" temp.eac3 || exit 1
c:\tools\eac3to\eac3to c:\temp\temp.eac3 stdout.w64 | c:\tools\ffmpeg\bin\ffmpeg -i - -c:a ac3 -b:a 640k -center_mixlev 0.707 c:\temp\temp.ac3 || exit 1
c:\tools\mkvtoolnix\mkvmerge.exe -o c:\temp\muxed.mkv --language 0:eng %1 --default-track 0:true --language 0:eng c:\temp\temp.ac3 || exit 1
xcopy /y c:\temp\muxed.mkv %1 || exit 1
del "c:\temp\temp - Log.txt"
del "c:\temp\audio - Log.txt"
del "c:\temp\temp.ac3"
del "c:\temp\temp.eac3"
del "c:\temp\muxed.mkv"