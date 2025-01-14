:START
CLS
ECHO.
IF %DWARFTOT% EQU 0 (
	ECHO You don't have any dwarves in your employ
	ECHO.
	pause
	GOTO :EOF
)
CALL :CALCULATETRAININGHOURS
ECHO Dwarf Sultan: Which dwarf would you like to put in or remove from training?
ECHO.
SET /a COUNT = 0
:LOOP
SET /a COUNT = %COUNT% + 1
IF !DWARF%COUNT%TRAINING! EQU 0 (
	ECHO. %COUNT% - !DWARF%COUNT%NAME!
) ELSE (
	CALL :INTRAINING
)
IF %COUNT% LSS %DWARFTOT% (
	GOTO :LOOP
)
ECHO. 0 - Back
ECHO.
:CHOICE
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "" (
	GOTO :CHOICE
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
)
IF %CHOICE% GTR %DWARFTOT% (
	GOTO :CHOICE
) ELSE IF %CHOICE% LSS 0 (
	GOTO :CHOICE
)
IF !DWARF%CHOICE%TRAINING! EQU 0 (
	CALL :TRAININGTYPE
) ELSE (
	CALL :REMOVEFROMTRAINING
)
GOTO :START

:CALCULATETRAININGHOURS
SET /a COUNT = 0
SET PREFIX=NOW
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
:CALCULATETRAININGHOURSLOOP
SET /a COUNT = %COUNT% + 1
IF !DWARF%COUNT%TRAINING! EQU 0 (
	IF %COUNT% LSS %DWARFTOT% (
		GOTO :CALCULATETRAININGHOURSLOOP
	) ELSE (
		GOTO :EOF
	)
)
SET /a YEARDIFF = %NOWYEAR%-!DWARF%COUNT%TRAININGYEAR!
SET /a YEARDIFFMIN = %YEARDIFF%*60*24*365
SET /a MONTHDIFF = %NOWMONTH%-!DWARF%COUNT%TRAININGMONTH!
SET /a MONTHDIFFMIN = %MONTHDIFF%*60*24*30
SET /a DAYDIFF = %NOWDAY%-!DWARF%COUNT%TRAININGDAY!
SET /a DAYDIFFMIN = %DAYDIFF%*60*24
SET /a HOURDIFF = %NOWHOUR%-!DWARF%COUNT%TRAININGHOUR!
SET /a HOURDIFFMIN = %HOURDIFF%*60
SET /a MINDIFFMIN = %NOWMIN%-!DWARF%COUNT%TRAININGMIN!
SET /a MINDIFF = %YEARDIFFMIN%+%MONTHDIFFMIN%+%DAYDIFFMIN%+%HOURDIFFMIN%+%MINDIFFMIN%
SET /a DWARF%COUNT%TRAININGHOURS = %MINDIFF%/60
SET STAT=!DWARF%COUNT%TRAININGSTAT!
SET TEMP=!%STAT%TRAININGFACILITYUNLOCKED!
SET /a DWARF%COUNT%STATINCREASE = !DWARF%COUNT%TRAININGHOURS!/!%STAT%TRAININGFACILITY%TEMP%TIME!
IF !DWARF%COUNT%STATINCREASE! GTR !%STAT%TRAININGFACILITY%TEMP%LIMIT! (
	SET /a DWARF%COUNT%STATINCREASE = !%STAT%TRAININGFACILITY%TEMP%LIMIT!
)
IF %COUNT% LSS %DWARFTOT% (
	GOTO :CALCULATETRAININGHOURSLOOP
)
GOTO :EOF

:INTRAINING
ECHO. %COUNT% - !DWARF%COUNT%NAME! - Training !DWARF%COUNT%TRAININGSTAT! for !DWARF%COUNT%TRAININGHOURS! hours (+!DWARF%COUNT%STATINCREASE! !DWARF%COUNT%TRAININGSTAT!)
GOTO :EOF

