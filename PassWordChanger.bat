@echo off
color D
chcp 65001 >nul
title Password Changer
rem set /p pass="Enter password: "
rem if "%pass%" NEQ "koltonwaa" exit 



:menu
echo *****************
echo       Menu
echo *****************
echo.
echo.
echo 1) List Users on Computer
echo 2) Create a New User
echo 3) Change a User's Password
echo 4) Exit
echo.
set /p input="\ "

if %input% EQU 1 (
	cls
	net user 
	pause
	cls
	goto :menu 
)
if %input% EQU 2 (
	set /p username="username: "
	set /p password="password: "
	net user %user% %password% /add
	echo New user created with credentials:
	echo %user% : %password%
	pause
	cls
	goto menu
)

if %input% EQU 3 (
	cls
	set /p username="TARGET USER: "
	set /p username="NEW PASSWORD: "
	net user %user% %password%
	pause
	cls
	goto :menu
)

if %input% EQU 4 exit