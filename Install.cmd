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
xcopy /e /y /i "..\%CurDirName%" "%SteamPath%\skins\%CurDirName%"
reg add HKCU\Software\Valve\Steam /v SkinV5 /t REG_SZ /d %CurDirName% /f
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateSteamLauncherShortcut.vbs
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\Desktop\Steam.lnk" >> CreateSteamLauncherShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateSteamLauncherShortcut.vbs
echo oLink.TargetPath = "%SteamPath%\skins\%CurDirName%\SteamLauncher.exe" >> CreateSteamLauncherShortcut.vbs
echo oLink.IconLocation = "%SteamPath%\steam.exe, 1" >> CreateSteamLauncherShortcut.vbs
echo oLink.Save >> CreateSteamLauncherShortcut.vbs
cscript CreateSteamLauncherShortcut.vbs
del CreateSteamLauncherShortcut.vbs
cls
echo Shortcut Created. Please use the shortcut on desktop to open Steam.
echo Enjoy your new steam! :^)
cd /d "%SteamPath%\skins\%CurDirName%"
start explorer.exe .
pause