rem "by Felip3FL"
rem "v 22.07.10.1"
rem For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

set destination="%userprofile%\OneDrive\Documents\Backup\Games\Minecraft\"
set origin="C:\Games\MinecraftServer\terra-plana-e-quadrada\"
set fileName="Minecraft_backup_terra_plana_e_quadrada_%mydate%_%mytime%.7z"
cls 

cd "C:\Program Files\7-Zip\"
.\7z.exe a -t7z %destination%%fileName% "%origin%*" -mx=9
 