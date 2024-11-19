:START
CALL "%MENURESOURCEPATH%\menudisplay.bat"
ECHO %MENUNAME%: Your limit break currently gives you a bonus to the %LIMITBREAKBONUSSTAT% stat.
ECHO.
ECHO. The higher your limit break bar, the greater the bonus.
ECHO. Which stat would you like to receive the bonus?
ECHO.
ECHO. 1 - Strength
ECHO. 2 - Endurance
ECHO. 3 - Magic
ECHO. 4 - Spirit
ECHO. 5 - Accuracy
ECHO. 6 - Evasion
ECHO. 7 - Speed
ECHO. 8 - Luck
ECHO. 0 - Back
ECHO.
CHOICE /C:012345678 /N
IF "%ERRORLEVEL%" EQU "1" (
	GOTO :EOF
) ELSE IF "%ERRORLEVEL%" EQU "2" (
	SET LIMITBREAKBONUSSTAT=STR
) ELSE IF "%ERRORLEVEL%" EQU "3" (
	SET LIMITBREAKBONUSSTAT=END
) ELSE IF "%ERRORLEVEL%" EQU "4" (
	SET LIMITBREAKBONUSSTAT=MAG
) ELSE IF "%ERRORLEVEL%" EQU "5" (
	SET LIMITBREAKBONUSSTAT=SPR
) ELSE IF "%ERRORLEVEL%" EQU "6" (
	SET LIMITBREAKBONUSSTAT=ACC
) ELSE IF "%ERRORLEVEL%" EQU "7" (
	SET LIMITBREAKBONUSSTAT=EVA
) ELSE IF "%ERRORLEVEL%" EQU "8" (
	SET LIMITBREAKBONUSSTAT=SPD
) ELSE IF "%ERRORLEVEL%" EQU "9" (
	SET LIMITBREAKBONUSSTAT=LCK
)
ECHO.
ECHO %MENUNAME%: Your %LIMITBREAKBONUSSTAT% will now increase as your limit break bar fills^^!
ECHO.
ECHO         It'll increase by 50%% (excluding equipment) when your limit break bar is full^^!
ECHO.
pause
GOTO :EOF