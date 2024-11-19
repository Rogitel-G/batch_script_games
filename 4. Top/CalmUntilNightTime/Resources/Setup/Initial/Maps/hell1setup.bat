SET MAP=HELL1
SET %MAP%MUSICFOLDER=HELL
SET /a %MAP%UNDERWATER = 0
SET /a %MAP%RANBATTLECHANCE = 15
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
SET /a ENEMYID = 40
:ENEMYLOOP
SET /a ENEMYID = %ENEMYID% + 1
IF NOT DEFINED ENEMY%ENEMYID%LOADED (
	SET /a ENEMY%ENEMYID%LOADED = 1
	CALL "%MISCRESOURCEPATH%\loadenemy.bat"
)
IF %ENEMYID% LSS 45 (
	GOTO :ENEMYLOOP
)
SET /a ENEMYID = %RAGATAID%
IF NOT DEFINED ENEMY%ENEMYID%LOADED (
	SET /a ENEMY%ENEMYID%LOADED = 1
	CALL "%MISCRESOURCEPATH%\loadenemy.bat"
)
GOTO :EOF


:EDGES
SET /a %MAP%XLIMIT = 11
SET /a %MAP%YLIMIT = 9
GOTO :EOF

:EXITS
SET /a COUNT = 0
:EXIT1
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 0 
SET /a %MAP%EXIT%COUNT%YCOORD = 1
SET %MAP%EXIT%COUNT%NEWMAP=town6
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 7
SET /a %MAP%EXIT%COUNT%NEWYCOORD = 6

SET /a %MAP%EXITNUM = %COUNT%
GOTO :EOF

:BUILDINGS
SET /a COUNT = 0
:RAGATA
SET /a COUNT = %COUNT% + 1
SET %MAP%BUILDING%COUNT%FILE=enterragata
SET %MAP%BUILDING%COUNT%PATH=HELLRESOURCEPATH
SET /a %MAP%BUILDING%COUNT%CELLNUM = 8
SET %MAP%BUILDING%COUNT%CELL1=9-10
SET %MAP%BUILDING%COUNT%CELL2=9-11
SET %MAP%BUILDING%COUNT%CELL3=8-10
SET %MAP%BUILDING%COUNT%CELL4=8-11
SET %MAP%BUILDING%COUNT%CELL5=7-10
SET %MAP%BUILDING%COUNT%CELL6=7-11
SET %MAP%BUILDING%COUNT%CELL7=6-10
SET %MAP%BUILDING%COUNT%CELL8=6-11
SET %MAP%BUILDING%COUNT%CELL1DISPLAYA=     
SET %MAP%BUILDING%COUNT%CELL1DISPLAYB=   \�
SET %MAP%BUILDING%COUNT%CELL1DISPLAYC=   ��
SET %MAP%BUILDING%COUNT%CELL2DISPLAYA=     
SET %MAP%BUILDING%COUNT%CELL2DISPLAYB=�/   
SET %MAP%BUILDING%COUNT%CELL2DISPLAYC=��   
SET %MAP%BUILDING%COUNT%CELL3DISPLAYA=   ��
SET %MAP%BUILDING%COUNT%CELL3DISPLAYB=� ���
SET %MAP%BUILDING%COUNT%CELL3DISPLAYC=�ʹ u
SET %MAP%BUILDING%COUNT%CELL4DISPLAYA=ܳ   
SET %MAP%BUILDING%COUNT%CELL4DISPLAYB=��� �
SET %MAP%BUILDING%COUNT%CELL4DISPLAYC=u �ͼ
SET %MAP%BUILDING%COUNT%CELL5DISPLAYA=  � ~
SET %MAP%BUILDING%COUNT%CELL5DISPLAYB=  � ~
SET %MAP%BUILDING%COUNT%CELL5DISPLAYC=  ���
SET %MAP%BUILDING%COUNT%CELL6DISPLAYA=~ �  
SET %MAP%BUILDING%COUNT%CELL6DISPLAYB=~ �  
SET %MAP%BUILDING%COUNT%CELL6DISPLAYC=���  
SET %MAP%BUILDING%COUNT%CELL7DISPLAYA=   � 
SET %MAP%BUILDING%COUNT%CELL7DISPLAYB=   � 
SET %MAP%BUILDING%COUNT%CELL7DISPLAYC=     
SET %MAP%BUILDING%COUNT%CELL8DISPLAYA= �   
SET %MAP%BUILDING%COUNT%CELL8DISPLAYB= �   
SET %MAP%BUILDING%COUNT%CELL8DISPLAYC=     
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
SET /a %MAP%CHEST%COUNT%XCOORD = 8
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %ASHELLSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %APROTECTSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %AHASTESTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 1
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST2
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 11
SET /a %MAP%CHEST%COUNT%YCOORD = 2
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %STLBETTERSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %FINDMOREGILSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %GILTOSSSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 1
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST3
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 2
SET /a %MAP%CHEST%COUNT%YCOORD = 8
SET /a %MAP%CHEST%COUNT%ITEMTOT = 0
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 3
SET /a %MAP%CHEST%COUNT%SPECIALITEM1 = %MAXHPSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM1NUM = 5
SET /a %MAP%CHEST%COUNT%SPECIALITEM2 = %STRSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM2NUM = 5
SET /a %MAP%CHEST%COUNT%SPECIALITEM3 = %MAGSTONEID%
SET /a %MAP%CHEST%COUNT%SPECIALITEM3NUM = 5
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

