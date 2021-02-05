@echo off
rem del video.mkv
set VLC="C:\Program Files\VideoLAN\VLC\vlc.exe"
set MPC="C:\Program Files (x86)\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe"
set /p yturl=Please insert full Youtube video link (right-click): 
youtube-dl -f bestvideo+bestaudio/best %yturl:&=^&% -o "video"
move video.mp4 video.mkv
cls
echo Downloaded file video.mkv from youtube, press any key and check dir
rem %VLC% --meta-title=youtube-dl video.mkv
rem %MPC% video.mkv
rem del video.mkv
pause
cd /d %~dp0
start .
