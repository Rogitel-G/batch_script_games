SET MAP=LAKE3
SET %MAP%MUSICFOLDER=WATER
SET /a %MAP%UNDERWATER = 1
SET /a %MAP%RANBATTLECHANCE = 15
CALL :LOADENEMIES
CALL :EDGES
CALL :DROWNRESPAWN
CALL :DEFINECELLS
CALL "%INITIALRESOURCEPATH%\genericmapsetup1.bat"
CALL :EXITS
CALL :BUILDINGS
CALL :CHESTS
CALL :SPECIALFIGHTS
CALL :SPECIALLOCATIONS
CALL "%INITIALRESOURCEPATH%\genericmapsetup2.bat"
GOTO :EOF

:LOADENEMIES
SET /a ENEMYID = 28
:ENEMYLOOP
SET /a ENEMYID = %ENEMYID% + 1
IF NOT DEFINED ENEMY%ENEMYID%LOADED (
	SET /a ENEMY%ENEMYID%LOADED = 1
	CALL "%MISCRESOURCEPATH%\loadenemy.bat"
)
IF %ENEMYID% LSS 31 (
	GOTO :ENEMYLOOP
)
GOTO :EOF

:EDGES
SET /a %MAP%XLIMIT = 11
SET /a %MAP%YLIMIT = 7
GOTO :EOF

:DROWNRESPAWN
SET /a %MAP%DROWNRESPAWNXCOORD = 1
SET /a %MAP%DROWNRESPAWNYCOORD = 2
GOTO :EOF

:EXITS
SET /a COUNT = 0
:EXIT1
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 0 
SET /a %MAP%EXIT%COUNT%YCOORD = 2
SET %MAP%EXIT%COUNT%NEWMAP=lake2
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 11
SET /a %MAP%EXIT%COUNT%NEWYCOORD = 2
:EXIT2
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 12
SET /a %MAP%EXIT%COUNT%YCOORD = 7
SET %MAP%EXIT%COUNT%NEWMAP=town5
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 1
SET /a %MAP%EXIT%COUNT%NEWYCOORD = 4

:EXIT2
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 12
SET /a %MAP%EXIT%COUNT%YCOORD = 2
SET %MAP%EXIT%COUNT%NEWMAP=lake4
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 1
SET /a %MAP%EXIT%COUNT%NEWYCOORD = 2

SET /a %MAP%EXITNUM = %COUNT%
GOTO :EOF

:BUILDINGS
SET /a %MAP%BUILDINGTOT = 0
GOTO :EOF

:CHESTS
SET /a COUNT = 0
:CHEST1
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 4
SET /a %MAP%CHEST%COUNT%YCOORD = 2
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %SAMSWORDID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST2
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 4
SET /a %MAP%CHEST%COUNT%YCOORD = 3
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 1
SET /a %MAP%CHEST%COUNT%ARMOUR1 = %GOBLINARMOURID%
SET /a %MAP%CHEST%COUNT%ARMOUR1NUM = 1
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS


:CHEST3
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 7
SET /a %MAP%CHEST%COUNT%YCOORD = 6
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %INCCATCHSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST4
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 10
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %STRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 4
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %ACCSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 4
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %MAGSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 4
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST5
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 11
SET /a %MAP%CHEST%COUNT%YCOORD = 3
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %ENDSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 4
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %EVASTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 4
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %SPRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 4
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

SET /a %MAP%CHESTTOT = %COUNT%
GOTO :EOF

:CHESTVARS
SET %MAP%!%MAP%CHEST%COUNT%YCOORD!-!%MAP%CHEST%COUNT%XCOORD!-A=%CHESTOTOP%
SET %MAP%!%MAP%CHEST%COUNT%YCOORD!-!%MAP%CHEST%COUNT%XCOORD!-B=%CHESTOMID%
SET %MAP%!%MAP%CHEST%COUNT%YCOORD!-!%MAP%CHEST%COUNT%XCOORD!-C=%CHESTBOTT%
GOTO :EOF


:SPECIALFIGHTS
SET /a COUNT = 0
SET /a %MAP%SPECIALFIGHTTOT = %COUNT%
GOTO :EOF

:SETID
SET TEMP=!%MAP%SPECIALFIGHT%COUNT%ENEMYNAME!
SET /a %MAP%SPECIALFIGHT%COUNT%ENEMYID = !%TEMP%ID!
GOTO :EOF

:SPECIALLOCATIONS
GOTO :EOF

:DEFINECELLS
SET %MAP%1-1=WALL1
SET %MAP%1-2=WALL1
SET %MAP%1-3=WALL1
SET %MAP%1-4=WALL1
SET %MAP%1-5=WALL1
SET %MAP%1-6=WALL1
SET %MAP%1-7=WALL1
SET %MAP%1-8=WALL1
SET %MAP%1-9=WALL1
SET %MAP%1-10=WATER
SET %MAP%1-11=WALL1
SET %MAP%2-1=EXITLEFT
SET %MAP%2-2=WATER
SET %MAP%2-3=WATER
SET %MAP%2-4=WATER
SET %MAP%2-5=WATER
SET %MAP%2-6=WATER
SET %MAP%2-7=WALL1
SET %MAP%2-8=WATER
SET %MAP%2-9=WALL1
SET %MAP%2-10=WATER
SET %MAP%2-11=EXITRIGHT
SET %MAP%3-1=WALL1
SET %MAP%3-2=WATER
SET %MAP%3-3=WALL1
SET %MAP%3-4=WATER
SET %MAP%3-5=WALL1
SET %MAP%3-6=WATER
SET %MAP%3-7=WATER
SET %MAP%3-8=WATER
SET %MAP%3-9=WALL1
SET %MAP%3-10=WATER
SET %MAP%3-11=WATER
SET %MAP%4-1=WALL1
SET %MAP%4-2=WATER
SET %MAP%4-3=WATER
SET %MAP%4-4=WATER
SET %MAP%4-5=WATER
SET %MAP%4-6=WATER
SET %MAP%4-7=WALL1
SET %MAP%4-8=WATER
SET %MAP%4-9=WATER
SET %MAP%4-10=WATER
SET %MAP%4-11=WALL1
SET %MAP%5-1=WALL1
SET %MAP%5-2=WALL1
SET %MAP%5-3=WATEREDGE
SET %MAP%5-4=WALL1
SET %MAP%5-5=WALL1
SET %MAP%5-6=WATER
SET %MAP%5-7=WALL1
SET %MAP%5-8=WATER
SET %MAP%5-9=WALL1
SET %MAP%5-10=WATER
SET %MAP%5-11=WALL1
SET %MAP%6-1=WALL1
SET %MAP%6-2=WALL1
SET %MAP%6-3=WALL1
SET %MAP%6-4=WALL1
SET %MAP%6-5=WATER
SET %MAP%6-6=WATER
SET %MAP%6-7=WATER
SET %MAP%6-8=WATER
SET %MAP%6-9=WALL1
SET %MAP%6-10=WATER
SET %MAP%6-11=WATER
SET %MAP%7-1=WALL1
SET %MAP%7-2=WALL1
SET %MAP%7-3=WALL1
SET %MAP%7-4=WALL1
SET %MAP%7-5=WATEREDGE
SET %MAP%7-6=WALL1
SET %MAP%7-7=WALL1
SET %MAP%7-8=WATEREDGE
SET %MAP%7-9=WALL1
SET %MAP%7-10=WALL1
SET %MAP%7-11=EXITRIGHT
GOTO :EOF