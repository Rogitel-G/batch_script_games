@echo off
set /A screenW=20
set /A screenH=7

set /A playerX=5
set /A playerY=5

set /A lastDir = 1

set message=#
for /l %%x in (1,1,%screenW%) do (
CALL :AddSpace
)
set message=%message%#
set emptyLine=%message%

set message=#
for /l %%x in (1,1,%screenW%) do (
CALL :AddHash
)
set message=%message%#
set borderLine=%message%

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

if %playerX% ==-1 (
set /A playerX = %screenW% - 1
) else (
if %playerX% == %screenW% set /A playerX = 0
)
if %playerY% ==-1 (
set /A playerY = %screenH% - 1
) else (
if %playerY% == %screenH% set /A playerY = 0
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
echo %borderLine%
for /l %%x in (1,1,%screenH%) do CALL :PrintGameLine %%x
echo %borderLine%
EXIT /B 0



:PrintGameLine
set message=#
if %~1==%playerY% (
CALL :PrintPlayerGameLine
) else (
echo %emptyLine%
)
EXIT /B 0

:PrintPlayerGameLine
for /l %%x in (1,1,%playerX%) do (
CALL :AddSpace
)
set message=%message%@
set /A remainingSpace = %screenW% - %playerX% - 1
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