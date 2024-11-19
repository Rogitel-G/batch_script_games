SET /a DWARF%DWARFCOUNT%LVL = !DWARF%DWARFCOUNT%LVL! + 1
SET /a DWARF%DWARFCOUNT%EXP = 0
CLS
ECHO.
ECHO Dwarf Sultan: !DWARF%DWARFCOUNT%NAME! has levelled up^^!
ECHO.
CALL :WAITFORTWO
ECHO               !DWARF%DWARFCOUNT%NAME! is now level !DWARF%DWARFCOUNT%LVL!
ECHO.
CALL :WAITFORTHREE
SET /a COUNT = 0
CALL :INCREASE
CLS
ECHO.
ECHO Dwarf Sultan: Job done^^! Here are !DWARF%DWARFCOUNT%NAME!'s new stats
ECHO.
ECHO. Strength       !DWARF%DWARFCOUNT%BASESTR!
ECHO. Skill          !DWARF%DWARFCOUNT%BASESKL!
ECHO. Persistence    !DWARF%DWARFCOUNT%BASEPER!
ECHO. Satisfaction   !DWARF%DWARFCOUNT%SAT!
ECHO.
pause
GOTO :EOF

:INCREASE
SET /a TEMP = %DWARFPOINTSPERLEVELUP% - %COUNT%
SET /a COUNT = %COUNT% + 1
CLS
ECHO.
ECHO Dwarf Sultan: You have %TEMP% stats to distribute. Choose the stat you'd like to increase.
ECHO.
ECHO. 1 - Strength       (Currently !DWARF%DWARFCOUNT%BASESTR!)
ECHO. 2 - Skill          (Currently !DWARF%DWARFCOUNT%BASESKL!)
ECHO. 3 - Persistence    (Currently !DWARF%DWARFCOUNT%BASEPER!)
ECHO. 4 - Satisfaction   (Currently !DWARF%DWARFCOUNT%SAT!)
ECHO.
:CHOICE
CHOICE /C:1234 /N
SET /a INCREASE = %ERRORLEVEL%
IF "%INCREASE%" EQU "1" (
	SET /a DWARF%DWARFCOUNT%BASESTR=!DWARF%DWARFCOUNT%BASESTR!+1
) ELSE IF "%INCREASE%" EQU "2" (
	SET /a DWARF%DWARFCOUNT%BASESKL=!DWARF%DWARFCOUNT%BASESKL!+1
) ELSE IF "%INCREASE%" EQU "3" (
	SET /a DWARF%DWARFCOUNT%BASEPER=!DWARF%DWARFCOUNT%BASEPER!+1
) ELSE IF "%INCREASE%" EQU "4" (
	SET /a DWARF%DWARFCOUNT%SAT=!DWARF%DWARFCOUNT%SAT!+1
) ELSE (
	GOTO :CHOICE
)
IF %COUNT% LSS %DWARFPOINTSPERLEVELUP% (
	GOTO :INCREASE
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