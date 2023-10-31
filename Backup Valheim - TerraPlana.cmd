rem "by Felip3FL"
rem "v 23.06.12.1"

rem For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

set destination="C:\Users\Felipe\OneDrive\Documents\Backup\Games\Valheim\"
set origin="C:\Users\Felipe\AppData\LocalLow\IronGate\Valheim\worlds_local\TerraPlana.db"
set fileName="valheim_terraplana_db_backup_%mydate%_%mytime%.7z"
cls 

cd "C:\Program Files\7-Zip\"
.\7z.exe a -t7z %destination%%fileName% "%origin%*" -mx=9
 
set origin="C:\Users\Felipe\AppData\LocalLow\IronGate\Valheim\worlds_local\TerraPlana.fwl"
set fileName="valheim_terraplana_fwl_backup_%mydate%_%mytime%.7z"
cls 

cd "C:\Program Files\7-Zip\"
.\7z.exe a -t7z %destination%%fileName% "%origin%*" -mx=9
 