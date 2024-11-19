@ECHO OFF
:LEVELUP
SET /a PLAYEROLDLVL = %PLAYERLVL%
SET /a PLAYERLVL = %PLAYERLVL%+%PLAYERLEVELUPNUM%
SET /a TEMP = (%PLAYERLIMITBREAK%*100)/%PLAYERMAXLIMITBREAK%
SET /a PLAYERMAXLIMITBREAK = 100 + (%PLAYERLVL%*10)
SET /a PLAYERLIMITBREAK = (%TEMP%*%PLAYERMAXLIMITBREAK%)/100
CALL :LEVELUPDISPLAY
SET /a STATPTS = 5*%PLAYERLEVELUPNUM%
CALL :STATDISTRIBUTE
CALL :NEWSPELLQUERY
CLS
ECHO.
CALL "%MISCRESOURCEPATH%\displayword.bat"
ECHO.
IF /I %DIFFICULTY% EQU EASY (
	ECHO Level up complete^^! You have been FULLY HEALED^^!
	SET /a PLAYERHP=%PLAYERBASEMAXHP%+%PLAYEREQUIPMAXHP%
	SET /a PLAYERMP=%PLAYERBASEMAXMP%+%PLAYEREQUIPMAXMP%
) ELSE IF /I %DIFFICULTY% EQU HARD (
	ECHO Level up complete^^!
)
ECHO.
ECHO Your new stats are:
ECHO.
ECHO LVL		%PLAYERLVL%
ECHO EXP		%EXP%
ECHO HP 		%PLAYERBASEMAXHP%
ECHO MP 		%PLAYERBASEMAXMP%
ECHO STR		%PLAYERBASESTR%
ECHO END		%PLAYERBASEEND%
ECHO MAG		%PLAYERBASEMAG%
ECHO SPR		%PLAYERBASESPR%
ECHO ACC		%PLAYERBASEACC%
ECHO EVA		%PLAYERBASEEVA%
ECHO SPD		%PLAYERBASESPD%
ECHO LCK		%PLAYERBASELCK%
ECHO.
pause
IF %PLAYERLVL% EQU 5 (
	CALL :CUSTOMSPELL
)
SET /a REQEXP = %PLAYERLVL%*200
SET /a OLDREQEXP = (%PLAYERLVL%-1)*200
SET /a REQEXP2 = %REQEXP%-%EXP%
GOTO :EOF

:CUSTOMSPELL
CALL :SCENE1
CALL :SCENE2
IF %EXPLICIT% EQU 1 (
	ECHO. 1 - Err, fuck yea^^!
) ELSE (
	ECHO. 1 - Sure
)
ECHO. 0 - No thanks
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL "%TUTORIALRESOURCEPATH%\customspellexample.bat"
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CUSTOMSPELL
)
GOTO :EOF


:STATDISTRIBUTE
CLS
ECHO.
CALL "%MISCRESOURCEPATH%\displayword.bat"
ECHO.
ECHO. You are now level %PLAYERLVL%
ECHO. You have %STATPTS% Stat Points left to distribute
ECHO.
ECHO Which stat would you like to increase?
ECHO.
ECHO. 1 - Max HP			(%PLAYERBASEMAXHP%)
ECHO. 2 - Max MP			(%PLAYERBASEMAXMP%)
ECHO. 3 - Strength 			(%PLAYERBASESTR%)
ECHO. 4 - Endurance			(%PLAYERBASEEND%)
ECHO. 5 - Magic			(%PLAYERBASEMAG%)
ECHO. 6 - Spirit			(%PLAYERBASESPR%)
ECHO. 7 - Accuracy			(%PLAYERBASEACC%)
ECHO. 8 - Evasion			(%PLAYERBASEEVA%)
ECHO. 9 - Speed			(%PLAYERBASESPD%)
ECHO. 0 - Luck			(%PLAYERBASELCK%)
ECHO. D - Descriptions
ECHO.
:STATCHOICE
CHOICE /C:1234567890D /N
SET /a INCREASE = %ERRORLEVEL%
ECHO.
IF "%INCREASE%" EQU "1" (
	SET /a PLAYERBASEMAXHP=%PLAYERBASEMAXHP%+%STATMAXHPINCREASE%
) ELSE IF "%INCREASE%" EQU "2" (
	SET /a PLAYERBASEMAXMP=%PLAYERBASEMAXMP%+%STATMAXMPINCREASE%
) ELSE IF "%INCREASE%" EQU "3" (
	SET /a PLAYERBASESTR=%PLAYERBASESTR%+1
) ELSE IF "%INCREASE%" EQU "4" (
	SET /a PLAYERBASEEND=%PLAYERBASEEND%+1
) ELSE IF "%INCREASE%" EQU "5" (
	SET /a PLAYERBASEMAG=%PLAYERBASEMAG%+1
) ELSE IF "%INCREASE%" EQU "6" (
	SET /a PLAYERBASESPR=%PLAYERBASESPR%+1
) ELSE IF "%INCREASE%" EQU "7" (
	SET /a PLAYERBASEACC=%PLAYERBASEACC%+1
) ELSE IF "%INCREASE%" EQU "8" (
	SET /a PLAYERBASEEVA=%PLAYERBASEEVA%+1
) ELSE IF "%INCREASE%" EQU "9" (
	SET /a PLAYERBASESPD=%PLAYERBASESPD%+1
) ELSE IF "%INCREASE%" EQU "10" (
	SET /a PLAYERBASELCK=%PLAYERBASELCK%+1
) ELSE IF "%INCREASE%" EQU "11" (
	CALL :DESCRIPTIONS
	GOTO :STATDISTRIBUTE
) ELSE (
	GOTO :STATCHOICE
)
SET /a STATPTS=%STATPTS%-1
IF %STATPTS% GTR 0 (
	CALL :STATDISTRIBUTE
)
GOTO :EOF

:SCENE1
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                                                ล                   /                               บ
ECHO    บ                                               /ณ\                 ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                                              /ฤฤฤ\                ณ                                บ
ECHO    บ          ฺฤฤฤฟ                               ณO  ณ                ณ                                บ
ECHO    บ          ณ  Oณ                               ร   ณ                ณ                                บ
ECHO    บ          ณ   ด                               ภฟ ฺู                ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู                              ฺฤู ภฤฤฟ              ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ                             ณ      ณ              ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ                             ณ   ณ  ณ              ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ                             ณ ณ ณ  ณ              ณ                                บ
ECHO    บ         ณ   ณ ณ                             ณฤลฤณ  ณ              ณ                                บ
ECHO    บ         ณ   ณ ณ                             ณ ณ ณ  ณ              ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ                             ณ ณ ณ  ณ              ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ                             ณ   ณ  ณ              ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู                             ณ   ณ  ณ              ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                              ณ      ณ              ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                              ณ      ณ              ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ                              ณ      ณ              ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                              ภฤยฤฤยฤู              ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                ณ  ณ                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO %PRIESTNAME%: %PLAYERNAME%^^! Is that you?
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:SCENE2
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
ECHO %PRIESTNAME%: Oh, it is you, and you're level 5^^!
ECHO           Now that you're strong enough to create custom spells, how about I teach you?
ECHO.
GOTO :EOF

:DESCRIPTIONS
CLS
ECHO.
CALL "%MISCRESOURCEPATH%\displayword.bat"
ECHO.
ECHO You have %STATPTS% Stat Points left to distribute
ECHO.
ECHO Which stat would you like to increase?
ECHO.
ECHO. 1 - Max HP        How much damage you can take before you lose
ECHO. 2 - Max MP        When this is depleted you can't cast spells
ECHO. 3 - Strength      Determines how much physical damage you do
ECHO. 4 - Endurance     Determines how much physical damage you can endure
ECHO. 5 - Magic         Determines the power of your spells
ECHO. 6 - Spirit        Determines how much magical damage you can endure
ECHO. 7 - Accuracy      Determines how likely you are to hit an enemy
ECHO. 8 - Evasion       Determines how likely you are to dodge an enemy move
ECHO. 9 - Speed         Determines who goes first, amongst other things...
ECHO. 0 - Luck          Determines you chance for a critical hit, amongst other things...
ECHO.
ECHO Press any key to return...
pause >nul
GOTO :EOF


:NEWSPELLQUERY
REM To change the number of level ups needed for a new spell, just add a variable in place of the 3 and set it depending on difficulty at the start of the game
SET /a TEMP = %PLAYEROLDLVL%/3
SET /a TEMP2 = %PLAYERLVL%/3
SET /a TEMP3 = %TEMP2%-%TEMP%
IF %TEMP3% GTR 0 (
	SET /a NEWSPELLPOINT = %NEWSPELLPOINT% + %TEMP3%
)
IF %NEWSPELLPOINT% GTR 0 (
	GOTO :NEWSPELLTRUE
)
GOTO :EOF

:NEWSPELLTRUE
SET /a NEWSPELLBACK = 0
CLS
ECHO.
CALL "%MISCRESOURCEPATH%\displayword.bat"
ECHO.
IF %NEWSPELLPOINT% EQU 1 (
	ECHO You currently have %NEWSPELLPOINT% Spell to unlock
) ELSE IF %NEWSPELLPOINT% GTR 1 (
	ECHO You currently have %NEWSPELLPOINT% Spells to unlock
)
ECHO. 
ECHO Choose the Type of spell you'd like to unlock:
ECHO.
ECHO. 1 - Offensive
ECHO. 2 - Status Ailments
ECHO. 3 - Restorative
ECHO. 4 - Support
ECHO. 0 - I'll save my point(s) thank you very much^^!
ECHO.
:NEWSPELLCHOICE
SET /P NEWMAGICTYPE=
ECHO.
IF "%NEWMAGICTYPE%" EQU "1" (
	SET TYPE=OFF
	SET TYPE2=Offensive
	CALL :NEWSPELL
) ELSE IF "%NEWMAGICTYPE%" EQU "2" (
	SET TYPE=STAT
	SET TYPE2=Status
	CALL :NEWSPELL
) ELSE IF "%NEWMAGICTYPE%" EQU "3" (
	SET TYPE=REST
	SET TYPE2=Restoration
	CALL :NEWSPELL
) ELSE IF "%NEWMAGICTYPE%" EQU "4" (
	SET TYPE=SUPP
	SET TYPE2=Support
	CALL :NEWSPELL
) ELSE IF "%NEWMAGICTYPE%" EQU "0" (	
	GOTO :EOF
) ELSE (
	GOTO :NEWSPELLCHOICE
)
IF %NEWSPELLBACK% EQU 1 (
	GOTO :NEWSPELLTRUE
)
IF %NEWSPELLPOINT% GTR 0 (
	GOTO :NEWSPELLTRUE
)
GOTO :EOF

:NEWSPELL
CALL "%DYNAMICRESOURCEPATH%\dynamicspellstatslevelup.bat"
SET /a SELECTED = 1
:NEWSPELL2
CLS
ECHO.
CALL "%MISCRESOURCEPATH%\displayword.bat"
ECHO.
IF %OPTIONTOT% EQU 0 (
	ECHO You don't have any %TYPE2% spells to unlock
	CALL :WAITFORTHREE
	GOTO :EOF
)
SET /a TEMP = %PLAYERBASEMAXMP% + %PLAYEREQUIPMAXMP%
ECHO Choose the Spell you'd like to unlock:
ECHO.
ECHO Your Maximum MP is %PLAYERBASEMAXMP% excluding equipment, %TEMP% including equipment.
ECHO.
CALL "%MISCRESOURCEPATH%\menu2.bat"
IF %VARSELECTED% EQU 1 (
	CALL :SELECTED
)
IF %BACK% EQU 1 (
	GOTO :EOF
)
IF %VARSELECTED% EQU 0 (
	GOTO :NEWSPELL2
) ELSE (
	GOTO :EOF
)

:SELECTED
CALL :SETSTATICID
CALL :UNLOCKSPELL
GOTO :EOF

:SETSTATICID
SET /a COUNT = 0
:LOOP2START
SET /a COUNT = %COUNT%+1
IF /I !%TYPE%%COUNT%SPELL! EQU !TEXT%SELECTED%NAME1! (
	SET /a CHOICE = %COUNT%
	GOTO :EOF
)
GOTO :LOOP2START

:UNLOCKSPELL
SET TEMP=!%TYPE%%CHOICE%SPELL!
SET /a PLAYER%TEMP%ENABLED = 1
CLS
ECHO.
CALL "%MISCRESOURCEPATH%\displayword.bat"
ECHO.
ECHO You can now use the %TEMP% spell^^!
ECHO.
SET TEMPPATH=%MUSICPATH%\Battle\Spells
IF EXIST "%TEMPPATH%\!%TYPE%%CHOICE%SPELL!.mp3" (
	SET FILE=!%TYPE%%CHOICE%SPELL!.mp3
	CALL "%MUSICPATH%\soundeffect.bat"
) ELSE IF EXIST "%TEMPPATH%\!%TYPE%%CHOICE%EFFECT1ELEMENT!.mp3" (
	SET FILE=!%TYPE%%CHOICE%EFFECT1ELEMENT!.mp3
	CALL "%MUSICPATH%\soundeffect.bat"
)
CALL :WAITFORTWO
IF !PLAYERSKILL%MPSTEALID%EARNED! EQU 0 (
	CALL "%SKILLRESOURCEPATH%\mpstealquery.bat"
)
IF !PLAYERSKILL%MGUARDID%EARNED! EQU 0 (
	CALL "%SKILLRESOURCEPATH%\mguardquery.bat"
)
IF %CHOICE% NEQ 0 (
	SET /a NEWSPELLPOINT=%NEWSPELLPOINT%-1
)
GOTO :EOF

:LEVELUPDISPLAY
SET WORD=Level Up
CALL "%MISCRESOURCEPATH%\calculateword.bat"
CLS
ECHO.
CALL "%MISCRESOURCEPATH%\displayword.bat"
ECHO.
IF %PLAYERLEVELUPNUM% EQU 1 (
	ECHO You have gained a level^^!
) ELSE IF %PLAYERLEVELUPNUM% GTR 1 (
	ECHO You have gained %PLAYERLEVELUPNUM% levels^^!
)
CALL :WAITFORONE
ECHO.
ECHO You are now level %PLAYERLVL%^^!
ECHO.
pause
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
