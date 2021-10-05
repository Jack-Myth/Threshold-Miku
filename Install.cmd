FOR /F "tokens=2* skip=2" %%a in ('reg query "HKCU\Software\Valve\Steam" /v "SteamPath"') do set SteamPath=%%b
REM If return value is not an exist path(Err Msg)
if not exist "%SteamPath%" (
    echo " >No steam detected. Please run steam at least once."
    pause
    exit
)
for %%I in (.) do set CurDirName=%%~nxI
if exist "%SteamPath%\skins\%CurDirName%" (
    set /p Override=!^> Skin already existed, Override?[y/N]
    if %Override%==y (
    if %Override%==Y (
        del /f "%SteamPath%\skins\%CurDirName%"
        copy "..\%CurDirName%" "%SteamPath%\skins\%CurDirName%"
        reg add HKCU\Software\Valve\Steam /v SkinV5 /t REG_SZ /d %CurDirName% /f
        echo " > Enjoy your new steam! :^)"
    ))
)