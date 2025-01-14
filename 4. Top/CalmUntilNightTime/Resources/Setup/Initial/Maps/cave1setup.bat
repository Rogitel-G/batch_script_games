SET MAP=CAVE1
SET %MAP%MUSICFOLDER=CAVE
SET /a %MAP%UNDERWATER = 0
SET /a %MAP%RANBATTLECHANCE = 10
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
SET /a ENEMYID = 5
:ENEMYLOOP
SET /a ENEMYID = %ENEMYID% + 1
IF NOT DEFINED ENEMY%ENEMYID%LOADED (
	SET /a ENEMY%ENEMYID%LOADED = 1
	CALL "%MISCRESOURCEPATH%\loadenemy.bat"
)
IF %ENEMYID% LSS 9 (
	GOTO :ENEMYLOOP
)
SET /a ENEMYID = %BOSSIDSTART% + 8
IF NOT DEFINED ENEMY%ENEMYID%LOADED (
	SET /a ENEMY%ENEMYID%LOADED = 1
	CALL "%MISCRESOURCEPATH%\loadenemy.bat"
)
GOTO :EOF


:EDGES
SET /a %MAP%XLIMIT = 11
SET /a %MAP%YLIMIT = 7
GOTO :EOF

:EXITS
SET /a COUNT = 0
:EXIT1
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 0 
SET /a %MAP%EXIT%COUNT%YCOORD = 1
SET %MAP%EXIT%COUNT%NEWMAP=town2
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 10
SET /a %MAP%EXIT%COUNT%NEWYCOORD = 5
:EXIT2
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 12
SET /a %MAP%EXIT%COUNT%YCOORD = 7
SET %MAP%EXIT%COUNT%NEWMAP=town3
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 3
SET /a %MAP%EXIT%COUNT%NEWYCOORD = 1
:EXIT3
SET /a COUNT = %COUNT% + 1
SET /a %MAP%EXIT%COUNT%XCOORD = 7 
SET /a %MAP%EXIT%COUNT%YCOORD = 2
SET %MAP%EXIT%COUNT%NEWMAP=cave1lvl2
SET /a %MAP%EXIT%COUNT%NEWXCOORD = 5
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
SET /a %MAP%CHEST%COUNT%XCOORD = 7
SET /a %MAP%CHEST%COUNT%YCOORD = 7
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %POTID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 2
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 0
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST2
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 3
SET /a %MAP%CHEST%COUNT%YCOORD = 6
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %HIPOTID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 1
SET /a %MAP%CHEST%COUNT%SPECIALITEMTOT = 0
SET /a %MAP%CHEST%COUNT%WEAPONTOT = 1
SET /a %MAP%CHEST%COUNT%WEAPON1 = %BKNIFEID%
SET /a %MAP%CHEST%COUNT%WEAPON1NUM = 1
SET /a %MAP%CHEST%COUNT%ARMOURTOT = 0
SET /a %MAP%CHEST%COUNT%ACCESSORYTOT = 0
CALL :CHESTVARS

:CHEST3
SET /a COUNT = %COUNT%+1
SET /a %MAP%CHEST%COUNT%XCOORD = 8
SET /a %MAP%CHEST%COUNT%YCOORD = 1
SET /a %MAP%CHEST%COUNT%ITEMTOT = 1
SET /a %MAP%CHEST%COUNT%ITEM1 = %ETHID%
SET /a %MAP%CHEST%COUNT%ITEM1NUM = 2
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
SET /a %MAP%SPECIALFIGHT%COUNT%XCOORD = 11
SET /a %MAP%SPECIALFIGHT%COUNT%YCOORD = 7
SET %MAP%SPECIALFIGHT%COUNT%ENEMYNAME=CAVEBOSS
SET %MAP%SPECIALFIGHT%COUNT%TOP=� � �
SET %MAP%SPECIALFIGHT%COUNT%MID=���ٱ
SET %MAP%SPECIALFIGHT%COUNT%BOT=�����
CALL :SETID

SET /a %MAP%SPECIALFIGHTTOT = %COUNT%
GOTO :EOF

:SETID
SET TEMP=!%MAP%SPECIALFIGHT%COUNT%ENEMYNAME!
SET /a %MAP%SPECIALFIGHT%COUNT%ENEMYID = !%TEMP%ID!
GOTO :EOF

:SPECIALLOCATIONS
GOTO :EOF

:DEFINECELLS
SET %MAP%1-1=EXITLEFT
SET %MAP%1-2=MINE1
SET %MAP%1-3=MINE1
SET %MAP%1-4=WALL1
SET %MAP%1-5=WALL1
SET %MAP%1-6=WALL1
SET %MAP%1-7=WALL1
SET %MAP%1-8=MINE1
SET %MAP%1-9=WALL1
SET %MAP%1-10=WALL1
SET %MAP%1-11=WALL1
SET %MAP%2-1=MINE1
SET %MAP%2-2=MINE1
SET %MAP%2-3=MINE1
SET %MAP%2-4=WALL1
SET %MAP%2-5=WALL1
SET %MAP%2-6=MINE1
SET %MAP%2-7=LADDER
SET %MAP%2-8=MINE1
SET %MAP%2-9=MINE1
SET %MAP%2-10=MINE1
SET %MAP%2-11=WALL1
SET %MAP%3-1=MINE1
SET %MAP%3-2=MINE1
SET %MAP%3-3=MINE1
SET %MAP%3-4=WALL1
SET %MAP%3-5=WALL1
SET %MAP%3-6=MINE1
SET %MAP%3-7=MINE1
SET %MAP%3-8=MINE1
SET %MAP%3-9=MINE1
SET %MAP%3-10=MINE1
SET %MAP%3-11=WALL1
SET %MAP%4-1=WALL1
SET %MAP%4-2=WALL1
SET %MAP%4-3=MINE1
SET %MAP%4-4=WALL1
SET %MAP%4-5=WALL1
SET %MAP%4-6=MINE1
SET %MAP%4-7=MINE1
SET %MAP%4-8=MINE1
SET %MAP%4-9=MINE1
SET %MAP%4-10=MINE1
SET %MAP%4-11=WALL1
SET %MAP%5-1=WALL1
SET %MAP%5-2=WALL1
SET %MAP%5-3=MINE1
SET %MAP%5-4=MINE1
SET %MAP%5-5=MINE1
SET %MAP%5-6=MINE1
SET %MAP%5-7=MINE1
SET %MAP%5-8=MINE1
SET %MAP%5-9=MINE1
SET %MAP%5-10=MINE1
SET %MAP%5-11=WALL1
SET %MAP%6-1=WALL1
SET %MAP%6-2=WALL1
SET %MAP%6-3=MINE1
SET %MAP%6-4=WALL1
SET %MAP%6-5=MINE1
SET %MAP%6-6=MINE1
SET %MAP%6-7=MINE1
SET %MAP%6-8=WALL1
SET %MAP%6-9=WALL1
SET %MAP%6-10=MINE1
SET %MAP%6-11=WALL1
SET %MAP%7-1=WALL1
SET %MAP%7-2=WALL1
SET %MAP%7-3=WALL1
SET %MAP%7-4=WALL1
SET %MAP%7-5=WALL1
SET %MAP%7-6=WALL1
SET %MAP%7-7=MINE1
SET %MAP%7-8=WALL1
SET %MAP%7-9=WALL1
SET %MAP%7-10=MINE1
SET %MAP%7-11=EXITRIGHT
GOTO :EOF

REM MAPDISPLAYVARTP=    �������������������������������������������������������ͻ
REM MAPDISPLAYVAR7A=    �������������������������������%CHEST1TOP%���������������%BOSSTOP%
REM MAPDISPLAYVAR7B=    �������������������������������%CHEST1MID%���������������%BOSSMID%
REM MAPDISPLAYVAR7C=    �������������������������������%CHESTBOTT%���������������%BOSSBOT%
REM MAPDISPLAYVAR6A=    �����������%CHEST2TOP%�����������������������������������������
REM MAPDISPLAYVAR6B=    �����������%CHEST2MID%�����������������������������������������
REM MAPDISPLAYVAR6C=    �����������%CHESTBOTT%�����������������������������������������
REM MAPDISPLAYVAR5A=    ���������������������������������������������������������
REM MAPDISPLAYVAR5B=    ���������������������������������������������������������
REM MAPDISPLAYVAR5C=    ���������������������������������������������������������
REM MAPDISPLAYVAR4A=    ���������������������������������������������������������
REM MAPDISPLAYVAR4B=    ���������������������������������������������������������
REM MAPDISPLAYVAR4C=    ���������������������������������������������������������
REM MAPDISPLAYVAR3A=    ���������������������������������������������������������
REM MAPDISPLAYVAR3B=    ���������������������������������������������������������
REM MAPDISPLAYVAR3C=    ���������������������������������������������������������
REM MAPDISPLAYVAR2A=    ������������������������������� �Ĵ ���������������������
REM MAPDISPLAYVAR2B=    ������������������������������� �Ĵ ���������������������
REM MAPDISPLAYVAR2C=    ������������������������������� �Ĵ ���������������������
REM MAPDISPLAYVAR1A=     �����������������������������������%CHEST3TOP%����������������
REM MAPDISPLAYVAR1B=     �����������������������������������%CHEST3MID%����������������
REM MAPDISPLAYVAR1C=     �����������������������������������%CHESTBOTT%����������������
REM MAPDISPLAYVARBM=    �������������������������������������������������������ͼ