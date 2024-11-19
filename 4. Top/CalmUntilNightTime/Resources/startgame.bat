@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
COLOR 0F
TITLE Calm Until Night Time - By Nick Sisson
CALL "%GAMEPATH%\Resources\Setup\initialsetup.bat"
SET /a TESTRUN = 0
:STARTGAME
SET /a MAINMENUBACK = 0
SET /a EXITGAME = 0
SET /a LOADCHOICEBACK = 0
SET TEMPPATH=%MUSICPATH%\Title
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
CLS
CALL "%MISCRESOURCEPATH%\titledisplay.bat"
ECHO.
ECHO Would you like to load your game or start a new game?
ECHO.
ECHO. 1 - New game
ECHO. 2 - Load Game
ECHO. 3 - Options
::ECHO. 4 - Multiplayer
ECHO. 0 - Exit Game
ECHO.
SET /P STARTMENUCHOICE=
ECHO.
IF "%STARTMENUCHOICE%" EQU "1" (
	CALL "%SETUPRESOURCEPATH%\newgamesetup.bat"
	IF "!PLAYERNAME!" EQU "0" (
		GOTO :STARTGAME
	)
	IF !TESTRUN! EQU 0 (
		CALL "%MISCRESOURCEPATH%\dreambattle.bat"
		CALL "%CUTSCENERESOURCEPATH%\cutscene1.bat"
	)
	CALL "%MAPRESOURCEPATH%\mapselect.bat"
) ELSE IF "%STARTMENUCHOICE%" EQU "2" (
	CALL "%SETUPRESOURCEPATH%\loadgamesetup.bat"
	IF "!LOADCHOICE!" EQU "0" (
		GOTO :STARTGAME
	)
	CALL "%MAPRESOURCEPATH%\mapselect.bat"
) ELSE IF "%STARTMENUCHOICE%" EQU "3" (
	CALL "%SETUPRESOURCEPATH%\optionsmenu.bat"
) ELSE IF "%STARTMENUCHOICE%" EQU "4" (
	CALL "%SETUPRESOURCEPATH%\multiplayersetup.bat"
	CALL "%MULTIPLAYERRESOURCEPATH%\multiplayerstart.bat"
) ELSE IF "%STARTMENUCHOICE%" EQU "0" (
	CALL "%MUSICPATH%\stopmusic.bat"
	GOTO :EOF
)
GOTO :STARTGAME