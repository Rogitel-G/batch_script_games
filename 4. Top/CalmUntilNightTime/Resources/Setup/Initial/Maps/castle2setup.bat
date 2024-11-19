SET MAP=CASTLE2
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
::Need knights5-21
::Knight1 is enemyID 45
SET /a TEMPEND = %BOSSIDSTART% + 34
SET /a ENEMYID = %BOSSIDSTART% + 17
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
SET /a %MAP%YLIMIT = 7
GOTO :EOF

:EXITS
SET /a COUNT = 0
:EXIT1
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 1 
SET /a %MAP%EXIT%COUNT%YCOORD = 4
SET %MAP%EXIT%COUNT%NEWMAP=castle
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 3
SET /a %MAP%EXIT%COUNT%NEWYCOORD = 5

SET /a %MAP%EXITNUM = %COUNT%
GOTO :EOF


:BUILDINGS
SET /a COUNT = 0
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
SET /a %MAP%CHEST%COUNT%XCOORD = 3
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %MAXHPSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %IKEASTAFFID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST2
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 4
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 2
SET /a %MAP%CHEST%COUNT%ACCESSORY1 = %SEERSTONEID%
SET /a %MAP%CHEST%COUNT%ACCESSORY1NUM = 1
SET /a %MAP%CHEST%COUNT%ACCESSORY2 = %CBALLID%
SET /a %MAP%CHEST%COUNT%ACCESSORY2NUM = 1
CALL :CHESTVARS

:CHEST3
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 5
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %MAGSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPON1 = %FWANDID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST4
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 6
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %MAXMPSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %MAXHPSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 1
SET /a %MAP%CHEST%COUNT%ACCESSORY1 = %APRINGID%
SET /a %MAP%CHEST%COUNT%ACCESSORY1NUM = 1
CALL :CHESTVARS

:CHEST5
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 7
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %ACCSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %EVASTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 3
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 1
SET /a %MAP%CHEST%COUNT%ACCESSORY1 = %PHOENIXFEATHERID%
SET /a %MAP%CHEST%COUNT%ACCESSORY1NUM = 1
CALL :CHESTVARS

:CHEST6
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 8
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %MAXHPSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 10
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %MAXMPSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 10
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %LCKSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 10
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST7
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 9
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %FUSRODAGGERID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST8
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 2
SET /a %MAP%CHEST%COUNT%YCOORD = 2
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %ELIXID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST9
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 10
SET /a %MAP%CHEST%COUNT%YCOORD = 2
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %SPDSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 3
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 1
SET /a %MAP%CHEST%COUNT%ARMOUR1 = %BATSUITID%
SET /a %MAP%CHEST%COUNT%ARMOUR1NUM = 1
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST10
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 4
SET /a %MAP%CHEST%COUNT%YCOORD = 3
SET /a %MAP%CHEST%COUNT%ITEMTOT = 2
SET /a %MAP%CHEST%COUNT%ITEM1 = %HIPOTID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 3
SET /a %MAP%CHEST%COUNT%ITEM2 = %HIETHID%
SET /a %MAP%CHEST%COUNT%ITEM2NUM = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST11
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 5
SET /a %MAP%CHEST%COUNT%YCOORD = 3
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %ENDSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %SPRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 1
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 1
SET /a %MAP%CHEST%COUNT%ARMOUR1 = %LEATHERARMOURID%
SET /a %MAP%CHEST%COUNT%ARMOUR1NUM = 1
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST12
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 6
SET /a %MAP%CHEST%COUNT%YCOORD = 3
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %SPDSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOUR1 = %STEELARMOURID%
SET /a %MAP%CHEST%COUNT%ARMOUR1NUM = 1
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST13
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 7
SET /a %MAP%CHEST%COUNT%YCOORD = 3
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %MAGSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %EVASTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST14
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 8
SET /a %MAP%CHEST%COUNT%YCOORD = 3
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %STRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 10
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %ENDSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 10
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %MUGSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 1
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST15
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 9
SET /a %MAP%CHEST%COUNT%YCOORD = 3
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 1
SET /a %MAP%CHEST%COUNT%ACCESSORY1 = %DESTROYERID%
SET /a %MAP%CHEST%COUNT%ACCESSORY1NUM = 1
CALL :CHESTVARS

