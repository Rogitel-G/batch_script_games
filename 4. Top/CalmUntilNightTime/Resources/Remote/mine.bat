IF %DWARFMINEREMOTEACCESS% EQU 1 (
	GOTO :EOF
)
SET /a THRESHOLD = 3
IF %DWARFTOT% GEQ %THRESHOLD% (
	CALL "%MENURESOURCEPATH%\menudisplay.bat"
	ECHO Have hired %THRESHOLD% dwarves. You can now access the dwarf mine remotely through the menu^^!
	ECHO.
	SET /a REMOTEACCESSTRUE = 1
	SET /a DWARFMINEREMOTEACCESS = 1
	TIMEOUT /T 3 > nul
)