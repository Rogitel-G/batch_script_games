SET /a COUNT = 0
SET /a STATICCOUNT=0
:LOOPSTART
SET /a STATICCOUNT=%STATICCOUNT%+1
IF %STATICCOUNT% EQU %DEMIITEMID% (
	GOTO :LOOPSTART
) ELSE IF %STATICCOUNT% EQU %DEMIRAITEMID% (
	GOTO :LOOPSTART
) ELSE IF %STATICCOUNT% EQU %DEMIGAITEMID% (
	GOTO :LOOPSTART
)
IF !PLAYERITEM%STATICCOUNT%NUM! GEQ 1 (
	SET /a COUNT=%COUNT%+1
	CALL :SETITEMSTATS
)
IF %STATICCOUNT% LSS %ITEMTOTAL% (
	GOTO :LOOPSTART
)
SET /a DYNAMICITEMTOTAL = %COUNT%
GOTO :EOF

:SETITEMSTATS
SET /a DYNAMICITEM%COUNT%ID = %COUNT%
SET DYNAMICITEM%COUNT%NAME=!ITEM%STATICCOUNT%NAME!
SET /a DYNAMICITEM%COUNT%NUM = !PLAYERITEM%STATICCOUNT%NUM!
SET /a DYNAMICITEM%COUNT%NAMELENGTH = !ITEM%STATICCOUNT%NAMELENGTH!
GOTO :EOF