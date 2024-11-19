IF %TUTORIALREMOTEACCESS% EQU 1 (
	GOTO :EOF
)
SET /a THRESHOLD = 1
IF %CAVEENTER% GEQ %THRESHOLD% (
	CALL "%MENURESOURCEPATH%\menudisplay.bat"
	ECHO Now that you've entered the cave, you can access the tutorials remotely through the menu^^!
	ECHO.
	SET /a REMOTEACCESSTRUE = 1
	SET /a TUTORIALREMOTEACCESS = 1
	TIMEOUT /T 3 > nul
)