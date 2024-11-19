REM @ECHO OFF
REM SETLOCAL ENABLEDELAYEDEXPANSION
SET /a SLOTSBETAMOUNT = 50
:SLOTWELCOME
SET /a SLOTMACHINEPLAYEDTOTAL = %SLOTMACHINEPLAYEDTOTAL%+1
SET /a SLOTSWIN = 0
SET /a SLOT1HOLD = 0
SET /a SLOT2HOLD = 0
SET /a SLOT3HOLD = 0 
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  ฑ
ECHO    บ      บ  ?  บ  ?  บ  ?  บ      บ  บ
ECHO    บ      บ     บ     บ     บ      บ  บ
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ       You currently have      บ
IF !%GILVAR%! LSS 10 (
ECHO    บ             !%GILVAR%! Gil             บ
) ELSE IF !%GILVAR%! LSS 100 (
ECHO    บ             !%GILVAR%! Gil            บ
) ELSE IF !%GILVAR%! LSS 1000 (
ECHO    บ             !%GILVAR%! Gil           บ
) ELSE IF !%GILVAR%! LSS 10000 (
ECHO    บ             !%GILVAR%! Gil          บ
) ELSE IF !%GILVAR%! LSS 100000 (
ECHO    บ             !%GILVAR%! Gil         บ
) ELSE IF !%GILVAR%! LSS 1000000 (
ECHO    บ             !%GILVAR%! Gil         บ
)
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ        Each play costs        บ
IF %SLOTSBETAMOUNT% LSS 10 (
ECHO    บ             %SLOTSBETAMOUNT% Gil             บ
) ELSE IF %SLOTSBETAMOUNT% LSS 100 (
ECHO    บ             %SLOTSBETAMOUNT% Gil            บ
) ELSE IF %SLOTSBETAMOUNT% LSS 1000 (
ECHO    บ             %SLOTSBETAMOUNT% Gil           บ
) ELSE IF %SLOTSBETAMOUNT% LSS 10000 (
ECHO    บ             %SLOTSBETAMOUNT% Gil          บ
)
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
ECHO.
ECHO. 1 - Pull the lever
IF "%GILVAR%" EQU "PLAYGIL" (
	ECHO. 2 - Adjust betting amount
)
ECHO. 0 - Exit
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	IF !%GILVAR%! GEQ %SLOTSBETAMOUNT% (
		CALL :SLOTSTART
	) ELSE (
		ECHO You do not have enough gil
		ECHO.
		CALL :WAITFORTWO
	)
) ELSE IF "%CHOICE%" EQU "2" (
	CALL :ADJUST
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :SLOTWELCOME
)
GOTO :SLOTWELCOME

:SLOTSTART
SET /a %GILVAR% = !%GILVAR%! - %SLOTSBETAMOUNT%
CALL :SLOTVALUES
CALL :LUCKEFFECT
CALL "%CASINORESOURCEPATH%\slotspin.bat"
IF %PLAYERLCK% GTR %RANLUCKFACTOR% (
	CALL :WAITFORONE
	ECHO.
	ECHO. Lady Luck shines in your favour...
	ECHO.
	CALL :WAITFORONE
)
CALL :WINQUERY
IF %SLOTSWIN% EQU 1 (
	GOTO :EOF
)
IF !%GILVAR%! LSS %SLOTSBETAMOUNT% (
	ECHO.
	ECHO. You do not have enough gil to continue
	ECHO.
	pause
	GOTO :EOF
)
CALL :CONTINUEQUERY
IF %CONTINUESLOTS% EQU 0 (
	GOTO :EOF
)
SET /a %GILVAR% = !%GILVAR%! - %SLOTSBETAMOUNT%
CALL :HOLDQUERY1
CALL :SLOTVALUES2
CALL "%CASINORESOURCEPATH%\slotspin.bat"
CALL :WINQUERY
IF %SLOTSWIN% EQU 0 (
	ECHO.
	ECHO Player loses
	ECHO.
	pause
)
GOTO :EOF


