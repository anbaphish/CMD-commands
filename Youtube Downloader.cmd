@echo off
echo Input youtube link: 
set /p input= Enter: 
cd /D "D:youtube dl"
echo Do you want this was an mp3 (y or n): 
set /p bool= Enter: 
IF %bool%==y (youtube-dl -x --audio-format mp3 %input%  && exit) ELSE (echo "entering into ytdl selection mode")


youtube-dl -F %input% 

echo input format (Video+Audio): 

set /p format= Enter: 

youtube-dl -f %format% %input%

set /p format= Enter:
