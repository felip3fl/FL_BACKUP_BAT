rem "by Felip3FL"
rem "v 22.07.10.1"

For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%
cd "C:\Program Files\7-Zip\"

set destination="C:\Users\Felipe\OneDrive\Documents\Backup\Games\Yuzu\"

rem "Backup save-game"
set origin="C:\Emulator\Yuzu\user\nand\user\save\0000000000000000\158E2E85002CE73DD8535DEC35E080EA\"
set fileName="yuzu_save_game_backup.7z"

.\7z.exe a -t7z %destination%temp.7z "%origin%*" -mx=9
del %destination%%fileName%
ren %destination%temp.7z %fileName%

rem "Backup config"
set origin="C:\Emulator\Yuzu\user\config\"
set fileName="yuzu_config_backup.7z"
 
.\7z.exe a -t7z %destination%temp.7z "%origin%*" -mx=9
del %destination%%fileName%
ren %destination%temp.7z %fileName%