:SLOTVALUES
SET /a SLOT1VALUE=%RANDOM% %% 5 + 1
SET /a SLOT2VALUE=%RANDOM% %% 5 + 1
SET /a SLOT3VALUE=%RANDOM% %% 5 + 1
SET /a COUNT = 0
:LOOP
SET /a COUNT=%COUNT%+1
IF !SLOT%COUNT%VALUE! EQU 1 (
	SET SLOT%COUNT%DISPLAY=
) ELSE IF !SLOT%COUNT%VALUE! EQU 2 (
	SET SLOT%COUNT%DISPLAY=
) ELSE IF !SLOT%COUNT%VALUE! EQU 3 (
	SET SLOT%COUNT%DISPLAY=
) ELSE IF !SLOT%COUNT%VALUE! EQU 4 (
	SET SLOT%COUNT%DISPLAY=
) ELSE IF !SLOT%COUNT%VALUE! EQU 5 (
	SET SLOT%COUNT%DISPLAY=7
)
IF %COUNT% LSS 3 (
	GOTO :LOOP
)
ECHO.
GOTO :EOF

:SLOTVALUES2
IF %SLOT1HOLD% EQU 0 (
	SET /a SLOT1VALUE=%RANDOM% %% 5 + 1
) 
IF %SLOT2HOLD% EQU 0 (
	SET /a SLOT2VALUE=%RANDOM% %% 5 + 1
)
IF %SLOT3HOLD% EQU 0 (
	SET /a SLOT3VALUE=%RANDOM% %% 5 + 1
)
SET /a COUNT = 0
:LOOP
SET /a COUNT=%COUNT%+1
IF !SLOT%COUNT%VALUE! EQU 1 (
	SET SLOT%COUNT%DISPLAY=
) ELSE IF !SLOT%COUNT%VALUE! EQU 2 (
	SET SLOT%COUNT%DISPLAY=
) ELSE IF !SLOT%COUNT%VALUE! EQU 3 (
	SET SLOT%COUNT%DISPLAY=
) ELSE IF !SLOT%COUNT%VALUE! EQU 4 (
	SET SLOT%COUNT%DISPLAY=
) ELSE IF !SLOT%COUNT%VALUE! EQU 5 (
	SET SLOT%COUNT%DISPLAY=7
)
IF %COUNT% LSS 3 (
	GOTO :LOOP
)
ECHO.
GOTO :EOF


:WINQUERY
IF %SLOT1VALUE% EQU %SLOT2VALUE% (
	IF %SLOT1VALUE% EQU %SLOT3VALUE% (
		ECHO.
		ECHO You win.
		ECHO.
		SET /a SLOTSWIN = 1
		CALL :WINAMOUNT
		CALL :WINDISPLAY
		pause
	)
) ELSE (
	SET /a SLOTMACHINEPROFIT = %SLOTMACHINEPROFIT%-%SLOTSBETAMOUNT%
	SET /a SLOTMACHINELOSETOTAL = %SLOTMACHINELOSETOTAL%+1
)
GOTO :EOF

:WINAMOUNT
IF %SLOT1VALUE% EQU 1 (
	SET /a SLOTSWINAMOUNT = %SLOTSBETAMOUNT%*20
) ELSE IF %SLOT1VALUE% EQU 2 (
	SET /a SLOTSWINAMOUNT = %SLOTSBETAMOUNT%*22
) ELSE IF %SLOT1VALUE% EQU 3 (
	SET /a SLOTSWINAMOUNT = %SLOTSBETAMOUNT%*25
) ELSE IF %SLOT1VALUE% EQU 4 (
	SET /a SLOTSWINAMOUNT = %SLOTSBETAMOUNT%*27
) ELSE IF %SLOT1VALUE% EQU 5 (
	SET /a SLOTSWINAMOUNT = %SLOTSBETAMOUNT%*30
)
SET /a %GILVAR% = !%GILVAR%! + %SLOTSWINAMOUNT%
GOTO :EOF

