@echo off
set /A screenW=20
set /A screenH=7

set /A playerX=5
set /A playerY=5

set /A uiX=0
set /A uiY=14

set /A lastDir = 1

set message=#
for /l %%x in (0,1,%screenW%) do (
CALL :AddSpace
)
set message=%message%#
set emptyLine=%message%

set message=#
for /l %%x in (0,1,%screenW%) do (
CALL :AddHash
)
set message=%message%#
set borderLine=%message%

cls
CALL :RenderLevel

:GameLoop
set /A playerXLVL = %playerX% + 1
set /A playerYLVL = %playerY% + 1
CALL :drawChar @ %playerXLVL% %playerYLVL%

CALL :setCursorToUI
choice /c WASDE
echo %ERRORLEVEL%

if ERRORLEVEL ==5 (
echo "%lastDir%"
pause
) else (
set /A lastDir = %ERRORLEVEL%
if ERRORLEVEL ==4 CALL :GoRight
if ERRORLEVEL ==3 CALL :GoDown
if ERRORLEVEL ==2 CALL :GoLeft
if ERRORLEVEL ==1 CALL :GoUp
)

CALL :blankChar %playerXLVL% %playerYLVL%

if %playerX% LSS 0 (
set /A playerX = %screenW% - 1
) else (
if %playerX% GTR %screenW% set /A playerX = 0
)
if %playerY% LSS 0 (
set /A playerY = %screenH% - 1
) else (
if %playerY% GTR %screenH% set /A playerY = 0
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


:drawChar
CALL :setCursorPos %~2 %~3
echo %~1
EXIT /B 0

:blankChar
CALL :setCursorPos %~1 %~2
echo .
EXIT /B 0

:setCursorPos
set "pos_cmd=$U=$Host.ui.rawui;$CursorPosition=$U.CursorPosition;"
set "pos_cmd=%pos_cmd%$CursorPosition.X=%~1;$CursorPosition.Y=%~2;"
set "pos_cmd=%pos_cmd%$U.CursorPosition=$CursorPosition;"
powershell -command "&{%pos_cmd%}"
EXIT /B 0

:setCursorToUI
CALL :setCursorPos %uiX% %uiY%
EXIT /B 0

:RenderLevel
echo %borderLine%
for /l %%x in (0,1,%screenH%) do CALL :PrintGameLine %%x
echo %borderLine%
EXIT /B 0



:PrintGameLine
echo %emptyLine%
EXIT /B 0

:PrintPlayerGameLine
for /l %%x in (1,1,%playerX%) do (
CALL :AddSpace
)
set message=%message%@
set /A remainingSpace = %screenW% - %playerX%
for /l %%x in (1,1,%remainingSpace%) do (
CALL :AddSpace
)
set message=%message%#
echo %message%
EXIT /B 0

:AddSpace
set message=%message% 
EXIT /B 0

:AddHash
set message=%message%#
EXIT /B 0