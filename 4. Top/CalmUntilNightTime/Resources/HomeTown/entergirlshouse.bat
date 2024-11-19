CALL :SETLOCATION
CLS
ECHO.
CALL :PHASE%HOMETOWNQUESTPHASE%
IF %HOMETOWNQUESTPHASE% NEQ 4 (
	TIMEOUT /T 3 > nul
)
GOTO :EOF


:SETLOCATION
SET /a PLAYERXCOORD = 5
SET /a PLAYERYCOORD = 3
GOTO :EOF

:PHASE0
ECHO It's a bit too early to be knocking on people's doors.
ECHO I should go and see what uncle %UNCLENAME% wants first
GOTO :EOF

:PHASE1
ECHO I'll open that chest and get the stuff back to uncle %UNCLENAME% before I start knocking on doors...
GOTO :EOF

:PHASE3
ECHO I can't go round %GIRLNAME%'s house by myself^^! I wouldn't know what to say.
ECHO I'd best go and get %FRIENDNAME% first
GOTO :EOF

:PHASE4
CALL "%CUTSCENERESOURCEPATH%\cutscene5.bat"
GOTO :EOF

:PHASE5
ECHO I'd best head home now, %GIRLNAME% needs to get ready for the camping trip tonight
GOTO :EOF

:PHASE6
ECHO I'd best get over to the old mill, %FRIENDNAME% and %GIRLNAME% will be waiting for me
GOTO :EOF