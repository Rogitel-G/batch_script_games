SET /a COUNT = 0
SET /a STATICCOUNT=0
:LOOPSTART
SET /a STATICCOUNT=%STATICCOUNT%+1
IF !PLAYER%TYPE%%STATICCOUNT%NUM! GTR 0 (
	SET /a COUNT=%COUNT%+1
)
IF !PLAYER%TYPE%%STATICCOUNT%NUM! GTR 0 (
	SET DYNAMIC%TYPE%%COUNT%NAME=!%TYPE%%STATICCOUNT%NAME!
	SET /a DYNAMIC%TYPE%%COUNT%COST = !%TYPE%%STATICCOUNT%COST!
	SET /a DYNAMIC%TYPE%%COUNT%SELL = !%TYPE%%STATICCOUNT%SELL!
	SET /a DYNAMIC%TYPE%%COUNT%NUM = !PLAYER%TYPE%%STATICCOUNT%NUM!
	SET /a DYNAMIC%TYPE%%COUNT%NAMELENGTH = !%TYPE%%STATICCOUNT%NAMELENGTH!
)
IF %STATICCOUNT% LSS !%TYPE%TOT! (
	GOTO :LOOPSTART
)
SET /a DYNAMIC%TYPE%TOT = %COUNT%
GOTO :EOF