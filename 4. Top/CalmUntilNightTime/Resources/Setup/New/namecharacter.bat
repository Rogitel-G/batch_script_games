CLS
ECHO.
ECHO What is your character's name?
ECHO.
ECHO. Enter 0 to go back
ECHO.
:NAMECHOICE
SET /P PLAYERNAME=
ECHO.
IF "%PLAYERNAME%" EQU "0" (
	SET /a MAINMENUBACK = 1
	GOTO :EOF
) ELSE IF "%PLAYERNAME%" EQU "" (
	GOTO :NAMECHOICE
) ELSE IF "%PLAYERNAME%" EQU "Calm" (
	SET /a TESTRUN = 1
)
SET /a PLAYERNAMELENGTH = 0
:PLAYERNAMELOOPSTART
SET /a PLAYERNAMELENGTH += 1
SET SUBSTR=!PLAYERNAME:~%PLAYERNAMELENGTH%!
IF DEFINED SUBSTR (
	GOTO :PLAYERNAMELOOPSTART
)
IF %PLAYERNAMELENGTH% GTR 20 (
	ECHO This name is too long. Choose another
	ECHO.
	GOTO :NAMECHOICE
)