@echo off
echo Starting AutoHotkey v2 script...
if exist "C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe" (
    echo Found AutoHotkey v2 (64-bit)
    start "" "C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe" "%~dp0Macro\sodium_main.ahk"
    exit /b 0
)
if exist "C:\Program Files\AutoHotkey\v2\AutoHotkey.exe" (
    echo Found AutoHotkey v2
    start "" "C:\Program Files\AutoHotkey\v2\AutoHotkey.exe" "%~dp0Macro\sodium_main.ahk"
    exit /b 0
)
if exist "C:\Program Files (x86)\AutoHotkey\v2\AutoHotkey32.exe" (
    echo Found AutoHotkey v2 (32-bit)
    start "" "C:\Program Files (x86)\AutoHotkey\v2\AutoHotkey32.exe" "%~dp0Macro\sodium_main.ahk"
    exit /b 0
)
:: Try using file association (if v2 is set as default)
echo Trying file association method...
if exist "%~dp0Macro\sodium_main.ahk" (
    start "" "%~dp0Macro\sodium_main.ahk"
) else (
    echo Error: sodium_main.ahk not found!
    echo Expected location: %~dp0Macro\sodium_main.ahk
)
:: If still not found, show error
echo.
echo AutoHotkey v2 not found in common locations.
echo Please install AutoHotkey v2 from: https://www.autohotkey.com/v2/
echo Or adjust the path in this batch file to match your installation.
pause