:SPECIALLOCATIONS
SET /a COUNT = 0
SET /a %MAP%SPECIALLOCATIONTOT = %COUNT%
GOTO :EOF

:SPECIALVARS
SET %MAP%!%MAP%SPECIALLOCATION%COUNT%YCOORD!-!%MAP%SPECIALLOCATION%COUNT%XCOORD!-A=!%MAP%SPECIALLOCATION%COUNT%DISPLAYA!
SET %MAP%!%MAP%SPECIALLOCATION%COUNT%YCOORD!-!%MAP%SPECIALLOCATION%COUNT%XCOORD!-B=!%MAP%SPECIALLOCATION%COUNT%DISPLAYB!
SET %MAP%!%MAP%SPECIALLOCATION%COUNT%YCOORD!-!%MAP%SPECIALLOCATION%COUNT%XCOORD!-C=!%MAP%SPECIALLOCATION%COUNT%DISPLAYC!
GOTO :EOF

:DEFINECELLS
SET %MAP%1-1=HELL1
SET %MAP%1-2=HELL1
SET %MAP%1-3=HELL1
SET %MAP%1-4=LAVA1
SET %MAP%1-5=LAVA1
SET %MAP%1-6=LAVA1
SET %MAP%1-7=LAVA1
SET %MAP%1-8=HELL1
SET %MAP%1-9=LAVA1
SET %MAP%1-10=LAVA1
SET %MAP%1-11=LAVA1
SET %MAP%2-1=HELL1
SET %MAP%2-2=HELL1
SET %MAP%2-3=HELL1
SET %MAP%2-4=LAVA1
SET %MAP%2-5=LAVA1
SET %MAP%2-6=LAVA1
SET %MAP%2-7=LAVA1
SET %MAP%2-8=HELL1
SET %MAP%2-9=LAVA1
SET %MAP%2-10=LAVA1
SET %MAP%2-11=HELL1
SET %MAP%3-1=HELL1
SET %MAP%3-2=HELL1
SET %MAP%3-3=HELL1
SET %MAP%3-4=HELL1
SET %MAP%3-5=HELL1
SET %MAP%3-6=HELL1
SET %MAP%3-7=HELL1
SET %MAP%3-8=HELL1
SET %MAP%3-9=HELL1
SET %MAP%3-10=HELL1
SET %MAP%3-11=HELL1
SET %MAP%4-1=HELL1
SET %MAP%4-2=HELL1
SET %MAP%4-3=HELL1
SET %MAP%4-4=HELL1
SET %MAP%4-5=LAVA1
SET %MAP%4-6=LAVA1
SET %MAP%4-7=LAVA1
SET %MAP%4-8=HELL1
SET %MAP%4-9=HELL1
SET %MAP%4-10=LAVA1
SET %MAP%4-11=LAVA1
SET %MAP%5-1=LAVA1
SET %MAP%5-2=LAVA1
SET %MAP%5-3=LAVA1
SET %MAP%5-4=HELL1
SET %MAP%5-5=LAVA1
SET %MAP%5-6=LAVA1
SET %MAP%5-7=LAVA1
SET %MAP%5-8=HELL1
SET %MAP%5-9=LAVA1
SET %MAP%5-10=LAVA1
SET %MAP%5-11=LAVA1
SET %MAP%6-1=LAVA1
SET %MAP%6-2=LAVA1
SET %MAP%6-3=LAVA1
SET %MAP%6-4=HELL1
SET %MAP%6-5=HELL1
SET %MAP%6-6=HELL1
SET %MAP%6-7=HELL1
SET %MAP%6-8=HELL1
SET %MAP%6-9=HELL1
SET %MAP%6-10=HELL1
SET %MAP%6-11=HELL1
SET %MAP%7-1=LAVA1
SET %MAP%7-2=LAVA1
SET %MAP%7-3=LAVA1
SET %MAP%7-4=HELL1
SET %MAP%7-5=LAVA1
SET %MAP%7-6=LAVA1
SET %MAP%7-7=LAVA1
SET %MAP%7-8=LAVA1
SET %MAP%7-9=LAVA1
SET %MAP%7-10=HELL1
SET %MAP%7-11=HELL1
SET %MAP%8-1=LAVA1
SET %MAP%8-2=HELL1
SET %MAP%8-3=HELL1
SET %MAP%8-4=HELL1
SET %MAP%8-5=LAVA1
SET %MAP%8-6=LAVA1
SET %MAP%8-7=LAVA1
SET %MAP%8-8=LAVA1
SET %MAP%8-9=LAVA1
SET %MAP%8-10=HELL1
SET %MAP%8-11=HELL1
SET %MAP%9-1=LAVA1
SET %MAP%9-2=LAVA1
SET %MAP%9-3=LAVA1
SET %MAP%9-4=LAVA1
SET %MAP%9-5=LAVA1
SET %MAP%9-6=LAVA1
SET %MAP%9-7=LAVA1
SET %MAP%9-8=LAVA1
SET %MAP%9-9=LAVA1
SET %MAP%9-10=HELL1
SET %MAP%9-11=HELL1
GOTO :EOF
