SET /a TEMP = %PLAYERMAXHP%/5
SET /a PLAYERHP = %PLAYERHP% + %TEMP%
IF %PLAYERHP% GTR %PLAYERMAXHP% (
	SET /a PLAYERHP = %PLAYERMAXHP%
)
ECHO %PLAYERNAME%'s HP increased by %TEMP%
ECHO.
TIMEOUT /T 2 > nul