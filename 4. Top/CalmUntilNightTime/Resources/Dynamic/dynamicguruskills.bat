SET /a COUNT = 0
SET /a STATICCOUNT = 0
:LOOPSTART
SET /a STATICCOUNT = %STATICCOUNT% + 1
IF !PLAYERSKILL%STATICCOUNT%EARNED! EQU 0 (
	CALL :SETVARS
)
IF %STATICCOUNT% LSS %SKILLTOT% (
	GOTO :LOOPSTART
)
SET /a OPTIONTOT = %COUNT%
GOTO :EOF

:SETVARS
SET TEMP=!SKILL%STATICCOUNT%UNLOCKFIELD!
SET /a COUNT=%COUNT%+1
SET TEXT%COUNT%NAME1=!SKILL%STATICCOUNT%NAME!
SET /a TEXT%COUNT%DESCRIPTIONLINETOT = 1
SET TEXT%COUNT%DESCRIPTION1=Earn !SKILL%STATICCOUNT%NAME! by !SKILL%STATICCOUNT%EARNTEXT! - !%TEMP%! so far
SET OPTION%COUNT%DISPLAYSELECTEDPRE=� 
SET OPTION%COUNT%DISPLAYINITIALPRE=  
SET OPTION%COUNT%DISPLAYSUFF=!TEXT%COUNT%NAME1!
SET OPTION%COUNT%DISPLAY=!OPTION%COUNT%DISPLAYINITIALPRE!!OPTION%COUNT%DISPLAYSUFF!
GOTO :EOF