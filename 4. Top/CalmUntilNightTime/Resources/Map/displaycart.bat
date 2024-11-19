:START
IF %REVERSE% EQU 0 (
	SET /a MOVECOUNT = 1
) ELSE IF %REVERSE% EQU 1 (
	SET /a MOVECOUNT = !%MAP%MOVENUM!
)
CALL :INITIALISE
CALL :SETUPTEMPMAPVARS
CALL :CHESTSETUP
CALL :SPECIALFIGHTSETUP
CALL :SETPLAYERLOCATIONVARIABLES
CALL :CALCULATEMAPVARS
CALL :RESETUNDERCART
CALL :MAPDISPLAY
:MOVE
CALL :PLAYERMOVE
CALL :RESETOLDCELL
CALL :VALIDLOCATIONQUERY
CALL :SETPLAYERLOCATIONVARIABLES
CALL :RESETUNDERCART
CALL :RESETOLDNEWROW
CALL :MAPDISPLAY
IF %REVERSE% EQU 0 (
	IF %MOVECOUNT% EQU !%MAP%MOVENUM! (
		SET /a PLAYERXCOORD = !%MAP%NEWMAPXCOORD%REVERSE%!
		SET /a PLAYERYCOORD = !%MAP%NEWMAPYCOORD%REVERSE%!
		SET MAP=!%MAP%NEWMAP%REVERSE%!
		GOTO :EOF
	)
) ELSE IF %REVERSE% EQU 1 (
	IF %MOVECOUNT% EQU 0 (
		SET /a PLAYERXCOORD = !%MAP%NEWMAPXCOORD%REVERSE%!
		SET /a PLAYERYCOORD = !%MAP%NEWMAPYCOORD%REVERSE%!
		SET MAP=!%MAP%NEWMAP%REVERSE%!
		GOTO :EOF
	)
)
GOTO :MOVE

:RESETUNDERCART
IF "%PLAYERXCOORD%-%PLAYERYCOORD%" EQU "!%MAP%MINECARTXCOORD!-!%MAP%MINECARTYCOORD!" (
	GOTO :EOF
)
SET TEMP=!%MAP%UNDERCART!A
SET TEMP!%MAP%MINECARTYCOORD!-!%MAP%MINECARTXCOORD!-A=!%TEMP%!
SET TEMP=!%MAP%UNDERCART!B
SET TEMP!%MAP%MINECARTYCOORD!-!%MAP%MINECARTXCOORD!-B=!%TEMP%!
SET TEMP=!%MAP%UNDERCART!C
SET TEMP!%MAP%MINECARTYCOORD!-!%MAP%MINECARTXCOORD!-C=!%TEMP%!
SET /a RESETROW = !%MAP%MINECARTYCOORD!
CALL :RESETROW!%MAP%XLIMIT!
GOTO :EOF

:INITIALISE
SET /a MAINMENUBACK = 0
SET /a SPECIALFIGHT = 0
SET /a EXITMAP = 0
SET /a MENUACCESSED = 0
::Setting up maps
SET TEMPMAP2=%MAP%
IF NOT DEFINED mine1LOADED (
	SET /a mine1LOADED = 1
	CALL "%MAPSPATH%\mine1setup.bat"
)
IF NOT DEFINED mine3LOADED (
	SET /a mine3LOADED = 1
	CALL "%MAPSPATH%\mine3setup.bat"
)
SET MAP=%TEMPMAP2%
GOTO :EOF

:SETUPTEMPMAPVARS
SET MAPDISPLAYTP=!%MAP%TP!
SET MAPDISPLAYBM=!%MAP%BM!
SET /a YCOUNT = 0
:YLOOP
SET /a YCOUNT = %YCOUNT% + 1
SET /a XCOUNT = 0
:XLOOP
SET /a XCOUNT = %XCOUNT% + 1
SET TEMP%YCOUNT%-%XCOUNT%-A=!%MAP%%YCOUNT%-%XCOUNT%-A!
SET TEMP%YCOUNT%-%XCOUNT%-B=!%MAP%%YCOUNT%-%XCOUNT%-B!
SET TEMP%YCOUNT%-%XCOUNT%-C=!%MAP%%YCOUNT%-%XCOUNT%-C!
IF %XCOUNT% LSS !%MAP%XLIMIT! (
	GOTO :XLOOP
) ELSE IF %YCOUNT% LSS !%MAP%YLIMIT! (
	GOTO :YLOOP
)
GOTO :EOF

