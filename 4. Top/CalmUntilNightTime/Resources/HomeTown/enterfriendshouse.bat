CALL :SETLOCATION
CLS
ECHO.
CALL :PHASE%HOMETOWNQUESTPHASE%
IF %HOMETOWNQUESTPHASE% NEQ 3 (
	TIMEOUT /T 3 > nul
)
GOTO :EOF


:SETLOCATION
SET /a PLAYERXCOORD = 5
SET /a PLAYERYCOORD = 5
GOTO :EOF

:PHASE0
ECHO It's a bit too early to be knocking on people's doors.
ECHO I should go and see what uncle %UNCLENAME% wants first
GOTO :EOF

:PHASE1
ECHO I'll open that chest and get the stuff back to uncle %UNCLENAME% before I start knocking on doors...
GOTO :EOF

:PHASE2
ECHO I'll open that chest and get the stuff back to uncle %UNCLENAME% before I start knocking on doors...
GOTO :EOF

:PHASE3
CALL "%CUTSCENERESOURCEPATH%\cutscene4.bat"
CALL :DISTRIBUTEREWARDS
CALL "%BATTLEENDRESOURCEPATH%\levelup.bat"
GOTO :EOF

:PHASE4
ECHO What am I doing here, %FRIENDNAME% is already with me. I must be going mad
GOTO :EOF

:PHASE5
ECHO I'd best head home now, %FRIENDNAME% needs to get ready for the camping trip tonight
GOTO :EOF

:PHASE6
ECHO I'd best get over to the old mill, %FRIENDNAME% and %GIRLNAME% will be waiting for me
GOTO :EOF


:DISTRIBUTEREWARDS
SET /a PLAYERITEM%ETHID%NUM = !PLAYERITEM%ETHID%NUM! + 1
SET /a PLAYERITEM%XPOTID%NUM = !PLAYERITEM%XPOTID%NUM! + 1
SET /a PLAYERARMOUR%MORPHSUITID%NUM = !PLAYERARMOUR%MORPHSUITID%NUM! + 1
SET /a PLAYERACCESSORY%SPRSHOESID%NUM = !PLAYERACCESSORY%SPRSHOESID%NUM! + 1
SET /a PLAYERGIL = %PLAYERGIL% + 100
SET /a EXP = %EXP% + 412
SET /a PLAYERLEVELUPNUM = 2
GOTO :EOF