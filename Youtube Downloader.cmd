@echo off
cd /D "D:youtube dl"
:download
echo Input youtube link: 
set /p input= Enter: 
echo Do you want this was an mp3 (y or n): 
set /p bool= Enter: 
IF %bool%==y (youtube-dl -x --audio-format mp3 %input%  && GOTO redo) ELSE (echo "entering into ytdl selection mode")


youtube-dl -F %input% 

echo input format (Video+Audio): 

set /p format= Enter: 

youtube-dl -f %format% %input%
GOTO redo

:redo
set /p t= Do you want to download another(y or n) :
IF %t%==y GOTO download
IF %t%==n GOTO end

:end
EXIT
