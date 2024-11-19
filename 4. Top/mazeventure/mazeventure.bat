@echo off
setlocal enabledelayedexpansion

type title.txt
echo.
echo.
pause

set /A screenW=20
set /A screenWp=%screenW%+1
set /A screenWpp="screenW%+2
set /A screenH=7

set /A playerX=5
set /A playerY=5

set /A lastDir = 1

set /A locX=0
set /A locY=0
set levelFile=world/level%locY%.txt
set /A levelLine = 0
set quitLine=@

set /A switch1=0
set /A switch2=0
set /A switch3=0
set /A doorOpen=0

set aboveLine=.
set playerLine=.
set belowLine=.
set /A belowLineY=%playerY%+1
set /A aboveLineY=%playerY%-1

set spc=.



:GameLoop

cls
CALL :RenderScreen

echo.
choice /c WASD

if ERRORLEVEL ==4 CALL :GoRight
if ERRORLEVEL ==3 CALL :GoDown
if ERRORLEVEL ==2 CALL :GoLeft
if ERRORLEVEL ==1 CALL :GoUp

if %playerX% LSS 0 (

set /A locX = %locX% - %screenWpp%
set /A playerX = %screenW%
CALL :changeLocation

) else (
if %playerX% GTR %screenW% (

set /A locX = %locX% + %screenWpp%
set /A playerX = 0
CALL :changeLocation

)
)

if %playerY% LSS 0 (

set /A locY = %locY% - 1
set /A playerY = %screenH%
CALL :changeLocation

) else (
if %playerY% GTR %screenH% (

set /A locY = %locY% + 1
set /A playerY = 0
CALL :changeLocation

)
)

set playerTile=!playerLine:~%playerXRight%,1!
if NOT "%playerTile%"=="." (
if "%playerTile%"=="1" (
CALL :Switch1
)
if "%playerTile%"=="2" (
set switches[2]=1
CALL :Switch2
)
if "%playerTile%"=="3" (
set switches[3]=1
CALL :Switch3
)
if "%playerTile%"=="W" (
GOTO :winScreen
)
)

GOTO :GameLoop
EXIT /B 0

:Switch1
if %switch1%==0 (
set /A switch1=1
CALL :SwitchPressed
)
EXIT /B 0
:Switch2
if %switch2%==0 (
set /A switch2=1
CALL :SwitchPressed
)
EXIT /B 0
:Switch3
if %switch3%==0 (
set /A switch3=1
CALL :SwitchPressed
)
EXIT /B 0

:SwitchPressed
echo.
echo [As you trigger the pressure plate, you hear a CLICK.]
echo [You Triggered a Switch.]
echo.
set /A switchTotal = %switch1% + %switch2% + %switch3%
if %switchTotal%==3 (
set /A doorOpen=1
echo [You suddenly feel like somewhere, you can move through a '+' sign.]
echo.
)
pause
EXIT /B 0

:GoUp
set or=F
if NOT "!aboveLine:~%playerX%,1!"=="#" set or=T
if "!aboveLine:~%playerX%,1!"=="+" (
set or=F
if doorOpen==1 set or=T
)
if "%or%"=="T" set /A playerY = %playerY% - 1
EXIT /B 0

:GoDown
set or=F
if NOT "!belowLine:~%playerX%,1!"=="#" set or=T
if "!belowLine:~%playerX%,1!"=="+" (
set or=F
)
if "%or%"=="T" set /A playerY = %playerY% + 1
EXIT /B 0

:GoLeft
set or=F
set /A playerXLeft = %playerX% - 1
if NOT "!playerLine:~%playerXLeft%,1!"=="#" set or=T
if "!playerLine:~%playerXLeft%,1!"=="+" (
set or=F
)
if %playerXLeft% LSS 0 set or=T
if "%or%"=="T" set /A playerX = %playerX% - 1
EXIT /B 0

:GoRight
set or=F
set /A playerXRight = %playerX% + 1
if NOT "!playerLine:~%playerXRight%,1!"=="#" set or=T
if "!playerLine:~%playerXRight%,1!"=="+" (
set or=F
)
if "%or%"=="T" set /A playerX = %playerX% + 1
EXIT /B 0



:RenderScreen

CALL :ResetLevelLine
set /A belowLineY= %playerY% + 1
set /A aboveLineY=%playerY%-1

set line=.
for /f "delims=" %%x in (%levelFile%) do (
set line=%%x
if %%x==%quitLine% EXIT /B 0
CALL :PrintGameLine !line:~%locX%,%screenWp%!
CALL :AddToLevelLine
)

EXIT /B 0

:ResetLevelLine
set /A levelLine=0
EXIT /B 0
:AddToLevelLine
set /A levelLine=%levelLine%+1
EXIT /B 0

:PrintGameLine
set gameLine=%~1
if %levelLine%==%playerY% (
set playerLine=%~1
if %doorOpen%==1 set playerLine=%gameLine:+=.%
CALL :PrintPlayerGameLine %~1
) else (

if %levelLine%==%belowLineY% (
set belowLine=%~1
if %doorOpen%==1 set belowLine=%gameLine:+=.%
) else (
if %aboveLineY%==%levelLine% (
set aboveLine=%~1
if %doorOpen%==1 set aboveLine=%gameLine:+=.%
)
)

echo %~1
)
EXIT /B 0

:PrintPlayerGameLine
set message=%~1
set /A playerEnd = %playerX% + 1
set /A screenRemain = %screenW% - %playerX%
set message=!message:~0,%playerX%!@!message:~%playerEnd%,%screenRemain%!

echo %message%
EXIT /B 0

:AddSpace
set message=%message%%spc%
EXIT /B 0

:AddHash
set message=%message%[]
EXIT /B 0

:changeLocation
set /A switch1=0
set /A switch2=0
set /A switch3=0
set /A doorOpen=0
set levelFile=world/level%locY%.txt
EXIT /B 0

:winScreen
cls
echo.
echo YOU WIN!
echo.
pause
EXIT /B 0