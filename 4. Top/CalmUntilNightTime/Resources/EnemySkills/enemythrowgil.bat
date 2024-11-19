SET TARGET=PLAYER
CALL "%ENEMYSKILLRESOURCEPATH%\standarddam.bat"
SET /a DAM = %DAM%*3
CALL "%ENEMYSKILLRESOURCEPATH%\dam.bat"
ECHO As the coins hit you in the eyes and mouth you pick up what you can
ECHO.
TIMEOUT /T 2 > nul
SET /a GAINEDGIL = %GAINEDGIL% + %DAM%
ECHO You will receive extra gil if you win the battle
ECHO.
TIMEOUT /T 2 > nul