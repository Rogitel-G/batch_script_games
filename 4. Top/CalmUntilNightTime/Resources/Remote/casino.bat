IF %CASINOREMOTEACCESS% EQU 1 (
	GOTO :EOF
)
SET /a THRESHOLD = 200
IF %CASINOINCOMEPERCHUNK% GEQ %THRESHOLD% (
	CALL "%MENURESOURCEPATH%\menudisplay.bat"
	ECHO Your income has reached %THRESHOLD% every 15 minutes. You can now access the casino remotely through the menu^^!
	ECHO.
	SET /a REMOTEACCESSTRUE = 1
	SET /a CASINOREMOTEACCESS = 1
	TIMEOUT /T 3 > nul
)