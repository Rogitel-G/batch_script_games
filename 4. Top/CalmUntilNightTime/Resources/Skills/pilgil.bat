CALL :NOTHINGTOSTEALQUERY
IF %NOTHINGTOSTEAL% EQU 1 (
	GOTO :EOF
)
CALL :STEALQUERY
IF %STEALSUCCESS% EQU 1 (
	CALL :SUCCESS
) ELSE (
	CALL :FAIL
)
GOTO :EOF


:NOTHINGTOSTEALQUERY
SET /a NOTHINGTOSTEAL = 0
IF %GILSTOLEN% GEQ !ENEMY%ENEMYID%SET%REWARDSET%STEALGIL! (
	SET /a NOTHINGTOSTEAL = 1
	ECHO You've emptied %ENEMYNAME%'s pockets already^^!
	ECHO.
	CALL :WAITFORTWO
)
GOTO :EOF

:STEALQUERY
SET /a STEALSUCCESS = 0
SET /a RANSTEAL=%RANDOM% %% 250
SET /a TEMP = %PLAYERLCK% + 100
IF %TEMP% GTR %RANSTEAL% (
	SET /a STEALSUCCESS = 1
)
GOTO :EOF


:SUCCESS
CALL :GILCALCULATION
ECHO You have successfully stolen %GILSTEAL% Gil^^!
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:GILCALCULATION
SET /a TEMP = ((!ENEMY%ENEMYID%SET%REWARDSET%STEALGIL!/5)*%RANFACT%)/100
SET /a TEMP2 = (%TEMP%*%PLAYERLCK%*%RANFACT%)/10000
SET /a GILSTEAL = %TEMP% + %TEMP2%
SET /a PLAYERGIL = %PLAYERGIL% + %GILSTEAL%
SET /a GILSTOLEN = %GILSTOLEN% + %GILSTEAL%
SET /a GILSTOLENCOUNT = %GILSTOLENCOUNT% + %GILSTEAL%
GOTO :EOF

:FAIL
ECHO You failed to steal from the %ENEMYNAME%
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
