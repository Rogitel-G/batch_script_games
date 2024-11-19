:SALVAGESTART
CLS
ECHO.
ECHO %BLACKSMITHNAME%: You can salvage weapons and accessories, I can destroy your custom armour but
ECHO             you won't be able to salvage anything from it
ECHO.
ECHO. 1 - Weapons
ECHO. 2 - Armour
ECHO. 3 - Accessories
ECHO. 0 - Back
ECHO.
:SALVAGECHOICE
SET /P SALVAGECHOICE=
ECHO.
IF "%SALVAGECHOICE%" EQU "1" (
	CALL "%BLACKSMITHRESOURCEPATH%\salvageweapons.bat"
) ELSE IF "%SALVAGECHOICE%" EQU "2" (
	CALL "%BLACKSMITHRESOURCEPATH%\destroyarmour.bat"
) ELSE IF "%SALVAGECHOICE%" EQU "3" (
	CALL "%BLACKSMITHRESOURCEPATH%\salvageaccessories.bat"
) ELSE IF "%SALVAGECHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :SALVAGECHOICE
)
GOTO :SALVAGESTART