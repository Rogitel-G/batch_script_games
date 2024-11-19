:START
SET MAP=CASTLE3
SET %MAP%MUSICFOLDER=CASTLE
SET /a %MAP%UNDERWATER = 0
SET /a %MAP%RANBATTLECHANCE = 0
CALL :LOADENEMIES
CALL :EDGES
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
::Need knights22-27
::Knight5 is enemyID 52
SET /a TEMPEND = %BOSSIDSTART% + 40
SET /a ENEMYID = %BOSSIDSTART% + 34
:BOSSLOOP
SET /a ENEMYID = %ENEMYID% + 1
IF NOT DEFINED ENEMY%ENEMYID%LOADED (
	SET /a ENEMY%ENEMYID%LOADED = 1
	CALL "%MISCRESOURCEPATH%\loadenemy.bat"
)
IF %ENEMYID% LSS %TEMPEND% (
	GOTO :BOSSLOOP
)
GOTO :EOF

:EDGES
SET /a %MAP%XLIMIT = 10
SET /a %MAP%YLIMIT = 6
GOTO :EOF

:EXITS
SET /a COUNT = 0
:EXIT1
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 9
SET /a %MAP%EXIT%COUNT%YCOORD = 1
SET %MAP%EXIT%COUNT%NEWMAP=castle
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 10
SET /a %MAP%EXIT%COUNT%NEWYCOORD = 5

SET /a %MAP%EXITNUM = %COUNT%
GOTO :EOF


:BUILDINGS
SET /a COUNT = 0
:BOOKCASE1
SET /a COUNT = %COUNT% + 1
SET %MAP%BUILDING%COUNT%FILE=bookcase1
SET %MAP%BUILDING%COUNT%PATH=CASTLERESOURCEPATH
SET /a %MAP%BUILDING%COUNT%CELLNUM = 4
SET %MAP%BUILDING%COUNT%CELL1=6-2
SET %MAP%BUILDING%COUNT%CELL2=6-3
SET %MAP%BUILDING%COUNT%CELL3=5-2
SET %MAP%BUILDING%COUNT%CELL4=5-3
SET %MAP%BUILDING%COUNT%CELL1DISPLAYA=%BOOKCASETOPLEFTA%
SET %MAP%BUILDING%COUNT%CELL1DISPLAYB=%BOOKCASETOPLEFTB%
SET %MAP%BUILDING%COUNT%CELL1DISPLAYC=%BOOKCASETOPLEFTC%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYA=%BOOKCASETOPRIGHTA%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYB=%BOOKCASETOPRIGHTB%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYC=%BOOKCASETOPRIGHTC%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYA=%BOOKCASEBOTLEFTA%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYB=%BOOKCASEBOTLEFTB%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYC=%BOOKCASEBOTLEFTC%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYA=%BOOKCASEBOTRIGHTA%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYB=%BOOKCASEBOTRIGHTB%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYC=%BOOKCASEBOTRIGHTC%
CALL :BUILDINGVARS

:BOOKCASE2
SET /a COUNT = %COUNT% + 1
SET %MAP%BUILDING%COUNT%FILE=bookcase2
SET %MAP%BUILDING%COUNT%PATH=CASTLERESOURCEPATH
SET /a %MAP%BUILDING%COUNT%CELLNUM = 4
SET %MAP%BUILDING%COUNT%CELL1=6-4
SET %MAP%BUILDING%COUNT%CELL2=6-5
SET %MAP%BUILDING%COUNT%CELL3=5-4
SET %MAP%BUILDING%COUNT%CELL4=5-5
SET %MAP%BUILDING%COUNT%CELL1DISPLAYA=%BOOKCASETOPLEFTA%
SET %MAP%BUILDING%COUNT%CELL1DISPLAYB=%BOOKCASETOPLEFTB%
SET %MAP%BUILDING%COUNT%CELL1DISPLAYC=%BOOKCASETOPLEFTC%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYA=%BOOKCASETOPRIGHTA%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYB=%BOOKCASETOPRIGHTB%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYC=%BOOKCASETOPRIGHTC%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYA=%BOOKCASEBOTLEFTA%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYB=%BOOKCASEBOTLEFTB%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYC=%BOOKCASEBOTLEFTC%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYA=%BOOKCASEBOTRIGHTA%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYB=%BOOKCASEBOTRIGHTB%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYC=%BOOKCASEBOTRIGHTC%
CALL :BUILDINGVARS

