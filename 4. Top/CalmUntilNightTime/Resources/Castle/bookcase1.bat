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