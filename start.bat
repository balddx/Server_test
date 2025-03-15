@echo off
title Minecraft Server 1.20.4
echo Starting Minecraft Server version 1.20.4...
echo.

:: Check if server.jar exists, if not download it
if not exist server.jar (
    echo Downloading Minecraft server 1.20.4...
    powershell -Command "Invoke-WebRequest -Uri 'https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar' -OutFile 'server.jar'"
    echo Download complete!
    echo.
)

:: Set memory allocation (adjust as needed)
set MIN_RAM=1G
set MAX_RAM=4G

:: Start the server
echo Starting server with %MIN_RAM% - %MAX_RAM% RAM allocation
java -Xms%MIN_RAM% -Xmx%MAX_RAM% -jar server.jar nogui

echo.
echo Server stopped. To restart, run this script again.
pause