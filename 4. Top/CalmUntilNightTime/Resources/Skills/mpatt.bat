CALL "%BATTLERESOURCEPATH%\ranresources.bat"
SET /a MISSVAR = !%ATTACKER%ACC!*80/!%DEFENDER%EVA!
IF %RANPERC% GEQ %MISSVAR% (
	ECHO %PLAYERNAME%'s !SKILL%SKILLCHOICE%NAME! missed^^!
	ECHO.
	TIMEOUT /T 2 > nul
	GOTO :EOF
)
ECHO How much MP would you like to put into this attack?
ECHO.
:CHOICE
SET /P MPADD=
ECHO.
IF "%MPADD%" EQU "" (
	GOTO :CHOICE
)
IF %MPADD% GTR %PLAYERMP% (
	GOTO :CHOICE
) ELSE IF %MPADD% LSS 0 (
	GOTO :CHOICE
)
SET /a PLAYERMP = %PLAYERMP% - %MPADD%
SET /a TEMP = (((((!%ATTACKER%STR!*5)+!%ATTACKER%LVL!)/((!%DEFENDER%END!*3)+!%DEFENDER%LVL!)*(!%ATTACKER%STR!+5)*!%ATTACKER%LVL!/!%DEFENDER%LVL!)*100)*%RANFACT%)/10000
SET /a TEMP2 = ((((%PLAYERLVL%/5)+2)*%MPADD%)*%RANFACT%)/100
SET /a SKILLDAM = %TEMP% + %TEMP2%
SET SKILLELEMENT=NONE
SET /a SKILLCRITICALCHANCE = %PLAYERLCK%
CALL "%SKILLRESOURCEPATH%\skilldamage.bat"
GOTO :EOF






:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF