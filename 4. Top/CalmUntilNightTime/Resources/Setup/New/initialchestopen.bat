SET /a castle2CHEST1OPEN = 0 
SET /a castle2CHEST2OPEN = 0 
SET /a castle2CHEST3OPEN = 0 
SET /a castle2CHEST4OPEN = 0 
SET /a castle2CHEST5OPEN = 0 
SET /a castle2CHEST6OPEN = 0 
SET /a castle2CHEST7OPEN = 0 
SET /a castle2CHEST8OPEN = 0 
SET /a castle2CHEST9OPEN = 0 
SET /a castle2CHEST10OPEN = 0 
SET /a castle2CHEST11OPEN = 0 
SET /a castle2CHEST12OPEN = 0 
SET /a castle2CHEST13OPEN = 0 
SET /a castle2CHEST14OPEN = 0 
SET /a castle2CHEST15OPEN = 0 
SET /a castle2CHEST16OPEN = 0 
SET /a castle2CHEST17OPEN = 0 
SET /a castle2CHEST18OPEN = 0 
SET /a castle2CHEST19OPEN = 0 
SET /a castle2CHEST20OPEN = 0 
SET /a castle2CHEST21OPEN = 0 
SET /a castle2CHEST22OPEN = 0 
SET /a castle2CHEST23OPEN = 0 
SET /a castle2CHEST24OPEN = 0 
SET /a castle2CHEST25OPEN = 0 
SET /a castle2CHEST26OPEN = 0 
SET /a castle2CHEST27OPEN = 0 
SET /a castle2CHEST28OPEN = 0 
SET /a castle2CHEST29OPEN = 0 
SET /a castle2CHEST30OPEN = 0 
SET /a castle2CHEST31OPEN = 0 
SET /a castle3CHEST1OPEN = 0 
SET /a castle3CHEST2OPEN = 0 
SET /a castle3CHEST3OPEN = 0 
SET /a castle3CHEST4OPEN = 0 
SET /a castle3CHEST5OPEN = 0 
SET /a castleCHEST1OPEN = 0 
SET /a castleCHEST2OPEN = 0 
SET /a castleCHEST3OPEN = 0 
SET /a castleCHEST4OPEN = 0 
SET /a castleCHEST5OPEN = 0 
SET /a castleCHEST6OPEN = 0 
SET /a cave1lvl2CHEST1OPEN = 0 
SET /a cave1lvl2CHEST2OPEN = 0 
SET /a cave1lvl2CHEST3OPEN = 0 
SET /a cave1lvl2CHEST4OPEN = 0 
SET /a cave1CHEST1OPEN = 0 
SET /a cave1CHEST2OPEN = 0 
SET /a cave1CHEST3OPEN = 0 
SET /a lake1CHEST1OPEN = 0 
SET /a lake1CHEST2OPEN = 0 
SET /a lake1CHEST3OPEN = 0 
SET /a lake2CHEST1OPEN = 0 
SET /a lake2CHEST2OPEN = 0 
SET /a lake2CHEST3OPEN = 0 
SET /a lake2CHEST4OPEN = 0 
SET /a lake2CHEST5OPEN = 0 
SET /a lake3CHEST1OPEN = 0 
SET /a lake3CHEST2OPEN = 0 
SET /a lake3CHEST3OPEN = 0 
SET /a lake3CHEST4OPEN = 0 
SET /a lake3CHEST5OPEN = 0 
SET /a lakepalaceCHEST1OPEN = 0 
SET /a lakepalaceCHEST2OPEN = 0 
SET /a lakepalaceCHEST3OPEN = 0 
SET /a lakepalaceCHEST4OPEN = 0 
SET /a lakepalaceCHEST5OPEN = 0 
SET /a lakepalaceCHEST6OPEN = 0 
SET /a mine1CHEST1OPEN = 0 
SET /a mine1CHEST2OPEN = 0 
SET /a mine1CHEST3OPEN = 0 
SET /a mine1CHEST4OPEN = 0 
SET /a mine2CHEST1OPEN = 0 
SET /a mine2CHEST2OPEN = 0 
SET /a mine2CHEST3OPEN = 0 
SET /a mine2CHEST4OPEN = 0 
SET /a mine3CHEST1OPEN = 0 
SET /a mine3CHEST2OPEN = 0 
SET /a mine3CHEST3OPEN = 0 
SET /a mine3CHEST4OPEN = 0 
SET /a town1CHEST1OPEN = 0 
SET /a town2CHEST1OPEN = 0 
SET /a town2CHEST2OPEN = 0 
SET /a town3CHEST1OPEN = 0 
SET /a town3CHEST2OPEN = 0 
SET /a forest1mist0CHEST1OPEN = 0 
SET /a forest1mist0CHEST2OPEN = 0 
SET /a forest1mist0CHEST3OPEN = 0 
SET /a forest1mist0CHEST4OPEN = 0 
SET /a forest1mist0CHEST5OPEN = 0 
SET /a forest1mist0CHEST6OPEN = 0 
SET /a forest1mist0CHEST7OPEN = 0 
SET /a hell1CHEST1OPEN = 0 
SET /a hell1CHEST2OPEN = 0 
SET /a hell1CHEST3OPEN = 0 
GOTO :EOF


SET /a TEMPCOUNT = 0
:MAPLOOP
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
SET TEMPMAP=!MAP%TEMPCOUNT%!
CALL :CHESTSTATS
IF %TEMPCOUNT% LSS %MAPTOT% (
	GOTO :MAPLOOP
)
GOTO :EOF

:CHESTSTATS
IF !%TEMPMAP%CHESTTOT! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT=%COUNT%+1
SET /a %TEMPMAP%CHEST%COUNT%OPEN = 0
IF %COUNT% LSS !%TEMPMAP%CHESTTOT! (
	GOTO :LOOPSTART
)
GOTO :EOF