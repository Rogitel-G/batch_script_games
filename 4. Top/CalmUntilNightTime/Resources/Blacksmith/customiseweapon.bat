SET /a SPACESMAX = 38
SET /a STATINCREASEGIL = 500
SET /a GILCOST = 0
SET /a STRSTONECOST = 0
SET /a MAGSTONECOST = 0
SET /a ACCSTONECOST = 0
SET /a BASECHOICE = 1000
CLS
:SLOTSET
CALL :SLOT
IF %SLOTNUM% EQU 0 (
	GOTO :EOF
)
:WEAPONEXISTQUERYSET
CALL :WEAPONEXISTQUERY
IF %WEAPONEXIST% EQU 1 (
	GOTO :WEAPONEXIST
) ELSE (
	GOTO :WEAPONNOTEXIST
)
:WEAPONNOTEXIST
:NAMESET
CALL :NAME
IF %NAMEBACK% EQU 1 (
	GOTO :SLOTSET
)
:BASESET
CALL :BASE
IF %BASEBACK% EQU 1 (
	GOTO :NAMESET
)
:BASESTATSET
CALL :CALCULATEBASESTATS
GOTO :STATINCREASESET


:WEAPONEXIST
:CUSTOMSTATSET
CALL :CALCULATECUSTOMSTATS
:STATINCREASESET
CALL :STATINCREASE
IF %STATINCREASEBACK% EQU 1 (
	IF %WEAPONEXIST% EQU 0 (
		GOTO :BASESET
	) ELSE (
		GOTO :SLOTSET
	)
)
:SKILLSSET
CALL :SKILLS
IF %SKILLSBACK% EQU 1 (
	IF %WEAPONEXIST% EQU 0 (
		GOTO :BASESTATSET
	) ELSE (
		GOTO :CUSTOMSTATSET
	)
)
:CONFIRMATIONSET
CALL :CONFIRMATION
IF %CONFIRMATIONBACK% EQU 1 (
	IF %DYNAMICSPECIALITEMTOT% EQU 0 (
		IF %WEAPONEXIST% EQU 0 (
			GOTO :BASESTATSET
		) ELSE (
			GOTO :CUSTOMSTATSET
		)
	) ELSE (
		GOTO :SKILLSSET
	)
)
IF %CONFIRMATIONCHOICE% EQU 1 (
	CALL :CREATEWEAPON
) ELSE IF %CONFIRMATIONCHOICE% EQU 2 (
	GOTO :EOF
)
:EQUIPSET
CALL :EQUIP
GOTO :EOF