:CHEST16
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 4
SET /a %MAP%CHEST%COUNT%YCOORD = 4
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %MINILIXID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST17
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 4
SET /a %MAP%CHEST%COUNT%YCOORD = 5
SET /a %MAP%CHEST%COUNT%ITEMTOT = 2
SET /a %MAP%CHEST%COUNT%ITEM1 = %SUPPOTID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%ITEM2 = %SUPETHID%
SET /a %MAP%CHEST%COUNT%ITEM2NUM = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST18
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 5
SET /a %MAP%CHEST%COUNT%YCOORD = 5
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %STRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %CLEAVERID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST19
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 6
SET /a %MAP%CHEST%COUNT%YCOORD = 5
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %ALIFEID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %SPDSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOUR1 = %ELVENARMOURID%
SET /a %MAP%CHEST%COUNT%ARMOUR1NUM = 2
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST20
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 7
SET /a %MAP%CHEST%COUNT%YCOORD = 5
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %STRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %LCKSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %CREDARMID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST21
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 8
SET /a %MAP%CHEST%COUNT%YCOORD = 5
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %SPRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 10
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %ACCSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 10
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %EVASTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 10
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST22
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 9
SET /a %MAP%CHEST%COUNT%YCOORD = 5
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 1
SET /a %MAP%CHEST%COUNT%ARMOUR1 = %ADAMANTIUMARMOURID%
SET /a %MAP%CHEST%COUNT%ARMOUR1NUM = 1
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST23
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 2
SET /a %MAP%CHEST%COUNT%YCOORD = 6
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %SWORDID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST24
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 10
SET /a %MAP%CHEST%COUNT%YCOORD = 6
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %BAZOOKAID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST25
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 3
SET /a %MAP%CHEST%COUNT%YCOORD = 7
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %ELIXID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST26
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 4
SET /a %MAP%CHEST%COUNT%YCOORD = 7
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %ACCSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %EVASTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 1
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 1
SET /a %MAP%CHEST%COUNT%ARMOUR1 = %PLASTICARMOURID%
SET /a %MAP%CHEST%COUNT%ARMOUR1NUM = 1
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST27
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 5
SET /a %MAP%CHEST%COUNT%YCOORD = 7
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %EVASTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %SPDSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 2
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 1
SET /a %MAP%CHEST%COUNT%ACCESSORY1 = %MIDASAMULETID%
SET /a %MAP%CHEST%COUNT%ACCESSORY1NUM = 1
CALL :CHESTVARS

:CHEST28
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 6
SET /a %MAP%CHEST%COUNT%YCOORD = 7
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %ACCSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %STRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 1
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %ELVENBOWID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST29
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 7
SET /a %MAP%CHEST%COUNT%YCOORD = 7
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %ACCSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 3
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 1
SET /a %MAP%CHEST%COUNT%ARMOUR1 = %DIAMONDARMOURID%
SET /a %MAP%CHEST%COUNT%ARMOUR1NUM = 3
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST30
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 8
SET /a %MAP%CHEST%COUNT%YCOORD = 7
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 4
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %MAGSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 10
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %SPDSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 10
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %DOUBLEEXPSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM4 = %HALFMPSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM4NUM = 1
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST31
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 9
SET /a %MAP%CHEST%COUNT%YCOORD = 7
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 1
SET /a %MAP%CHEST%COUNT%ACCESSORY1 = %LEPPOTID%
SET /a %MAP%CHEST%COUNT%ACCESSORY1NUM = 1
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
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 3
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT5
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

:SPECIALFIGHT2
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 4
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT6
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

:SPECIALFIGHT3
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 5
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT7
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

:SPECIALFIGHT4
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 6
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT8
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

:SPECIALFIGHT5
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 7
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT9
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

:SPECIALFIGHT6
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 8
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT10
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

:SPECIALFIGHT7
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 9
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 2
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT11
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

:SPECIALFIGHT8
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 3
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 3
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT12
SET %MAP%SPECIALFIGHT%COUNT%TOP=%WIZTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%WIZMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%WIZBOT%
CALL :SETID

:SPECIALFIGHT9
::SET /a COUNT = %COUNT% + 1
::SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 3
::SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 4
::SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT13
::SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
::SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
::SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
::CALL :SETID

:SPECIALFIGHT10
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 3
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 5
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT14
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT11
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 3
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 6
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT15
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT12
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 4
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 6
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT16
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT13
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 5
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 6
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT17
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT14
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 6
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 6
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT18
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT15
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 7
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 6
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT19
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT16
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 8
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 6
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT20
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

