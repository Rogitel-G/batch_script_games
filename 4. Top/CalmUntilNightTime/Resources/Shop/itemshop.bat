CALL "%DYNAMICRESOURCEPATH%\dynamicitemlistshop.bat"
SET /a SELECTED = 1
:START
CLS
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: Which Item would you like?
ECHO.
ECHO You currently have %PLAYERGIL% Gil
ECHO.
ECHO   Name                              Cost         Held
CALL "%MISCRESOURCEPATH%\menu2.bat"
IF %VARSELECTED% EQU 1 (
	CALL :SELECTED
)
IF %BACK% EQU 1 (
	GOTO :EOF
)
GOTO :START

:SELECTED
SET /a NOTENOUGHGIL = 0
CALL :SETSTATICID
CLS
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: How many !ITEM%CHOICE%NAME!s would you like?
ECHO.
SET /P AMOUNT=
ECHO.
IF "%AMOUNT%" EQU "" (
	GOTO :SELECTED
) ELSE IF "%AMOUNT%" EQU "0" (
	GOTO :EOF
)
IF %AMOUNT% GTR 999 (
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: You can't buy that many^^!
	CALL :WAITFORTWO
	GOTO :SELECTED
) ELSE IF %AMOUNT% LSS 0 (
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: You can't buy that many^^!
	CALL :WAITFORTWO
	GOTO :SELECTED
)
CALL :GILQUERY
IF %NOTENOUGHGIL% EQU 1 (
	GOTO :SELECTED
)
CALL :CONFIRMATION
GOTO :EOF

:SETSTATICID
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT% + 1
IF "!ITEM%COUNT%NAME!" EQU "!TEXT%SELECTED%NAME1!" (
	SET /a CHOICE = %COUNT%
	GOTO :EOF
)
GOTO :LOOPSTART

:GILQUERY
SET /a TOTALCOST = %AMOUNT%*!ITEM%CHOICE%COST!
IF %PLAYERGIL% GEQ %TOTALCOST% (
	GOTO :EOF
)
SET /a NOTENOUGHGIL = 1
CLS
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: You don't have enough gil for that^^!
ECHO.
CALL :WAITFORTWO
GOTO :EOF


:CONFIRMATION
CLS
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: %AMOUNT% !TEXT%SELECTED%NAME1!s will cost you %TOTALCOST% Gil
ECHO             Would you like to go ahead with the purchase?
ECHO.
ECHO Gil - %PLAYERGIL%
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No
ECHO.
SET /P CONFIRMATION=
ECHO.
IF "%CONFIRMATION%" EQU "1" (
	CALL :PURCHASE
) ELSE IF "%CONFIRMATION%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CONFIRMATION
)
GOTO :EOF

:PURCHASE
SET /a PLAYERGIL = %PLAYERGIL% - %TOTALCOST%
SET /a SHOP%SHOPNUM%SPEND = !SHOP%SHOPNUM%SPEND! + %TOTALCOST%
SET /a PLAYERITEM%CHOICE%NUM = !PLAYERITEM%CHOICE%NUM! + %AMOUNT%
CLS
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: Here you are sir, thank you for your purchase
ECHO.
ECHO You now have !PLAYERITEM%CHOICE%NUM! !ITEM%CHOICE%NAME!s
CALL :WAITFORTWO
CALL "%DYNAMICRESOURCEPATH%\dynamicitemlistshop.bat"
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