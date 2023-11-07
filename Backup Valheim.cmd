rem "by Felip3FL"
rem "v 22.07.10.1"
rem For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)

rem For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

set destination="%userprofile%\OneDrive\Documents\Backup\Games\Valheim\"
set origin="%userprofile%\AppData\LocalLow\IronGate\Valheim\worlds_local\TerraPlana.db"
set fileName="valheim_terraplana_backup_%mydate%_%mytime%_db.7z"
cls 

cd "C:\Program Files\7-Zip\"
.\7z.exe a -t7z %destination%%fileName% "%origin%*" -mx=9
 
set origin="%userprofile%\AppData\LocalLow\IronGate\Valheim\worlds_local\TerraPlana.fwl"
set fileName="valheim_terraplana_backup_%mydate%_%mytime%_fwl.7z"
cls 

cd "C:\Program Files\7-Zip\"
.\7z.exe a -t7z %destination%%fileName% "%origin%*" -mx=9
 
 

@REM rem "by Felip3FL"
@REM rem "v 23.06.12.1"

@REM rem For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
@REM For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
@REM set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

@REM set destination="\OneDrive\Documents\Backup\Games\Valheim\"
@REM set origin="\AppData\LocalLow\IronGate\Valheim\worlds_local\TerraPlana.db"
@REM set fileName="valheim_terraplana_db_backup_%mydate%_%mytime%.7z"
@REM cls 

@REM cd "C:\Program Files\7-Zip\"
@REM .\7z.exe a -t7z %destination%%fileName% "%origin%*" -mx=9
 
@REM set origin="\AppData\LocalLow\IronGate\Valheim\worlds_local\TerraPlana.fwl"
@REM set fileName="valheim_terraplana_fwl_backup_%mydate%_%mytime%.7z"
@REM cls 

@REM cd "C:\Program Files\7-Zip\"
@REM .\7z.exe a -t7z %destination%%fileName% "%origin%*" -mx=9
 