:TRAININGTYPE
CLS
ECHO.
ECHO Dwarf Sultan: What training centre would you like to send !DWARF%CHOICE%NAME! to?
ECHO.
IF %STRTRAININGFACILITYUNLOCKED% GTR 0 (
	SET /a SPACENUM = 30 - !STRTRAININGFACILITY%STRTRAININGFACILITYUNLOCKED%NAMELENGTH!
) 
IF %STRTRAININGFACILITYUNLOCKED% GTR 0 (
	ECHO. 1 - !STRTRAININGFACILITY%STRTRAININGFACILITYUNLOCKED%NAME!!SPACES%SPACENUM%!- Min !STRTRAININGFACILITY%STRTRAININGFACILITYUNLOCKED%TIME! hours
)
IF %SKLTRAININGFACILITYUNLOCKED% GTR 0 (
	SET /a SPACENUM = 30 - !SKLTRAININGFACILITY%SKLTRAININGFACILITYUNLOCKED%NAMELENGTH!
)
IF %SKLTRAININGFACILITYUNLOCKED% GTR 0 (
	ECHO. 2 - !SKLTRAININGFACILITY%SKLTRAININGFACILITYUNLOCKED%NAME!!SPACES%SPACENUM%!- Min !SKLTRAININGFACILITY%SKLTRAININGFACILITYUNLOCKED%TIME! hours
)
IF %PERTRAININGFACILITYUNLOCKED% GTR 0 (
	SET /a SPACENUM = 30 - !PERTRAININGFACILITY%PERTRAININGFACILITYUNLOCKED%NAMELENGTH!
)
IF %PERTRAININGFACILITYUNLOCKED% GTR 0 (
	ECHO. 3 - !PERTRAININGFACILITY%PERTRAININGFACILITYUNLOCKED%NAME!!SPACES%SPACENUM%!- Min !PERTRAININGFACILITY%PERTRAININGFACILITYUNLOCKED%TIME! hours
)
ECHO. 0 - Back
ECHO.
:CHOICE2
SET /P CHOICE2=
ECHO.
IF "%CHOICE2%" EQU "1" (
	IF %STRTRAININGFACILITYUNLOCKED% EQU 0 (
		GOTO :CHOICE2
	) ELSE (
		SET STAT=STR
		CALL :TRAINING
	)
) ELSE IF "%CHOICE2%" EQU "2" (
	IF %SKLTRAININGFACILITYUNLOCKED% EQU 0 (
		GOTO :CHOICE2
	) ELSE (
		SET STAT=SKL
		CALL :TRAINING
	)
) ELSE IF "%CHOICE2%" EQU "3" (
	IF %PERTRAININGFACILITYUNLOCKED% EQU 0 (
		GOTO :CHOICE2
	) ELSE (
		SET STAT=PER
		CALL :TRAINING
	)
) ELSE IF "%CHOICE2%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CHOICE2
)
GOTO :EOF

:TRAINING
SET PREFIX=DWARF%CHOICE%TRAINING
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
SET /a DWARF%CHOICE%TRAINING = 1
SET DWARF%CHOICE%TRAININGSTAT=%STAT%
SET /a TEMP=!%STAT%TRAININGFACILITYUNLOCKED!
CLS
ECHO.
ECHO Dwarf Sultan: !DWARF%CHOICE%NAME! has entered the !%STAT%TRAININGFACILITY%TEMP%NAME! to train their %STAT%
ECHO.
ECHO               They will gain 1 stat point every !%STAT%TRAININGFACILITY%TEMP%TIME! Hours
ECHO.
pause
GOTO :EOF

:REMOVEFROMTRAINING
SET /a DWARFCOUNT = %CHOICE%
CALL "%MINERESOURCEPATH%\resetminetimes.bat"
SET /a DWARF%CHOICE%TRAINING = 0
SET TEMP=!DWARF%CHOICE%TRAININGSTAT!
SET /a DWARF%CHOICE%BASE%TEMP% = !DWARF%CHOICE%BASE%TEMP%! + !DWARF%CHOICE%STATINCREASE!
CLS
ECHO.
ECHO Dwarf Sultan: !DWARF%CHOICE%NAME! has finished training and has gained !DWARF%CHOICE%STATINCREASE! %TEMP%^^!
ECHO               They will begin working in the mine again immediately.
ECHO.
SET DWARF%CHOICE%TRAININGSTAT=NONE
pause
GOTO :EOF