:CHESTSETUP
IF !%MAP%CHESTTOT! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:CHESTVARSLOOP
SET /a COUNT = %COUNT% + 1
IF !%MAP%CHEST%COUNT%OPEN! EQU 0 (
	SET TEMP!%MAP%CHEST%COUNT%YCOORD!-!%MAP%CHEST%COUNT%XCOORD!-A=%CHESTCTOP%
	SET TEMP!%MAP%CHEST%COUNT%YCOORD!-!%MAP%CHEST%COUNT%XCOORD!-B=%CHESTCMID%
)
IF %COUNT% LSS !%MAP%CHESTTOT! (
	GOTO :CHESTVARSLOOP
)
GOTO :EOF

:SPECIALFIGHTSETUP
IF !%MAP%SPECIALFIGHTTOT! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:SPECIALFIGHTSETUPLOOP
SET /a COUNT = %COUNT% + 1
SET TEMP=!%MAP%SPECIALFIGHT%COUNT%ENEMYNAME!
IF !%TEMP%ALIVE! EQU 1 (
	SET TEMP!%MAP%SPECIALFIGHT%COUNT%YCOORD!-!%MAP%SPECIALFIGHT%COUNT%XCOORD!-A=!%MAP%SPECIALFIGHT%COUNT%TOP!
	SET TEMP!%MAP%SPECIALFIGHT%COUNT%YCOORD!-!%MAP%SPECIALFIGHT%COUNT%XCOORD!-B=!%MAP%SPECIALFIGHT%COUNT%MID!
	SET TEMP!%MAP%SPECIALFIGHT%COUNT%YCOORD!-!%MAP%SPECIALFIGHT%COUNT%XCOORD!-C=!%MAP%SPECIALFIGHT%COUNT%BOT!
)
IF %COUNT% LSS !%MAP%SPECIALFIGHTTOT! (
	GOTO :SPECIALFIGHTSETUPLOOP
)
GOTO :EOF

:SETPLAYERLOCATIONVARIABLES
SET TEMP%PLAYERYCOORD%-%PLAYERXCOORD%-A=��Ĵ
SET TEMP%PLAYERYCOORD%-%PLAYERXCOORD%-B=�   �
SET TEMP%PLAYERYCOORD%-%PLAYERXCOORD%-C=�O�O�
GOTO :EOF

:CALCULATEMAPVARS
SET /a YCOUNT = 0
:YLOOP3
SET /a YCOUNT = %YCOUNT% + 1
SET MAPDISPLAY%YCOUNT%A=    �
SET MAPDISPLAY%YCOUNT%B=    �
SET MAPDISPLAY%YCOUNT%C=    �
IF %YCOUNT% LSS !%MAP%YLIMIT! (
	GOTO :YLOOP3
)
SET /a YCOUNT = 0
:YLOOP2
SET /a YCOUNT = %YCOUNT% + 1
SET /a XCOUNT = 0
:XLOOP2
SET /a XCOUNT = %XCOUNT% + 1
SET MAPDISPLAY%YCOUNT%A=!MAPDISPLAY%YCOUNT%A!!TEMP%YCOUNT%-%XCOUNT%-A!
SET MAPDISPLAY%YCOUNT%B=!MAPDISPLAY%YCOUNT%B!!TEMP%YCOUNT%-%XCOUNT%-B!
SET MAPDISPLAY%YCOUNT%C=!MAPDISPLAY%YCOUNT%C!!TEMP%YCOUNT%-%XCOUNT%-C!
IF %XCOUNT% LSS !%MAP%XLIMIT! (
	GOTO :XLOOP2
) ELSE IF %YCOUNT% LSS !%MAP%YLIMIT! (
	SET MAPDISPLAY%YCOUNT%A=!MAPDISPLAY%YCOUNT%A!�
	SET MAPDISPLAY%YCOUNT%B=!MAPDISPLAY%YCOUNT%B!�
	SET MAPDISPLAY%YCOUNT%C=!MAPDISPLAY%YCOUNT%C!�
	GOTO :YLOOP2
)
SET MAPDISPLAY%YCOUNT%A=!MAPDISPLAY%YCOUNT%A!�
SET MAPDISPLAY%YCOUNT%B=!MAPDISPLAY%YCOUNT%B!�
SET MAPDISPLAY%YCOUNT%C=!MAPDISPLAY%YCOUNT%C!�
GOTO :EOF

