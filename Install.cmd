@echo off
FOR /F "tokens=2* skip=2" %%a in ('reg query "HKCU\Software\Valve\Steam" /v "SteamPath"') do set SteamPath=%%b
REM If return value is not an exist path(Err Msg)
if not exist "%SteamPath%" (
    echo No steam detected. Please run steam at least once.
    pause
    exit
)
for %%I in (.) do set CurDirName=%%~nxI
if exist "%SteamPath%\skins\%CurDirName%" (
    goto Override
) else (
    goto Apply
)
exit

:Override
set /P Override=Skin already existed, Override?[y/N]
if "%Override%"=="y" goto Apply 
if "%Override%"=="Y" goto Apply
exit

:Apply
del /f /q "%SteamPath%\skins\%CurDirName%"
mkdir "%SteamPath%\skins"
xcopy /e /y "..\%CurDirName%\" "%SteamPath%\skins\%CurDirName%\"
reg add HKCU\Software\Valve\Steam /v SkinV5 /t REG_SZ /d %CurDirName% /f
echo Enjoy your new steam! :^)
cd /d "%SteamPath%\skins\%CurDirName%"
start explorer.exe .