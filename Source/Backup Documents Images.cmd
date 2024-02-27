rem "by Felip3FL"
rem "v 23.12.29.1"

For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydate=%date:~6,4%%date:~3,2%%date:~0,2%

set destination="%userprofile%\Desktop\"
set origin="%userprofile%\OneDrive\Documents\"
set fileName="Documents_%mydate%_%mytime%.7z"
cls 

cd "C:\Program Files\7-Zip\"

.\7z.exe a -t7z %destination%temp.7z "%origin%*" -mx=9
 
del %destination%%fileName%
ren %destination%temp.7z %fileName%



set origin="%userprofile%\OneDrive\Pictures\"
set fileName="Images_%mydate%_%mytime%.7z"
cls

.\7z.exe a -t7z %destination%temp.7z "%origin%*" -mx=9
 
del %destination%%fileName%
ren %destination%temp.7z %fileName%

set origin="%userprofile%\AppData\Local\Microsoft\OneNote\"
set fileName="Onenote_%mydate%_%mytime%.7z"
cls

.\7z.exe a -t7z %destination%temp.7z "%origin%*" -mx=9
 
del %destination%%fileName%
ren %destination%temp.7z %fileName%