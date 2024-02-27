ECHO OFF
cls

echo Parando LogMeIn Hamachi Tunneling Engine
echo.
net stop Hamachi2Svc

echo Desabilitando conexao Hamachi
echo.
netsh int set interface Hamachi disabled