:MAPDISPLAY
CLS
ECHO.
ECHO %MAPDISPLAYTP%
CALL :MAPDISPLAY!%MAP%YLIMIT!
ECHO %MAPDISPLAYBM%
ECHO.
GOTO :EOF

:MAPDISPLAY7
ECHO !MAPDISPLAY7A!
ECHO !MAPDISPLAY7B!
ECHO !MAPDISPLAY7C!
ECHO !MAPDISPLAY6A!
ECHO !MAPDISPLAY6B!
ECHO !MAPDISPLAY6C!
ECHO !MAPDISPLAY5A!
ECHO !MAPDISPLAY5B!
ECHO !MAPDISPLAY5C!
ECHO !MAPDISPLAY4A!
ECHO !MAPDISPLAY4B!
ECHO !MAPDISPLAY4C!
ECHO !MAPDISPLAY3A!
ECHO !MAPDISPLAY3B!
ECHO !MAPDISPLAY3C!
ECHO !MAPDISPLAY2A!
ECHO !MAPDISPLAY2B!
ECHO !MAPDISPLAY2C!
ECHO !MAPDISPLAY1A!
ECHO !MAPDISPLAY1B!
ECHO !MAPDISPLAY1C!
GOTO :EOF

:MAPDISPLAY8
ECHO !MAPDISPLAY8A!
ECHO !MAPDISPLAY8B!
ECHO !MAPDISPLAY8C!
ECHO !MAPDISPLAY7A!
ECHO !MAPDISPLAY7B!
ECHO !MAPDISPLAY7C!
ECHO !MAPDISPLAY6A!
ECHO !MAPDISPLAY6B!
ECHO !MAPDISPLAY6C!
ECHO !MAPDISPLAY5A!
ECHO !MAPDISPLAY5B!
ECHO !MAPDISPLAY5C!
ECHO !MAPDISPLAY4A!
ECHO !MAPDISPLAY4B!
ECHO !MAPDISPLAY4C!
ECHO !MAPDISPLAY3A!
ECHO !MAPDISPLAY3B!
ECHO !MAPDISPLAY3C!
ECHO !MAPDISPLAY2A!
ECHO !MAPDISPLAY2B!
ECHO !MAPDISPLAY2C!
ECHO !MAPDISPLAY1A!
ECHO !MAPDISPLAY1B!
ECHO !MAPDISPLAY1C!
GOTO :EOF


:PLAYERMOVE
SET /a PLAYEROLDXCOORD = %PLAYERXCOORD%
SET /a PLAYEROLDYCOORD = %PLAYERYCOORD%
IF !%MAP%CARTPOSITION%MOVECOUNT%CHEST! EQU 0 (
	ECHO.
	IF %PLAYERSLOWCART% EQU 1 (
		CALL :WAITFORONE
	)
) ELSE (
	CALL :CHESTPLACE!%MAP%CARTPOSITION%MOVECOUNT%CHEST!
	CALL :CHESTQUERY
)
IF %REVERSE% EQU 0 (
	SET /a MOVECOUNT = %MOVECOUNT% + 1
) ELSE IF %REVERSE% EQU 1 (
	SET /a MOVECOUNT = %MOVECOUNT% - 1
)
IF %MOVECOUNT% NEQ 0 (
	SET /a PLAYERXCOORD = !%MAP%CARTPOSITION%MOVECOUNT%XCOORD!
	SET /a PLAYERYCOORD = !%MAP%CARTPOSITION%MOVECOUNT%YCOORD!
)
GOTO :EOF

:CHESTPLACE8
CHOICE /C:w80 /N /T:%PLAYERSLOWCART% /D:0
IF %ERRORLEVEL% EQU 1 (
	SET /a PLAYERYCOORD=%PLAYERYCOORD%+1
) ELSE IF %ERRORLEVEL% EQU 2 (
	SET /a PLAYERYCOORD=%PLAYERYCOORD%+1
)
GOTO :EOF

:CHESTPLACE5
CHOICE /C:s50 /N /T:%PLAYERSLOWCART% /D:0
IF %ERRORLEVEL% EQU 1 (
	SET /a PLAYERYCOORD=%PLAYERYCOORD%-1
) ELSE IF %ERRORLEVEL% EQU 2 (
	SET /a PLAYERYCOORD=%PLAYERYCOORD%-1
)
GOTO :EOF

