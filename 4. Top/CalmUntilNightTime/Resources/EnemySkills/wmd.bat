::Status
SET /a HITCHANCE = 100
SET STATUS=Confusion
SET /a TURNCOUNT = ((!%ATTACKER%LVL!/3)*!%ATTACKER%MAG!)/((!%DEFENDER%LVL!/3)*(!%DEFENDER%SPR!*2))
ECHO %ENEMYNAME% threatens to use his Weapons of Mass Destruction^^!
ECHO.
TIMEOUT /T 2 > nul
ECHO But it turns out that %ENEMYNAME% doesn't have any so instead he rubs his 
ECHO almighty moustache on %PLAYERNAME%
ECHO.
TIMEOUT /T 4 > nul
CALL "%ENEMYSKILLRESOURCEPATH%\status.bat"