:SLOT
CALL :INITIALISEBACKS
REM SET /a AVAILABLESLOTS = %PLAYERLVL%/10
SET /a AVAILABLESLOTS = 5
IF %AVAILABLESLOTS% GTR 9 (
	SET /a AVAILABLESLOTS = 9
)
IF EXIST "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweaponlist.bat" (
	CALL "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweaponlist.bat"
)
CLS
ECHO.
IF %AVAILABLESLOTS% EQU 0 (
	ECHO %BLACKSMITHNAME%: Sorry you're not a high enough level to customise weapons yet...
	ECHO.
	SET /a SLOTNUM = 0
	pause
	GOTO :EOF
) ELSE IF %AVAILABLESLOTS% EQU 1 (
	ECHO %BLACKSMITHNAME%: You can hold %AVAILABLESLOTS% custom weapon
) ELSE IF %AVAILABLESLOTS% GEQ 2 (	
	ECHO %BLACKSMITHNAME%: You can hold %AVAILABLESLOTS% custom weapons
)
ECHO.
ECHO            Select a custom weapon slot
ECHO.
SET /a COUNT = 0
:SLOTSLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = %WEAPONTOTAL% + %COUNT%
IF %AVAILABLESLOTS% GEQ %COUNT% (
ECHO. %COUNT% - !WEAPON%TEMP%NAME!
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
GOTO :EOF


:WEAPONEXISTQUERY
SET /a TEMP = %WEAPONTOTAL% + %SLOTNUM%
IF DEFINED WEAPON%TEMP%NAME (
	CALL :EXISTTRUE
) ELSE (
	SET /a WEAPONEXIST = 0
)
GOTO :EOF

:EXISTTRUE
SET /a WEAPONEXIST = 1
CALL "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweapon%SLOTNUM%.bat"
SET WEAPONNAME=!WEAPON%TEMP%NAME!
SET /a WEAPONID = %TEMP%
GOTO :EOF


:NAME
CLS
CALL :INITIALISEBACKS
ECHO.
ECHO %BLACKSMITHNAME%: What would you like to call your weapon? (1 word)
ECHO.
ECHO             0 to exit
ECHO.
:NAMECHOICE
SET /P WEAPONNAME=
ECHO.
IF "%WEAPONNAME%" EQU "" (
	GOTO :NAMECHOICE
) ELSE IF "%WEAPONNAME%" EQU "0" (
	SET /a NAMEBACK = 1
)
GOTO :EOF

:BASE
CLS
CALL "%DYNAMICRESOURCEPATH%\dynamicweaponstatscustomise.bat"
CALL :INITIALISEBACKS
ECHO.
ECHO %BLACKSMITHNAME%: Choose a base weapon to customise
ECHO.
ECHO             0 to exit
ECHO.
SET /a COUNT = 0
SET /a PLAYERWEAPONTOTAL = 0
:WEAPONCHECKLOOP
SET /a COUNT = %COUNT%+1
SET /a PLAYERWEAPONTOTAL = %PLAYERWEAPONTOTAL% + !PLAYERWEAPON%COUNT%NUM!
IF %COUNT% LSS %WEAPONTOTAL% (
	GOTO :WEAPONCHECKLOOP
)
IF %PLAYERWEAPONTOTAL% EQU 0 (
	GOTO :NOWEAPONS
)
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT%+1
SET /a SPACENUM = %SPACESMAX% - !DYNAMICWEAPON%COUNT%NAMELENGTH!
ECHO. %COUNT% - !DYNAMICWEAPON%COUNT%NAME!!SPACES%SPACENUM%!(!DYNAMICWEAPON%COUNT%NUM!)
IF %COUNT% LSS %DYNAMICWEAPONTOTAL% (
	GOTO :LOOPSTART
) 
:NOWEAPONS
ECHO. 0 - Back
ECHO.
:BASECHOICE
SET /P DYNAMICBASECHOICE=
IF "%DYNAMICBASECHOICE%" EQU "" (
	GOTO :BASECHOICE
)
IF %DYNAMICBASECHOICE% LSS 0 (
	GOTO :BASECHOICE
) ELSE IF %DYNAMICBASECHOICE% GTR %DYNAMICWEAPONTOTAL% (
	GOTO :BASECHOICE
) ELSE IF %DYNAMICBASECHOICE% EQU 0 (
	SET /a BASEBACK = 1
	GOTO :EOF
)
REM This is like SETSTATICID
SET /a COUNT = 0
:LOOP2START
SET /a COUNT = %COUNT%+1
IF "!WEAPON%COUNT%NAME!" EQU "!DYNAMICWEAPON%DYNAMICBASECHOICE%NAME!" (
	SET /a BASECHOICE = %COUNT%
) ELSE IF %COUNT% LSS %WEAPONTOTAL% (
	GOTO :LOOP2START
) ELSE IF %COUNT% EQU %WEAPONTOTAL% (
	GOTO :BASECHOICE
)
GOTO :EOF

:CALCULATEBASESTATS
SET /a TEMPSTR = !WEAPON%BASECHOICE%STR!
SET /a TEMPMAG = !WEAPON%BASECHOICE%MAG!
SET /a TEMPACC = !WEAPON%BASECHOICE%ACC!
GOTO :EOF

:CALCULATECUSTOMSTATS
SET /a TEMP = %WEAPONTOTAL% + %SLOTNUM%
SET /a TEMPSTR = !WEAPON%TEMP%STR!
SET /a TEMPMAG = !WEAPON%TEMP%MAG!
SET /a TEMPACC = !WEAPON%TEMP%ACC!
GOTO :EOF

:STATINCREASE
CALL :INITIALISEBACKS
SET /a GILCOST = 0
SET /a STRSTONECOST = 0
SET /a MAGSTONECOST = 0
SET /a ACCSTONECOST = 0
:STATINCREASE2
CALL :SETTEMPSTATVARS
CLS
ECHO.
ECHO %BLACKSMITHNAME%: This weapon currently give you the following stat bonuses:
ECHO.
ECHO. Strength +%TEMPSTR%
ECHO. Magic    +%TEMPMAG%
ECHO. Accuracy +%TEMPACC%
ECHO.
ECHO %BLACKSMITHNAME%: Select the stat you'd like to increase.
ECHO             Each stat costs 1 stone and %STATINCREASEGIL% Gil
ECHO             You have %TEMPGIL% Gil remaining
ECHO.
IF %TEMPSTRSTONE% EQU 1 (
	ECHO. 1 - Strength                  %TEMPSTRSTONE% !SPECIALITEM%STRSTONEID%NAME!
) ELSE (
	ECHO. 1 - Strength                  %TEMPSTRSTONE% !SPECIALITEM%STRSTONEID%NAME!s
)
IF %TEMPMAGSTONE% EQU 1 (
	ECHO. 2 - Magic                     %TEMPMAGSTONE% !SPECIALITEM%MAGSTONEID%NAME!
) ELSE (
	ECHO. 2 - Magic                     %TEMPMAGSTONE% !SPECIALITEM%MAGSTONEID%NAME!s
)
IF %TEMPACCSTONE% EQU 1 (
	ECHO. 3 - Accuracy                  %TEMPACCSTONE% !SPECIALITEM%ACCSTONEID%NAME!
) ELSE (
	ECHO. 3 - Accuracy                  %TEMPACCSTONE% !SPECIALITEM%ACCSTONEID%NAME!s
)
ECHO. 0 - Done
ECHO. B - Back
ECHO.
:STATINCREASECHOICE
SET /P STATINCREASECHOICE=
ECHO.
IF "%STATINCREASECHOICE%" EQU "1" (
	IF %TEMPSTRSTONE% GTR 0 (
		IF %PLAYERGIL% GEQ %TEMPGILCOST% (
			SET /a GILCOST = %GILCOST% + %STATINCREASEGIL%
			SET /a STRSTONECOST = %STRSTONECOST% + 1
			SET /a TEMPSTR = %TEMPSTR% + 1
		) ELSE (
			ECHO %BLACKSMITHNAME%: You don't have enough Gil for this
			ECHO.
			CALL :WAITFORTWO
		)
	) ELSE (
		ECHO %BLACKSMITHNAME%: You don't have enough !SPECIALITEM%STRSTONEID%NAME!s for this
		ECHO.
		CALL :WAITFORTWO
	)
) ELSE IF "%STATINCREASECHOICE%" EQU "2" (
	IF %TEMPMAGSTONE% GTR 0 (
		IF %PLAYERGIL% GEQ %TEMPGILCOST% (
			SET /a GILCOST = %GILCOST% + %STATINCREASEGIL%
			SET /a MAGSTONECOST = %MAGSTONECOST% + 1
			SET /a TEMPMAG = %TEMPMAG% + 1
		) ELSE (
			ECHO %BLACKSMITHNAME%: You don't have enough Gil for this
			ECHO.
			CALL :WAITFORTWO
		)
	) ELSE (
		ECHO %BLACKSMITHNAME%: You don't have enough !SPECIALITEM%MAGSTONEID%NAME!s for this
		ECHO.
		CALL :WAITFORTWO
	)
) ELSE IF "%STATINCREASECHOICE%" EQU "3" (
	IF %TEMPACCSTONE% GTR 0 (
		IF %PLAYERGIL% GEQ %TEMPGILCOST% (
			SET /a GILCOST = %GILCOST% + %STATINCREASEGIL%
			SET /a ACCSTONECOST = %ACCSTONECOST% + 1
			SET /a TEMPACC = %TEMPACC% + 1
		) ELSE (
			ECHO %BLACKSMITHNAME%: You don't have enough Gil for this
			ECHO.
			CALL :WAITFORTWO
		)
	) ELSE (
		ECHO %BLACKSMITHNAME%: You don't have enough !SPECIALITEM%ACCSTONEID%NAME!s for this
		ECHO.
		CALL :WAITFORTWO
	)
) ELSE IF "%STATINCREASECHOICE%" EQU "0" (
	SET /a STATGILCOST = %GILCOST%
	GOTO :EOF
) ELSE IF /I "%STATINCREASECHOICE%" EQU "B" (
	SET /a STATINCREASEBACK = 1
	GOTO :EOF
) ELSE (
	GOTO :STATINCREASECHOICE
)
GOTO :STATINCREASE2

:SETTEMPSTATVARS
SET /a TEMPGILCOST = %GILCOST% + %STATINCREASEGIL%
SET /a TEMPGIL = %PLAYERGIL% - %GILCOST%
SET /a TEMPSTRSTONE = !PLAYERSPECIALITEM%STRSTONEID%NUM! - %STRSTONECOST%
SET /a TEMPMAGSTONE = !PLAYERSPECIALITEM%MAGSTONEID%NUM! - %MAGSTONECOST%
SET /a TEMPACCSTONE = !PLAYERSPECIALITEM%ACCSTONEID%NUM! - %ACCSTONECOST%
GOTO :EOF



:SKILLS
IF %WEAPONEXIST% EQU 0 (
	CALL :INITIALBASESKILLSET
	GOTO :SKILLSET
) ELSE (
	CALL :INITIALCUSTOMSKILLSET
	GOTO :SKILLSET
)
GOTO :EOF

:SKILLSET
SET /a GILCOST = %STATGILCOST%
CALL :INITIALISEBACKS
CALL "%DYNAMICRESOURCEPATH%\dynamicskillcustomlist.bat"
:SKILLSET2
CLS
ECHO.
IF %TEMPSKILLTOT% EQU 0 (
	ECHO %BLACKSMITHNAME%: This weapon currently doesn't give you any skills
	GOTO :ENDSKILLLOOP3
)
ECHO %BLACKSMITHNAME%: This weapon currently gives you the following skills:
ECHO.
SET /a COUNT = 0
:SKILLLOOP3
SET /a COUNT = %COUNT% + 1
SET /a TEMP = !TEMPSKILL%COUNT%!
ECHO. !SKILL%TEMP%NAME!
IF %COUNT% LSS %TEMPSKILLTOT% (
	GOTO :SKILLLOOP3
)
:ENDSKILLLOOP3
REM SET /a COUNT = %SKILLSTONESTART%
REM SET /a PLAYERSKILLSTONETOTAL = 0
REM :SKILLSTONECHECKLOOP
REM SET /a COUNT = %COUNT% + 1
REM IF !PLAYERSPECIALITEM%COUNT%NUM! GTR 0 (
REM 	SET /a PLAYERSKILLSTONETOTAL = %PLAYERSKILLSTONETOTAL% + 1
REM )
REM IF %COUNT% LSS %SKILLSTONEEND% (
REM 	GOTO :SKILLSTONECHECKLOOP
REM )
REM IF %PLAYERSKILLSTONETOTAL% EQU 0 (
IF %DYNAMICSPECIALITEMTOT% EQU 0 (
	ECHO.
	ECHO %BLACKSMITHNAME%: You can't imbue your weapons with skills because you don't have any skill stones
	ECHO.
	pause
	GOTO :EOF
)
ECHO.
ECHO %BLACKSMITHNAME%: You have the appropriate items to apply these skills to your weapon:
ECHO.
ECHO. You have %TEMPGIL% Gil remaining
ECHO.
SET /a COUNT = 0
:SKILLSTONELOOP
SET /a COUNT = %COUNT% + 1
SET /a SPACENUM = %SPACESMAX% - !DYNAMICSKILL%COUNT%NAMELENGTH!
ECHO. %COUNT% - !DYNAMICSKILL%COUNT%NAME!!SPACES%SPACENUM%!(1 !DYNAMICSPECIALITEM%COUNT%NAME! and !DYNAMICSKILL%COUNT%GILCOST! Gil)
IF %COUNT% LSS %DYNAMICSPECIALITEMTOT% (
	GOTO :SKILLSTONELOOP
)
ECHO. 0 - Done
ECHO. D - Descriptions
ECHO. B - Back
ECHO.
:SKILLCHOICE
SET /P DYNAMICSKILLCHOICE=
ECHO.
IF "%DYNAMICSKILLCHOICE%" EQU "" (
	GOTO :SKILLCHOICE
) ELSE IF /I "%DYNAMICSKILLCHOICE%" EQU "B" (
	SET /a SKILLSBACK = 1
	GOTO :EOF
) ELSE IF /I "%DYNAMICSKILLCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF /I "%DYNAMICSKILLCHOICE%" EQU "D" (
	CALL :SKILLDESCRIPTIONS
	GOTO :SKILLSET2
)
IF %DYNAMICSKILLCHOICE% GTR %DYNAMICSPECIALITEMTOT% (
	GOTO :SKILLCHOICE
) ELSE IF %DYNAMICSKILLCHOICE% LSS 0 (
	GOTO :SKILLCHOICE
)
REM SETSTATICID
SET /a COUNT = 0
:SKILLLOOP2START
SET /a COUNT = %COUNT%+1
IF !SKILL%COUNT%NAME! EQU !DYNAMICSKILL%DYNAMICSKILLCHOICE%NAME! (
	SET /a SKILLCHOICE = %COUNT%
) ELSE (
	GOTO :SKILLLOOP2START
)
CALL :SKILLALREADYSETQUERY
GOTO :SKILLSET2

:SKILLDESCRIPTIONS
CLS
ECHO.
ECHO %BLACKSMITHNAME%: Here's a description of the skills
ECHO.
SET /a COUNT = 0
:SKILLDESCRIPTIONSLOOP
SET /a COUNT = %COUNT% + 1
SET /a SPACENUM = %SPACESMAX% - !DYNAMICSKILL%COUNT%NAMELENGTH!
ECHO. %COUNT% - !DYNAMICSKILL%COUNT%NAME!!SPACES%SPACENUM%!- !DYNAMICSKILL%COUNT%DESCRIPTION!
IF %COUNT% LSS %DYNAMICSPECIALITEMTOT% (
	GOTO :SKILLDESCRIPTIONSLOOP
)
ECHO.
pause
GOTO :EOF



:INITIALBASESKILLSET
SET /a NEWSKILLTOT = 0
SET /a COUNT = 0
SET /a TEMPSKILLTOT = !WEAPON%BASECHOICE%SKILLTOT!
IF %TEMPSKILLTOT% EQU 0 (
	GOTO :EOF
)
:INITIALBASESKILLSETLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMPSKILL%COUNT% = !WEAPON%BASECHOICE%SKILL%COUNT%!
IF %COUNT% LSS %TEMPSKILLTOT% (
	GOTO :INITIALBASESKILLSETLOOP
)
GOTO :EOF


:INITIALCUSTOMSKILLSET
SET /a NEWSKILLTOT = 0
SET /a COUNT = 0
SET /a TEMP = %WEAPONTOTAL% + %SLOTNUM%
SET /a TEMPSKILLTOT = !WEAPON%TEMP%SKILLTOT!
IF %TEMPSKILLTOT% EQU 0 (
	GOTO :EOF
)
:INITIALCUSTOMSKILLSETLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMPSKILL%COUNT% = !WEAPON%TEMP%SKILL%COUNT%!
IF %COUNT% LSS %TEMPSKILLTOT% (
	GOTO :INITIALCUSTOMSKILLSETLOOP
)
GOTO :EOF


:SKILLALREADYSETQUERY
IF %TEMPSKILLTOT% EQU 0 (
	GOTO :ENDSKILLALREADYSETQUERY
)
SET /a COUNT = 0
:SKILLALREADYSETLOOP
SET /a COUNT = %COUNT% + 1
IF !TEMPSKILL%COUNT%! EQU %SKILLCHOICE% (
	ECHO %BLACKSMITHNAME%: You already have this skill on your weapon
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
IF %COUNT% LSS %TEMPSKILLTOT% (
	GOTO :SKILLALREADYSETLOOP
)
:ENDSKILLALREADYSETQUERY
CALL :GILCOSTQUERY
GOTO :EOF

:GILCOSTQUERY
SET /a TEMPGILCOST = %GILCOST% + !SKILL%SKILLCHOICE%GILCOST!
IF %PLAYERGIL% LSS %TEMPGILCOST% (
	ECHO %BLACKSMITHNAME%: You don't have enough Gil to add this skill
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
SET /a TEMPSKILLTOT = %TEMPSKILLTOT% + 1
SET /a TEMPSKILL%TEMPSKILLTOT% = %SKILLCHOICE%
SET /a NEWSKILLTOT = %NEWSKILLTOT% + 1
SET /a NEWSKILL%NEWSKILLTOT% = %SKILLCHOICE%
SET /a GILCOST = %TEMPGILCOST%
SET /a TEMPGIL = %PLAYERGIL% - %GILCOST%
GOTO :EOF


:CONFIRMATION
CLS
CALL :INITIALISEBACKS
ECHO.
ECHO %BLACKSMITHNAME%: Ok, here's a summary^^!
ECHO.
ECHO. Weapon Name:    %WEAPONNAME%
ECHO. Strength Bonus: %TEMPSTR%
ECHO. Magic Bonus:    %TEMPMAG%
ECHO. Accuracy Bonus: %TEMPACC%
IF %TEMPSKILLTOT% EQU 0 (
	GOTO :CONFIRMATIONNOSKILLS
)
SET /a COUNT = 0
:CONFIRMATIONLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = !TEMPSKILL%COUNT%!
ECHO. Skill %COUNT%:        !SKILL%TEMP%NAME!
IF %COUNT% LSS %TEMPSKILLTOT% (
	GOTO :CONFIRMATIONLOOP
)
:CONFIRMATIONNOSKILLS
ECHO.
ECHO %BLACKSMITHNAME%: It'll cost you %GILCOST% Gil
IF %STRSTONECOST% EQU 1 (
	ECHO             %STRSTONECOST% !SPECIALITEM%STRSTONEID%NAME!
) ELSE IF %STRSTONECOST% GTR 1 (
	ECHO             %STRSTONECOST% !SPECIALITEM%STRSTONEID%NAME!s
)
IF %MAGSTONECOST% EQU 1 (
	ECHO             %MAGSTONECOST% !SPECIALITEM%MAGSTONEID%NAME!
) ELSE IF %MAGSTONECOST% GTR 1 (
	ECHO             %MAGSTONECOST% !SPECIALITEM%MAGSTONEID%NAME!s
)
IF %ACCSTONECOST% EQU 1 (
	ECHO             %ACCSTONECOST% !SPECIALITEM%ACCSTONEID%NAME!
) ELSE IF %ACCSTONECOST% GTR 1 (
	ECHO             %ACCSTONECOST% !SPECIALITEM%ACCSTONEID%NAME!s
)
IF %NEWSKILLTOT% EQU 0 (
	GOTO :CONFIRMATIONNONEWSKILL
)
SET /a COUNT = 0
:CONFIRMATIONLOOP2
SET /a COUNT = %COUNT% + 1
SET /a TEMP = !NEWSKILL%COUNT%!
SET TEMP2=!SKILL%TEMP%NICKNAME!
SET /a TEMP3 = !%TEMP2%STONEID!
ECHO             1 !SPECIALITEM%TEMP3%NAME!
IF %COUNT% LSS %NEWSKILLTOT% (
	GOTO :CONFIRMATIONLOOP2
)
:CONFIRMATIONNONEWSKILL
ECHO.
ECHO %BLACKSMITHNAME%: Would you like to create this weapon?
ECHO.
ECHO. 1 - Yes
ECHO. 2 - No
ECHO. 0 - Back
ECHO.
:CONFIRMATIONCHOICE
SET /P CONFIRMATIONCHOICE=
ECHO.
IF "%CONFIRMATIONCHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CONFIRMATIONCHOICE%" EQU "2" (
	GOTO :EOF
) ELSE IF "%CONFIRMATIONCHOICE%" EQU "0" (
	SET /a CONFIRMATIONBACK = 1
) ELSE (
	GOTO :CONFIRMATIONCHOICE
)
GOTO :EOF

:CREATEWEAPON
SET /a WEAPONSCRAFTED = %WEAPONSCRAFTED% + 1
SET /a EQUIPMENTCRAFTED = %EQUIPMENTCRAFTED% + 1
CALL :REDUCERESOURCES
SET /a WEAPONID = %WEAPONTOTAL% + %SLOTNUM%
SET WEAPON%WEAPONID%NAME=%WEAPONNAME%
CALL :WEAPONNAMELENGTH
SET /a WEAPON%WEAPONID%STR = %TEMPSTR%
SET /a WEAPON%WEAPONID%MAG = %TEMPMAG%
SET /a WEAPON%WEAPONID%ACC = %TEMPACC%
SET /a WEAPON%WEAPONID%SKILLTOT = %TEMPSKILLTOT%
SET /a COUNT = 0
:CREATEWEAPONLOOP
SET /a COUNT = %COUNT% + 1
SET /a WEAPON%WEAPONID%SKILL%COUNT% = !TEMPSKILL%COUNT%!
IF %COUNT% LSS !WEAPON%WEAPONID%SKILLTOT! (
	GOTO :CREATEWEAPONLOOP
)
ECHO SET WEAPON%WEAPONID%NAME=!WEAPON%WEAPONID%NAME!>>"%CUSTOMWEAPONRESOURCEPATH%\Temp\customweaponlist.bat"
ECHO SET /a WEAPON%WEAPONID%NAMELENGTH = !WEAPON%WEAPONID%NAMELENGTH! >> "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweaponlist.bat"
ECHO SET WEAPON%WEAPONID%NAME=!WEAPON%WEAPONID%NAME!>>"%CUSTOMWEAPONRESOURCEPATH%\Temp\customweapon%SLOTNUM%.bat"
ECHO SET /a WEAPON%WEAPONID%STR = !WEAPON%WEAPONID%STR! >> "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweapon%SLOTNUM%.bat"
ECHO SET /a WEAPON%WEAPONID%MAG = !WEAPON%WEAPONID%MAG! >> "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweapon%SLOTNUM%.bat"
ECHO SET /a WEAPON%WEAPONID%ACC = !WEAPON%WEAPONID%ACC! >> "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweapon%SLOTNUM%.bat"
ECHO SET /a WEAPON%WEAPONID%SKILLTOT = !WEAPON%WEAPONID%SKILLTOT! >> "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweapon%SLOTNUM%.bat"
SET /a COUNT = 0
:CREATEWEAPONLOOP2
SET /a COUNT = %COUNT% + 1
ECHO SET /a WEAPON%WEAPONID%SKILL%COUNT% = !WEAPON%WEAPONID%SKILL%COUNT%! >> "%CUSTOMWEAPONRESOURCEPATH%\Temp\customweapon%SLOTNUM%.bat"
IF %COUNT% LSS !WEAPON%WEAPONID%SKILLTOT! (
	GOTO :CREATEWEAPONLOOP2
)
GOTO :EOF


:WEAPONNAMELENGTH
SET /a WEAPON%WEAPONID%NAMELENGTH = 0
:WEAPONNAMELENGTHLOOPSTART
SET /a WEAPON%WEAPONID%NAMELENGTH += 1
SET TEMP1=!WEAPON%WEAPONID%NAMELENGTH!
SET SUBSTR=!WEAPON%WEAPONID%NAME:~%TEMP1%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :WEAPONNAMELENGTHLOOPSTART
)
SET /a TEMPCOUNT = !WEAPON%WEAPONID%NAMELENGTH! + 1
SET SUBSTR=!WEAPON%WEAPONID%NAME:~%TEMPCOUNT%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :WEAPONNAMELENGTHLOOPSTART
)
GOTO :EOF



:EQUIP
CLS
ECHO.
ECHO %BLACKSMITHNAME%: You have successfully customised the !WEAPON%WEAPONID%NAME!^^!
ECHO.
ECHO             Would like like to equip it now?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No
ECHO.
:EQUIPCHOICE
SET /P EQUIPCHOICE=
ECHO.
IF "%EQUIPCHOICE%" EQU "1" (
	GOTO :EQUIPTRUE
) ELSE IF "%EQUIPCHOICE%" EQU "0" (
	GOTO :EQUIPFALSE
) ELSE (
	GOTO :EQUIPCHOICE
)
GOTO :EOF

:EQUIPTRUE
CALL :UNEQUIPWEAPON
SET PLAYERWEAPON=!WEAPON%WEAPONID%NAME!
SET /a PLAYERWEAPONID = %WEAPONID%
SET /a PLAYEREQUIPSTR = !WEAPON%WEAPONID%STR!
SET /a PLAYEREQUIPMAG = !WEAPON%WEAPONID%MAG!
SET /a PLAYEREQUIPACC = !WEAPON%WEAPONID%ACC!
IF !WEAPON%WEAPONID%SKILLTOT! EQU 0 (
	GOTO :ENDEQUIPLOOP
)
SET /a COUNT = 0
:EQUIPSKILLLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = !WEAPON%WEAPONID%SKILL%COUNT%!
SET /a PLAYERSKILL%TEMP%ENABLED = 1
IF %COUNT% LSS !WEAPON%WEAPONID%SKILLTOT! (
	GOTO :EQUIPSKILLLOOP
)
:ENDEQUIPLOOP
ECHO.
ECHO You have equipped the %PLAYERWEAPON%
ECHO.
pause
GOTO :EOF

:EQUIPFALSE
IF %WEAPONEXIST% EQU 1 (
	IF %PLAYERWEAPONID% EQU %WEAPONID% (
		CALL :UNEQUIPWEAPON
	)
) ELSE (
	IF %PLAYERWEAPONID% EQU %BASECHOICE% (
		IF !PLAYERWEAPON%PLAYERWEAPONID%NUM! EQU 0 (
			CALL :UNEQUIPWEAPON
		)
	)
)
GOTO :EOF
		


:UNEQUIPWEAPON
IF !WEAPON%PLAYERWEAPONID%SKILLTOT! EQU 0 (
	GOTO :UNEQUIPLOOPEND
)
SET /a COUNT = 0
:UNEQUIPLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = !WEAPON%PLAYERWEAPONID%SKILL%COUNT%!
IF !PLAYERSKILL%TEMP%EARNED! EQU 0 (
	SET /a PLAYERSKILL%TEMP%ENABLED = 0
)
IF %COUNT% LSS !WEAPON%PLAYERWEAPONID%SKILLTOT! (
	GOTO :UNEQUIPLOOP
)
:UNEQUIPLOOPEND
SET PLAYERWEAPON=NONE
SET /a PLAYERWEAPONID = 0
SET /a PLAYEREQUIPSTR = 0
SET /a PLAYEREQUIPMAG = 0
SET /a PLAYEREQUIPACC = 0
GOTO :EOF


:REDUCERESOURCES
SET /a PLAYERGIL = %PLAYERGIL% - %GILCOST%
IF %WEAPONEXIST% EQU 0 (
	SET /a PLAYERWEAPON%BASECHOICE%NUM = !PLAYERWEAPON%BASECHOICE%NUM! - 1
)
SET /a PLAYERSPECIALITEM%STRSTONEID%NUM = !PLAYERSPECIALITEM%STRSTONEID%NUM! - %STRSTONECOST%
SET /a PLAYERSPECIALITEM%MAGSTONEID%NUM = !PLAYERSPECIALITEM%MAGSTONEID%NUM! - %MAGSTONECOST%
SET /a PLAYERSPECIALITEM%ACCSTONEID%NUM = !PLAYERSPECIALITEM%ACCSTONEID%NUM! - %ACCSTONECOST%
SET /a COUNT = 0
:REDUCERESOURCESLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = !NEWSKILL%COUNT%!
SET TEMP2=!SKILL%TEMP%NICKNAME!
SET /a TEMP3 = !%TEMP2%STONEID!
SET /a PLAYERSPECIALITEM%TEMP3%NUM = !PLAYERSPECIALITEM%TEMP3%NUM! - 1
IF %COUNT% LSS %NEWSKILLTOT% (
	GOTO :REDUCERESOURCESLOOP
)
GOTO :EOF


:INITIALISEBACKS
SET /a NAMEBACK = 0
SET /a BASEBACK = 0
SET /a STATINCREASEBACK = 0
SET /a SKILLSBACK = 0
SET /a CONFIRMATIONBACK = 0
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