:CHESTPLACE4
CHOICE /C:a40 /N /T:%PLAYERSLOWCART% /D:0
IF %ERRORLEVEL% EQU 1 (
	SET /a PLAYERXCOORD=%PLAYERXCOORD%-1
) ELSE IF %ERRORLEVEL% EQU 2 (
	SET /a PLAYERXCOORD=%PLAYERXCOORD%-1
)
GOTO :EOF

:CHESTPLACE6
CHOICE /C:d60 /N /T:%PLAYERSLOWCART% /D:0
IF %ERRORLEVEL% EQU 1 (
	SET /a PLAYERXCOORD=%PLAYERXCOORD%+1
) ELSE IF %ERRORLEVEL% EQU 2 (
	SET /a PLAYERXCOORD=%PLAYERXCOORD%+1
)
GOTO :EOF

:CHESTQUERY
IF !%MAP%CHESTTOT! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:CHESTLOOPSTART
SET /a COUNT = %COUNT%+1
IF !%MAP%CHEST%COUNT%XCOORD! EQU %PLAYERXCOORD% (
	IF !%MAP%CHEST%COUNT%YCOORD! EQU %PLAYERYCOORD% (
		CALL :RESETPLAYERLOCATION
		IF !%MAP%CHEST%COUNT%OPEN! EQU 0 (
			CALL :OPENCHEST
		)
	)
)
IF %COUNT% LSS !%MAP%CHESTTOT! (
	GOTO :CHESTLOOPSTART
)
GOTO :EOF

:OPENCHEST
SET /a %MAP%CHEST%COUNT%OPEN = 1
SET TEMP!%MAP%CHEST%COUNT%YCOORD!-!%MAP%CHEST%COUNT%XCOORD!-A=%CHESTOTOP%
SET TEMP!%MAP%CHEST%COUNT%YCOORD!-!%MAP%CHEST%COUNT%XCOORD!-B=%CHESTOMID%
SET TYPE=ITEM
CALL :CHESTITEMS
SET TYPE=SPECIALITEM
CALL :CHESTITEMS
SET TYPE=WEAPON
CALL :CHESTITEMS
SET TYPE=ARMOUR
CALL :CHESTITEMS
SET TYPE=ACCESSORY
CALL :CHESTITEMS
SET /a RESETROW = !%MAP%CHEST%COUNT%YCOORD!
CALL :RESETROW!%MAP%XLIMIT!
GOTO :EOF

:CHESTITEMS
IF !%MAP%CHEST%COUNT%%TYPE%TOT! EQU 0 (
	GOTO :EOF
)
SET /a CHESTCOUNT = 0
:CHESTITEMSLOOP
SET /a CHESTCOUNT = %CHESTCOUNT% + 1
SET /a TEMP = !%MAP%CHEST%COUNT%%TYPE%%CHESTCOUNT%!
SET /a PLAYER%TYPE%%TEMP%NUM = !PLAYER%TYPE%%TEMP%NUM!+!%MAP%CHEST%COUNT%%TYPE%%CHESTCOUNT%NUM!
ECHO.
IF !%MAP%CHEST%COUNT%%TYPE%%CHESTCOUNT%NUM! EQU 1 (
	ECHO. !%TYPE%%TEMP%NAME! Acquired^^!
) ELSE (
	ECHO. !%MAP%CHEST%COUNT%%TYPE%%CHESTCOUNT%NUM! !%TYPE%%TEMP%NAME!s Acquired^^!
)
CALL :WAITFORTWO
GOTO :EOF

:VALIDLOCATIONQUERY
IF DEFINED %MAP%Y%PLAYERYCOORD%X%PLAYERXCOORD%VALID (
	IF !%MAP%Y%PLAYERYCOORD%X%PLAYERXCOORD%VALID! EQU 0 (
		CALL :RESETPLAYERLOCATION
	)
)
GOTO :EOF

:RESETPLAYERLOCATION
SET /a PLAYERXCOORD = %PLAYEROLDXCOORD%
SET /a PLAYERYCOORD = %PLAYEROLDYCOORD%
GOTO :EOF

