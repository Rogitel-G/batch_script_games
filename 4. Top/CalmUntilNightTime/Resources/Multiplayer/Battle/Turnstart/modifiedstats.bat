SET TARGET=PLAYER1
SET TARGETER=PLAYER2
CALL :INITIALISE
SET TARGET=PLAYER2
SET TARGETER=PLAYER1
CALL :INITIALISE
GOTO :EOF


:INITIALISE
SET /a %TARGET%STR = !%TARGET%BASESTR!
SET /a %TARGET%END = !%TARGET%BASEEND!
SET /a %TARGET%MAG = !%TARGET%BASEMAG!
SET /a %TARGET%SPR = !%TARGET%BASESPR!
SET /a %TARGET%ACC = !%TARGET%BASEACC!
SET /a %TARGET%EVA = !%TARGET%BASEEVA!
SET /a %TARGET%SPD = !%TARGET%BASESPD!
SET /a %TARGET%LCK = !%TARGET%BASELCK!
CALL "%BATTLESTATUSRESOURCEPATH%\statusquery.bat"
CALL "%BATTLESTATUSRESOURCEPATH%\buffquery.bat"
GOTO :EOF