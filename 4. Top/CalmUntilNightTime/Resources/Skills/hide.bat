ECHO %PLAYERNAME% begins hiding
ECHO.
CALL :WAITFORTWO
ECHO %PLAYERNAME%'s evasion has increased
ECHO.
CALL :WAITFORTWO
SET /a PLAYERHIDE = 1
GOTO :EOF





:WAITFORZERO
TIMEOUT /T 0 > nul
GOTO :EOF

:WAITFORONE
TIMEOUT /T 1 > nul
GOTO :EOF

:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF

:WAITFORTHREE
TIMEOUT /T 3 > nul
GOTO :EOF