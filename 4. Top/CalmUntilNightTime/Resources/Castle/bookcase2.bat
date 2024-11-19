SET /a PLAYERXCOORD = %PLAYEROLDXCOORD%
SET /a PLAYERYCOORD = %PLAYEROLDYCOORD%
CALL "%CASTLERESOURCEPATH%\bookcasedisplay.bat"
ECHO Just a bunch of old books, nothing useful
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF

CLS
ECHO.
ECHO You find a strange book with what appears to be a man suffocating on the cover.
ECHO.
TIMEOUT /T 3 > nul
ECHO All of the pages are blank apart from the first one which simply reads:
ECHO.
ECHO. "Drown yourself in the waters of the earth and you will discover the ultimate challenge."
ECHO.
TIMEOUT /T 3 > nul
IF %BEATRAGATA% EQU 1 (
	ECHO. This means quicksave on land and load from underwater, then let yourself drown.
	ECHO.
) ELSE (
	ECHO. Maybe if I come back after I've beaten %LASTBOSSNAME% I'll get more information...
	ECHO.
)
pause
GOTO :EOF