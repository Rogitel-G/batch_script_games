SET DISPLAYWORD1=
SET DISPLAYWORD2=
SET DISPLAYWORD3=
SET DISPLAYWORD4=
SET DISPLAYWORD5=
SET DISPLAYWORD6=

SET /a TEMP1 = -1
:CALCULATEDISPLAYLOOP
SET /a TEMP1 += 1
SET SUBSTR=!WORD:~%TEMP1%,1!
SET /a COUNT = 0
:LETTERLOOP
SET /a COUNT = %COUNT% + 1
IF %TEMP1% NEQ 0 (
	SET /a SPACES = 0
) ELSE (
	SET /a SPACES = 6 - %COUNT%
)
SET DISPLAYWORD%COUNT%=!DISPLAYWORD%COUNT%!!SPACES%SPACES%!!DISPLAYLETTER%SUBSTR%%COUNT%!
IF %COUNT% LSS 6 (
	GOTO :LETTERLOOP
)
IF "%SUBSTR%" NEQ "" (
	GOTO :CALCULATEDISPLAYLOOP
) ELSE (
	SET /a TEMPCOUNT = %TEMP1% + 1
	SET SUBSTR=!WORD:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :CALCULATEDISPLAYLOOP
	)
)
GOTO :EOF