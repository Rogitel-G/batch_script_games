IF %GURUREMOTEACCESS% EQU 1 (
	GOTO :EOF
)
SET /a THRESHOLD = 15
SET /a COUNT = 0
SET /a SKILLCOUNT = 0
:LOOP
SET /a COUNT = %COUNT% + 1
IF !PLAYERSKILL%COUNT%EARNED! EQU 0 (
	SET /a SKILLCOUNT = %SKILLCOUNT% + 1
)
IF %COUNT% LSS %SKILLTOT% (
	GOTO :LOOP
)
IF %SKILLCOUNT% GEQ %THRESHOLD% (
	CALL "%MENURESOURCEPATH%\menudisplay.bat"
	ECHO You have earned %THRESHOLD% skills, you can now access the Guru remotely from the menu^^!
	ECHO.
	SET /a REMOTEACCESSTRUE = 1
	SET /a GURUREMOTEACCESS = 1
	TIMEOUT /T 3 > nul
)