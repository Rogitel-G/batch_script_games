SET /a COUNT = 0
SET /a STATICCOUNT=0
:LOOPSTART
SET /a STATICCOUNT=%STATICCOUNT%+1
IF !ITEM%STATICCOUNT%SHOP%SHOPNUM%! EQU 1 (
	CALL :SETVARS
)
IF %STATICCOUNT% LSS %ITEMTOTAL% (
	GOTO :LOOPSTART
)
SET /a OPTIONTOT = %COUNT%
GOTO :EOF

:SETVARS
SET /a COUNT=%COUNT%+1
SET TEXT%COUNT%NAME1=!ITEM%STATICCOUNT%NAME!
SET /a TEXT%COUNT%NAMELENGTH = !ITEM%STATICCOUNT%NAMELENGTH!
SET /a SPACENUM1 = 34-!TEXT%COUNT%NAMELENGTH!
IF !ITEM%STATICCOUNT%COST! LSS 10 (
	SET /a SPACENUM2 = 7
) ELSE IF !ITEM%STATICCOUNT%COST! LSS 100 (
	SET /a SPACENUM2 = 6
) ELSE IF !ITEM%STATICCOUNT%COST! LSS 1000 (
	SET /a SPACENUM2 = 5
) ELSE IF !ITEM%STATICCOUNT%COST! LSS 10000 (
	SET /a SPACENUM2 = 4
) ELSE (
	SET /a SPACENUM2 = 3
)
SET TEXT%COUNT%NAME2=!ITEM%STATICCOUNT%COST!
SET /a TEXT%COUNT%DESCRIPTIONLINETOT = 1
SET TEXT%COUNT%DESCRIPTION1=!ITEM%STATICCOUNT%DESCRIPTION!
SET OPTION%COUNT%DISPLAYSELECTEDPRE=� 
SET OPTION%COUNT%DISPLAYINITIALPRE=  
SET OPTION%COUNT%DISPLAYSUFF=!TEXT%COUNT%NAME1!!SPACES%SPACENUM1%!!TEXT%COUNT%NAME2! Gil !SPACES%SPACENUM2%!!PLAYERITEM%STATICCOUNT%NUM!
SET OPTION%COUNT%DISPLAY=!OPTION%COUNT%DISPLAYINITIALPRE!!OPTION%COUNT%DISPLAYSUFF!
GOTO :EOF