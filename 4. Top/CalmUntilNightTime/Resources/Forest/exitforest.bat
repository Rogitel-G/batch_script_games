SET %MAP%LOCATION!%MAP%BUILDING1CELL1!=
SET MAP=TOWN4
SET /a PLAYERXCOORD = 10
SET /a PLAYERYCOORD = 7
SET /a STORY20VERSIONNUM = 2
CLS
ECHO.
ECHO You have escaped the forest^^!
ECHO.
IF %LAKECAVEDISCOVERED% EQU 0 (
	TIMEOUT /T 3 > nul
	CALL "%FORESTRESOURCEPATH%\discoverlake.bat"
)
TIMEOUT /T 3 > nul