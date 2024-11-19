SET /a STATINCREASEGIL = 500
SET /a GILCOST = 0
SET /a STRSTONECOST = 0
SET /a MAGSTONECOST = 0
SET /a ACCSTONECOST = 0
SET /a BASECHOICE = 1000
SET /a TEMPGIL = 5000

CALL :INTRO
CALL :SLOT
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :NAME
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :BASE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :STATINCREASE1
IF %CHOICE% EQU B (
	GOTO :EOF
)
CALL :STATINCREASE2
IF %CHOICE% EQU B (
	GOTO :EOF
)
CALL :STATINCREASE3
IF %CHOICE% EQU B (
	GOTO :EOF
)
CALL :STATINCREASE4
IF %CHOICE% EQU B (
	GOTO :EOF
)
CALL :SKILLS1
IF %CHOICE% EQU B (
	GOTO :EOF
)
CALL :SKILLS2
IF %CHOICE% EQU B (
	GOTO :EOF
)
CALL :CONFIRMATION
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :OUTRO
GOTO :EOF

:INTRO
CLS
ECHO.
ECHO %BLACKSMITHNAME%: Right, let me show you how to customise your weapons.
ECHO.
ECHO             For the purposes of the tutorial, we'll assume you have some stat stones,
ECHO             some skill stones and plenty of Gil
ECHO.
ECHO             We'll also make some assumptions about the weapons that you have
ECHO.
pause
GOTO :EOF

:SLOT
CLS
ECHO.
ECHO %BLACKSMITHNAME%: First you'll need to choose a weapon slot. More become available as
ECHO             you level up.
ECHO.
ECHO             If you've already customised a weapon in a slot (e.g. slot 2 below)
ECHO             selecting that slot will allow you to further customise that weapon. 
ECHO             I.E. Customisations aren't final^^!
ECHO.
ECHO             Just choose slot 1 for now
ECHO.
ECHO. 1 - 
ECHO. 2 - SuperCustomSword
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :SLOT
)
GOTO :EOF

:NAME
CLS
ECHO.
ECHO %BLACKSMITHNAME%: Now you need to give a name to your weapon. If you chose slot 2 in
ECHO             in the last menu, you would skip this step.
ECHO             One thing that is final about a custom weapon is it's name, so choose
ECHO             carefully^^!
ECHO.
ECHO             You can call this one whatever you like (within batch-enforced reason)
ECHO.
SET /P CHOICE=
IF "%CHOICE%" EQU "" (
	GOTO :NAME
)
SET TUTORIALWEAPONNAME=%CHOICE%
GOTO :EOF

:BASE
CLS
ECHO.
ECHO %BLACKSMITHNAME%: Now we need to choose a base weapon to create your custom weapon from.
ECHO             If you chose slot 2 in the last menu, you would skip this step.
ECHO.
ECHO             Note that when you create a custom weapon from a base one, you will lose
ECHO             the base weapon.
ECHO.
ECHO             The base weapon that you choose will determine the starting stats and skills
ECHO             for the custom weapon. For this tutorial we'll assume you have 1 Sword and
ECHO             1 Staff. 
ECHO.
ECHO             Let's choose to customise the Sword.
ECHO.
ECHO. 1 - Sword                  (1)
ECHO. 2 - Staff                  (1)
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: Choose the Sword for now
	CALL :WAITFORTWO
	GOTO :BASE
)
GOTO :EOF

:STATINCREASE1
CLS
ECHO %BLACKSMITHNAME%: Once you've chosen your base weapon you'll be presented with the option
ECHO             to increase the stats. To increase the stats of a weapon you'll need
ECHO             gil and stat stones.
ECHO.
ECHO             Note: If you choose to further customise a custom weapon you'll be taken
ECHO             straight to this screen.
ECHO.
ECHO %BLACKSMITHNAME%: This weapon currently give you the following stat bonuses:
ECHO.
ECHO. Strength +6
ECHO. Magic    +2
ECHO. Accuracy +1
ECHO.
ECHO %BLACKSMITHNAME%: Select the stat you'd like to increase. 
ECHO             Each stat costs 1 stone and %STATINCREASEGIL% Gil
ECHO             You have %TEMPGIL% Gil remaining
ECHO.
ECHO. 1 - Strength                2 Strength Stones
ECHO. 2 - Magic                   1 Magic Stone
ECHO. 3 - Accuracy                1 Accuracy Stone
ECHO. 0 - Done
ECHO. B - Exit Tutorial (Outside the tutorial this is Back)
ECHO.
ECHO             Let's do STRENGTH for now.
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "B" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "1" (
	SET /a TEMPGIL = %TEMPGIL% - %STATINCREASEGIL% 
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: Increase the strength for now
	CALL :WAITFORTWO
	GOTO :STATINCREASE1
)
GOTO :EOF

:STATINCREASE2
CLS
ECHO.
ECHO %BLACKSMITHNAME%: This weapon currently give you the following stat bonuses:
ECHO.
ECHO. Strength +7
ECHO. Magic    +2
ECHO. Accuracy +1
ECHO.
ECHO %BLACKSMITHNAME%: Select the stat you'd like to increase. Let's do MAGIC for now^^!
ECHO             Each stat costs 1 stone and %STATINCREASEGIL% Gil
ECHO             You have %TEMPGIL% Gil remaining
ECHO.
ECHO. 1 - Strength                1 Strength Stone
ECHO. 2 - Magic                   1 Magic Stone
ECHO. 3 - Accuracy                1 Accuracy Stone
ECHO. 0 - Done
ECHO. B - Exit Tutorial (Outside the tutorial this is Back)
ECHO.
ECHO             Let's do MAGIC for now.
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "B" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "2" (
	SET /a TEMPGIL = %TEMPGIL% - %STATINCREASEGIL% 
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: Increase the magic for now
	CALL :WAITFORTWO
	GOTO :STATINCREASE2
)
GOTO :EOF

