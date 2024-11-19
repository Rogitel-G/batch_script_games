:SELLSTART
SET /a SELLSUCCESS = 0
CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: What would you like to sell?
ECHO. 
ECHO. 1 - Items
ECHO. 2 - Weapons
ECHO. 3 - Armour
ECHO. 4 - Accessories
ECHO. 0 - Actually I've changed my mind
ECHO. 
GOTO :SELLCHOICE
:SELLSUCCESS
SET /a SELLSUCCESS = 0
CLS
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: Would you like to sell anything else?
ECHO. 
ECHO. 1 - Items
ECHO. 2 - Weapons
ECHO. 3 - Armour
ECHO. 4 - Accessories
ECHO. 0 - Nope, I'm done
ECHO. 
:SELLCHOICE
SET /P SELLCHOICE=
ECHO.
IF "%SELLCHOICE%" EQU "1" (
	CALL "%SHOPRESOURCEPATH%\itemsell.bat"
) ELSE IF "%SELLCHOICE%" EQU "2" (
	SET TYPE=weapon
	CALL "%SHOPRESOURCEPATH%\equipmentsell.bat"
) ELSE IF "%SELLCHOICE%" EQU "3" (
	SET TYPE=armour
	CALL "%SHOPRESOURCEPATH%\equipmentsell.bat"
) ELSE IF "%SELLCHOICE%" EQU "4" (
	SET TYPE=accessory
	CALL "%SHOPRESOURCEPATH%\equipmentsell.bat"
) ELSE IF "%SELLCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :SELLCHOICE
)
IF %SELLSUCCESS% EQU 1 (
	GOTO :SELLSUCCESS
) ELSE (
	GOTO :SELLSTART
)
