:START
CLS
ECHO.
ECHO Dwarf Sultan: What would you like to do?
ECHO.
ECHO. 1 - Buy Pickaxes
ECHO. 2 - Buy Sacks
ECHO. 3 - Sell Pickaxes
ECHO. 4 - Sell Sacks
ECHO. 0 - Back
ECHO.
:CHOICE
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	SET TYPE=pickaxe
	CALL "%MINERESOURCEPATH%\buy.bat"
) ELSE IF "%CHOICE%" EQU "2" (
	SET TYPE=sack
	CALL "%MINERESOURCEPATH%\buy.bat"
) ELSE IF "%CHOICE%" EQU "3" (
	SET TYPE=pickaxe
	CALL "%MINERESOURCEPATH%\sell.bat"
) ELSE IF "%CHOICE%" EQU "4" (
	SET TYPE=sack
	CALL "%MINERESOURCEPATH%\sell.bat"
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CHOICE
)
GOTO :START