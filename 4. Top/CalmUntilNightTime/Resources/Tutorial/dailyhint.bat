@ECHO OFF
CALL :HINTCALCULATION
CALL :HINTDISPLAY
GOTO :EOF

:HINTCALCULATION
SET PREFIX=NOW
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
SET /a HINTNUMTEMP = %NOWDAY%/%HINTTOT%
SET /a HINTNUMTEMP2 = %HINTNUMTEMP%*%HINTTOT%
SET /a HINTNUM = (%NOWDAY% - %HINTNUMTEMP2%)+1
GOTO :EOF

:HINTDISPLAY
CLS
ECHO.
ECHO %TUTORIALNAME%: !HINT%HINTNUM%LINE1!
IF !HINT%HINTNUM%LINENUM! EQU 1 (
	GOTO :LOOPEND
)
SET /a COUNT = 1
:HINTLOOP
SET /a COUNT = %COUNT% + 1
ECHO                !HINT%HINTNUM%LINE%COUNT%!
IF %COUNT% LSS !HINT%HINTNUM%LINENUM! (
	GOTO :HINTLOOP
)
:LOOPEND
ECHO.
pause
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



