rem "by Felip3FL"
rem "v 23.12.29.1"

For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

set destination="%userprofile%\OneDrive\Documents\Backup\MPC\"
set originBE="%userprofile%\AppData\Roaming\MPC-BE\mpc-be64.ini"
@REM set originHC="%userprofile%\AppData\Roaming\MPC-BE\mpc-be64.ini"
set fileNameBE="mpc_be_backup.7z"
@REM set fileNameHC="mpc_hc_backup.7z"
cls 

cd "C:\Program Files\7-Zip\"

.\7z.exe a -t7z %destination%temp.7z "%originBE%*" -mx=9
 
del %destination%%fileNameBE%
ren %destination%temp.7z %fileNameBE%

@REM .\7z.exe a -t7z %destination%temp.7z "%originHC%*" -mx=9
@REM del %destination%%fileNameHC%
@REM ren %destination%temp.7z %fileNameHC%
