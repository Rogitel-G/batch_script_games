SET /a ENEMY%ENEMYID%CAUGHT=1
SET /a BATTLECAUGHT = 1
SET /a CATCHSUCCESSCOUNT = %CATCHSUCCESSCOUNT% + 1
ECHO Using !LIMITBREAK%LIMITCOUNT%NAME! you have caught the %ENEMYNAME%
ECHO.
TIMEOUT /T 2 > nul
GOTO :EOF