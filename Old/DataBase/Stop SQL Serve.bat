ECHO OFF
cls

echo.
net stop MSSQLSERVER

echo.
net stop SQLSERVERAGENT

REM MSSQL$SQLEXPRESS quando há instancias do SQL
