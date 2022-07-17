# youtube-best-quality-download

### This solution was made to quickly and easily allow you to download any video from Youtube to your computer with Windows OS (or/without socks5 proxy), it only consists of a command line script BAT file run from under Windows OS, this script is used in its work by the package Yt-dlp is a very good youtube-dl fork) https://github.com/yt-dlp/yt-dlp perfect for this, so

## Installation:
1. Download and unpack latest **FFMpeg** https://github.com/yt-dlp/FFmpeg-Builds/releases/tag/latest for x64 use archive **ffmpeg-master-latest-win64-gpl.zip** or **ffmpeg-master-latest-win32-gpl.zip** for win32

2. Download and move to unpacked FFMpeg\Bin directory file **yt-dlp.exe** for x64 or file **yt-dlp_x86.exe** for win32, with this link https://github.com/yt-dlp/yt-dlp/releases latest version file on this moment is yt-dlp 2022.06.29

3. Download from this repository **youtube.bat** file and move it also to FFMpeg\Bin directory 

4. If needed players download and install **Videolan** player with this link https://www.videolan.org/ or download and install K-Lite Codec Pack Mega with **Media Player Classic (MPC-HC)** with this link https://codecguide.com/download_k-lite_codec_pack_mega.htm

5. Edit **youtube.bat** file according to your task - change your system path's, use or not socks5 proxy and etc.

   >set VLC="C:\Program Files\VideoLAN\VLC\vlc.exe"
   
   >set MPC="C:\Program Files (x86)\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe

   if you need to use socks5 proxy server add to youtube-dl command this option: --proxy socks5://user:pass@127.0.0.1:1080/, like that
   
   >yt-dlp --proxy socks5://user:pass@127.0.0.1:1080/ -f bestvideo+bestaudio/best %yturl:&=^&% -o "video"
   
   if you need play video after download uncomment line (remove REM from begin on line), like that
   
   >%VLC% --meta-title=youtube-dl video.mkv

   if you need change player from VLC to MPC, use REM begin of line for comment line, and remove rem before %MPC%, like that
   
   >rem %VLC% --meta-title=youtube-dl video.mkv
   
   >%MPC% video.mkv
   
   if you need remove video before/after download/play, uncomment line (remove REM from begin on line), like that
   
   >del video.mkv
  
   check second line of BAT file, after @echo off, uncomment line (remove REM from begin on line), to delete unnecessary video before downloading a new one..

**Please note that unless you rename or delete the downloaded video.mkv file, the script will not be able to download the new video, so after downloading the video.mkv file you need to rename or delete the file before starting the script again..**
**Settings in youtube.bat file based only for download maximal best quality of video/audio streams from youtube website**


## How to use:

Go to Youtube find the video you want and copy its full link, for example: 

https://www.youtube.com/watch?v=9bZkp7q19f0 

Run with double click by mouse **Youtube.bat** file from FFMpeg\Bin directory (also you may create link to youtube.bat file for Desktop), then right-click by mouse and paste your copied youtube video full link to window and push enter key, after wait until the video is loaded on your local pc, depending on what you need, your internet speed after downloading the file, you can immediately launch the player to watch the video and delete the file immediately after viewing.

## be happy =)
