SET /a TEMP = %PLAYERMAXMP%/10
SET /a PLAYERMP = %PLAYERMP% + %TEMP%
IF %PLAYERMP% GTR %PLAYERMAXMP% (
	SET /a PLAYERMP = %PLAYERMAXMP%
)
ECHO %PLAYERNAME%'s MP increased by %TEMP%
ECHO.
TIMEOUT /T 2 > nul