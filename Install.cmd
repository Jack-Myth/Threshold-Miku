@echo off
REM Check if user place it in right place(inside Steam\skins).
if not exist "..\..\Steam.exe" (
if not exist "..\skins" (
	echo Threshold Miku Skin is in the wrong folder.
	echo You need to place it into Steam\skins.
))
REM Copy SteamUI's file to the original place.
xcopy /e /y ".\steamui" "..\..\steamui"
for %%i in ("%cd%") do set SkinName=%%~nxi
REM SteamV4 seems to be deprecated, but just add it.
reg add HKCU\Software\Valve\Steam /v SkinV4 /t REG_SZ /d "%SkinName%" /f
reg add HKCU\Software\Valve\Steam /v SkinV5 /t REG_SZ /d "%SkinName%" /f
FOR /F %%i IN ("..\..\Steam.exe") DO set Program=%%~fi
FOR /F %%i IN ("..\..\") DO set WorkDir=%%~fi
set LnkName=Steam
if not defined WorkDir call:GetWorkDir "%Program%"
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
echo Check https://github.com/Jack-Myth/Threshold-Miku to get the lastest version
pause