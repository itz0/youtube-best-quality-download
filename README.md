# youtube-best-quality-download

### This solution was made to quickly and easily allow you to download any video from Youtube to your computer with or without socks 5 proxy, it only consists of a command line script BAT file run from under Windows, this script is used in its work by the package Youtube-dl https://ytdl-org.github.io/youtube-dl/ perfect for this

## Installation:
1. Download and install Youtube-dl.exe with this link https://github.com/ytdl-org/youtube-dl/releases  latest version file on this moment is youtube-dl 2021.02.04.1

2. Download and install Videolan player with this link https://www.videolan.org/ 

3. Download and install K-Lite Codec Pack Mega with Media Player Classic (MPC-HC) with this link https://codecguide.com/download_k-lite_codec_pack_mega.htm

4. Download BAT script file from this project
6. Edit BAT file according to your task - change your system path's, use or not socks 5 proxy and etc.

   >set VLC="C:\Program Files\VideoLAN\VLC\vlc.exe"
   
   >set MPC="C:\Program Files (x86)\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe"
   
   if you need to download a video in the required format, edit string after option -f, for example download 1080p video only, like that
    
   >youtube-dl -f bestvideo[height=1080]+bestaudio/best %yturl:&=^&% -o "video"
   
   for more video formats check youtube-dl official documentation.

   if you need to use socks 5 proxy server add to youtube-dl command this option: --proxy socks5://127.0.0.1:1080, like that
   
   >youtube-dl --proxy socks5://127.0.0.1:1080 -f bestvideo+bestaudio/best %yturl:&=^&% -o "video"
   
   if you need play video after download uncomment line (remove REM from begin on line), like that
   
   >%VLC% --meta-title=youtube-dl video.mkv

   if you need change player from VLC to MPC, use REM begin of line for comment line, and remove rem before %MPC%, like that
   
   >rem %VLC% --meta-title=youtube-dl video.mkv
   
   >%MPC% video.mkv
   
   if you need remove video before/after download/play, uncomment line (remove REM from begin on line), like that
   
   >del video.mkv
  
   check second line of BAT file, after @echo off, uncomment line (remove REM from begin on line), to delete unnecessary video before downloading a new one..

**Please note that unless you rename or delete the downloaded video.mkv file, the script will not be able to download the new video, so after downloading the video.mkv file you need to rename or delete the file before starting the script again..**


## How to use:

Go to Youtube find the video you want and copy its full link, for example 

https://www.youtube.com/watch?v=9bZkp7q19f0 

Run with double click by mouse Youtube.bat file, then right-click by mouse and paste your copied youtube video full link to window and push enter key, after wait until the video is loaded on your local pc, depending on what you need, after downloading the file, you can immediately launch the player to watch the video and delete the file immediately after viewing.

## be happy =)
