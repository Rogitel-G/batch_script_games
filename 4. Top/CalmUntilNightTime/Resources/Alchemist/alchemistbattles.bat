CALL "%ALCHEMISTRESOURCEPATH%\alchemistdisplay.bat"
ECHO.
IF %BEATALCHEMISTMON1% EQU 0 (
	ECHO Alchemist: If you beat this challenge then I'll let you combine 3 items together
	SET /a ENEMYID = %ALCHEMISTMON1ID%
	CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
	GOTO :EOF
) ELSE IF %BEATALCHEMISTMON2% EQU 0 (
	ECHO Alchemist: If you beat this challenge then I'll let you combine 4 items together
	SET /a ENEMYID = %ALCHEMISTMON2ID%
	CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
	GOTO :EOF
) ELSE IF %BEATALCHEMISTMON3% EQU 0 (
	ECHO Alchemist: If you beat this challenge then I'll let you combine 5 items together
	SET /a ENEMYID = %ALCHEMISTMON3ID%
	CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
	GOTO :EOF
) ELSE IF %BEATALCHEMISTMON4% EQU 0 (
	ECHO Alchemist: If you beat this challenge then I'll let you buy Creation Stones
	SET /a ENEMYID = %ALCHEMISTMON4ID%
	CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
	GOTO :EOF
) ELSE IF %BEATALCHEMISTMON5% EQU 0 (
	ECHO Alchemist: If you beat this challenge then I'll let you buy Combination Stones
	SET /a ENEMYID = %ALCHEMISTMON5ID%
	CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
	GOTO :EOF
) ELSE IF %BEATALCHEMISTMON6% EQU 0 (
	ECHO Alchemist: If you beat this challenge then I'll let you access the Alchemy store remotely
	SET /a ENEMYID = %ALCHEMISTMON6ID%
	CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
	GOTO :EOF
)
GOTO :EOF
