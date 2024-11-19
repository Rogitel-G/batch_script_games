CLS
SET TEMPPATH=%MUSICPATH%\End
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
CALL "%MISCRESOURCEPATH%\titledisplay.bat"
:START
SET TEXT=Thanks for playing^^!
CALL :DISPLAYTEXT
SET TEXT=Lead Programmer:         Nick Sisson
CALL :DISPLAYTEXT
SET TEXT=Only Programmer:         Nick Sisson
CALL :DISPLAYTEXT
SET TEXT=Lead Designer:           Nick Sisson
CALL :DISPLAYTEXT
SET TEXT=Level Designer:          Nick Sisson
CALL :DISPLAYTEXT
SET TEXT=Lead ASCII Artist:       Nick Sisson
CALL :DISPLAYTEXT
SET TEXT=Music Thief:             Nick Sisson
CALL :DISPLAYTEXT
SET TEXT=QA Specialists:          Nick Sisson, Paul Ladyman, Mathew Ryalls
CALL :DISPLAYTEXT
SET TEXT=Name Comer Upper Wither: Mathew Ryalls
CALL :DISPLAYTEXT
SET TEXT=Multiplayer Architects:  Nick Sisson, Paul Ladyman
CALL :DISPLAYTEXT
SET TEXT=You get the idea... I made the game and my flatmates played it^^!
CALL :DISPLAYTEXT
pause >nul
GOTO :EOF





:DISPLAYTEXT
ECHO.
ECHO               %TEXT%
TIMEOUT /T 3 >nul
GOTO :EOF
