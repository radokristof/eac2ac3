@echo off
c:\tools\mkvtoolnix\mkvmerge.exe -o c:\temp\temp.mkv --atracks 1 %1 || exit 1
xcopy /y c:\temp\temp.mkv %1 || exit
del "c:\temp\temp.mkv