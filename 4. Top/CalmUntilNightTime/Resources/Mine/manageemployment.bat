:START
CLS
ECHO.
ECHO Dwarf Sultan: Would you like to hire or fire dwarves?
ECHO.
ECHO. 1 - Hire
ECHO. 2 - Fire
ECHO. 0 - Back
ECHO.
:CHOICE
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL "%MINERESOURCEPATH%\hiredwarves.bat"
) ELSE IF "%CHOICE%" EQU "2" (
	CALL "%MINERESOURCEPATH%\sackdwarves.bat"
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CHOICE
)
GOTO :START