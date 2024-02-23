rmdir /s /q .git

call __internal_update.bat

git\cmd\git.exe init
git\cmd\git.exe remote add origin https://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@github.com/bemomemo/easytdl
git\cmd\git.exe fetch
git\cmd\git.exe reset --hard origin/master