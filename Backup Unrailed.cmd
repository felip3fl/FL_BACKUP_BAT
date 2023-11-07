rem "by Felip3FL"
rem "v 23.07.18.1"

For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%
cd "C:\Program Files\7-Zip\"

set destination="%userprofile%\OneDrive\Documents\Backup\Games\Unrailed\"

rem "Backup save-game"
set origin=""%userprofile%\AppData\Local\Daedalic Entertainment GmbH\Unrailed\GameState\AllPlayers\""
set fileName="unrailed_save_game_backup.7z"

.\7z.exe a -t7z %destination%temp.7z "%origin%*" -mx=9
del %destination%%fileName%
ren %destination%temp.7z %fileName%