:RESETOLDCELL
SET TEMP%PLAYEROLDYCOORD%-%PLAYEROLDXCOORD%-A=!%MAP%%PLAYEROLDYCOORD%-%PLAYEROLDXCOORD%-A!
SET TEMP%PLAYEROLDYCOORD%-%PLAYEROLDXCOORD%-B=!%MAP%%PLAYEROLDYCOORD%-%PLAYEROLDXCOORD%-B!
SET TEMP%PLAYEROLDYCOORD%-%PLAYEROLDXCOORD%-C=!%MAP%%PLAYEROLDYCOORD%-%PLAYEROLDXCOORD%-C!
GOTO :EOF

:RESETOLDNEWROW
IF %PLAYEROLDYCOORD% EQU %PLAYERYCOORD% (
	SET /a RESETROW = %PLAYERYCOORD%
	CALL :RESETROW!%MAP%XLIMIT!
) ELSE (
	SET /a RESETROW = %PLAYERYCOORD%
	CALL :RESETROW!%MAP%XLIMIT!
	SET /a RESETROW = %PLAYEROLDYCOORD%
	CALL :RESETROW!%MAP%XLIMIT!
)
GOTO :EOF

:RESETROW6
SET MAPDISPLAY%RESETROW%A=    �!TEMP%RESETROW%-1-A!!TEMP%RESETROW%-2-A!!TEMP%RESETROW%-3-A!!TEMP%RESETROW%-4-A!!TEMP%RESETROW%-5-A!!TEMP%RESETROW%-6-A!�
SET MAPDISPLAY%RESETROW%B=    �!TEMP%RESETROW%-1-B!!TEMP%RESETROW%-2-B!!TEMP%RESETROW%-3-B!!TEMP%RESETROW%-4-B!!TEMP%RESETROW%-5-B!!TEMP%RESETROW%-6-B!�
SET MAPDISPLAY%RESETROW%C=    �!TEMP%RESETROW%-1-C!!TEMP%RESETROW%-2-C!!TEMP%RESETROW%-3-C!!TEMP%RESETROW%-4-C!!TEMP%RESETROW%-5-C!!TEMP%RESETROW%-6-C!�
GOTO :EOF

:RESETROW7
SET MAPDISPLAY%RESETROW%A=    �!TEMP%RESETROW%-1-A!!TEMP%RESETROW%-2-A!!TEMP%RESETROW%-3-A!!TEMP%RESETROW%-4-A!!TEMP%RESETROW%-5-A!!TEMP%RESETROW%-6-A!!TEMP%RESETROW%-7-A!�
SET MAPDISPLAY%RESETROW%B=    �!TEMP%RESETROW%-1-B!!TEMP%RESETROW%-2-B!!TEMP%RESETROW%-3-B!!TEMP%RESETROW%-4-B!!TEMP%RESETROW%-5-B!!TEMP%RESETROW%-6-B!!TEMP%RESETROW%-7-B!�
SET MAPDISPLAY%RESETROW%C=    �!TEMP%RESETROW%-1-C!!TEMP%RESETROW%-2-C!!TEMP%RESETROW%-3-C!!TEMP%RESETROW%-4-C!!TEMP%RESETROW%-5-C!!TEMP%RESETROW%-6-C!!TEMP%RESETROW%-7-C!�
GOTO :EOF

:RESETROW8
SET MAPDISPLAY%RESETROW%A=    �!TEMP%RESETROW%-1-A!!TEMP%RESETROW%-2-A!!TEMP%RESETROW%-3-A!!TEMP%RESETROW%-4-A!!TEMP%RESETROW%-5-A!!TEMP%RESETROW%-6-A!!TEMP%RESETROW%-7-A!!TEMP%RESETROW%-8-A!�
SET MAPDISPLAY%RESETROW%B=    �!TEMP%RESETROW%-1-B!!TEMP%RESETROW%-2-B!!TEMP%RESETROW%-3-B!!TEMP%RESETROW%-4-B!!TEMP%RESETROW%-5-B!!TEMP%RESETROW%-6-B!!TEMP%RESETROW%-7-B!!TEMP%RESETROW%-8-B!�
SET MAPDISPLAY%RESETROW%C=    �!TEMP%RESETROW%-1-C!!TEMP%RESETROW%-2-C!!TEMP%RESETROW%-3-C!!TEMP%RESETROW%-4-C!!TEMP%RESETROW%-5-C!!TEMP%RESETROW%-6-C!!TEMP%RESETROW%-7-C!!TEMP%RESETROW%-8-C!�
GOTO :EOF

