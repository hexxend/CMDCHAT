@echo off
REM CMD CHAT 
REM (dededated WREM) By Hexxend  
REM 10/15/2016
REM edited By XANA3790


echo What Shared File will you be writing to (Full UNC path preferred)
set /p a=": "
echo %USERNAME% has busted into the room >> %a%
echo %a% > where.txt
timeout 1 >nul
call start %CD%\CMDChatRoom.bat
:main
title CMDCHAT
mode con: cols=80 lines=10
color 0b
cls
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set /p msg="$ "
if "%msg%" == "//exit" goto leave
if "%msg%" == "//im" goto im
echo %USERNAME%:%mydate%_%mytime%:%msg% >> %a%
goto main

:leave
echo %USERNAME% has left the room >> %a%
REM taskkill /F /FI "WINDOWTITLE eq CMDCHAT"
REM taskkill /F /FI "WINDOWTITLE eq CHATROOM"
taskkill /F /IM cmd.exe


:im
cls
start im.vbs
echo Instant Messenger
set /p rcpt="[Enter RCPT]$ "

if %rcpt% == //exit goto main

net use Z: \\%rcpt%\Users\Public\chat\cmdIM

set /p msg="[Enter MSG]$ "
echo %USERNAME%:%msg% %DATE% > \\%rcpt%\Users\Public\chat\cmdIM\%rcpt%.txt
goto im



