@echo off
rem del video.mkv
set VLC="C:\Program Files\VideoLAN\VLC\vlc.exe"
set MPC="C:\Program Files (x86)\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe"
set /p yturl=Please insert full Youtube video link (right-click): 
yt-dlp -f bestvideo+bestaudio/best %yturl:&=^&% -o "video"

rem for using socks proxy edit & use this run line:
rem yt-dlp --proxy socks5://user:pass@127.0.0.1:1080/ -f bestvideo+bestaudio/best %yturl:&=^&% -o "video"

move video.mp4 video.mkv
cls
echo Downloaded file video.mkv from youtube, press any key and check dir
rem %VLC% --meta-title=yt-dlp video.mkv
rem %MPC% video.mkv
rem del video.mkv
pause
cd /d %~dp0
start .
