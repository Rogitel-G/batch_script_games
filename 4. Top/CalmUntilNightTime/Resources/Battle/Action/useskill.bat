CALL "%BATTLEDISPLAYRESOURCEPATH%\battledisplay.bat"
CALL :APCOSTADJUSTQUERY
IF %PLAYERAP% LSS %PLAYERSKILLAPCOST% (
	CALL :APTOOLOW
	GOTO :EOF
)
ECHO %PLAYERNAME% used the !SKILL%SKILLCHOICE%NAME! skill
ECHO.
CALL :WAITFORTWO
SET ANIMATION=%ATTACKER%!SKILL%SKILLCHOICE%ANIMATION!
CALL "%BATTLEDISPLAYRESOURCEPATH%\animation.bat"
SET /a PLAYERAP = %PLAYERAP% - %PLAYERSKILLAPCOST%
CALL "%BATTLERESOURCEPATH%\ranresources.bat"
CALL "%SKILLRESOURCEPATH%\!SKILL%SKILLCHOICE%NICKNAME!.bat"
SET TEMP=!SKILL%SKILLCHOICE%NICKNAME!
SET /a PLAYERUSE%TEMP% = !PLAYERUSE%TEMP%! + 1
SET /a TEMP = !SKILL%SKILLCHOICE%LIMITBREAK!
SET /a LIMITBREAK%TEMP%BATTLECOUNT = !LIMITBREAK%TEMP%BATTLECOUNT! + 1
GOTO :EOF


:APCOSTADJUSTQUERY
IF %PLAYERZEROAP% EQU 1 (
	SET /a PLAYERSKILLAPCOST = 0
) ELSE IF %PLAYERHALFAP% EQU 1 (
	SET /a PLAYERSKILLAPCOST = !SKILL%SKILLCHOICE%APCOST!/2
) ELSE (
	SET /a PLAYERSKILLAPCOST = !SKILL%SKILLCHOICE%APCOST!
)
GOTO :EOF

:APTOOLOW
SET /a AUTOBATTLE = 0
ECHO %PLAYERNAME% tried to use the !SKILL%SKILLCHOICE%NAME! skill but didn't have enough AP^^!
ECHO.
CALL :WAITFORTWO
ECHO If %PLAYERNAME% wasn't such an idiot things like this wouldn't happen...
ECHO.
CALL :WAITFORTWO
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