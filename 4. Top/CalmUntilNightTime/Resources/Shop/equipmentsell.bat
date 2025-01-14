:PROPERSTART
SET /a EQUIPPED = 0
SET /a SELLSUCCESS = 0
CALL "%DYNAMICRESOURCEPATH%\dynamicequipmentstatssell.bat"
SET /a SELECTED = 1
IF %OPTIONTOT% EQU 0 (
	CLS
	ECHO.
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: You don't have any %TYPE%s to sell sir
	ECHO.
	CALL :WAITFORTHREE
	GOTO :EOF
)
:START

CLS
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: Which %TYPE% would you like to sell?
ECHO.
ECHO You currently have %PLAYERGIL% Gil
ECHO.
CALL "%MISCRESOURCEPATH%\menu2.bat"
IF %VARSELECTED% EQU 1 (
	CALL :SETSTATICID
	CALL :EQUIPPEDQUERY
)
IF %EQUIPPED% EQU 1 (
	GOTO :PROPERSTART
)
IF %VARSELECTED% EQU 1 (
	CALL :SELL
)
IF %BACK% EQU 1 (
	GOTO :EOF
)
IF %SELLSUCCESS% EQU 1 (
	GOTO :PROPERSTART
) ELSE (
	GOTO :START
)

:SETSTATICID
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT% + 1
IF "!%TYPE%%COUNT%NAME!" EQU "!TEXT%SELECTED%NAME1!" (
	SET /a CHOICE = %COUNT%
	GOTO :EOF
)
GOTO :LOOPSTART

:EQUIPPEDQUERY
IF %CHOICE% EQU !PLAYER%TYPE%ID! (
	IF !PLAYER%TYPE%%CHOICE%NUM! EQU 1 (
		SET /a EQUIPPED = 1
		CLS
		ECHO.
		ECHO !SHOPKEEPER%SHOPNUM%NAME!: You can't sell the %TYPE% you have equipped sir
		CALL :WAITFORTWO
		GOTO :EOF
	)
)
GOTO :EOF

:SELL
CLS
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: Thanks very much sir, have !%TYPE%%CHOICE%SELL! Gil
SET /a SELLSUCCESS = 1
SET /a PLAYERGIL = %PLAYERGIL% + !%TYPE%%CHOICE%SELL!
SET /a PLAYER%TYPE%%CHOICE%NUM = !PLAYER%TYPE%%CHOICE%NUM! - 1
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


