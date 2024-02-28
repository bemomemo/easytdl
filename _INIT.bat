rmdir /s /q .git

call __internal_update.bat

git\cmd\git.exe init
git\cmd\git.exe remote add origin https://github.com/bemomemo/easytdl
git\cmd\git.exe fetch
git\cmd\git.exe reset --hard origin/master

pause