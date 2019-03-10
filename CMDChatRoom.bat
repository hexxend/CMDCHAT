@echo off
REM CMD CHAT 
REM (dededated WREM) By Hexxend
REM 10/15/2016
REM edited By XANA3790
REM Released under the GPL-V2

::Copyright (C) 2019  HexXend
::::
::::    This program is free software; you can redistribute it and/or modify
::::    it under the terms of the GNU General Public License as published by
::::    the Free Software Foundation; either version 2 of the License, or
::::    (at your option) any later version.
::::
::::    This program is distributed in the hope that it will be useful,
::::    but WITHOUT ANY WARRANTY; without even the implied warranty of
::::    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
::::    GNU General Public License for more details.
::::    You should have received a copy of the GNU General Public License along
::::    with this program; if not, write to the Free Software Foundation, Inc.,
::::    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
::::
::::hexxend@protonmail.com


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
