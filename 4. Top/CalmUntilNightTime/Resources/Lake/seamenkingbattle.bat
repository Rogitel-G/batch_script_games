SET /a STORY23VERSIONNUM = 2
SET /a ENEMYID = %PALACEGUARD1ID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
IF %LOSEBATTLE% EQU 1 (
	GOTO :LOSE
) ELSE IF %BATTLERUN% EQU 1 (
	GOTO :LOSE
)
SET /a ENEMYID = %PALACEGUARD2ID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
IF %LOSEBATTLE% EQU 1 (
	GOTO :LOSE
) ELSE IF %BATTLERUN% EQU 1 (
	GOTO :LOSE
)
SET /a ENEMYID = %PALACEGUARD3ID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
IF %LOSEBATTLE% EQU 1 (
	GOTO :LOSE
) ELSE IF %BATTLERUN% EQU 1 (
	GOTO :LOSE
)
SET /a ENEMYID = %PALACEGUARD4ID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
IF %LOSEBATTLE% EQU 1 (
	GOTO :LOSE
) ELSE IF %BATTLERUN% EQU 1 (
	GOTO :LOSE
)
SET /a ENEMYID = %PALACEGUARD5ID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
IF %LOSEBATTLE% EQU 1 (
	GOTO :LOSE
) ELSE IF %BATTLERUN% EQU 1 (
	GOTO :LOSE
)
SET /a ENEMYID = %PALACEGUARD6ID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
IF %LOSEBATTLE% EQU 1 (
	GOTO :LOSE
) ELSE IF %BATTLERUN% EQU 1 (
	GOTO :LOSE
)
SET /a ENEMYID = %SEAKINGID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
IF %LOSEBATTLE% EQU 1 (
	GOTO :LOSE
) ELSE IF %BATTLERUN% EQU 1 (
	GOTO :LOSE
) ELSE (
	SET /a BEATSEAKING = 1
	SET /a SEAKINGALIVE = 0
	SET /a BEATPALACEGUARD1 = 1
	SET /a PALACEGUARD1ALIVE = 0
	SET /a BEATPALACEGUARD2 = 1
	SET /a PALACEGUARD2ALIVE = 0
	SET /a BEATPALACEGUARD3 = 1
	SET /a PALACEGUARD3ALIVE = 0
	SET /a BEATPALACEGUARD4 = 1
	SET /a PALACEGUARD4ALIVE = 0
	SET /a BEATPALACEGUARD5 = 1
	SET /a PALACEGUARD5ALIVE = 0
	SET /a BEATPALACEGUARD6 = 1
	SET /a PALACEGUARD6ALIVE = 0
)
SET /a EXITMAP = 1s
GOTO :EOF

:LOSE
SET /a BEATSEAKING = 0
SET /a SEAKINGALIVE = 1
SET /a BEATPALACEGUARD1 = 0
SET /a PALACEGUARD1ALIVE = 1
SET /a BEATPALACEGUARD2 = 0
SET /a PALACEGUARD2ALIVE = 1
SET /a BEATPALACEGUARD3 = 0
SET /a PALACEGUARD3ALIVE = 1
SET /a BEATPALACEGUARD4 = 0
SET /a PALACEGUARD4ALIVE = 1
SET /a BEATPALACEGUARD5 = 0
SET /a PALACEGUARD5ALIVE = 1
SET /a BEATPALACEGUARD6 = 0
SET /a PALACEGUARD6ALIVE = 1
GOTO :EOF