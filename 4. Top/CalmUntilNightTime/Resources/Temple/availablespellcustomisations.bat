SET /a COUNT = 0
SET /a STATICCOUNT = 0
:LOOPSTART
SET /a STATICCOUNT = %STATICCOUNT% + 1
SET TEMP=!%TYPE%%STATICCOUNT%SPELL!
IF !PLAYER%TEMP%ENABLED! EQU 1 (
	CALL :SETVARS
)
IF %STATICCOUNT% LSS !%TYPE%SPELLTOT! (
	GOTO :LOOPSTART
)
SET /a OPTIONTOT = %COUNT%
GOTO :EOF

:SETVARS
SET /a COUNT = %COUNT% + 1
SET TEXT%COUNT%NAME1=!%TYPE%%STATICCOUNT%SPELL!
SET /a TEXT%COUNT%NAMELENGTH = !%TYPE%%STATICCOUNT%NAMELENGTH!
SET TEXT%COUNT%NAME2=!%TYPE%%STATICCOUNT%MPCOST!
SET TEXT%COUNT%NAME3=!%TYPE%%STATICCOUNT%GILCOST!
SET TEMP=!%TYPE%%STATICCOUNT%SPELL!
IF !%TEMP%! EQU 1 (
	SET TEXT%COUNT%NAME4=Currently Included
) ELSE (
	SET TEXT%COUNT%NAME4=Currently Not Included
)
GOTO :EOF