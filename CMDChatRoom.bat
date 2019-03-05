@echo off
REM CMD CHAT 
REM (dededated WREM) By Hexxend
REM 10/15/2016
REM edited By XANA3790
REM Released under the GPL-V2

@cd
color 0a
title CHATROOM
for /f "delims=" %%a in (where.txt) do set var=%%a

:a
cls
echo *******************************************************************************
type %a%
echo *******************************************************************************
timeout 1 > nul
goto a
