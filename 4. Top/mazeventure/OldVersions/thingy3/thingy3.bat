@echo off
setlocal enabledelayedexpansion

set /A screenW=20
set /A screenH=7

set /A playerX=5
set /A playerY=5

set /A lastDir = 1

set /A locX=0
set /A locY=0
set levelFile=world/0-0level.txt
set /A levelLine = 0


set spc=.



:GameLoop

cls
CALL :RenderScreen

choice /c WASDE
echo %ERRORLEVEL%

if ERRORLEVEL ==5 (
echo "%lastDir%"
pause
) else (
set /A lastDir = %ERRORLEVEL%
)
if ERRORLEVEL ==4 CALL :GoRight
if ERRORLEVEL ==3 CALL :GoDown
if ERRORLEVEL ==2 CALL :GoLeft
if ERRORLEVEL ==1 CALL :GoUp

if %playerX% LSS 0 (
set /A playerX = %screenW%
set /A locX = %locX% - 1
CALL :changeLocation
) else (
if %playerX% GTR %screenW% (
set /A playerX = 0
set /A locX = %locX% + 1
CALL :changeLocation
)
)
if %playerY% LSS 0 (
set /A playerY = %screenH%
set /A locY = %locY% - 1
CALL :changeLocation
) else (
if %playerY% GTR %screenH% (
set /A playerY = 0
set /A locY = %locY% + 1
CALL :changeLocation
)
)

CALL :GameLoop
EXIT /B 0


:GoUp
set /A playerY = %playerY% - 1
EXIT /B 0
:GoDown
set /A playerY = %playerY% + 1
EXIT /B 0
:GoLeft
set /A playerX = %playerX% - 1
EXIT /B 0
:GoRight
set /A playerX = %playerX% + 1
EXIT /B 0


:RenderScreen
echo %playerX%
echo %playerY%

set /A levelLine = 0
for /f "delims=" %%x in (%levelFile%) do (
CALL :PrintGameLine %%x
)

echo.
EXIT /B 0



:PrintGameLine
::echo %levelLine%
if %levelLine%==%playerY% (
CALL :PrintPlayerGameLine %~1
) else (
echo %~1
)
set /A levelLine = %levelLine% + 1
EXIT /B 0

:PrintPlayerGameLine
set message=%~1
set /A playerEnd = %playerX% + 1
set message=!message:~0,%playerX%!@!message:~%playerEnd%,%screenW%!

echo %message%
EXIT /B 0

:AddSpace
set message=%message%%spc%
EXIT /B 0

:AddHash
set message=%message%[]
EXIT /B 0

:changeLocation
set levelFile=world/%locX%-%locY%level.txt
EXIT /B 0