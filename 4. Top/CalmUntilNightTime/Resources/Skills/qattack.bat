:MISSATTACK
CALL "%BATTLERESOURCEPATH%\ranresources.bat"
SET /a MISSVAR = !%ATTACKER%ACC!*80/!%DEFENDER%EVA!
IF %RANPERC% GEQ %MISSVAR% (
	CALL :MISSTRUE
	GOTO :EOF
)
IF !%ATTACKER%HASTE! EQU 1 (
	SET /a TEMP2 = !%ATTACKER%SPD!/4
) ELSE (
	SET /a TEMP2 = !%ATTACKER%SPD!
)
SET /a SKILLDAM = (((((%TEMP2%*5)+!%ATTACKER%LVL!)/((!%DEFENDER%END!*3)+!%DEFENDER%LVL!)*(%TEMP2%+5)*!%ATTACKER%LVL!/!%DEFENDER%LVL!)*100)*%RANFACT%)/10000
SET SKILLELEMENT=NONE
SET /a SKILLCRITICALCHANCE = (%PLAYERLCK% + %PLAYERSPD%)/2
CALL "%SKILLRESOURCEPATH%\skilldamage.bat"
GOTO :EOF


:MISSTRUE
ECHO %PLAYERNAME%'s !SKILL%SKILLCHOICE%NAME! missed^^!
ECHO.
CALL :WAITFORTWO
GOTO :EOF



:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF