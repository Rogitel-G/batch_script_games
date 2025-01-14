:SLOT
SET /a AVAILABLESLOTS = %PLAYERLVL%/10
IF %AVAILABLESLOTS% GTR 9 (
	SET /a AVAILABLESLOTS = 9
)
IF EXIST "%CUSTOMACCESSORYRESOURCEPATH%\Temp\customaccessorylist.bat" (
	CALL "%CUSTOMACCESSORYRESOURCEPATH%\Temp\customaccessorylist.bat"
)
CLS
ECHO.
IF %AVAILABLESLOTS% EQU 0 (
	ECHO %BLACKSMITHNAME%: Sorry you don't have any accessory slots yet
	ECHO.
	SET /a SLOTNUM = 0
	pause
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: Here are the custom accessories that you currently have
)
ECHO.
ECHO            Select a custom accessory slot
ECHO.
SET /a COUNT = 0
:SLOTSLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = %ACCESSORYTOTAL% + %COUNT%
IF %AVAILABLESLOTS% GEQ %COUNT% (
ECHO. %COUNT% - !ACCESSORY%TEMP%NAME!
)
IF %COUNT% LSS %AVAILABLESLOTS% (
	GOTO :SLOTSLOOP
)
ECHO. 0 - Back
ECHO.
:SLOTCHOICE
SET /P SLOTNUM=
ECHO.
IF "%SLOTNUM%" EQU "" (
	GOTO :SLOTCHOICE
)
IF %SLOTNUM% GTR %AVAILABLESLOTS% (
	GOTO :SLOTCHOICE
) ELSE IF %SLOTNUM% LSS 0 (
	GOTO :SLOTCHOICE
) ELSE IF %SLOTNUM% EQU 0 (
	GOTO :EOF
)
SET /a TEMP = %ACCESSORYTOTAL% + %SLOTNUM%
IF DEFINED ACCESSORY%TEMP%NAME (
	CALL :CONFIRMATION
) ELSE (
	GOTO :SLOTCHOICE
)
GOTO :SLOT

:CONFIRMATION
CLS
ECHO.
CALL "%CUSTOMACCESSORYRESOURCEPATH%\Temp\customaccessory%SLOTNUM%.bat"
IF %PLAYERACCESSORYID% EQU %TEMP% (
	ECHO %BLACKSMITHNAME%: You have this accessory equipped at the moment so be careful^^!
	ECHO.
)
IF !ACCESSORY%TEMP%SPECIALTOT! EQU 0 (
	ECHO %BLACKSMITHNAME%: This accessory doesn't have any skills so you'll get nothing for salvaging it
	ECHO.
	ECHO             Are you sure you want to?
	ECHO.
	GOTO :CONFIRMATIONQUESTION
)
ECHO %BLACKSMITHNAME%: You can salvage the following items from this accessory:
ECHO.
SET /a COUNT = 0
:CONFIRMATIONLOOPSTART
SET /a COUNT = %COUNT% + 1
SET /a TEMP2 = !ACCESSORY%TEMP%SPECIAL%COUNT%!
SET /a TEMP3 = %SPECIALSTONESTART% + %TEMP2%
ECHO. 1 !SPECIALITEM%TEMP3%NAME!
IF %COUNT% LSS !ACCESSORY%TEMP%SPECIALTOT! (
	GOTO :CONFIRMATIONLOOPSTART
)
ECHO.
ECHO %BLACKSMITHNAME%: Are you sure you want to salvage this accessory?
ECHO.
:CONFIRMATIONQUESTION
ECHO. 1 - Yes
ECHO. 0 - No
ECHO.
:CONFIRMATIONCHOICE
SET /P CONFIRMATIONCHOICE=
ECHO.
IF "%CONFIRMATIONCHOICE%" EQU "1" (
	CALL :SALVAGETRUE
) ELSE IF "%CONFIRMATIONCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CONFIRMATIONCHOICE
)
GOTO :EOF

:SALVAGETRUE
IF %PLAYERACCESSORYID% EQU %TEMP% (
	CALL :UNEQUIPACCESSORY
)
SET /a COUNT = 0
:SALVAGELOOPSTART
SET /a COUNT = %COUNT% + 1
SET /a TEMP2 = !ACCESSORY%TEMP%SPECIAL%COUNT%!
SET /a TEMP3 = %SPECIALSTONESTART% + %TEMP2%
SET /a PLAYERSPECIALITEM%TEMP3%NUM = !PLAYERSPECIALITEM%TEMP3%NUM! + 1
IF %COUNT% LSS !ACCESSORY%TEMP%SPECIALTOT! (
	GOTO :SALVAGELOOPSTART
)
DEL "%CUSTOMACCESSORYRESOURCEPATH%\Temp\customaccessory%SLOTNUM%.bat"
ECHO SET ACCESSORY%TEMP%NAME=>>"%CUSTOMACCESSORYRESOURCEPATH%\Temp\customaccessorylist.bat"
ECHO SET ACCESSORY%TEMP%NAMELENGTH= >> "%CUSTOMACCESSORYRESOURCEPATH%\Temp\customaccessorylist.bat"
CLS.
ECHO.
ECHO %BLACKSMITHNAME%: Successfully salvaged^^!
ECHO.
pause
GOTO :EOF


:UNEQUIPACCESSORY
IF !ACCESSORY%PLAYERACCESSORYID%SPECIALTOT! EQU 0 (
	GOTO :UNEQUIPLOOPEND
)
SET /a COUNT = 0
:UNEQUIPLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP2 = !ACCESSORY%PLAYERACCESSORYID%SPECIAL%COUNT%!
SET /a PLAYER!SPECIAL%TEMP2%NICKNAME! = 0
IF %COUNT% LSS !ACCESSORY%PLAYERACCESSORYID%SPECIALTOT! (
	GOTO :UNEQUIPLOOP
)
:UNEQUIPLOOPEND
SET PLAYERACCESSORY=NONE
SET /a PLAYERACCESSORYID = 0
SET /a PLAYEREQUIPMAXHP = 0
SET /a PLAYEREQUIPMAXMP = 0
SET /a PLAYEREQUIPLCK = 0
GOTO :EOF



