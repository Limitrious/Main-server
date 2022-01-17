@ECHO off
start silent_playit.vbs
java -Xmx4098M -Xms4098M -jar server.jar nogui
Taskkill /im playit-win_64-0.4.6.exe
PAUSE