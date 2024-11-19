SET /a VARSELECTED = 0
SET /a BACK = 0
CALL :SETSELECTEDVAR
SET /a COUNT = 0
IF %PLAYERLVL% LEQ 5 (
	ECHO. 8 or W - Up
	ECHO. 5 or S - Down
	ECHO. 6 or D - Select
	ECHO. 0 - Back  
	ECHO.	
) ELSE IF %ENEMYID% EQU %NIGHTMAREBOSSID% (
	ECHO. 8 or W - Up
	ECHO. 5 or S - Down
	ECHO. 6 or D - Select
	ECHO. 0 - Back  
	ECHO.	
)
:CHOICELOOP
SET /a COUNT = %COUNT% + 1
ECHO !OPTION%COUNT%DISPLAY!
IF %COUNT% LSS %OPTIONTOT% (
	GOTO :CHOICELOOP
)
ECHO.
SET /a COUNT = 0
IF !TEXT%SELECTED%DESCRIPTIONLINETOT! EQU 0 (
	GOTO :CHOICEEND
)
:CHOICELOOP2
SET /a COUNT = %COUNT% + 1
ECHO. !TEXT%SELECTED%DESCRIPTION%COUNT%!
IF %COUNT% LSS !TEXT%SELECTED%DESCRIPTIONLINETOT! (
	GOTO :CHOICELOOP2
)
:CHOICEEND
ECHO.
CHOICE /C:WSD8560 /N
IF %ERRORLEVEL% EQU 1 (
	CALL :UP
) ELSE IF %ERRORLEVEL% EQU 2 (
	CALL :DOWN
) ELSE IF %ERRORLEVEL% EQU 3 (
	SET /a VARSELECTED = 1
) ELSE IF %ERRORLEVEL% EQU 4 (
	CALL :UP
) ELSE IF %ERRORLEVEL% EQU 5 (
	CALL :DOWN
) ELSE IF %ERRORLEVEL% EQU 6 (
	SET /a VARSELECTED = 1
) ELSE IF %ERRORLEVEL% EQU 7 (
	SET /a BACK = 1
)
GOTO :EOF

:SETSELECTEDVAR
SET OPTION%SELECTED%DISPLAY=!OPTION%SELECTED%DISPLAYSELECTEDPRE!!OPTION%SELECTED%DISPLAYSUFF!
GOTO :EOF

:UP
CALL :RESETPREVIOUSVAR
SET /a SELECTED = %SELECTED% - 1
IF %SELECTED% LEQ 0 (
	SET /a SELECTED = %OPTIONTOT%
)
GOTO :EOF

:DOWN
CALL :RESETPREVIOUSVAR
SET /a SELECTED = %SELECTED% + 1
IF %SELECTED% GTR %OPTIONTOT% (
	SET /a SELECTED = 1
)
GOTO :EOF

:RESETPREVIOUSVAR
SET OPTION%SELECTED%DISPLAY=!OPTION%SELECTED%DISPLAYINITIALPRE!!OPTION%SELECTED%DISPLAYSUFF!
GOTO :EOF