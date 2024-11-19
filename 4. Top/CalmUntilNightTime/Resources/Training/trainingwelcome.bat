SET /a TRAININGWELCOMESEEN = 1
SET NAME=%TRAINERNAME%
SET /a SPACES = %TRAINERSPACES%

CALL "%TRAININGRESOURCEPATH%\trainingdisplay.bat"
ECHO.
ECHO %NAME%: You rack disciprine^^!
SET /a WAITTIME = 3

CALL :DISPLAY
ECHO %PLAYERNAME%: Excuse me...
SET /a WAITTIME = 2

SET /a WAITTIME = 0
CALL :DISPLAY
ECHO %NAME%: You rack disciprine^^! Disciprine come from within.
SET /a WAITTIME = 3

CALL :DISPLAY
ECHO %PLAYERNAME%: Do you mean that here I can train against enemies that I've caught, like
ECHO !SPACES%PLAYERNAMELENGTH%!  that %ENEMY1NAME% that I caught before?
SET /a WAITTIME = 6

CALL :DISPLAY
ECHO %NAME%: Yes. But training here will not give you Gil or Items, just Experience.
SET /a WAITTIME = 5

CALL :DISPLAY
ECHO %PLAYERNAME%: I see...
SET /a WAITTIME = 2

:DISPLAY
IF %CUTSCENEPROGRESSION% EQU 1 (
	TIMEOUT /T %WAITTIME% > nul
) ELSE (
	pause > nul
)
CALL "%TRAININGRESOURCEPATH%\trainingdisplay.bat"
ECHO.
GOTO :EOF
