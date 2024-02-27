rem "by Felip3FL"
rem "v 22.07.10.1"

For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

set destination=""%userprofile%\OneDrive\Documents\Backup\Games\Project64\""
set origin="C:\Emulator\Project64\Save\"
set fileName="project64_SaveGame_backup.7z"
cls 

cd "C:\Program Files\7-Zip\"

.\7z.exe a -t7z %destination%temp.7z "%origin%*" -mx=9
 
del %destination%%fileName%
ren %destination%temp.7z %fileName%