:BOOKCASE3
SET /a COUNT = %COUNT% + 1
SET %MAP%BUILDING%COUNT%FILE=bookcase3
SET %MAP%BUILDING%COUNT%PATH=CASTLERESOURCEPATH
SET /a %MAP%BUILDING%COUNT%CELLNUM = 4
SET %MAP%BUILDING%COUNT%CELL1=6-6
SET %MAP%BUILDING%COUNT%CELL2=6-7
SET %MAP%BUILDING%COUNT%CELL3=5-6
SET %MAP%BUILDING%COUNT%CELL4=5-7
SET %MAP%BUILDING%COUNT%CELL1DISPLAYA=%BOOKCASETOPLEFTA%
SET %MAP%BUILDING%COUNT%CELL1DISPLAYB=%BOOKCASETOPLEFTB%
SET %MAP%BUILDING%COUNT%CELL1DISPLAYC=%BOOKCASETOPLEFTC%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYA=%BOOKCASETOPRIGHTA%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYB=%BOOKCASETOPRIGHTB%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYC=%BOOKCASETOPRIGHTC%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYA=%BOOKCASEBOTLEFTA%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYB=%BOOKCASEBOTLEFTB%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYC=%BOOKCASEBOTLEFTC%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYA=%BOOKCASEBOTRIGHTA%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYB=%BOOKCASEBOTRIGHTB%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYC=%BOOKCASEBOTRIGHTC%
CALL :BUILDINGVARS

:BOOKCASE4
SET /a COUNT = %COUNT% + 1
SET %MAP%BUILDING%COUNT%FILE=bookcase4
SET %MAP%BUILDING%COUNT%PATH=CASTLERESOURCEPATH
SET /a %MAP%BUILDING%COUNT%CELLNUM = 4
SET %MAP%BUILDING%COUNT%CELL1=6-8
SET %MAP%BUILDING%COUNT%CELL2=6-9
SET %MAP%BUILDING%COUNT%CELL3=5-8
SET %MAP%BUILDING%COUNT%CELL4=5-9
SET %MAP%BUILDING%COUNT%CELL1DISPLAYA=%BOOKCASETOPLEFTA%
SET %MAP%BUILDING%COUNT%CELL1DISPLAYB=%BOOKCASETOPLEFTB%
SET %MAP%BUILDING%COUNT%CELL1DISPLAYC=%BOOKCASETOPLEFTC%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYA=%BOOKCASETOPRIGHTA%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYB=%BOOKCASETOPRIGHTB%
SET %MAP%BUILDING%COUNT%CELL2DISPLAYC=%BOOKCASETOPRIGHTC%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYA=%BOOKCASEBOTLEFTA%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYB=%BOOKCASEBOTLEFTB%
SET %MAP%BUILDING%COUNT%CELL3DISPLAYC=%BOOKCASEBOTLEFTC%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYA=%BOOKCASEBOTRIGHTA%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYB=%BOOKCASEBOTRIGHTB%
SET %MAP%BUILDING%COUNT%CELL4DISPLAYC=%BOOKCASEBOTRIGHTC%
CALL :BUILDINGVARS

SET /a %MAP%BUILDINGTOT = %COUNT%
GOTO :EOF

