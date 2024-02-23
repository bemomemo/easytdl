echo "Deleting dependencies"

rmdir /s /q yt-dlp
rmdir /s /q ffmpeg
rmdir /s /q git

mkdir git
mkdir ffmpeg
mkdir yt-dlp

echo "Downloading dependencies"

curl -L -o yt-dlp\yt-dlp.exe https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe
curl -L -o git.zip https://github.com/git-for-windows/git/releases/download/v2.44.0-rc2.windows.1/MinGit-2.44.0-rc2-64-bit.zip
curl -L -o ffmpeg.zip https://github.com/GyanD/codexffmpeg/releases/download/2024-02-22-git-76b2bb96b4/ffmpeg-2024-02-22-git-76b2bb96b4-full_build.zip

pause

echo "Extracting dependencies"

tar -xf git.zip -C "git"
tar -xf ffmpeg.zip -C "ffmpeg"

del git.zip
del ffmpeg.zip

echo "Done"
pause