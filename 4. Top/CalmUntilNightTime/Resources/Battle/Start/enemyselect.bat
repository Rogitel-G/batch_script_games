:ENEMYSELECT
IF %TRAINBATTLE% EQU 0 (
	CALL "%BATTLESTARTRESOURCEPATH%\enemyfightchance.bat"
	CALL :RANENEMYID
)
GOTO :EOF


:RANENEMYID
REM GENERATES A RANDOM ENEMY ID BASED ON WEIGHTINGS AND MIN/MAX LEVEL IN ENEMYSTATS
SET /a ENEMYIDRAN=((%random%*(%ENEMYFIGHTCHANCETOT%-1))/32767)+1
SET /a ENEMYIDRAN=((%random%*(%ENEMYFIGHTCHANCETOT%-1))/32767)+1
SET /a COUNT = 0
:LOOPRANSTART
SET /a COUNT = %COUNT% + 1
IF %ENEMYIDRAN% LEQ !ENEMY%COUNT%FIGHTCHANCECUMDUMMY! (
	SET /a ENEMYID = %COUNT%
	GOTO :EOF
)
IF %COUNT% GEQ %ENEMYTOT% (
	SET /a ENEMYID = %LEPRECHAUNID%
	GOTO :EOF
)
GOTO :LOOPRANSTART




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