:SPECIALFIGHT17
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 9
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 6
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=KNIGHT21
SET %MAP%SPECIALFIGHT%COUNT%TOP=%KNIGHTTOP%
SET %MAP%SPECIALFIGHT%COUNT%MID=%KNIGHTMID%
SET %MAP%SPECIALFIGHT%COUNT%BOT=%KNIGHTBOT%
CALL :SETID

SET /a %MAP%SPECIALFIGHTTOT = %COUNT%
GOTO :EOF

:SETID
SET TEMP=!%MAP%SPECIALFIGHT%COUNT%ENEMYNAME!
SET /a %MAP%SPECIALFIGHT%COUNT%ENEMYID = !%TEMP%ID!
GOTO :EOF

:SPECIALLOCATIONS
SET /a COUNT = 0
:SPECIALLOCATION1
SET /a COUNT = %COUNT% + 1
SET /a %MAP%SPECIALLOCATION%COUNT%XCOORD = 3
SET /a %MAP%SPECIALLOCATION%COUNT%YCOORD = 4
SET %MAP%SPECIALLOCATION%COUNT%FILE=knightswizards
SET %MAP%SPECIALLOCATION%COUNT%PATH=CASTLERESOURCEPATH
SET /a %MAP%SPECIALLOCATION%COUNT%DISPLAY = 0

SET /a %MAP%SPECIALLOCATIONTOT = %COUNT%
GOTO :EOF

:DEFINECELLS
SET %MAP%1-1=WALL2
SET %MAP%1-2=WALL2
SET %MAP%1-3=PATH1
SET %MAP%1-4=PATH1
SET %MAP%1-5=PATH1
SET %MAP%1-6=PATH1
SET %MAP%1-7=PATH1
SET %MAP%1-8=PATH1
SET %MAP%1-9=PATH1
SET %MAP%1-10=WALL2
SET %MAP%2-1=WALL2
SET %MAP%2-2=PATH1
SET %MAP%2-3=PATH1
SET %MAP%2-4=PATH1
SET %MAP%2-5=PATH1
SET %MAP%2-6=PATH1
SET %MAP%2-7=PATH1
SET %MAP%2-8=PATH1
SET %MAP%2-9=PATH1
SET %MAP%2-10=PATH1
SET %MAP%3-1=WALL2
SET %MAP%3-2=WALL2
SET %MAP%3-3=PATH1
SET %MAP%3-4=PATH1
SET %MAP%3-5=PATH1
SET %MAP%3-6=PATH1
SET %MAP%3-7=PATH1
SET %MAP%3-8=PATH1
SET %MAP%3-9=PATH1
SET %MAP%3-10=WALL2
SET %MAP%4-1=LADDER
SET %MAP%4-2=PATH1
SET %MAP%4-3=PATH1
SET %MAP%4-4=PATH1
SET %MAP%4-5=WALL2
SET %MAP%4-6=WALL2
SET %MAP%4-7=WALL2
SET %MAP%4-8=WALL2
SET %MAP%4-9=WALL2
SET %MAP%4-10=WALL2
SET %MAP%5-1=WALL2
SET %MAP%5-2=WALL2
SET %MAP%5-3=PATH1
SET %MAP%5-4=PATH1
SET %MAP%5-5=PATH1
SET %MAP%5-6=PATH1
SET %MAP%5-7=PATH1
SET %MAP%5-8=PATH1
SET %MAP%5-9=PATH1
SET %MAP%5-10=WALL2
SET %MAP%6-1=WALL2
SET %MAP%6-2=WALL2
SET %MAP%6-3=PATH1
SET %MAP%6-4=PATH1
SET %MAP%6-5=PATH1
SET %MAP%6-6=PATH1
SET %MAP%6-7=PATH1
SET %MAP%6-8=PATH1
SET %MAP%6-9=PATH1
SET %MAP%6-10=PATH1
SET %MAP%7-1=WALL2
SET %MAP%7-2=WALL2
SET %MAP%7-3=PATH1
SET %MAP%7-4=PATH1
SET %MAP%7-5=PATH1
SET %MAP%7-6=PATH1
SET %MAP%7-7=PATH1
SET %MAP%7-8=PATH1
SET %MAP%7-9=PATH1
SET %MAP%7-10=WALL2
GOTO :EOF

