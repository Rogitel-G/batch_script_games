CALL "%ENEMYSKILLRESOURCEPATH%\standarddam.bat"
SET /a CRITICALCHANCE = %CRITICALCHANCE%*3
SET TARGET=PLAYER
CALL "%ENEMYSKILLRESOURCEPATH%\dam.bat"