:WINDISPLAY
SET /a SLOTMACHINEPROFIT = %SLOTMACHINEPROFIT%+%SLOTSWINAMOUNT%
SET /a SLOTMACHINEWINTOTAL = %SLOTMACHINEWINTOTAL%+1
ECHO You now have !%GILVAR%! gil
ECHO.
GOTO :EOF

:CONTINUEQUERY
ECHO.
ECHO Would you like to continue? It'll be another %SLOTSBETAMOUNT% Gil
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No 
ECHO.
SET /P CONTINUESLOTS=
ECHO.
IF "%CONTINUESLOTS%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CONTINUESLOTS%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CONTINUEQUERY
)
GOTO :EOF

:HOLDQUERY1
ECHO.
ECHO You can hold 2 slots, which slot would you like to hold?
ECHO.
ECHO. 1 - Slot 1
ECHO. 2 - Slot 2 
ECHO. 3 - Slot 3
ECHO. 0 - No slots
ECHO.
SET /P HOLDCHOICE1=
ECHO.
IF "%HOLDCHOICE1%" EQU "" (
	GOTO :HOLDQUERY1
) ELSE IF "%HOLDCHOICE1%" EQU "0" (
	GOTO :EOF
)
IF %HOLDCHOICE1% GTR 3 (
	GOTO :HOLDQUERY1
) ELSE IF %HOLDCHOICE1% LSS 0 (
	GOTO :HOLDQUERY1
) ELSE (
	SET /a SLOT%HOLDCHOICE1%HOLD = 1
)
ECHO. Slot %HOLDCHOICE1% will be held for the next spin
ECHO.
:HOLDQUERY2
ECHO You can hold 1 slot, which slot would you like to hold?
ECHO.
ECHO. 1 - Slot 1
ECHO. 2 - Slot 2 
ECHO. 3 - Slot 3
ECHO. 0 - Don't hold any other slots
ECHO.
SET /P HOLDCHOICE2=
ECHO.
IF "%HOLDCHOICE2%" EQU "" (
	GOTO :HOLDQUERY2
) ELSE IF "%HOLDCHOICE2%" EQU "0" (
	GOTO :EOF
)
IF %HOLDCHOICE2% GTR 3 (
	GOTO :HOLDQUERY2
) ELSE IF %HOLDCHOICE2% LSS 0 (
	GOTO :HOLDQUERY2
) ELSE (
	SET /a SLOT%HOLDCHOICE2%HOLD = 1
)
GOTO :EOF


:LUCKEFFECT
::SET /a PLAYERLCK = 4000
SET /a RANLUCKFACTOR=%RANDOM% %% %SLOTSLUCKFACTOR%
IF %PLAYERLCK% GTR %RANLUCKFACTOR% (
	SET /a SLOT1VALUE = 5 
	SET SLOT1DISPLAY=7
	SET /a SLOT2VALUE = 5 
	SET SLOT2DISPLAY=7
	SET /a SLOT3VALUE = 5 
	SET SLOT3DISPLAY=7
)
GOTO :EOF

:ADJUST
CLS
ECHO.
IF "%GILVAR%" EQU "PLAYERGIL" (
	ECHO You find a secret panel at the side of the machine...
	ECHO.
	CALL :WAITFORTWO
	ECHO It appears you can change the standard bet amount
	ECHO.
)
ECHO A standard bet is currently %SLOTSBETAMOUNT% gil
ECHO.
ECHO What would you like to change it to?
ECHO.
SET /P TEMPAMOUNT=
IF "%TEMPAMOUNT%" EQU "" (
	GOTO :ADJUST
) ELSE IF "%TEMPAMOUNT%" EQU "0" (
	GOTO :EOF
)
IF %TEMPAMOUNT% LSS 0 (
	ECHO This is an invalid value
	ECHO.
	CALL :WAITFORTWO
	GOTO :ADJUST
) ELSE IF %TEMPAMOUNT% GTR 9999 (
	ECHO This is an invalid value
	ECHO.
	CALL :WAITFORTWO
	GOTO :ADJUST
)
SET /a SLOTSBETAMOUNT = %TEMPAMOUNT%
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