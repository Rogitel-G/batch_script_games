CALL "%BATTLERESOURCEPATH%\ranresources.bat"
SET /a MISSVAR = !%ATTACKER%ACC!*80/!%DEFENDER%EVA!
IF %RANPERC% GEQ %MISSVAR% (
	ECHO %PLAYERNAME%'s !SKILL%SKILLCHOICE%NAME! missed^^!
	ECHO.
	TIMEOUT /T 2 > nul
	GOTO :EOF
)
SET /a SKILLDAM=2*(((((!%ATTACKER%STR!*5)+!%ATTACKER%LVL!)/((!%DEFENDER%END!*3)+!%DEFENDER%LVL!)*(!%ATTACKER%STR!+5)*!%ATTACKER%LVL!/!%DEFENDER%LVL!)*100)*%RANFACT%)/10000
SET SKILLELEMENT=Forbidden
SET /a SKILLCRITICALCHANCE = %PLAYERLCK%
CALL "%SKILLRESOURCEPATH%\skilldamage.bat"