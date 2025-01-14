SET /a BATTLEWINTOTAL = %BATTLEWINTOTAL%+1
CLS
:WIN
SET TEMPPATH=%MUSICPATH%\Battle\Win
SET /a STOP = 1
SET /a LOOP = 0
CALL "%MUSICPATH%\startmusic.bat"
IF %TRAINBATTLE% EQU 0 (
	CALL "%BATTLEENDRESOURCEPATH%\earneditems.bat"
)
CALL "%BATTLEENDRESOURCEPATH%\battlerewards.bat"
CALL :QUERYLEVELUP
SET /a RANSLASH=(%RANDOM% %% 20) + 1
IF %TRAINBATTLE% EQU 1 (
	IF %GUITARBATTLEWINTOTAL% LSS %MAXGUITARBATTLES% (
		IF %NUMTRAINBATTLES% GEQ %RANSLASH% (
			CALL :WAITFORONE
			ECHO.
			ECHO ...
			CALL :WAITFORONE
			ECHO.
			ECHO Slash has appeared
			CALL :WAITFORONE
			ECHO.
			ECHO You know... The guitarist from Guns 'n' Roses
			CALL "%BATTLEENDRESOURCEPATH%\guitarbattle.bat"
		)
	)
)
IF %SPECIALFIGHT% EQU 1 (
	IF %GURUBATTLE% EQU 0 (
		"%BATTLEENDRESOURCEPATH%\specialfightwin.bat"
	)
)
GOTO :EOF


:QUERYLEVELUP
IF %PLAYERLEVELUPNUM% EQU 0 (
	GOTO :EOF
)
CALL "%BATTLEENDRESOURCEPATH%\levelup.bat"
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
