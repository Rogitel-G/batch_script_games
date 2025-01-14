IF %GURUFIGHT% EQU 0 (
	IF %SPECIALFIGHT% EQU 1 (
		CALL :CANTTRANSFORM
		GOTO :EOF
	)
)
SET /a TEMP = ((%ENEMYHP%-%PLAYERLCK%)*%RANFACT%)/100
SET /a TEMP2 = (%TEMP%/%ENEMYMAXHP%)*100
IF %TEMP2% LSS %RANPERC% (
	CALL :SUCCESS
) ELSE (
	CALL :FAIL
)
GOTO :EOF

:FAIL
ECHO You failed transform %ENEMYNAME% into an item. Try damaging them some more
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:SUCCESS
SET /a TOTALMORPHCHANCE = 0
IF !ENEMY%ENEMYID%SET%REWARDSET%MORPHITEMNUM! EQU 0 (
	CALL :FAIL
	GOTO :EOF
)
SET /a COUNT = 0
:SUCCESSLOOP1
SET /a COUNT = %COUNT% + 1
SET /a ITEM%COUNT%MORPHCHANCE = !ENEMY%ENEMYID%SET%REWARDSET%MORPHITEM%COUNT%CHANCE! + (%COUNT%*%PLAYERLCK%)
SET /a TOTALMORPHCHANCE = %TOTALMORPHCHANCE% + !ITEM%COUNT%MORPHCHANCE!
IF %COUNT% LSS !ENEMY%ENEMYID%SET%REWARDSET%MORPHITEMNUM! (
	GOTO :SUCCESSLOOP1
)
SET /a RANMORPH=%RANDOM% %% %TOTALMORPHCHANCE%
SET /a COUNT = 0
SET /a CHANCE = 0
:SUCCESSLOOP2
SET /a COUNT = %COUNT% + 1
SET /a CHANCE = %CHANCE% + !ITEM%COUNT%MORPHCHANCE!
IF %RANMORPH% LEQ %CHANCE% (
	CALL :MORPH
) ELSE IF %COUNT% LSS !ENEMY%ENEMYID%SET%REWARDSET%MORPHITEMNUM! (
	GOTO :SUCCESSLOOP2
)
GOTO :EOF

:MORPH
SET TEMP=!ENEMY%ENEMYID%SET%REWARDSET%MORPHITEM%COUNT%TYPE!
SET /a TEMP2=!ENEMY%ENEMYID%SET%REWARDSET%MORPHITEM%COUNT%!
SET TEMP3=!%TEMP%%TEMP2%NAME!
SET /a PLAYER%TEMP%%TEMP2%NUM = !PLAYER%TEMP%%TEMP2%NUM! + 1
ECHO %PLAYERNAME% successfully morphed %ENEMYNAME% into a %TEMP3%^^!
ECHO.
SET /a ENDBATTLE = 1
pause
GOTO :EOF

:CANTTRANSFORM
ECHO You cannot transform %ENEMYNAME% in this fight^^!
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
