CLS
ECHO.
ECHO How many hours would you like to pass?
ECHO.
SET /P TEMP=
SET /a COUNT = 0
:LOOP
SET /a COUNT = %COUNT% + 1
SET /a DWARF%COUNT%HOUR = !DWARF%COUNT%HOUR! - %TEMP%
IF %COUNT% LSS %DWARFTOT% (
	GOTO :LOOP
)
ECHO %TEMP% hours passed.
ECHO.
pause
GOTO :EOF