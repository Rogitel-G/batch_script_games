IF %TEMPLE2REMOTEACCESS% EQU 1 (
	GOTO :EOF
)
SET /a THRESHOLD = 40000
IF %PLAYERTEMPLEDONATIONTOTAL% GEQ %THRESHOLD% (
	CALL "%MENURESOURCEPATH%\menudisplay.bat"
	ECHO You've donated %THRESHOLD% to the temple, and can now heal yourself outside of battle free of charge^^!
	ECHO.
	SET /a TEMPLE2REMOTEACCESS = 1
	TIMEOUT /T 3 > nul
)