:RESETROW9
SET MAPDISPLAY%RESETROW%A=    �!TEMP%RESETROW%-1-A!!TEMP%RESETROW%-2-A!!TEMP%RESETROW%-3-A!!TEMP%RESETROW%-4-A!!TEMP%RESETROW%-5-A!!TEMP%RESETROW%-6-A!!TEMP%RESETROW%-7-A!!TEMP%RESETROW%-8-A!!TEMP%RESETROW%-9-A!�
SET MAPDISPLAY%RESETROW%B=    �!TEMP%RESETROW%-1-B!!TEMP%RESETROW%-2-B!!TEMP%RESETROW%-3-B!!TEMP%RESETROW%-4-B!!TEMP%RESETROW%-5-B!!TEMP%RESETROW%-6-B!!TEMP%RESETROW%-7-B!!TEMP%RESETROW%-8-B!!TEMP%RESETROW%-9-B!�
SET MAPDISPLAY%RESETROW%C=    �!TEMP%RESETROW%-1-C!!TEMP%RESETROW%-2-C!!TEMP%RESETROW%-3-C!!TEMP%RESETROW%-4-C!!TEMP%RESETROW%-5-C!!TEMP%RESETROW%-6-C!!TEMP%RESETROW%-7-C!!TEMP%RESETROW%-8-C!!TEMP%RESETROW%-9-C!�
GOTO :EOF

:RESETROW10
SET MAPDISPLAY%RESETROW%A=    �!TEMP%RESETROW%-1-A!!TEMP%RESETROW%-2-A!!TEMP%RESETROW%-3-A!!TEMP%RESETROW%-4-A!!TEMP%RESETROW%-5-A!!TEMP%RESETROW%-6-A!!TEMP%RESETROW%-7-A!!TEMP%RESETROW%-8-A!!TEMP%RESETROW%-9-A!!TEMP%RESETROW%-10-A!�
SET MAPDISPLAY%RESETROW%B=    �!TEMP%RESETROW%-1-B!!TEMP%RESETROW%-2-B!!TEMP%RESETROW%-3-B!!TEMP%RESETROW%-4-B!!TEMP%RESETROW%-5-B!!TEMP%RESETROW%-6-B!!TEMP%RESETROW%-7-B!!TEMP%RESETROW%-8-B!!TEMP%RESETROW%-9-B!!TEMP%RESETROW%-10-B!�
SET MAPDISPLAY%RESETROW%C=    �!TEMP%RESETROW%-1-C!!TEMP%RESETROW%-2-C!!TEMP%RESETROW%-3-C!!TEMP%RESETROW%-4-C!!TEMP%RESETROW%-5-C!!TEMP%RESETROW%-6-C!!TEMP%RESETROW%-7-C!!TEMP%RESETROW%-8-C!!TEMP%RESETROW%-9-C!!TEMP%RESETROW%-10-C!�
GOTO :EOF

:RESETROW11
SET MAPDISPLAY%RESETROW%A=    �!TEMP%RESETROW%-1-A!!TEMP%RESETROW%-2-A!!TEMP%RESETROW%-3-A!!TEMP%RESETROW%-4-A!!TEMP%RESETROW%-5-A!!TEMP%RESETROW%-6-A!!TEMP%RESETROW%-7-A!!TEMP%RESETROW%-8-A!!TEMP%RESETROW%-9-A!!TEMP%RESETROW%-10-A!!TEMP%RESETROW%-11-A!�
SET MAPDISPLAY%RESETROW%B=    �!TEMP%RESETROW%-1-B!!TEMP%RESETROW%-2-B!!TEMP%RESETROW%-3-B!!TEMP%RESETROW%-4-B!!TEMP%RESETROW%-5-B!!TEMP%RESETROW%-6-B!!TEMP%RESETROW%-7-B!!TEMP%RESETROW%-8-B!!TEMP%RESETROW%-9-B!!TEMP%RESETROW%-10-B!!TEMP%RESETROW%-11-B!�
SET MAPDISPLAY%RESETROW%C=    �!TEMP%RESETROW%-1-C!!TEMP%RESETROW%-2-C!!TEMP%RESETROW%-3-C!!TEMP%RESETROW%-4-C!!TEMP%RESETROW%-5-C!!TEMP%RESETROW%-6-C!!TEMP%RESETROW%-7-C!!TEMP%RESETROW%-8-C!!TEMP%RESETROW%-9-C!!TEMP%RESETROW%-10-C!!TEMP%RESETROW%-11-C!�
GOTO :EOF

