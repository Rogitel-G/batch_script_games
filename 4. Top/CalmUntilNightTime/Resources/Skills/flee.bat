REM With this at 1000, the player will lose approx 10% of their gil
SET /a GILLOSSFACTOR = 1000
REM This means the player won't be able to lose more than 20* their level's worth of gold
SET /a GILLOSSCAP = 20
REM This means that if the player's luck is greater than a random number between 1 and 200 they'll not lose gold
SET /a GILLOSSLUCKFACTOR = 100
SET /a TEMP = %PLAYERGIL%*%RANFACT%/%GILLOSSFACTOR%
SET /a TEMP2 = %PLAYERLVL%*%GILLOSSCAP%
IF %TEMP% GTR %TEMP2% (
	SET /a TEMP = %TEMP2%*%RANFACT%/100
)
ECHO %PLAYERNAME% ran away, leaving %ENEMYNAME% in the dust^^!
ECHO.
SET /a TEMP3=%RANDOM% %% %GILLOSSLUCKFACTOR%
IF %PLAYERLCK% LSS %TEMP3% (
	SET /a PLAYERGIL = %PLAYERGIL% - %TEMP%
	CALL :WAITFORONE
	ECHO Unfortunately %PLAYERNAME% dropped %TEMP% Gil
	ECHO.
)
IF %SPECIALFIGHT% EQU 1 (
	CALL "%BATTLEENDRESOURCEPATH%\specialfightrun.bat"
)
IF %TRAINBATTLE% EQU 1 (
	ECHO The %ENEMYNAME% escaped as you ran away
	ECHO.
	SET /a ENEMY%ENEMYID%CAUGHT=0
)
SET /a SPECIALFIGHT = 0
SET /a BATTLERUN = 1
SET /a RUNSUCCESSCOUNT = %RUNSUCCESSCOUNT% + 1
GOTO :EOF


:WAITFORONE
TIMEOUT /T 1 > nul
GOTO :EOF