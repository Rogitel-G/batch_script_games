IF %ENEMYSTATUSIMMUNENUM% EQU 0 (
	ECHO %ENEMYNAME% doesn't have any status immunities you dafty^^!
	TIMEOUT /T 3 > nul
	GOTO :EOF
)
CALL :STATUSQUERY
CALL :REMOVESTATUS
CALL :DISPLAY
GOTO :EOF

:TEST
SET ENEMYNAME=Yorkshire Terrier
SET /a ENEMYSTATUSIMMUNENUM = 3
SET ENEMYSTATUSIMMUNE1=Blind
SET ENEMYSTATUSIMMUNE2=Silence
SET ENEMYSTATUSIMMUNE3=Stop
GOTO :EOF

:STATUSQUERY
ECHO Which Status Immunity would you like to remove?
ECHO.
SET /a COUNT = 0
:STATUSQUERYLOOP
SET /a COUNT = %COUNT% + 1
ECHO. %COUNT% - !ENEMYSTATUSIMMUNE%COUNT%!
IF %COUNT% LSS %ENEMYSTATUSIMMUNENUM% (
	GOTO :STATUSQUERYLOOP
)
ECHO.
:CHOICE
SET /P CHOICE=
IF "%CHOICE%" EQU "" (
	GOTO :CHOICE
)
IF %CHOICE% LSS 1 (
	GOTO :CHOICE
) ELSE IF %CHOICE% GTR %ENEMYSTATUSIMMUNENUM% (
	GOTO :CHOICE
) ELSE (
	SET STATUS=!ENEMYSTATUSIMMUNE%CHOICE%!
)
GOTO :EOF

:REMOVESTATUS
IF %CHOICE% EQU %ENEMYSTATUSIMMUNENUM% (
	SET /a ENEMYSTATUSIMMUNENUM = %ENEMYSTATUSIMMUNENUM% - 1
	GOTO :EOF
)
SET /a COUNT = %CHOICE%
:REMOVELOOP
SET /a OLDCOUNT = %COUNT%
SET /a COUNT = %COUNT% + 1
SET ENEMYSTATUSIMMUNE%OLDCOUNT%=!ENEMYSTATUSIMMUNE%COUNT%!
IF %COUNT% LSS %ENEMYSTATUSIMMUNENUM% (
	GOTO :REMOVELOOP
)
SET /a ENEMYSTATUSIMMUNENUM = %ENEMYSTATUSIMMUNENUM% - 1
GOTO :EOF

:DISPLAY
ECHO %ENEMYNAME% is no longer immune to %STATUS%
ECHO.
CALL "%BATTLEDISPLAYRESOURCEPATH%\setupscandisplay.bat"
GOTO :EOF