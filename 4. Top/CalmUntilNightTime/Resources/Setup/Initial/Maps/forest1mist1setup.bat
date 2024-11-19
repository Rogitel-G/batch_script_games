SET MAP=FOREST1MIST1
SET %MAP%MUSICFOLDER=CAVE
SET /a %MAP%UNDERWATER = 0
SET /a %MAP%RANBATTLECHANCE = 0
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


:EDGES
SET /a %MAP%XLIMIT = 12
SET /a %MAP%YLIMIT = 8
GOTO :EOF

:EXITS
SET /a COUNT = 0
SET /a %MAP%EXITNUM = %COUNT%
GOTO :EOF

:BUILDINGS
SET /a COUNT = 0
SET /a %MAP%BUILDINGTOT = %COUNT%
GOTO :EOF

:CHESTS
SET /a COUNT = 0

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
SET /a COUNT = 0

SET /a %MAP%SPECIALLOCATIONTOT = %COUNT%
GOTO :EOF

:SPECIALVARS
SET %MAP%!%MAP%SPECIALLOCATION%COUNT%YCOORD!-!%MAP%SPECIALLOCATION%COUNT%XCOORD!-A=!%MAP%SPECIALLOCATION%COUNT%DISPLAYA!
SET %MAP%!%MAP%SPECIALLOCATION%COUNT%YCOORD!-!%MAP%SPECIALLOCATION%COUNT%XCOORD!-B=!%MAP%SPECIALLOCATION%COUNT%DISPLAYB!
SET %MAP%!%MAP%SPECIALLOCATION%COUNT%YCOORD!-!%MAP%SPECIALLOCATION%COUNT%XCOORD!-C=!%MAP%SPECIALLOCATION%COUNT%DISPLAYC!
GOTO :EOF

:DEFINECELLS
SET %MAP%1-1=MIST1
SET %MAP%1-2=MIST1
SET %MAP%1-3=MIST1
SET %MAP%1-4=MIST1
SET %MAP%1-5=MIST1
SET %MAP%1-6=MIST1
SET %MAP%1-7=MIST1
SET %MAP%1-8=MIST1
SET %MAP%1-9=MIST1
SET %MAP%1-10=MIST1
SET %MAP%1-11=MIST1
SET %MAP%1-11=MIST1
SET %MAP%1-12=MIST1
SET %MAP%2-1=MIST1
SET %MAP%2-2=MIST1
SET %MAP%2-3=MIST1
SET %MAP%2-4=MIST1
SET %MAP%2-5=MIST1
SET %MAP%2-6=MIST1
SET %MAP%2-7=MIST1
SET %MAP%2-8=MIST1
SET %MAP%2-9=MIST1
SET %MAP%2-10=MIST1
SET %MAP%2-11=MIST1
SET %MAP%2-12=MIST1
SET %MAP%3-1=MIST1
SET %MAP%3-2=MIST1
SET %MAP%3-3=MIST1
SET %MAP%3-4=MIST1
SET %MAP%3-5=MIST1
SET %MAP%3-6=MIST1
SET %MAP%3-7=MIST1
SET %MAP%3-8=MIST1
SET %MAP%3-9=MIST1
SET %MAP%3-10=MIST1
SET %MAP%3-11=MIST1
SET %MAP%3-12=MIST1
SET %MAP%4-1=MIST1
SET %MAP%4-2=MIST1
SET %MAP%4-3=MIST1
SET %MAP%4-4=MIST1
SET %MAP%4-5=MIST1
SET %MAP%4-6=MIST1
SET %MAP%4-7=MIST1
SET %MAP%4-8=MIST1
SET %MAP%4-9=MIST1
SET %MAP%4-10=MIST1
SET %MAP%4-11=MIST1
SET %MAP%4-12=MIST1
SET %MAP%5-1=MIST1
SET %MAP%5-2=MIST1
SET %MAP%5-3=MIST1
SET %MAP%5-4=MIST1
SET %MAP%5-5=MIST1
SET %MAP%5-6=MIST1
SET %MAP%5-7=MIST1
SET %MAP%5-8=MIST1
SET %MAP%5-9=MIST1
SET %MAP%5-10=MIST1
SET %MAP%5-11=MIST1
SET %MAP%5-12=MIST1
SET %MAP%6-1=MIST1
SET %MAP%6-2=MIST1
SET %MAP%6-3=MIST1
SET %MAP%6-4=MIST1
SET %MAP%6-5=MIST1
SET %MAP%6-6=MIST1
SET %MAP%6-7=MIST1
SET %MAP%6-8=MIST1
SET %MAP%6-9=MIST1
SET %MAP%6-10=MIST1
SET %MAP%6-11=MIST1
SET %MAP%6-12=MIST1
SET %MAP%7-1=MIST1
SET %MAP%7-2=MIST1
SET %MAP%7-3=MIST1
SET %MAP%7-4=MIST1
SET %MAP%7-5=MIST1
SET %MAP%7-6=MIST1
SET %MAP%7-7=MIST1
SET %MAP%7-8=MIST1
SET %MAP%7-9=MIST1
SET %MAP%7-10=MIST1
SET %MAP%7-11=MIST1
SET %MAP%7-12=MIST1
SET %MAP%8-1=MIST1
SET %MAP%8-2=MIST1
SET %MAP%8-3=MIST1
SET %MAP%8-4=MIST1
SET %MAP%8-5=MIST1
SET %MAP%8-6=MIST1
SET %MAP%8-7=MIST1
SET %MAP%8-8=MIST1
SET %MAP%8-9=MIST1
SET %MAP%8-10=MIST1
SET %MAP%8-11=MIST1
SET %MAP%8-12=MIST1
GOTO :EOF