:STATINCREASE3
CLS
ECHO.
ECHO %BLACKSMITHNAME%: This weapon currently give you the following stat bonuses:
ECHO.
ECHO. Strength +7
ECHO. Magic    +3
ECHO. Accuracy +1
ECHO.
ECHO %BLACKSMITHNAME%: Select the stat you'd like to increase. Let's do ACCURACY for now^^!
ECHO             Each stat costs 1 stone and %STATINCREASEGIL% Gil
ECHO             You have %TEMPGIL% Gil remaining
ECHO.
ECHO. 1 - Strength                1 Strength Stone
ECHO. 2 - Magic                   0 Magic Stones
ECHO. 3 - Accuracy                1 Accuracy Stone
ECHO. 0 - Done
ECHO. B - Exit Tutorial (Outside the tutorial this is Back)
ECHO.
ECHO             Let's do ACCURACY for now.
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "B" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "3" (
	SET /a TEMPGIL = %TEMPGIL% - %STATINCREASEGIL% 
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: Increase the accuracy for now
	CALL :WAITFORTWO
	GOTO :STATINCREASE3
)
GOTO :EOF

:STATINCREASE4
CLS
ECHO.
ECHO %BLACKSMITHNAME%: This weapon currently give you the following stat bonuses:
ECHO.
ECHO. Strength +7
ECHO. Magic    +3
ECHO. Accuracy +2
ECHO.
ECHO %BLACKSMITHNAME%: Select the stat you'd like to increase.
ECHO             Each stat costs 1 stone and %STATINCREASEGIL% Gil
ECHO             You have %TEMPGIL% Gil remaining
ECHO.
ECHO. 1 - Strength                1 Strength Stone
ECHO. 2 - Magic                   0 Magic Stones
ECHO. 3 - Accuracy                0 Accuracy Stones
ECHO. 0 - Done
ECHO. B - Exit Tutorial (Outside the tutorial this is Back)
ECHO.
ECHO             Let's choose Done now.
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "B" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: I think we've done enough for the tutorial, choose Done
	CALL :WAITFORTWO
	GOTO :STATINCREASE4
)
GOTO :EOF

:SKILLS1
CLS
ECHO.
ECHO %BLACKSMITHNAME%: Now that we're done with stats, we need to add skills. For the
ECHO             purpose of this tutorial, we'll assume you have one Steal Stone
ECHO             and one Power Strike Stone.
ECHO.
ECHO %BLACKSMITHNAME%: This weapon currently gives you the following skills:
ECHO.
ECHO. Meditate
ECHO.
ECHO %BLACKSMITHNAME%: You have the appropriate items to apply these skills to your weapon:
ECHO.
ECHO. You have %TEMPGIL% Gil remaining
ECHO.
ECHO. 1 - Steal               (1 Steal Stone and 50 Gil)
ECHO. 2 - Power Strike        (1 Power Strike Stone and 100 Gil)
ECHO. 0 - Done
ECHO. D - Descriptions
ECHO. B - Exit Tutorial (Outside the tutorial this is Back)
ECHO.
ECHO %BLACKSMITHNAME%: Choose Steal
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	SET /a TEMPGIL = %TEMPGIL% - 50
) ELSE IF "%CHOICE%" EQU "B" (
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: Choose Steal
	CALL :WAITFORTWO
	GOTO :SKILLS1
)
GOTO :EOF

:SKILLS2
CLS
ECHO.
ECHO %BLACKSMITHNAME%: This weapon currently gives you the following skills:
ECHO.
ECHO. Meditate
ECHO. Steal
ECHO.
ECHO %BLACKSMITHNAME%: You have the appropriate items to apply these skills to your weapon:
ECHO.
ECHO. You have %TEMPGIL% Gil remaining
ECHO.
ECHO. 1 - Steal               (1 Steal Stone and 50 Gil)
ECHO. 2 - Power Strike        (1 Power Strike Stone and 100 Gil)
ECHO. 0 - Done
ECHO. D - Descriptions
ECHO. B - Exit Tutorial (Outside the tutorial this is Back)
ECHO.
ECHO %BLACKSMITHNAME%: Choose Done
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "B" (
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: Choose Done
	CALL :WAITFORTWO
	GOTO :SKILLS2
)
GOTO :EOF

:CONFIRMATION
CLS
ECHO.
ECHO %BLACKSMITHNAME%: Ok, here's a summary^^!
ECHO.
ECHO. Weapon Name:    %TUTORIALWEAPONNAME%
ECHO. Strength Bonus: 7
ECHO. Magic Bonus:    3
ECHO. Accuracy Bonus: 2
ECHO. Skill 1:        Steal
ECHO.
ECHO %BLACKSMITHNAME%: It'll cost you 1550 Gil
ECHO             1 Strength Stone
ECHO             1 Magic Stone
ECHO             1 Accuracy Stone
ECHO             1 Steal Stone
ECHO.
ECHO %BLACKSMITHNAME%: Would you like to create this weapon?
ECHO.
ECHO. 1 - Yes
ECHO. 2 - No
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %BLACKSMITHNAME%: Choose yes
	CALL :WAITFORTWO
	GOTO :CONFIRMATION
)
GOTO :EOF

:OUTRO
CLS
ECHO %BLACKSMITHNAME%: And there we are, that's the tutorial finished now.
ECHO.
ECHO             You won't actually get this weapon, but you can go and create
ECHO             your own now. Happy forging^^!
ECHO.
pause
GOTO :EOF







:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF