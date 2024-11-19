GOTO :HERE
@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
SET RESOURCEPATH=C:\Game\Resources
SET MINERESOURCEPATH=%RESOURCEPATH%\Mine
SET INITIALRESOURCEPATH=%RESOURCEPATH%\Setup\Initial
SET TUTORIALRESOURCEPATH=%RESOURCEPATH%\Tutorial
SET NEWRESOURCEPATH=%RESOURCEPATH%\Setup\New
SET MISCRESOURCEPATH=%RESOURCEPATH%\Misc
SET DYNAMICRESOURCEPATH=%RESOURCEPATH%\Dynamic
ECHO Started %TIME:~0,8%
ECHO.
CALL "%INITIALRESOURCEPATH%\spellstats.bat"
ECHO Done Spells %TIME:~0,8%
CALL "%INITIALRESOURCEPATH%\skilllist.bat"
ECHO Done Skills %TIME:~0,8%
CALL "%INITIALRESOURCEPATH%\specials.bat"
ECHO Done Specials %TIME:~0,8%
CALL "%INITIALRESOURCEPATH%\itemlist.bat"
ECHO Done Items %TIME:~0,8%
CALL "%INITIALRESOURCEPATH%\specialitemlist.bat"
ECHO Done Special Items %TIME:~0,8%
CALL "%INITIALRESOURCEPATH%\weaponstats.bat"
ECHO Done Weapons %TIME:~0,8%
CALL "%INITIALRESOURCEPATH%\armourstats.bat"
ECHO Done Armour %TIME:~0,8%
CALL "%INITIALRESOURCEPATH%\accessorystats.bat"
ECHO Done Accessories %TIME:~0,8%
CALL "%INITIALRESOURCEPATH%\minestats.bat"
CALL "%INITIALRESOURCEPATH%\minefacilities.bat"
CALL "%INITIALRESOURCEPATH%\enemyskilllist.bat"
CALL "%INITIALRESOURCEPATH%\pickaxes.bat"
CALL "%INITIALRESOURCEPATH%\sacks.bat"
CALL "%INITIALRESOURCEPATH%\dwarfspecials.bat"
CALL "%INITIALRESOURCEPATH%\settabsvars.bat"
CALL "%NEWRESOURCEPATH%\initialmine.bat"
ECHO Done Mine Stuff %TIME:~0,8%
ECHO.
ECHO Finished %TIME:~0,8%
ECHO.
pause
SET /a PLAYERLVL = 20
SET /a REMOTEACCESS = 1
SET /a PLAYERGIL = 20000
SET /a MINETUTORIALSEEN = 0





:HERE
IF %REMOTEACCESS% EQU 0 (
	CALL :SETLOCATION
) ELSE (
	SET /a REMOTEACCESS = 0
)
IF %MINETUTORIALSEEN% EQU 0 (
	CALL "%TUTORIALRESOURCEPATH%\mineexample.bat"
	SET /a STORY18VERSIONNUM = 2
)
:START
CLS
ECHO.
ECHO Dwarf Sultan: Hi^^! What would you like to do?
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
::ECHO.
::ECHO. 7 - Reload Items
::ECHO. 8 - Reload Equipment
::ECHO. 9 - Pass Time
::ECHO. 10 - Adjust Player Level
ECHO.
ECHO. 0 - Leave
ECHO.
:CHOICE
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL "%MINERESOURCEPATH%\collectitems.bat"
) ELSE IF "%CHOICE%" EQU "2" (
	CALL "%MINERESOURCEPATH%\manageemployment.bat"
) ELSE IF "%CHOICE%" EQU "3" (
	CALL "%MINERESOURCEPATH%\manageemployees.bat"
) ELSE IF "%CHOICE%" EQU "4" (
	CALL "%MINERESOURCEPATH%\investgil.bat"
) ELSE IF "%CHOICE%" EQU "5" (
	CALL "%MINERESOURCEPATH%\mineshop.bat"
) ELSE IF "%CHOICE%" EQU "6" (
	CALL "%MINERESOURCEPATH%\checkstats.bat"
) ELSE IF "%CHOICE%" EQU "0" (
	CALL "%REMOTERESOURCEPATH%\mine.bat"
	GOTO :EOF
) ELSE (
	GOTO :START
)
IF %TELEPORTREMOTEACCESS% EQU 0 (
	IF !PLAYERKEYITEM%TELESTONEID%ACQUIRED! EQU 1 (
		CALL :REMOTETELEPORT
	)
)
GOTO :START
::) ELSE IF "%CHOICE%" EQU "7" (
::	CALL "%INITIALRESOURCEPATH%\itemlist.bat"
::	ECHO Done Items
::	CALL "%INITIALRESOURCEPATH%\specialitemlist.bat"
::	ECHO Done Special Items
::) ELSE IF "%CHOICE%" EQU "8" (
::	CALL "%INITIALRESOURCEPATH%\weaponstats.bat"
::	ECHO Done Weapons
::	CALL "%INITIALRESOURCEPATH%\armourstats.bat"
::	ECHO Done Armour
::	CALL "%INITIALRESOURCEPATH%\accessorystats.bat"
::	ECHO Done Accessories
::) ELSE IF "%CHOICE%" EQU "9" (
::	CALL "%MINERESOURCEPATH%\changetime.bat"
::) ELSE IF "%CHOICE%" EQU "10" (
::	CALL "%MINERESOURCEPATH%\alterplayerstats.bat"
:SETLOCATION
SET /a PLAYERXCOORD = 8
SET /a PLAYERYCOORD = 6
GOTO :EOF

:REMOTETELEPORT
SET /a TELEPORTREMOTEACCESS = 1
CLS
ECHO.
ECHO %DWARF1NAME%: Excuse me sir^^!
ECHO.
TIMEOUT /T 2 > nul
ECHO %DWARF1NAME%: I also found this. I think it might be useful for you.
ECHO.
TIMEOUT /T 2 > nul
ECHO. You acquired the !KEYITEM%TELESTONEID%NAME!^^!
ECHO.
ECHO. You can now use the teleportation devices remotely through the menu.
ECHO.
pause
GOTO :EOF

