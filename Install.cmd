@echo off
REM Check if user place it in right place(inside Steam\skins).
if not exist "..\..\Steam.exe" (goto WrongDirErr)
REM command for have some issue while inside the else branch
REM so make it standalone
for %%d in ("%~dp0..") do set ParentDirectory=%%~nxd
if not "%ParentDirectory%"=="skins" (goto WrongDirErr)
REM Copy SteamUI's file to the original place.
xcopy /e /y ".\steamui" "..\..\steamui"
for %%i in ("%cd%") do set SkinName=%%~nxi
REM SteamV4 seems to be deprecated, but just add it.
reg add HKCU\Software\Valve\Steam /v SkinV4 /t REG_SZ /d "%SkinName%" /f
reg add HKCU\Software\Valve\Steam /v SkinV5 /t REG_SZ /d "%SkinName%" /f
FOR /F %%i IN ("..\..\Steam.exe") DO set Program=%%~fi
FOR /F %%i IN ("..\..\") DO set WorkDir=%%~fi
set LnkName=Steam
(echo Set WshShell=CreateObject("WScript.Shell"^)
echo strDesKtop=WshShell.SpecialFolders("DesKtop"^)
echo Set oShellLink=WshShell.CreateShortcut(strDesKtop^&"\%LnkName%.lnk"^)
echo oShellLink.TargetPath="%Program%"
echo oShellLink.Arguments="-noverifyfiles"
echo oShellLink.WorkingDirectory="%WorkDir%"
echo oShellLink.Save)>makelnk.vbs
makelnk.vbs
del /f /q makelnk.vbs
cls
echo All works done.
echo You need to restart Steam before the skin takes effect.
echo Next open Steam,Pleace use the shortcut on the DesKtop, or the skin will be restored.
echo Check https://github.com/Jack-Myth/Threshold-Miku for update.
pause
explorer https://github.com/Jack-Myth/Threshold-Miku
exit

:WrongDirErr
REM Try find Steam Path
FOR /F "tokens=2* skip=2" %%a in ('reg query "HKCU\Software\Valve\Steam" /v "SteamPath"') do set SteamPath=%%b
REM If return value is not an exist path(Err Msg)
if not exist "%SteamPath%" (set SteamPath=Steam)
set SteamPath=%SteamPath:/=\%
echo Threshold Miku Skin is in the wrong folder.
echo You need to place it into %SteamPath%\skins.
pause
exit