CALL :SETLOCATION
CLS
ECHO.
CALL :PHASE%HOMETOWNQUESTPHASE%
IF %HOMETOWNQUESTPHASE% NEQ 6 (
	TIMEOUT /T 3 > nul
)
GOTO :EOF


:SETLOCATION
SET /a PLAYERXCOORD = 7
SET /a PLAYERYCOORD = 5
GOTO :EOF

:PHASE0
ECHO I should probably go and see uncle %UNCLENAME% before I start exploring...
GOTO :EOF

:PHASE1
ECHO I'll open that chest and get the stuff back to uncle %UNCLENAME% before I start exploring...
GOTO :EOF

:PHASE3
ECHO The old mill will be boring by myself, I'll go and see what %FRIENDNAME%'s doing
GOTO :EOF

:PHASE4
ECHO Let's go and get %GIRLNAME% before we go into the old mill
GOTO :EOF

:PHASE5
ECHO I've got to go home first, I'll come back here afterwards
GOTO :EOF

:PHASE6
CALL "%CUTSCENERESOURCEPATH%\cutscene7.bat"
SET /a EXITMAP = 1
GOTO :EOF