:RESETROW12
SET MAPDISPLAY%RESETROW%A=    �!TEMP%RESETROW%-1-A!!TEMP%RESETROW%-2-A!!TEMP%RESETROW%-3-A!!TEMP%RESETROW%-4-A!!TEMP%RESETROW%-5-A!!TEMP%RESETROW%-6-A!!TEMP%RESETROW%-7-A!!TEMP%RESETROW%-8-A!!TEMP%RESETROW%-9-A!!TEMP%RESETROW%-10-A!!TEMP%RESETROW%-11-A!!TEMP%RESETROW%-12-A!�
SET MAPDISPLAY%RESETROW%B=    �!TEMP%RESETROW%-1-B!!TEMP%RESETROW%-2-B!!TEMP%RESETROW%-3-B!!TEMP%RESETROW%-4-B!!TEMP%RESETROW%-5-B!!TEMP%RESETROW%-6-B!!TEMP%RESETROW%-7-B!!TEMP%RESETROW%-8-B!!TEMP%RESETROW%-9-B!!TEMP%RESETROW%-10-B!!TEMP%RESETROW%-11-B!!TEMP%RESETROW%-12-B!�
SET MAPDISPLAY%RESETROW%C=    �!TEMP%RESETROW%-1-C!!TEMP%RESETROW%-2-C!!TEMP%RESETROW%-3-C!!TEMP%RESETROW%-4-C!!TEMP%RESETROW%-5-C!!TEMP%RESETROW%-6-C!!TEMP%RESETROW%-7-C!!TEMP%RESETROW%-8-C!!TEMP%RESETROW%-9-C!!TEMP%RESETROW%-10-C!!TEMP%RESETROW%-11-C!!TEMP%RESETROW%-12-C!�
GOTO :EOF

:RESETROW13
SET MAPDISPLAY%RESETROW%A=    �!TEMP%RESETROW%-1-A!!TEMP%RESETROW%-2-A!!TEMP%RESETROW%-3-A!!TEMP%RESETROW%-4-A!!TEMP%RESETROW%-5-A!!TEMP%RESETROW%-6-A!!TEMP%RESETROW%-7-A!!TEMP%RESETROW%-8-A!!TEMP%RESETROW%-9-A!!TEMP%RESETROW%-10-A!!TEMP%RESETROW%-11-A!!TEMP%RESETROW%-12-A!!TEMP%RESETROW%-13-A!�
SET MAPDISPLAY%RESETROW%B=    �!TEMP%RESETROW%-1-B!!TEMP%RESETROW%-2-B!!TEMP%RESETROW%-3-B!!TEMP%RESETROW%-4-B!!TEMP%RESETROW%-5-B!!TEMP%RESETROW%-6-B!!TEMP%RESETROW%-7-B!!TEMP%RESETROW%-8-B!!TEMP%RESETROW%-9-B!!TEMP%RESETROW%-10-B!!TEMP%RESETROW%-11-B!!TEMP%RESETROW%-12-B!!TEMP%RESETROW%-13-B!�
SET MAPDISPLAY%RESETROW%C=    �!TEMP%RESETROW%-1-C!!TEMP%RESETROW%-2-C!!TEMP%RESETROW%-3-C!!TEMP%RESETROW%-4-C!!TEMP%RESETROW%-5-C!!TEMP%RESETROW%-6-C!!TEMP%RESETROW%-7-C!!TEMP%RESETROW%-8-C!!TEMP%RESETROW%-9-C!!TEMP%RESETROW%-10-C!!TEMP%RESETROW%-11-C!!TEMP%RESETROW%-12-C!!TEMP%RESETROW%-13-C!�
GOTO :EOF



:WAIT0
PING 1.1.1.1 -n 1 -w 0 >NUL
GOTO :EOF

:WAITFORZERO
TIMEOUT /T 0 > nul
GOTO :EOF

:WAITFORONE
TIMEOUT /T 1 > nul
GOTO :EOF

:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF

:WAITFORTHREE
TIMEOUT /T 3 > nul
GOTO :EOF

