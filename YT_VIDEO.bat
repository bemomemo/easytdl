if not exist "output\" mkdir output

:start
set /p url= input youtube url: 
FOR /F "delims=& tokens=1" %%A IN ("%url%") DO SET "newUrl=%%A"
"yt-dlp\yt-dlp.exe" %newUrl% -F
set /p format= input video + audio format (eg. 137+251): 
"C:\Users\5800x\Desktop\yt-ffmpeg\yt-dlp.exe" %newUrl% -f %format% --ffmpeg-location "ffmpeg\ffmpeg-2024-02-22-git-76b2bb96b4-full_build\bin\ffmpeg.exe" --external-downloader=aria2c --external-downloader-args "--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16" -P output\Video

start "" "output\Video"

goto start