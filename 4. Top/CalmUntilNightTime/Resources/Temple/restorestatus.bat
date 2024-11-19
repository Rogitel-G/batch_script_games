SET /a RESTORESTATUSCOST = 250-%PLAYERTEMPLEDONATIONREDUCTION%
:RESTORESTATUS
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO You currently have %PLAYERGIL% Gil
ECHO.
IF %RESTORESTATUSCOST% LEQ 0 (
	GOTO :FREEBIE
	GOTO :EOF
)
ECHO %PRIESTNAME%: My child, for the healing ritual I must ask that you grace
ECHO           my palm with %RESTORESTATUSCOST% gil
ECHO           I accept all major credit cards.
ECHO.
ECHO. 1 - Please heal me of my ailments
ECHO. 0 - I've changed my mind
ECHO. 
SET /P RESTORESTATUSCHOICE=
ECHO.
IF "%RESTORESTATUSCHOICE%" EQU "1" (
	IF %PLAYERGIL% GEQ %RESTORESTATUSCOST% (
		CALL :RESTORESTATUSSUCCESS
	) ELSE IF %PLAYERGIL% LSS %RESTORESTATUSCOST% (
		CALL :RESTORESTATUSFAIL
	)
) ELSE IF "%RESTORESTATUSCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO.
	ECHO %PRIESTNAME%: Sorry my child, I didn't catch that
	ECHO.
	CALL :RESTORESTATUS
)
GOTO :EOF

:FREEBIE
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PRIESTNAME%: Done.
CALL :WAITFORTWO
ECHO.
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PLAYERNAME%: That easy?
ECHO.
CALL :WAITFORONE
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PRIESTNAME%: That easy.
ECHO.
CALL :WAITFORTWO
ECHO           But only because I like you so much...
ECHO.
pause
GOTO :EOF


:RESTORESTATUSSUCCESS
SET /a PLAYERGIL = %PLAYERGIL% - %RESTORESTATUSCOST%
SET /a PLAYERBLIND = 0
SET /a PLAYERSILENCE = 0
SET /a PLAYERPOISON = 0
SET /a PLAYERSLOW = 0
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PRIESTNAME%: There you go my child, your status ailments have been removed.
ECHO.
SET TEMPPATH=%MUSICPATH%\Battle\Spells
SET FILE=Cura.mp3
IF EXIST "%TEMPPATH%\%FILE%" (
	CALL "%MUSICPATH%\soundeffect.bat"
)
SET FILE=Esuna.mp3
IF EXIST "%TEMPPATH%\%FILE%" (
	CALL "%MUSICPATH%\soundeffect.bat"
)
pause
GOTO :EOF


:RESTORESTATUSFAIL
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PRIESTNAME%: I would love get my mate to heal your status but it appears you do not have enough Gil.
ECHO.
CALL :WAITFORTWO
ECHO           Like the American health system, if you have not the Gil then I cannot heal you.
ECHO.
CALL :WAITFORTWO
ECHO           Such is the will of the Lord.
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