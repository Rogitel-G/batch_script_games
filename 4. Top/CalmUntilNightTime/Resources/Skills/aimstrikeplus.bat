:MISSATTACK
CALL "%BATTLERESOURCEPATH%\ranresources.bat"
SET /a SKILLDAM = (((((!%ATTACKER%STR!*5)+!%ATTACKER%LVL!)/((!%DEFENDER%END!*3)+!%DEFENDER%LVL!)*(!%ATTACKER%STR!+5)*!%ATTACKER%LVL!/!%DEFENDER%LVL!)*100)*%RANFACT%)/10000
SET SKILLELEMENT=NONE
SET /a SKILLCRITICALCHANCE = %PLAYERLCK%
CALL "%SKILLRESOURCEPATH%\skilldamage.bat"
GOTO :EOF