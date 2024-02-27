ECHO OFF
cls

echo Iniciando LogMeIn Hamachi Tunneling Engine
echo.
net start Hamachi2Svc

echo Abilitando conexao Hamachi
echo.
netsh int set interface Hamachi enabled

echo Chamando interface Hamachi
echo.
"C:\Program Files (x86)\LogMeIn Hamachi\hamachi-2-ui.exe"