SET /a CASINOWELCOMESEEN = 1
SET NAME=%CASINOOWNERNAME%
SET /a SPACES = %CASINOOWNERSPACES%
CALL "%CASINORESOURCEPATH%\casinodisplay.bat"
ECHO.
ECHO %NAME%: Welcome to the Three Feathers Casino. I am your host, Chief Runs With Premise.
ECHO !SPACES%SPACES%!  Please try your luck at one of our many games
SET /a WAITTIME = 5

CALL :DISPLAY
ECHO %PLAYERNAME%: Alright let's go^^!
SET /a WAITTIME = 2

CALL :DISPLAY
ECHO %NAME%: Woah, I'm afraid minors cannot go onto the casino floor
SET /a WAITTIME = 3

CALL :DISPLAY
ECHO %PLAYERNAME%: I'm not a miner dumbass, do you see a shovel in my hand?
SET /a WAITTIME = 3

CALL :DISPLAY
ECHO %NAME%: No, that's not what I mea... wait a second, is that Gil in your pocket or 
ECHO !SPACES%SPACES%!  are you just happy to see me?
SET /a WAITTIME = 4

CALL :DISPLAY
ECHO %PLAYERNAME%: Erm. I have %PLAYERGIL% gil...
SET /a WAITTIME = 2

CALL :DISPLAY
ECHO %NAME%: Oh^^! Welcome to the Three Feathers Casino. I am your host, Chief Runs With Premise.
ECHO !SPACES%SPACES%!  Please try your luck at one of our many games
SET /a WAITTIME = 5

CALL :DISPLAY
ECHO %PLAYERNAME%: You said that already...
SET /a WAITTIME = 2

CALL :DISPLAY
ECHO %NAME%: May luck run through you, like the spirit of the buffalo.
SET /a WAITTIME = 3

:DISPLAY
IF %CUTSCENEPROGRESSION% EQU 1 (
	TIMEOUT /T %WAITTIME% > nul
) ELSE (
	pause > nul
)
CALL "%CASINORESOURCEPATH%\casinodisplay.bat"
ECHO.
GOTO :EOF
