REM Enemies Caught
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT% + 1
SET /a ENEMY%COUNT%CAUGHT = 0
IF %COUNT% LSS %ENEMYTOT% (
	GOTO :LOOPSTART
)