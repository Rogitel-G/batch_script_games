CALL :CALCULATIONS
CALL :QUERYTEXT


:CALCULATIONS
SET TARGET=PLAYER
CALL "%ENEMYSKILLRESOURCEPATH%\standarddam.bat"
SET /a RANFACT = (%RANDOM% %% 40) + 80
SET /a DAM = (%DAM%*100)/%RANFACT%
SET /a COST = %DAM%*10
GOTO :EOF




:QUERYTEXT
ECHO %ENEMYNAME% is trying to steal The Princess.
ECHO.
ECHO Would you like to hire an Italian Plumber to save her? It'll cost you %COST% gil
ECHO.
ECHO. 1 - Yes
ECHO. 2 - Go mad, hire two
ECHO. 0 - No thanks
ECHO.
:CHOICE
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL :HIRE1
) ELSE IF "%CHOICE%" EQU "2" (
	CALL :HIRE2
) ELSE IF "%CHOICE%" EQU "0" (
	CALL :NOHIRE
) ELSE (
	GOTO :CHOICE
)
GOTO :EOF


:HIRE1
CALL :GILQUERY
IF %NOTENOUGHGIL% EQU 1 (
	CALL :NOHIRE
	GOTO :EOF
)
CALL "%BATTLEDISPLAYRESOURCEPATH%\battledisplay.bat"
ECHO The Italian Plumber (who will remain nameless) jumped on %ENEMYNAME%'s head
ECHO and saved The Princess^^!
ECHO.
TIMEOUT /T 2 > nul
ECHO Close call^^!
ECHO.
TIMEOUT /T 2 > nul
GOTO :EOF

:HIRE2
SET /a COST = %COST%*2
CALL :GILQUERY
IF %NOTENOUGHGIL% EQU 1 (
	CALL :NOHIRE
	GOTO :EOF
)
CALL "%BATTLEDISPLAYRESOURCEPATH%\battledisplay.bat"
ECHO The Italian Plumbers jumped on %ENEMYNAME%'s head and threw fireballs at him
ECHO.
TIMEOUT /T 2 > nul
SET TARGET=ENEMY
CALL "%ENEMYSKILLRESOURCEPATH%\dam.bat"
GOTO :EOF

:NOHIRE
CALL "%BATTLEDISPLAYRESOURCEPATH%\battledisplay.bat"
ECHO The Italian Plumbers are very annoyed that you didn't hire them to save The Princess
ECHO.
TIMEOUT /T 2 > nul
ECHO They jump on your head and throw fireballs at you instead^^!
ECHO.
TIMEOUT /T 2 > nul
SET TARGET=PLAYER
CALL "%ENEMYSKILLRESOURCEPATH%\dam.bat"
GOTO :EOF

:GILQUERY
IF %PLAYERGIL% LSS %COST% (
	SET /a NOTENOUGHGIL = 1
	ECHO You don't have enough gil^^!
	ECHO.
	TIMEOUT /T 2 > nul
) ELSE (
	SET /a PLAYERGIL = %PLAYERGIL% - %COST%
	SET /a NOTENOUGHGIL = 0
)
GOTO :EOF