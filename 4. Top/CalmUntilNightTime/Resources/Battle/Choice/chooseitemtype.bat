:CHOOSEITEM
SET /a BACK = 0
IF %CUSTOMITEMSUNLOCKED% EQU 0 (
	CALL :ITEMMENUTYPE
	GOTO :EOF
)
CALL "%BATTLEDISPLAYRESOURCEPATH%\battledisplay.bat"
ECHO Choose the type of Item you wish to use
ECHO.
ECHO. 1 - Standard Items
ECHO. 2 - Custom Items
ECHO. 0 - Back
ECHO.
:CHOICE
SET /P ITEMTYPECHOICE=
ECHO.
IF "%ITEMTYPECHOICE%" EQU "1" (
	CALL :ITEMMENUTYPE
) ELSE IF "%ITEMTYPECHOICE%" EQU "2" (
	CALL "%BATTLECHOICERESOURCEPATH%\choosecustomitem.bat"
) ELSE IF "%ITEMTYPECHOICE%" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
) ELSE (
	GOTO :CHOICE
)
IF %BACK% EQU 1 (
	GOTO :CHOOSEITEM
)
GOTO :EOF

:ITEMMENUTYPE
SET /a COUNT = 0
SET /a ITEMCOUNT = 0
:LOOP
SET /a COUNT = %COUNT% + 1
IF !PLAYERITEM%COUNT%NUM! GEQ 1 (
	SET /a ITEMCOUNT = %ITEMCOUNT% + 1
)
IF %ITEMCOUNT% GTR 10 (
	CALL "%BATTLECHOICERESOURCEPATH%\chooseitem2.bat"
) ELSE IF %COUNT% LSS %ITEMTOTAL% (
	GOTO :LOOP
) ELSE (
	CALL "%BATTLECHOICERESOURCEPATH%\chooseitem.bat"
)
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