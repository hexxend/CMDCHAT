@echo off
REM CMD CHAT 
REM (dededated WREM) By Hexxend  
REM 10/15/2016
REM edited By XANA3790

::Copyright (C) 2019  HexXend
::
::    This program is free software; you can redistribute it and/or modify
::    it under the terms of the GNU General Public License as published by
::    the Free Software Foundation; either version 2 of the License, or
::    (at your option) any later version.
::
::    This program is distributed in the hope that it will be useful,
::    but WITHOUT ANY WARRANTY; without even the implied warranty of
::    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
::    GNU General Public License for more details.
::
::    You should have received a copy of the GNU General Public License along
::    with this program; if not, write to the Free Software Foundation, Inc.,
::    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
::
::hexxend@protonmail.com

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



