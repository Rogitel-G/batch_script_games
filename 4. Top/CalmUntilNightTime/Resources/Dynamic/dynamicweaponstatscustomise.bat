SET /a COUNT = 0
SET /a STATICCOUNT=0
:LOOPSTART
SET /a STATICCOUNT=%STATICCOUNT%+1
IF !PLAYERWEAPON%STATICCOUNT%NUM! GTR 0 (
	SET /a COUNT=%COUNT%+1
)
IF !PLAYERWEAPON%STATICCOUNT%NUM! GTR 0 (
	SET /a DYNAMICWEAPON%COUNT%ID = %STATICCOUNT%
	SET DYNAMICWEAPON%COUNT%NAME=!WEAPON%STATICCOUNT%NAME!
	SET /a DYNAMICWEAPON%COUNT%NUM = !PLAYERWEAPON%STATICCOUNT%NUM!
	SET /a DYNAMICWEAPON%COUNT%NAMELENGTH = !WEAPON%STATICCOUNT%NAMELENGTH!
	SET /a DYNAMICWEAPON%DYNAMICCOUNT%CUSTOM = 0
)
IF %STATICCOUNT% LSS %WEAPONTOTAL% (
	GOTO :LOOPSTART
)
SET /a DYNAMICWEAPONTOTAL = %COUNT%
GOTO :EOF