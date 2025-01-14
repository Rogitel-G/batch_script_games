IF %PLAYERPACMANSPECIAL% EQU 1 (
	CALL :PACMANQUERY
) ELSE IF %PLAYERLEEROYSPECIAL% EQU 1 (
	CALL :LEEROYQUERY
)
GOTO :EOF

:PACMANQUERY
IF %TRAINBATTLE% EQU 1 (
	SET /a PACMANAPPEAR = 0
	GOTO :EOF
)
IF %SPECIALFIGHT% EQU 1 (
	SET /a PACMANAPPEAR = 0
	GOTO :EOF
)
SET /a RANPACMAN=%RANDOM% %% 500
SET /a TEMP = (%PLAYERLVL%*100)/%ENEMYLVL%
IF %TEMP% GTR %RANPACMAN% (
	SET /a PACMANAPPEAR = 1
)
GOTO :EOF

:LEEROYQUERY
IF %TRAINBATTLE% EQU 1 (
	SET /a LEEROYAPPEAR = 0
	GOTO :EOF
)
IF %SPECIALFIGHT% EQU 1 (
	SET /a LEEROYAPPEAR = 0
	GOTO :EOF
)
SET /a RANLEEROY=%RANDOM% %% 500
SET /a TEMP = (%ENEMYLVL%*100)/%PLAYERLVL%
IF %TEMP% GTR %RANLEEROY% (
	SET /a LEEROYAPPEAR = 1
)
GOTO :EOF
	