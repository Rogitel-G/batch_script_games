SET /a MAX = !ENEMY%ENEMYID%SET%REWARDSET%MORPHGIL!
SET /a GIL = (%MAX%*%PLAYERLVL%)/100
SET /a PLAYERGIL = %PLAYERGIL% + %GIL%
ECHO Using !LIMITBREAK%LIMITCOUNT%NAME! you have stolen %GIL% gil
ECHO.
TIMEOUT /T 2 > nul
ECHO You now have %PLAYERGIL% gil
ECHO.
TIMEOUT /T 2 > nul