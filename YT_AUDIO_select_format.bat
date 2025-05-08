if not exist "output\" mkdir output

:start
set /p url= input youtube url: 
FOR /F "delims=& tokens=1" %%A IN ("%url%") DO SET "newUrl=%%A"
"yt-dlp\yt-dlp.exe" %newUrl% -F
set /p format= input audio format (eg. 251): 
"yt-dlp\yt-dlp.exe" %newUrl% -f %format% --extract-audio --audio-format mp3 --audio-quality 0 --ffmpeg-location "ffmpeg\ffmpeg-2024-02-22-git-76b2bb96b4-full_build\bin\ffmpeg.exe" --external-downloader=aria2c --external-downloader-args "--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16" -P output\Audio

start "" "output\Audio"

goto start