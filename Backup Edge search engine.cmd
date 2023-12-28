rem "by Felip3FL"
rem "v 23.12.27.1"

For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

taskkill /im msedge.exe -f

set destination="%userprofile%\OneDrive\Documents\Backup\Edge\"
set origin=""%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\Web Data""
set fileNameBE="edge_search_engine_%mydate%_%mytime%.7z"

cd "C:\Program Files\7-Zip\"

.\7z.exe a -t7z %destination%temp.7z "%origin%" -mx=9
 
del %destination%%fileNameBE%
ren %destination%temp.7z %fileNameBE%


