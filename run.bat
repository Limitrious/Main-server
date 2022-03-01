@ECHO off
CLS
ECHO 1.Start server with normal playit.gg
ECHO 2.Start server with silent playit.gg
ECHO.

:Begin
set /p op=Type option: 
if "%op%"=="1" (
cls
start playit.exe
java -Xmx4098M -Xms4098M -jar server.jar nogui
echo ----------------------------------------------------------------------------------
echo Successfully stopped the server
taskkill /f /im playit.exe
PAUSE
exit
)

if "%op%"=="2" (
cls
start silent_playit.vbs
java -Xmx4098M -Xms4098M -jar server.jar nogui
echo ----------------------------------------------------------------------------------
echo Successfully stopped the server
taskkill /f /im playit.exe
PAUSE
exit
)

else (
cls
echo Invalid option...
echo Please choose 1 or 2.
echo Press ENTER to select again.
pause >nul
goto Begin
)