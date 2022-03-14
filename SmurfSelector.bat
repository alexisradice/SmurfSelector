chcp 65001
@echo off

TITLE Select Your Steam Account

taskkill.exe /F /IM steam.exe

cls
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
echo(
echo(
echo(
echo %ESC%[91m			.▄▄ · • ▌ ▄ ·. ▄• ▄▌▄▄▄  ·▄▄▄    .▄▄ · ▄▄▄ .▄▄▌  ▄▄▄ . ▄▄· ▄▄▄▄▄      ▄▄▄  %ESC%[0m
echo %ESC%[91m			▐█ ▀. ·██ ▐███▪█▪██▌▀▄ █·▐▄▄·    ▐█ ▀. ▀▄.▀·██•  ▀▄.▀·▐█ ▌▪•██  ▪     ▀▄ █·%ESC%[0m
echo %ESC%[91m			▄▀▀▀█▄▐█ ▌▐▌▐█·█▌▐█▌▐▀▀▄ ██▪     ▄▀▀▀█▄▐▀▀▪▄██▪  ▐▀▀▪▄██ ▄▄ ▐█.▪ ▄█▀▄ ▐▀▀▄ %ESC%[0m
echo %ESC%[91m			▐█▄▪▐███ ██▌▐█▌▐█▄█▌▐█•█▌██▌.    ▐█▄▪▐█▐█▄▄▌▐█▌▐▌▐█▄▄▌▐███▌ ▐█▌·▐█▌.▐▌▐█•█▌%ESC%[0m
echo %ESC%[91m			 ▀▀▀▀ ▀▀  █▪▀▀▀ ▀▀▀ .▀  ▀▀▀▀      ▀▀▀▀  ▀▀▀ .▀▀▀  ▀▀▀ ·▀▀▀  ▀▀▀  ▀█▄▀▪.▀  ▀%ESC%[0m
echo %ESC%[91m						Select your account%ESC%[0m
echo(
echo %ESC%[33m 1) "SteamAccountName1"%ESC%[0m
echo %ESC%[33m 2) "SteamAccountName2"%ESC%[0m
echo %ESC%[33m 3) "SteamAccountName3"%ESC%[0m
echo %ESC%[33m 4) "SteamAccountName4"%ESC%[0m
echo(

CHOICE /M Select /C 1234

If Errorlevel 8 Goto 8
If Errorlevel 7 Goto 7
If Errorlevel 6 Goto 6
If Errorlevel 5 Goto 5
If Errorlevel 4 Goto 4
If Errorlevel 3 Goto 3
If Errorlevel 2 Goto 2
If Errorlevel 1 Goto 1

:4
set username="SteamUserName4"
Goto end
:3
set username="SteamUserName3"
Goto end
:2
set username="SteamUserName2"
Goto end
:1
set username="SteamUserName1"
Goto end

:end

reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f
reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f
start steam://open/main

exit