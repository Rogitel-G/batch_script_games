CALL :SETLOCATION
CLS
ECHO.
CALL :PHASE%HOMETOWNQUESTPHASE%
IF %HOMETOWNQUESTPHASE% NEQ 5 (
	TIMEOUT /T 3 > nul
)
GOTO :EOF


:SETLOCATION
SET /a PLAYERXCOORD = 2
SET /a PLAYERYCOORD = 3
GOTO :EOF

:PHASE0
ECHO I should probably go and see uncle %UNCLENAME% before I go back home
GOTO :EOF

:PHASE1
ECHO I'll open that chest and get the stuff back to uncle %UNCLENAME% before I go home...
GOTO :EOF

:PHASE3
ECHO I'm sure %MOTHERNAME%'s fine without me for a bit. I'll go and see %FRIENDNAME%
GOTO :EOF

:PHASE4
ECHO I don't want to go back home just yet, I need to go and show %GIRLNAME% my new strength
GOTO :EOF

:PHASE5
CALL "%CUTSCENERESOURCEPATH%\cutscene6.bat"
GOTO :EOF

:PHASE6
ECHO I'd best get over to the old mill, %FRIENDNAME% and %GIRLNAME% will be waiting for me
GOTO :EOF