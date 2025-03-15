@echo off
title Minecraft Server Backup
echo Minecraft Server Backup Script
echo.

:: Create backups directory if it doesn't exist
if not exist backups mkdir backups

:: Get current date and time for backup filename
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YYYY=%dt:~0,4%"
set "MM=%dt:~4,2%"
set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%"
set "Min=%dt:~10,2%"
set "Sec=%dt:~12,2%"

set "timestamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
set "backup_file=backups\world_backup_%timestamp%.zip"

echo Creating backup of world data...
echo Backup will be saved to: %backup_file%

:: Create the backup using PowerShell (more reliable than built-in zip)
powershell -Command "Compress-Archive -Path 'world', 'world_nether', 'world_the_end' -DestinationPath '%backup_file%' -Force"

echo.
echo Backup complete!
echo.
pause