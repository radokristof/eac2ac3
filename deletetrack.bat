@echo off
.\mkvtoolnix\mkvmerge.exe -o .\temp\temp.mkv --atracks 1 %1 || exit 1
xcopy /y .\temp\temp.mkv %1 || exit
del ".\temp\temp.mkv