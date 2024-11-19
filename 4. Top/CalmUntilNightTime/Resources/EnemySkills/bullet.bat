CALL "%ENEMYSKILLRESOURCEPATH%\standarddam.bat"
SET TARGET=PLAYER

SET /a MISS = 0
CALL :RANDOMISE
CALL :MISSQUERY
CALL :SUPERDAMQUERY
IF %SUPERDAM% EQU 1 (
	CALL :SKILLTEXT
	CALL :ENDBATTLEQUERY
	GOTO :EOF
)
CALL :CRITICALQUERY
CALL :SKILLTEXT
CALL :ENDBATTLEQUERY
GOTO :EOF

:RANDOMISE
SET /a RANFACT = (%RANDOM% %% 40) + 80
SET /a HITCHANCE = (%HITCHANCE%*100)/%RANFACT%
SET /a RANFACT = (%RANDOM% %% 40) + 80
SET /a CRITICALCHANCE = (%CRITICALCHANCE%*100)/%RANFACT%
SET /a RANFACT = (%RANDOM% %% 40) + 80
SET /a DAM = (%DAM%*100)/%RANFACT%
IF %DAM% LSS 1 (
	SET /a DAM = 1
)
GOTO :EOF

:MISSQUERY
SET /a RANMISSCHANCE = %RANDOM% %% 100
IF %HITCHANCE% LSS %RANMISSCHANCE% (
	SET /a MISS = 1
)
GOTO :EOF

:SUPERDAMQUERY
SET /a SUPERDAM = 0
IF %MISS% EQU 1 (
	GOTO :EOF
)
SET /a RANFACT = %RANDOM% %% 100
IF %RANFACT% LSS 10 (
	SET /a SUPERDAM = 1
	SET /a DAM = %PLAYERHP% - 1
	ECHO Engulfed by the enormous bullet^^!
	ECHO.
	CALL :WAITFORTWO
)
GOTO :EOF

:CRITICALQUERY
IF %MISS% EQU 1 (
	GOTO :EOF
)
SET /a RANCRITICALCHANCE = %RANDOM% %% 100
IF %CRITICALCHANCE% GTR %RANCRITICALCHANCE% (
	CALL :CRITICAL
)
GOTO :EOF

:CRITICAL
SET /a DAM = (%DAM%*3)/2
ECHO Critical Hit^^!
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:SKILLTEXT
IF %MISS% EQU 1 (
	ECHO The %ENEMYSKILLNAME% missed^^!
	ECHO.
	GOTO :EOF
)
SET /a %TARGET%HP = !%TARGET%HP! - %DAM%
IF /I %TARGET% EQU PLAYER (
	ECHO The %ENEMYSKILLNAME% did %DAM% damage to !%TARGET%NAME!
	ECHO.
) ELSE (
	ECHO %ENEMYNAME% was hurt by %DAM% HP with the %ENEMYSKILLNAME%
	ECHO.
)
CALL :WAITFORTWO
GOTO :EOF

:ENDBATTLEQUERY
IF !%TARGET%HP! LEQ 0 (
	SET /a %TARGET%HP = 0
	IF %TARGET% EQU ENEMY (
		SET /a WINBATTLE = 1
	) ELSE (
		SET /a LOSEBATTLE = 1
	)
)
GOTO :EOF

:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF