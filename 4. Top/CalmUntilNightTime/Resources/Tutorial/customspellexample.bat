::@ECHO OFF
::SETLOCAL ENABLEDELAYEDEXPANSION
::SET PRIESTNAME=McPriest
::SET /a MPREDUCTIONPOINTCOST = 50
::SET /a DAMAGEPOINTMPCOST = 3
::SET /a DAMAGEPOINTGILCOST = 30
::SET /a HEALPOINTMPCOST = 3
::SET /a HEALPOINTGILCOST = 30
::SET /a STAT2MPCOST = 10
::SET /a STAT2GILCOST = 100
SET /a TUTORIALGIL = 5000
SET /a TUTORIALMP = 50
CALL :INTRO
CALL :SPELLSLOT
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :NAMESPELL
IF %SPELLNAME% EQU 0 (
	GOTO :EOF
)
CALL :SPELLCREATIONMENU1
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :DAMAGE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :SPELLCREATIONMENU2
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :HEAL
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :SPELLCREATIONMENU3
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :STATUS
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :SPELLCREATIONMENU4
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ACCURACY
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :SPELLCREATIONMENU5
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :MPCOSTREDUCTION
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :SPELLCREATIONMENU6
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :CONFIRMATION
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :COMPLETE
GOTO :EOF


:INTRO
CALL "%MUSICPATH%\stopmusic.bat"
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                               ล                                    /                               บ
ECHO    บ                              /ณ\                                  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                             /ฤฤฤ\                                 ณ                                บ
ECHO    บ          ฺฤฤฤฟ              ณO  ณ                                 ณ                                บ
ECHO    บ          ณ  Oณ              ร   ณ                                 ณ                                บ
ECHO    บ          ณ   ด              ภฟ ฺู                                 ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู             ฺฤู ภฤฤฟ                               ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ            ณ      ณ                               ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ            ณ   ณ  ณ                               ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ            ณ ณ ณ  ณ                               ณ                                บ
ECHO    บ         ณ   ณ ณ            ณฤลฤณ  ณ                               ณ                                บ
ECHO    บ         ณ   ณ ณ            ณ ณ ณ  ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ            ณ ณ ณ  ณ                               ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ            ณ   ณ  ณ                               ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู            ณ   ณ  ณ                               ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ             ณ      ณ                               ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ             ณ      ณ                               ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ             ณ      ณ                               ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ             ภฤยฤฤยฤู                               ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ               ณ  ณ                                 ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO %PRIESTNAME%: Let's go through an example of how to create custom spells^^!
ECHO.
ECHO           For the purposes of this example, we're going to imagine that you have 
ECHO           50 MP and 5000 Gil
ECHO.
pause
GOTO :EOF

:SPELLSLOT
CLS
ECHO.
ECHO %PRIESTNAME%: First you need to choose a slot for your custom spell.
ECHO           More slots will become available as you level up.
ECHO.
ECHO           Choose slot 1 for now
ECHO.
ECHO. 1 - 
ECHO. 0 - Exit Tutorial
ECHO.
:SPELLSLOTCHOICE
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :SPELLSLOT
)
GOTO :EOF

:NAMESPELL
CLS
ECHO.
ECHO %PRIESTNAME%: What would you like to call your spell? (1 word)
ECHO.
ECHO           0 to exit
ECHO.
SET /P SPELLNAME=
ECHO.
IF "%SPELLNAME%" EQU "" (
	GOTO :NAMESPELL
) ELSE IF /I "%SPELLNAME%" EQU "BOOM" (
	ECHO %PRIESTNAME%: Shake shake shake the room^^!
	CALL :WAITFORTHREE
)
GOTO :EOF

:SPELLCREATIONMENU1
SET /a MPCOST = 0
SET /a GILCOST = 0
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Let's just add some damage to the spell for now
ECHO.
ECHO. 1 - Damage
ECHO. 2 - Healing Power
ECHO. 3 - Status Ailments
ECHO. 4 - Status Healing
ECHO. 5 - Support
ECHO. 6 - Accuracy
ECHO. 7 - MP Cost Reduction
ECHO. 8 - Animation
ECHO. 9 - Done
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Choose Damage
	CALL :WAITFORTWO
	GOTO :SPELLCREATIONMENU1
)
GOTO :EOF

:DAMAGE
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: To add damage to a spell increases the MP that the spell will cost when used
ECHO           and the Gil that it will cost to create the spell
ECHO           %DAMAGEPOINTMPCOST% MP for each point
ECHO           %DAMAGEPOINTGILCOST% Gil for each point
ECHO.
ECHO %PRIESTNAME%: Let's just make the base damage 10 for now
ECHO.
ECHO           0 to exit
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "10" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :DAMAGE
)
SET /a MPCOST = %MPCOST% + (10*%DAMAGEPOINTMPCOST%)
SET /a GILCOST = %GILCOST% + (10*%DAMAGEPOINTGILCOST%)
GOTO :EOF

:SPELLCREATIONMENU2
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Ok, let's make your spell heal you too^^!
ECHO.
ECHO. 1 - Damage
ECHO. 2 - Healing Power
ECHO. 3 - Status Ailments
ECHO. 4 - Status Healing
ECHO. 5 - Support
ECHO. 6 - Accuracy
ECHO. 7 - MP Cost Reduction
ECHO. 8 - Animation
ECHO. 9 - Done
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "2" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Choose Healing Power
	CALL :WAITFORTWO
	GOTO :SPELLCREATIONMENU2
)
GOTO :EOF

:HEAL
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: To add healing to a spell increases the MP that the spell will cost when used
ECHO           and the Gil that it will cost to create the spell
ECHO           %HEALPOINTMPCOST% MP for each point
ECHO           %HEALPOINTGILCOST% Gil for each point
ECHO.
ECHO %PRIESTNAME%: Let's just make the healing power 5 for now
ECHO.
ECHO           0 to exit
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "5" (
	ECHO.
) ELSE IF "%CHOICE%" EQU 0 (
	GOTO :EOF
) ELSE (
	GOTO :HEAL
)
SET /a MPCOST = %MPCOST% + (5*%HEALPOINTMPCOST%)
SET /a GILCOST = %GILCOST% + (5*%HEALPOINTGILCOST%)
GOTO :EOF

:SPELLCREATIONMENU3
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: The Status Ailments, Status Healing and Support modifications available
ECHO           is directly dependant on which spells you have unlocked in the game.
ECHO.
ECHO           For now let's assume that the only Status spell that you have unlocked is the
ECHO           "Silence" spell.
ECHO.
ECHO           Choose Status Ailments.
ECHO.
ECHO. 1 - Damage
ECHO. 2 - Healing Power
ECHO. 3 - Status Ailments
ECHO. 4 - Status Healing
ECHO. 5 - Support
ECHO. 6 - Accuracy
ECHO. 7 - MP Cost Reduction
ECHO. 8 - Animation
ECHO. 9 - Done
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "3" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Choose Status Ailments
	CALL :WAITFORTWO
	GOTO :SPELLCREATIONMENU3
)
GOTO :EOF

:STATUS
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Because you've only unlocked the Silence spell (we're just
ECHO           assuming that for this example), this is the only status ailment
ECHO           that we're able to add to the custom spell.
ECHO.
ECHO           Let's add the Silence effect to our custom spell
ECHO.
ECHO. 1 - Silence
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Choose Silence
	CALL :WAITFORTWO
	GOTO :SPELLCREATIONMENU2
)
SET /a MPCOST = %MPCOST% + %STAT2MPCOST%
SET /a GILCOST = %GILCOST% + %STAT2GILCOST%
GOTO :EOF

:SPELLCREATIONMENU4
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: For the Status Healing effect you need to have unlocked "Esuna",
ECHO           which is a restoration spell that cures negative status ailments.
ECHO.
ECHO           For the Support effects you need to have unlocked some support spells
ECHO           like "Protect" or "Shell"
ECHO.
ECHO           These work in exactly the same way as the Status Ailments, so we'll not
ECHO           go through it in this tutorial. For now, choose Accuracy.
ECHO.
ECHO. 1 - Damage
ECHO. 2 - Healing Power
ECHO. 3 - Status Ailments
ECHO. 4 - Status Healing
ECHO. 5 - Support
ECHO. 6 - Accuracy
ECHO. 7 - MP Cost Reduction
ECHO. 8 - Animation
ECHO. 9 - Done
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "6" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Choose Accuracy
	CALL :WAITFORTWO
	GOTO :SPELLCREATIONMENU4
)
GOTO :EOF

:ACCURACY
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: The default accuracy of a custom spell is 50. This is quite low.
ECHO           You can increase the accuracy of the spell but it'll increase the
ECHO           MP cost to use the spell and the Gil cost to create the spell.
ECHO.
ECHO           The Accuracy stat works as a multiplier, if you double the Accuracy
ECHO           of a custom spell, the cost will double.
ECHO.
ECHO %PRIESTNAME%: Let's make the accuracy 100 for now
ECHO.
ECHO           0 to exit the turtorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "100" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Choose 100
	CALL :WAITFORTWO
	GOTO :ACCURACY
)
SET /a MPCOST = %MPCOST%*2
SET /a GILCOST = %GILCOST%*2
SET /a ACCURACY = %CHOICE%
GOTO :EOF


:SPELLCREATIONMENU5
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Wow, that put the price up quite a bit^^!
ECHO           It looks like we've got enough Gil but not enough MP
ECHO.
ECHO           We can reduce the MP cost of the custom spell by
ECHO           throwing more money at it.
ECHO.
ECHO           This is a general solution for all life problems, so
ECHO           with that in mind, let's choose MP Cost Reduction.
ECHO.
ECHO. 1 - Damage
ECHO. 2 - Healing Power
ECHO. 3 - Status Ailments
ECHO. 4 - Status Healing
ECHO. 5 - Support
ECHO. 6 - Accuracy
ECHO. 7 - MP Cost Reduction
ECHO. 8 - Animation
ECHO. 9 - Done
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "7" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Choose MP Cost Reduction
	CALL :WAITFORTWO
	GOTO :SPELLCREATIONMENU5
)
GOTO :EOF


:MPCOSTREDUCTION
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: You can spend extra Gil to reduce the MP cost of your spell.
ECHO           It costs %MPREDUCTIONPOINTCOST% Gil to reduce the MP cost by 1
ECHO.
ECHO           This is really useful if you have cash coming out of your ears,
ECHO           but not much MP^^!
ECHO.
ECHO           For the purposes of this tutorial, that's the case^^!
ECHO.
ECHO           You have 50 MP and 5000 Gil, the spell currently costs 110 MP and 1100 Gil
ECHO.
ECHO           To bring the MP cost down to 50 we'll need to reduce it by 60. So put 60
ECHO           down as the MP reduction.
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "60" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Reduce the MP cost by 40
	CALL :WAITFORTWO
	GOTO :MPCOSTREDUCTION
)
SET /a MPCOST = %MPCOST%-60
SET /a GILCOST = %GILCOST%+3000
GOTO :EOF

:SPELLCREATIONMENU6
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Ok, I think that's enough tutorialing for now.
ECHO           Choose Done and we can take a look at a summary of %SPELLNAME%
ECHO.
ECHO.
ECHO. 1 - Damage
ECHO. 2 - Healing Power
ECHO. 3 - Status Ailments
ECHO. 4 - Status Healing
ECHO. 5 - Support
ECHO. 6 - Accuracy
ECHO. 7 - MP Cost Reduction
ECHO. 8 - Animation
ECHO. 9 - Done
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "9" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %PRIESTNAME%: Done
	CALL :WAITFORTWO
	GOTO :SPELLCREATIONMENU6
)
GOTO :EOF

:CONFIRMATION
CLS
ECHO.
ECHO %PRIESTNAME%: Okay so, here are the final stats for %SPELLNAME%
ECHO.
ECHO MP Cost:           %MPCOST%
ECHO Cost to create:    %GILCOST%
ECHO Accuracy:          %ACCURACY%
ECHO Fire Spell Animation
ECHO.
ECHO Base Damage:       10
ECHO Casts Silence
ECHO Base Heal:         5
ECHO.
ECHO.
ECHO Note: Your spell is reflectable
ECHO.
ECHO %PRIESTNAME%: Are you happy with this spell?
ECHO.
ECHO. 1 - Yes, create %SPELLNAME%
ECHO. 2 - No, don't create %SPELLNAME%
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO.
	ECHO. Choose 1
	ECHO.
	CALL :WAITFORTWO
	GOTO :CONFIRMATION
)
GOTO :EOF

:COMPLETE
CLS
ECHO.
ECHO %PRIESTNAME%: There you are^^! That's how you create spells
ECHO.
ECHO           You won't actually get this spell though, it's just for the tutorial.
ECHO.
ECHO           Have fun making powerful spells^^!
ECHO.
pause
GOTO :EOF



:MPGILDISPLAY
ECHO.
ECHO You have %TUTORIALMP% MP
ECHO You have %TUTORIALGIL% Gil
ECHO.
IF %MPCOST% GTR %TUTORIALMP% (
	<nul set /p ".= " > "%MPCOST%" 
	findstr /v /a:0C /R "^$" "%MPCOST%" nul 
	del "%MPCOST%" > nul 2>&1
	ECHO. - Current MP Cost
) ELSE (
	<nul set /p ".= " > "%MPCOST%" 
	findstr /v /a:0A /R "^$" "%MPCOST%" nul 
	del "%MPCOST%" > nul 2>&1
	ECHO. - Current MP Cost
)
IF %GILCOST% GTR %TUTORIALGIL% (
	<nul set /p ".= " > "%GILCOST%" 
	findstr /v /a:0C /R "^$" "%GILCOST%" nul 
	del "%GILCOST%" > nul 2>&1
	ECHO. - Current Gil Cost
) ELSE (
	<nul set /p ".= " > "%GILCOST%" 
	findstr /v /a:0A /R "^$" "%GILCOST%" nul 
	del "%GILCOST%" > nul 2>&1
	ECHO. - Current Gil Cost
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