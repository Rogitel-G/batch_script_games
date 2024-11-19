IF %STORY17VERSIONNUM% EQU 0 (
	SET /a STORY17VERSIONNUM = 1
)
ECHO.
ECHO Getting into the mine cart...
IF /I %MAP% EQU MINE1 (
	SET /a REVERSE = 0
) ELSE IF /I %MAP% EQU MINE3 (
	SET /a REVERSE = 1
)
CALL "%MAPRESOURCEPATH%\displaycart.bat"
CALL "%MAPRESOURCEPATH%\displaycart.bat"
CALL "%MAPRESOURCEPATH%\displaycart.bat"
ECHO.
ECHO Getting out of the mine cart...