:BUILDINGVARS
SET /a CELLCOUNT = 0
:BUILDINGVARSLOOP
SET /a CELLCOUNT = %CELLCOUNT% + 1
SET %MAP%!%MAP%BUILDING%COUNT%CELL%CELLCOUNT%!-A=!%MAP%BUILDING%COUNT%CELL%CELLCOUNT%DISPLAYA!
SET %MAP%!%MAP%BUILDING%COUNT%CELL%CELLCOUNT%!-B=!%MAP%BUILDING%COUNT%CELL%CELLCOUNT%DISPLAYB!
SET %MAP%!%MAP%BUILDING%COUNT%CELL%CELLCOUNT%!-C=!%MAP%BUILDING%COUNT%CELL%CELLCOUNT%DISPLAYC!
IF %CELLCOUNT% LSS !%MAP%BUILDING%COUNT%CELLNUM! (
	GOTO :BUILDINGVARSLOOP
)
GOTO :EOF


:CHESTS
SET /a COUNT = 0
:CHEST1
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 2
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %POISONITEMID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 5
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST2
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 3
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %SLEEPITEMID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 4
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST3
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 4
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %BLINDITEMID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 5
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST4
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 5
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %STOPITEMID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST5
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 6
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %CMBSTONEID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
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
:SPECIALFIGHT1
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 2
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT22
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT2
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 3
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT23
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT3
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 4
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT24
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT4
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 5
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT25
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT5
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 6
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT26
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT6
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 8
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 3
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT27
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

SET /a %MAP%SPECIALFIGHTTOT = %COUNT%
GOTO :EOF

:SETID
SET TEMP=!%MAP%SPECIALFIGHT%COUNT%ENEMYNAME!
SET /a %MAP%SPECIALFIGHT%COUNT%ENEMYID = !%TEMP%ID!
GOTO :EOF

:SPECIALLOCATIONS
SET /a COUNT = 0
SET /a %MAP%SPECIALLOCATIONTOT = %COUNT%
GOTO :EOF

:DEFINECELLS
SET %MAP%1-1=WALL2
SET %MAP%1-2=PATH1
SET %MAP%1-3=PATH1
SET %MAP%1-4=PATH1
SET %MAP%1-5=PATH1
SET %MAP%1-6=PATH1
SET %MAP%1-7=WALL2
SET %MAP%1-8=PATH1
SET %MAP%1-9=LADDER
SET %MAP%1-10=WALL2
SET %MAP%2-1=WALL2
SET %MAP%2-2=PATH1
SET %MAP%2-3=PATH1
SET %MAP%2-4=PATH1
SET %MAP%2-5=PATH1
SET %MAP%2-6=PATH1
SET %MAP%2-7=WALL2
SET %MAP%2-8=PATH1
SET %MAP%2-9=PATH1
SET %MAP%2-10=WALL2
SET %MAP%3-1=WALL2
SET %MAP%3-2=WALL2
SET %MAP%3-3=WALL2
SET %MAP%3-4=PATH1
SET %MAP%3-5=WALL2
SET %MAP%3-6=WALL2
SET %MAP%3-7=WALL2
SET %MAP%3-8=PATH1
SET %MAP%3-9=WALL2
SET %MAP%3-10=WALL2
SET %MAP%4-1=WALL2
SET %MAP%4-2=PATH1
SET %MAP%4-3=PATH1
SET %MAP%4-4=PATH1
SET %MAP%4-5=PATH1
SET %MAP%4-6=PATH1
SET %MAP%4-7=PATH1
SET %MAP%4-8=PATH1
SET %MAP%4-9=PATH1
SET %MAP%4-10=WALL2
SET %MAP%5-1=WALL2
SET %MAP%5-2=PATH1
SET %MAP%5-3=PATH1
SET %MAP%5-4=PATH1
SET %MAP%5-5=PATH1
SET %MAP%5-6=PATH1
SET %MAP%5-7=PATH1
SET %MAP%5-8=PATH1
SET %MAP%5-9=PATH1
SET %MAP%5-10=WALL2
SET %MAP%6-1=WALL2
SET %MAP%6-2=PATH1
SET %MAP%6-3=PATH1
SET %MAP%6-4=PATH1
SET %MAP%6-5=PATH1
SET %MAP%6-6=PATH1
SET %MAP%6-7=PATH1
SET %MAP%6-8=PATH1
SET %MAP%6-9=PATH1
SET %MAP%6-10=WALL2
GOTO :EOF
