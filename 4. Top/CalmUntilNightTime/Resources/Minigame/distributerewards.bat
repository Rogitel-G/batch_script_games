CALL "%MINIGAMERESOURCEPATH%\rewards.bat"
IF %PLAYERLVL% GTR 1 (
	CALL :LOAD
) ELSE (
	SET /a PLAYERGIL = %PLAYERGIL% + %MINIGAMEGILREWARD%
)
ECHO SET /a MINIGAMEGILREWARD = 0 > "%MINIGAMERESOURCEPATH%\rewards.bat"

:LOAD
SET /a PLAYERGIL = %PLAYERGIL% + ((%MINIGAMEGILREWARD%*%PLAYERLVL%)/2)
GOTO :EOF