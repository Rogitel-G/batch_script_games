:MENUSCREEN
CALL "%MENURESOURCEPATH%\menudisplay.bat"
ECHO %MENUNAME%: What would you like to look at?
ECHO.
ECHO. 1 - Spells
ECHO. 2 - Skills
ECHO. 3 - Limit Breaks
ECHO. 4 - Passive Limit Break Bonus
ECHO. 0 - Back
ECHO.
SET /P CHOICE=
IF "%CHOICE%" EQU "1" (
	CALL "%MENURESOURCEPATH%\checkspells.bat"
) ELSE IF "%CHOICE%" EQU "2" (
	CALL "%MENURESOURCEPATH%\checkskills.bat"
) ELSE IF "%CHOICE%" EQU "3" (
	CALL "%MENURESOURCEPATH%\checklimitbreaks.bat"
) ELSE IF "%CHOICE%" EQU "4" (
	CALL "%MENURESOURCEPATH%\limitbreakbonus.bat"
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :MENUSCREEN
)
GOTO :MENUSCREEN