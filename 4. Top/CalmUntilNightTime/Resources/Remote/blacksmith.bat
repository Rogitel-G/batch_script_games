IF %BLACKSMITHREMOTEACCESS% EQU 1 (
	GOTO :EOF
)
SET /a THRESHOLD = 5
IF %EQUIPMENTCRAFTED% GEQ %THRESHOLD% (
	CALL "%MENURESOURCEPATH%\menudisplay.bat"
	ECHO You've crafted %THRESHOLD% pieces of equipment, you can now access the blacksmith remotely from the menu^^!
	ECHO.
	SET /a REMOTEACCESSTRUE = 1
	SET /a BLACKSMITHREMOTEACCESS = 1
	TIMEOUT /T 3 > nul
)