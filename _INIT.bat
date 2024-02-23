rmdir /s /q .git

call __internal_update.bat

git\cmd\git.exe init
git\cmd\git.exe remote add origin https://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@github.com/bemomemo/easytdl
git\cmd\git.exe fetch
git\cmd\git.exe reset --hard origin/master