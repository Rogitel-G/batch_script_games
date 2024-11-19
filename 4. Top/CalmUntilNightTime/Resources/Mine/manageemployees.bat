:START
CLS
ECHO.
ECHO Dwarf Sultan: What would you like to do?
ECHO.
ECHO. 1 - Manage dwarf training
ECHO. 2 - Adjust dwarf strategies
ECHO. 3 - Adjust dwarf equipment
ECHO. 4 - Adjust dwarf salaries
ECHO. 0 - Back
ECHO.
:CHOICE
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL "%MINERESOURCEPATH%\traindwarves.bat"
) ELSE IF "%CHOICE%" EQU "2" (
	CALL "%MINERESOURCEPATH%\adjuststrategies.bat"
) ELSE IF "%CHOICE%" EQU "3" (
	CALL "%MINERESOURCEPATH%\adjustequipment.bat"
) ELSE IF "%CHOICE%" EQU "4" (
	CALL "%MINERESOURCEPATH%\adjustsalary.bat"
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CHOICE
)
GOTO :START