CALL %TEMPLERESOURCEPATH%\availablespellcustomisations.bat"
CALL :INITIALISEVARIABLES
:SPELLSLOTSET
CALL :SPELLSLOT
IF %SPELLSLOTNUM% EQU 0 (
	GOTO :EOF
)
:NAMESPELLSET
CALL :NAMESPELL
IF %SPELLNAME% EQU 0 (
	GOTO :SPELLSLOTSET
)
CALL :SPELLCREATIONMENU
GOTO :EOF





:SPELLSLOT
CLS
ECHO.
SET /a AVAILABLESPELLSLOTS = %PLAYERLVL%/5
IF %AVAILABLESPELLSLOTS% GTR 9 (
	SET /a AVAILABLESPELLSLOTS = 9
)
IF EXIST "%CUSTOMSPELLRESOURCEPATH%\Temp\customspelllist.bat" (
	CALL "%CUSTOMSPELLRESOURCEPATH%\Temp\customspelllist.bat"
)
IF %AVAILABLESPELLSLOTS% EQU 0 (
	ECHO %PRIESTNAME%: Sorry you're not a high enough level to create spells yet...
	ECHO.
	SET /a SPELLSLOTNUM = 0
	pause
	GOTO :EOF
) ELSE IF %AVAILABLESPELLSLOTS% EQU 1 (
	ECHO %PRIESTNAME%: You can maintain %AVAILABLESPELLSLOTS% custom spell
) ELSE IF %AVAILABLESPELLSLOTS% GEQ 2 (	
	ECHO %PRIESTNAME%: You can maintain %AVAILABLESPELLSLOTS% custom spells
)
ECHO.
ECHO           Select a spell slot
ECHO.
IF %AVAILABLESPELLSLOTS% GEQ 1 (
ECHO. 1 - %SPELLSLOT1NAME%
)
IF %AVAILABLESPELLSLOTS% GEQ 2 (
ECHO. 2 - %SPELLSLOT2NAME%
)
IF %AVAILABLESPELLSLOTS% GEQ 3 (
ECHO. 3 - %SPELLSLOT3NAME%
)
IF %AVAILABLESPELLSLOTS% GEQ 4 (
ECHO. 4 - %SPELLSLOT4NAME%
)
IF %AVAILABLESPELLSLOTS% GEQ 5 (
ECHO. 5 - %SPELLSLOT5NAME%
)
IF %AVAILABLESPELLSLOTS% GEQ 6 (
ECHO. 6 - %SPELLSLOT6NAME%
)
IF %AVAILABLESPELLSLOTS% GEQ 7 (
ECHO. 7 - %SPELLSLOT7NAME%
)
IF %AVAILABLESPELLSLOTS% GEQ 8 (
ECHO. 8 - %SPELLSLOT8NAME%
)
IF %AVAILABLESPELLSLOTS% GEQ 9 (
ECHO. 9 - %SPELLSLOT9NAME%
)
ECHO. 0 - Back
ECHO.
SET /P SPELLSLOTNUM=
IF "%SPELLSLOTNUM%" EQU "" (
	GOTO :SPELLSLOT
)
IF %SPELLSLOTNUM% GTR %AVAILABLESPELLSLOTS% (
	GOTO :SPELLSLOT
) ELSE IF %SPELLSLOTNUM% LSS 0 (
	GOTO :SPELLSLOT
) ELSE IF %SPELLSLOTNUM% EQU 0 (
	GOTO :EOF
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
)
GOTO :EOF

:SPELLCREATIONMENU
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: What would you like to adjust?
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
ECHO. 0 - Back
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL :DAMAGE
) ELSE IF "%CHOICE%" EQU "2" (
	CALL :CURE
) ELSE IF "%CHOICE%" EQU "3" (
	CALL :STATUS
) ELSE IF "%CHOICE%" EQU "4" (
	CALL :STATUSCURE
) ELSE IF "%CHOICE%" EQU "5" (
	CALL :SUPPORT
) ELSE IF "%CHOICE%" EQU "6" (
	CALL :ACCURACY
) ELSE IF "%CHOICE%" EQU "7" (
	CALL :MPCOSTREDUCTION
) ELSE IF "%CHOICE%" EQU "8" (
	CALL :ANIMATION
) ELSE IF "%CHOICE%" EQU "9" (
	CALL :CONFIRMATION
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :SPELLCREATIONMENU
)
IF %CONFIRMATIONCHOICE% EQU 0 (
	GOTO :SPELLCREATIONMENU
)
GOTO :EOF

:DAMAGE
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: What would you like the base damage of %SPELLNAME% to be?
ECHO           Must be between 1 and 200
ECHO           %DAMAGEPOINTMPCOST% MP for each point
ECHO           %DAMAGEPOINTGILCOST% Gil for each point
ECHO.
ECHO           0 to go back
ECHO.
SET /P BASEDAM=
ECHO.
IF "%BASEDAM%" EQU "" (
	GOTO :DAMAGE
)
IF %BASEDAM% LSS 0 (
	GOTO :DAMAGE
) ELSE IF %BASEDAM% GTR 200 (
	GOTO :DAMAGE
) ELSE IF %BASEDAM% EQU 0 (
	GOTO :EOF
)
SET /a DAMAGEMPCOST = %BASEDAM%*%DAMAGEPOINTMPCOST%
SET /a DAMAGEGILCOST = %BASEDAM%*%DAMAGEPOINTGILCOST%
GOTO :EOF

:CURE
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: What would you like the base healing power of %SPELLNAME% to be?
ECHO           Must be between 1 and 100
ECHO           %HEALPOINTMPCOST% MP for each point
ECHO           %HEALPOINTGILCOST% Gil for each point
ECHO.
ECHO           0 to go back
ECHO.
SET /P BASEHEAL=
ECHO.
IF "%BASEHEAL%" EQU "" (
	GOTO :CUREVALUE
)
IF %BASEHEAL% LSS 0 (
	GOTO :CURE
) ELSE IF %BASEHEAL% GTR 100 (
	GOTO :CURE
) ELSE IF %BASEHEAL% EQU 0 (
	GOTO :EOF
)
SET /a CUREMPCOST = %BASEHEAL%*%HEALPOINTMPCOST%
SET /a CUREGILCOST = %BASEHEAL%*%HEALPOINTGILCOST%
GOTO :EOF

:STATUS
SET TYPE=STAT
CALL %TEMPLERESOURCEPATH%\availablespellcustomisations.bat"
IF %OPTIONTOT% EQU 0 (
	CLS
	ECHO.
	ECHO %PRIESTNAME%: You don't have any status ailment spells
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Which Status Ailments would you like
ECHO.
SET /a COUNT = 0
:STATUSLOOP
SET /a COUNT = %COUNT% + 1
SET /a SPACENUM = 20 - !TEXT%COUNT%NAMELENGTH!
ECHO. %COUNT% - !TEXT%COUNT%NAME1!!SPACES%SPACENUM%!!TEXT%COUNT%NAME2! MP !TEXT%COUNT%NAME3! Gil - !TEXT%COUNT%NAME4!
IF %COUNT% LSS %OPTIONTOT% (
	GOTO :STATUSLOOP
)
ECHO. 0 - Back
ECHO.
:STATUSCHOICE
SET /P DYNAMICSTATUSCHOICE=
ECHO.
IF "%DYNAMICSTATUSCHOICE%" EQU "" (
	GOTO :STATUS
) ELSE IF "%DYNAMICSTATUSCHOICE%" EQU "0" (
	GOTO :EOF
)
IF %DYNAMICSTATUSCHOICE% LSS 0 (
	GOTO :STATUS
) ELSE IF %DYNAMICSTATUSCHOICE% GTR %OPTIONTOT% (
	GOTO :STATUS
)
CALL :STATUSSTATICID
CALL :STATUSENABLEDISABLE
GOTO :EOF

:STATUSSTATICID
SET /a COUNT = 0
:STATUSLOOPSTART
SET /a COUNT = %COUNT% + 1
IF "!%TYPE%%COUNT%SPELL!" EQU "!TEXT%DYNAMICSTATUSCHOICE%NAME1!" (
	SET /a STATUSCHOICE = %COUNT%
	GOTO :EOF
)
GOTO :STATUSLOOPSTART

:STATUSENABLEDISABLE
SET TEMP=!%TYPE%%STATUSCHOICE%SPELL!
IF !%TEMP%! EQU 0 (
	SET /a !%TYPE%%STATUSCHOICE%SPELL! = 1
	SET /a STATUSMPCOST = %STATUSMPCOST%+!%TYPE%%STATUSCHOICE%MPCOST!
	SET /a STATUSGILCOST = %STATUSGILCOST%+!%TYPE%%STATUSCHOICE%GILCOST!
) ELSE (
	SET /a !%TYPE%%STATUSCHOICE%SPELL! = 0
	SET /a STATUSMPCOST = %STATUSMPCOST%-!%TYPE%%STATUSCHOICE%MPCOST!
	SET /a STATUSGILCOST = %STATUSGILCOST%-!%TYPE%%STATUSCHOICE%GILCOST!
)
GOTO :EOF

:STATUSCURE
IF %PLAYERESUNAENABLED% EQU 0 (
	CLS
	ECHO.
	ECHO %PRIESTNAME%: You need to unlock %REST5SPELL% before you can use this
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Would you like %SPELLNAME% to cure status ailments?
ECHO           This will cure Blind, Poison and Slow
ECHO.
ECHO. 1 - Yes             (%REST5MPCOST% MP) (%REST5GILCOST% Gil)
ECHO. 2 - No
ECHO. 0 - Back
ECHO.
SET /P STATUSCURETRUE=
ECHO.
IF "%STATUSCURETRUE%" EQU "1" (
	IF %PLAYERESUNAENABLED% EQU 1 (
		SET /a ESUNA = 1
		SET /a STATUSCUREMPCOST = %REST5MPCOST%
		SET /a STATUSCUREGILCOST = %REST5GILCOST%
		GOTO :EOF
	) ELSE (
		ECHO %PRIESTNAME%: Sorry, you need to unlock this spell before you can use it to make a new one^^
		CALL :WAITFORTHREE
	)
) ELSE IF "%STATUSCURETRUE%" EQU "2" ( 
	SET /a ESUNA = 0
	SET /a STATUSCUREMPCOST = 0
	SET /a STATUSCUREGILCOST = 0
	GOTO :EOF
) ELSE IF "%STATUSCURETRUE%" EQU "0" ( 
	GOTO :EOF
) ELSE (
	GOTO :STATUSCURE
)
GOTO :EOF

:SUPPORT
SET TYPE=SUPP
CALL %TEMPLERESOURCEPATH%\availablespellcustomisations.bat"
IF %OPTIONTOT% EQU 0 (
	CLS
	ECHO.
	ECHO %PRIESTNAME%: You don't have any support spells
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Which Support spells would you like
ECHO.
SET /a COUNT = 0
:SUPPORTLOOP
SET /a COUNT = %COUNT% + 1
SET /a SPACENUM = 20 - !TEXT%COUNT%NAMELENGTH!
ECHO. %COUNT% - !TEXT%COUNT%NAME1!!SPACES%SPACENUM%!!TEXT%COUNT%NAME2! MP !TEXT%COUNT%NAME3! Gil - !TEXT%COUNT%NAME4!
IF %COUNT% LSS %OPTIONTOT% (
	GOTO :SUPPORTLOOP
)
ECHO. 0 - Back
ECHO.
:SUPPORTCHOICE
SET /P DYNAMICSUPPORTCHOICE=
ECHO.
IF "%DYNAMICSUPPORTCHOICE%" EQU "" (
	GOTO :SUPPORT
) ELSE IF "%DYNAMICSUPPORTCHOICE%" EQU "0" (
	GOTO :EOF
)
IF %DYNAMICSUPPORTCHOICE% LSS 0 (
	GOTO :SUPPORT
) ELSE IF %DYNAMICSUPPORTCHOICE% GTR %OPTIONTOT% (
	GOTO :SUPPORT
)
CALL :SUPPORTSTATICID
CALL :SUPPORTENABLEDISABLE
GOTO :EOF

:SUPPORTSTATICID
SET /a COUNT = 0
:SUPPORTLOOPSTART
SET /a COUNT = %COUNT% + 1
IF "!%TYPE%%COUNT%SPELL!" EQU "!TEXT%DYNAMICSUPPORTCHOICE%NAME1!" (
	SET /a SUPPORTCHOICE = %COUNT%
	GOTO :EOF
)
GOTO :SUPPORTLOOPSTART

:SUPPORTENABLEDISABLE
SET TEMP=!%TYPE%%SUPPORTCHOICE%SPELL!
IF !%TEMP%! EQU 0 (
	SET /a !%TYPE%%SUPPORTCHOICE%SPELL! = 1
	SET /a SUPPORTMPCOST = %SUPPORTMPCOST%+!%TYPE%%SUPPORTCHOICE%MPCOST!
	SET /a SUPPORTGILCOST = %SUPPORTGILCOST%+!%TYPE%%SUPPORTCHOICE%GILCOST!
) ELSE (
	SET /a !%TYPE%%SUPPORTCHOICE%SPELL! = 0
	SET /a SUPPORTMPCOST = %SUPPORTMPCOST%-!%TYPE%%SUPPORTCHOICE%MPCOST!
	SET /a SUPPORTGILCOST = %SUPPORTGILCOST%-!%TYPE%%SUPPORTCHOICE%GILCOST!
)
GOTO :EOF

:ACCURACY
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: What would you like the accuracy of your spell to be?
ECHO           Must be between 1 and 200
ECHO           Default costs based on accuracy of 50.
ECHO.
ECHO           0 to go back
ECHO.
SET /P ACCURACYCHOICE=
ECHO.
IF "%ACCURACYCHOICE%" EQU "" (
	GOTO :ACCURACY
)
IF %ACCURACYCHOICE% LSS 0 (
	GOTO :ACCURACY
) ELSE IF %ACCURACYCHOICE% GTR 200 (
	GOTO :ACCURACY
) ELSE IF %ACCURACYCHOICE% EQU 0 (
	GOTO :EOF
)
SET /a ACCURACY = %ACCURACYCHOICE%
GOTO :EOF

:MPCOSTREDUCTION
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: You can spend extra Gil to reduce the MP cost of your spell.
ECHO           It costs %MPREDUCTIONPOINTCOST% Gil to reduce the MP cost by 1.
ECHO           How much would you like to reduce the MP cost by?
ECHO.
SET /P MPREDUCTION=
ECHO.
IF "%MPREDUCTION%" EQU "" (
	GOTO :MPCOSTREDUCTION
)
SET /a MPREDUCTIONGILCOST = %MPREDUCTION%*%MPREDUCTIONPOINTCOST%
SET /a GILCOST = ((%DAMAGEGILCOST% + %STATUSGILCOST% + %CUREGILCOST% + %STATUSCUREGILCOST% + %SUPPORTGILCOST%)*%ACCURACY%)/50 + %MPREDUCTIONGILCOST%
IF %GILCOST% LSS 0 (
	ECHO. Don't try to cheat or I'll delete your saved games.
	ECHO.
	SET /a MPREDUCTIONGILCOST = 0
	SET /a MPREDUCTION = 0
	CALL :WAITFORTWO
	GOTO :MPCOSTREDUCTION
) ELSE IF %MPREDUCTION% GTR %MPCOST% (
	ECHO %PRIESTNAME%: Ohhhhh, I see what you're trying to do^^!
	ECHO.
	CALL :WAITFORTWO
	ECHO           I don't think I can allow that, I'll just ask God...
	ECHO.
	CALL :WAITFORTWO
	ECHO           ...
	ECHO.
	CALL :WAITFORTWO
	ECHO           ...
	ECHO.
	CALL :WAITFORTWO
	ECHO           Turns out I can^^! I hope you can afford the spell.
	ECHO.
	CALL :WAITFORTWO
) ELSE IF %MPREDUCTION% LSS -9999 (
	ECHO. Don't try to cheat or I'll delete your saved games.
	ECHO.
	SET /a MPREDUCTIONGILCOST = 0
	SET /a MPREDUCTION = 0
	CALL :WAITFORTWO
	GOTO :MPCOSTREDUCTION
) ELSE IF %MPREDUCTION% LSS 0 (
	ECHO. Ooooo cleverrrrr.
	ECHO.
	CALL :WAITFORTWO
	ECHO. I guess I'll allow that...
	ECHO.
	CALL :WAITFORTWO
)
GOTO :EOF

:ANIMATION
CLS
CALL :MPGILDISPLAY
ECHO.
ECHO %PRIESTNAME%: Choose an animation for your spell
ECHO.
ECHO. 1 - Fire Spell Animation
ECHO. 2 - Ice Spell Animation
ECHO. 3 - Electricity Spell Animation
ECHO. 4 - Water Spell Animation
ECHO. 5 - Earth Spell Animation
ECHO. 6 - Drain Spell Animation
ECHO. 7 - Demi Spell Animation
ECHO. 8 - Forbidden Spell Animation 1
ECHO. 9 - Forbidden Spell Animation 2
ECHO. 10 - Status Spell Animation
ECHO. 11 - Self Spell Animation
ECHO.
SET /P ANIMATIONCHOICE=
IF "%ANIMATIONCHOICE%" EQU "" (
	GOTO :ANIMATION
)
IF %ANIMATIONCHOICE% LSS 1 (
	GOTO :ANIMATION
) ELSE IF %ANIMATIONCHOICE% GTR 11 (
	GOTO :ANIMATION
)
IF %ANIMATIONCHOICE% EQU 1 (
	SET PLAYERSPELLANIMATION2=FIRESPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Fire Spell Animation
) ELSE IF %ANIMATIONCHOICE% EQU 2 (
	SET PLAYERSPELLANIMATION2=ICESPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Ice Spell Animation
) ELSE IF %ANIMATIONCHOICE% EQU 3 (
	SET PLAYERSPELLANIMATION2=ELECTRICITYSPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Electricity Spell Animation
) ELSE IF %ANIMATIONCHOICE% EQU 4 (
	SET PLAYERSPELLANIMATION2=WATERSPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Water Spell Animation
) ELSE IF %ANIMATIONCHOICE% EQU 5 (
	SET PLAYERSPELLANIMATION2=EARTHSPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Earth Spell Animation
) ELSE IF %ANIMATIONCHOICE% EQU 6 (
	SET PLAYERSPELLANIMATION2=DRAINSPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Drain Spell Animation
) ELSE IF %ANIMATIONCHOICE% EQU 7 (
	SET PLAYERSPELLANIMATION2=DEMISPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Demi Spell Animation
) ELSE IF %ANIMATIONCHOICE% EQU 8 (
	SET PLAYERSPELLANIMATION2=FORBIDDEN1SPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Forbidden Spell Animation 1
) ELSE IF %ANIMATIONCHOICE% EQU 9 (
	SET PLAYERSPELLANIMATION2=FORBIDDEN2SPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Forbidden Spell Animation 2
) ELSE IF %ANIMATIONCHOICE% EQU 10 (
	SET PLAYERSPELLANIMATION2=STATUSPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Status Spell Animation
) ELSE IF %ANIMATIONCHOICE% EQU 11 (
	SET PLAYERSPELLANIMATION2=SELFSPELL
	SET PLAYERSPELLANIMATIONDISPLAY=Self Spell Animation
) 
GOTO :EOF

:CONFIRMATION
IF %GILCOST% LSS 0 (
	CLS
	ECHO.
	ECHO %PRIESTNAME%: You can't create this spell because it costs negative gil
	ECHO               Nice try though
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CLS
SET /a REFLECTABLE = 0
IF %BASEDAM% GTR 0 (
	SET /a REFLECTABLE = 1
) ELSE IF %BLIND% EQU 1 (
	SET /a REFLECTABLE = 1
) ELSE IF %SILENCE% EQU 1 (
	SET /a REFLECTABLE = 1
) ELSE IF %POISON% EQU 1 (
	SET /a REFLECTABLE = 1
) ELSE IF %SLOW% EQU 1 (
	SET /a REFLECTABLE = 1
) ELSE IF %CONFUSION% EQU 1 (
	SET /a REFLECTABLE = 1
) ELSE IF %SLEEP% EQU 1 (
	SET /a REFLECTABLE = 1
) ELSE IF %STOP% EQU 1 (
	SET /a REFLECTABLE = 1
)
ECHO.
ECHO %PRIESTNAME%: Okay so, here are the final stats for %SPELLNAME%
ECHO.
ECHO MP Cost            %MPCOST%
ECHO Cost to create     %GILCOST%
ECHO Accuracy           %ACCURACY%
ECHO %PLAYERSPELLANIMATIONDISPLAY%
ECHO.
IF %BASEDAM% GTR 0 (
	ECHO Base Damage:       %BASEDAM%
)
IF %BLIND% EQU 1 (
	ECHO Casts Blind
)
IF %SILENCE% EQU 1 (
	ECHO Casts Silence
)
IF %POISON% EQU 1 (
	ECHO Casts Poison
)
IF %SLOW% EQU 1 (
	ECHO Casts Slow
)
IF %SLEEP% EQU 1 (
	ECHO Casts Sleep
)
IF %CONFUSION% EQU 1 (
	ECHO Casts Confusion
)
IF %STOP% EQU 1 (
	ECHO Casts Stop
)
IF %DISPEL% EQU 1 (
	ECHO Casts Dispel
)
IF %BASEHEAL% GTR 0 (
	ECHO Base Heal:         %BASEHEAL%
)
IF %ESUNA% EQU 1 (
	ECHO Heals Blind, Poison and Slow
)
IF %PROTECT% EQU 1 (
	ECHO Casts Protect
)
IF %SHELL% EQU 1 (
	ECHO Casts Shell
)
IF %HASTE% EQU 1 (
	ECHO Casts Haste
)
IF %REFLECT% EQU 1 (
	ECHO Casts Reflect
)
IF %REFLECTABLE% EQU 1 (
	ECHO.
	ECHO Note: Your spell is reflectable
)
ECHO.
ECHO %PRIESTNAME%: Are you happy with this spell?
ECHO.
ECHO. 1 - Yes, create %SPELLNAME%
ECHO. 2 - No, don't create %SPELLNAME%
ECHO. 0 - Back
ECHO.
:CONFIRMATIONCHOICE
SET /P CONFIRMATIONCHOICE=
ECHO.
IF "%CONFIRMATIONCHOICE%" EQU "1" (
	IF %PLAYERGIL% LSS %GILCOST% (
		SET /a CONFIRMATIONCHOICE = 0
		ECHO. You don't have enough Gil for this
		ECHO.
		CALL :WAITFORTWO
		GOTO :EOF
	) ELSE IF %PLAYERMAXMP% LSS %MPCOST% (
		SET /a CONFIRMATIONCHOICE = 0
		ECHO. Your MP isn't high enough to create this spell
		ECHO.
		CALL :WAITFORTWO
		GOTO :EOF
	) ELSE (
		CALL :CREATESPELL
	)
) ELSE IF "%CONFIRMATIONCHOICE%" EQU "2" (
	ECHO %PRIESTNAME%: That's fine, I love having my time wasted...
	ECHO.
	CALL :WAITFORTHREE
) ELSE IF "%CONFIRMATIONCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CONFIRMATIONCHOICE
)
GOTO :EOF



:CREATESPELL
SET /a PLAYERGIL = %PLAYERGIL% - %GILCOST%
SET /a PLAYERCUSTOMSPELLCREATIONCOUNT = %PLAYERCUSTOMSPELLCREATIONCOUNT% + 1
CALL :SPELLNAMELENGTH
CALL :SETGENERAL
CALL :SETEFFECTS

ECHO SET PLAYERSPELLNAME=%SPELLNAME%>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET /a PLAYERSPELLACCURACY=%ACCURACY%>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET /a PLAYERSPELLMPCOST=%MPCOST%>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET /a PLAYERSPELLREFLECTABLE=%REFLECTABLE% >> "%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET /a PLAYERSPELLEFFECTSNUM=%PLAYERSPELLEFFECT2SNUM% >> "%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET PLAYERSPELLANIMATION=%PLAYERSPELLANIMATION2%>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
SET /a EFFECTNUM = 0
:EFFECTSLOOPSTART
SET /a EFFECTNUM = %EFFECTNUM% + 1
ECHO SET PLAYERSPELLEFFECT%EFFECTNUM%ELEMENT=!PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET PLAYERSPELLEFFECT%EFFECTNUM%TYPE=!PLAYERSPELLEFFECT2%EFFECTNUM%TYPE!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET PLAYERSPELLEFFECT%EFFECTNUM%ATTRIBUTE=!PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET PLAYERSPELLEFFECT%EFFECTNUM%TARGET=!PLAYERSPELLEFFECT2%EFFECTNUM%TARGET!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET /a PLAYERSPELLEFFECT%EFFECTNUM%AMOUNT=!PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET /a PLAYERSPELLEFFECT%EFFECTNUM%FIXEDAMOUNT=!PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET /a PLAYERSPELLEFFECT%EFFECTNUM%MINTURNCOUNT=!PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET /a PLAYERSPELLEFFECT%EFFECTNUM%MAXTURNCOUNT=!PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
ECHO SET PLAYERSPELLEFFECT%EFFECTNUM%TEXT=!PLAYERSPELLEFFECT2%EFFECTNUM%TEXT!>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspell%SPELLSLOTNUM%.bat"
IF %EFFECTNUM% LSS %PLAYERSPELLEFFECT2SNUM% (
	GOTO :EFFECTSLOOPSTART
)
ECHO.
ECHO %SPELLNAME% created successfully
ECHO.
pause
GOTO :EOF

:SPELLNAMELENGTH
SET /a SPELLNAMELENGTH = 0
:SPELLNAMELOOPSTART
SET /a SPELLNAMELENGTH += 1
SET SUBSTR=!SPELLNAME:~%SPELLNAMELENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :SPELLNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %SPELLNAMELENGTH% + 1
	SET SUBSTR=!SPELL:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :SPELLNAMELOOPSTART
	)
)
REM Need to have a think about the below bit
SET /a SPELLTABS = ((34-%SPELLNAMELENGTH%)/8)+1
GOTO :EOF

:SETGENERAL
ECHO SET SPELLSLOT%SPELLSLOTNUM%NAME=%SPELLNAME%>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspelllist.bat"
ECHO SET /a SPELLSLOT%SPELLSLOTNUM%NAMELENGTH=%SPELLNAMELENGTH% >> "%CUSTOMSPELLRESOURCEPATH%\Temp\customspelllist.bat"
ECHO SET /a SPELLSLOT%SPELLSLOTNUM%MPCOST=%MPCOST%>>"%CUSTOMSPELLRESOURCEPATH%\Temp\customspelllist.bat"
GOTO :EOF

:SETEFFECTS
SET /a EFFECTNUM = 0
IF %BASEDAM% GTR 0 (
	CALL :ADDDAMAGEEFFECT
)
CALL :ADDSTATUSEFFECTS
IF %DISPEL% EQU 1 (
	CALL :ADDDISPELEFFECT
)
IF %BASEHEAL% GTR 0 (
	CALL :ADDCUREEFFECT
)
IF %ESUNA% EQU 1 (
	CALL :ADDSTATUSCUREEFFECT
)
CALL :ADDSUPPORTEFFECTS
SET /a PLAYERSPELLEFFECT2SNUM = %EFFECTNUM%
GOTO :EOF

:ADDDAMAGEEFFECT
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=NONE
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=STAT
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=HP
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=DEFENDER
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = -%BASEDAM%
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = 0
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = 0
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = 0
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=Your spell did
GOTO :EOF

:ADDSTATUSEFFECTS
SET TEMPMAGTYPE=STAT
SET TEMPSTATUS=BLIND
CALL :SETEFFECTQUERY
SET TEMPSTATUS=SILENCE
CALL :SETEFFECTQUERY
SET TEMPSTATUS=POISON
CALL :SETEFFECTQUERY
SET TEMPSTATUS=SLOW
CALL :SETEFFECTQUERY
SET TEMPSTATUS=SLEEP
CALL :SETEFFECTQUERY
SET TEMPSTATUS=CONFUSION
CALL :SETEFFECTQUERY
SET TEMPSTATUS=STOP
CALL :SETEFFECTQUERY
GOTO :EOF

:SETEFFECTQUERY
IF !%TEMPSTATUS%! EQU 1 (
	CALL :SETEFFECT
)
GOTO :EOF
:SETEFFECT
SET /a EFFECTNUM = %EFFECTNUM%+1
SET TEMPID=!%TEMPSTATUS%ID!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!%TEMPMAGTYPE%%TEMPID%EFFECT1ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!%TEMPMAGTYPE%%TEMPID%EFFECT1TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!%TEMPMAGTYPE%%TEMPID%EFFECT1ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!%TEMPMAGTYPE%%TEMPID%EFFECT1TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !%TEMPMAGTYPE%%TEMPID%EFFECT1AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !%TEMPMAGTYPE%%TEMPID%EFFECT1FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !%TEMPMAGTYPE%%TEMPID%EFFECT1MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !%TEMPMAGTYPE%%TEMPID%EFFECT1MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!%TEMPMAGTYPE%%TEMPID%EFFECT1PLAYERTEXT!
GOTO :EOF

:ADDDISPELEFFECT
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!SUPP%DISPELID%EFFECT1ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!SUPP%DISPELID%EFFECT1TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!SUPP%DISPELID%EFFECT1ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!SUPP%DISPELID%EFFECT1TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !SUPP%DISPELID%EFFECT1AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !SUPP%DISPELID%EFFECT1FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !SUPP%DISPELID%EFFECT1MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !SUPP%DISPELID%EFFECT1MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!SUPP%DISPELID%EFFECT1PLAYERTEXT!
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!SUPP%DISPELID%EFFECT2ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!SUPP%DISPELID%EFFECT2TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!SUPP%DISPELID%EFFECT2ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!SUPP%DISPELID%EFFECT2TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !SUPP%DISPELID%EFFECT2AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !SUPP%DISPELID%EFFECT2FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !SUPP%DISPELID%EFFECT2MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !SUPP%DISPELID%EFFECT2MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!SUPP%DISPELID%EFFECT2PLAYERTEXT!
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!SUPP%DISPELID%EFFECT3ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!SUPP%DISPELID%EFFECT3TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!SUPP%DISPELID%EFFECT3ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!SUPP%DISPELID%EFFECT3TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !SUPP%DISPELID%EFFECT3AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !SUPP%DISPELID%EFFECT3FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !SUPP%DISPELID%EFFECT3MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !SUPP%DISPELID%EFFECT3MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!SUPP%DISPELID%EFFECT3PLAYERTEXT!
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!SUPP%DISPELID%EFFECT4ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!SUPP%DISPELID%EFFECT4TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!SUPP%DISPELID%EFFECT4ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!SUPP%DISPELID%EFFECT4TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !SUPP%DISPELID%EFFECT4AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !SUPP%DISPELID%EFFECT4FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !SUPP%DISPELID%EFFECT4MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !SUPP%DISPELID%EFFECT4MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!SUPP%DISPELID%EFFECT4PLAYERTEXT!
GOTO :EOF



:ADDCUREEFFECT
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=NONE
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=STAT
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=HP
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=ATTACKER
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = %BASEHEAL%
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = 0
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = 0
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = 0
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=Your spell did
GOTO :EOF

:ADDSTATUSCUREEFFECT
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!REST%ESUNAID%EFFECT1ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!REST%ESUNAID%EFFECT1TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!REST%ESUNAID%EFFECT1ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!REST%ESUNAID%EFFECT1TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !REST%ESUNAID%EFFECT1AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !REST%ESUNAID%EFFECT1FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !REST%ESUNAID%EFFECT1MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !REST%ESUNAID%EFFECT1MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!REST%ESUNAID%EFFECT1PLAYERTEXT!
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!REST%ESUNAID%EFFECT2ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!REST%ESUNAID%EFFECT2TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!REST%ESUNAID%EFFECT2ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!REST%ESUNAID%EFFECT2TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !REST%ESUNAID%EFFECT2AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !REST%ESUNAID%EFFECT2FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !REST%ESUNAID%EFFECT2MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !REST%ESUNAID%EFFECT2MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!REST%ESUNAID%EFFECT2PLAYERTEXT!
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!REST%ESUNAID%EFFECT3ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!REST%ESUNAID%EFFECT3TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!REST%ESUNAID%EFFECT3ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!REST%ESUNAID%EFFECT3TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !REST%ESUNAID%EFFECT3AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !REST%ESUNAID%EFFECT3FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !REST%ESUNAID%EFFECT3MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !REST%ESUNAID%EFFECT3MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!REST%ESUNAID%EFFECT3PLAYERTEXT!
SET /a EFFECTNUM = %EFFECTNUM%+1
SET PLAYERSPELLEFFECT2%EFFECTNUM%ELEMENT=!REST%ESUNAID%EFFECT4ELEMENT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TYPE=!REST%ESUNAID%EFFECT4TYPE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%ATTRIBUTE=!REST%ESUNAID%EFFECT4ATTRIBUTE!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TARGET=!REST%ESUNAID%EFFECT4TARGET!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%AMOUNT = !REST%ESUNAID%EFFECT4AMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%FIXEDAMOUNT = !REST%ESUNAID%EFFECT4FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MINTURNCOUNT = !REST%ESUNAID%EFFECT4MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT2%EFFECTNUM%MAXTURNCOUNT = !REST%ESUNAID%EFFECT4MAXTURNCOUNT!
SET PLAYERSPELLEFFECT2%EFFECTNUM%TEXT=!REST%ESUNAID%EFFECT4PLAYERTEXT!
GOTO :EOF

:ADDSUPPORTEFFECTS
SET TEMPMAGTYPE=SUPP
SET TEMPSTATUS=HASTE
CALL :SETEFFECTQUERY
SET TEMPSTATUS=PROTECT
CALL :SETEFFECTQUERY
SET TEMPSTATUS=SHELL
CALL :SETEFFECTQUERY
SET TEMPSTATUS=REFLECT
CALL :SETEFFECTQUERY
GOTO :EOF






:INITIALISEVARIABLES
SET /a ACCURACY = 50
SET /a DAMAGETRUE = 0
SET /a BASEDAM = 0
SET /a BASEHEAL = 0
SET /a BLIND = 0
SET /a SILENCE = 0
SET /a POISON = 0
SET /a SLOW = 0
SET /a SLEEP = 0
SET /a CONFUSION = 0
SET /a STOP = 0
SET /a DISPEL = 0
SET /a CURETRUE = 0
SET /a ESUNA = 0
SET /a SUPPORTTRUE = 0
SET /a PROTECT = 0
SET /a SHELL = 0
SET /a HASTE = 0
SET /a REFLECT = 0
SET /a DAMAGEMPCOST = 0
SET /a STATUSMPCOST = 0
SET /a CUREMPCOST = 0
SET /a STATUSCUREMPCOST = 0
SET /a SUPPORTMPCOST = 0
SET /a MPREDUCTION = 0
SET /a DAMAGEGILCOST = 0
SET /a STATUSGILCOST = 0
SET /a CUREGILCOST = 0
SET /a STATUSCUREGILCOST = 0
SET /a SUPPORTGILCOST = 0
SET /a MPREDUCTIONGILCOST = 0
SET /a CONFIRMATIONCHOICE = 0
SET PLAYERSPELLANIMATION2=FIRESPELL
SET PLAYERSPELLANIMATIONDISPLAY=Fire Spell Animation
GOTO :EOF





:MPGILDISPLAY
SET /a MPCOST = ((%DAMAGEMPCOST% + %STATUSMPCOST% + %CUREMPCOST% + %STATUSCUREMPCOST% + %SUPPORTMPCOST%)*%ACCURACY%)/50 - %MPREDUCTION%
SET /a GILCOST = ((%DAMAGEGILCOST% + %STATUSGILCOST% + %CUREGILCOST% + %STATUSCUREGILCOST% + %SUPPORTGILCOST%)*%ACCURACY%)/50 + %MPREDUCTIONGILCOST%
ECHO.
IF %MPCOST% GTR %PLAYERMAXMP% (
	<nul set /p ".= " > "%MPCOST%" 
	findstr /v /a:0C /R "^$" "%MPCOST%" nul 
	del "%MPCOST%" > nul 2>&1
	ECHO. - Current MP Cost. You have %PLAYERMAXMP% MP
) ELSE (
	<nul set /p ".= " > "%MPCOST%" 
	findstr /v /a:0A /R "^$" "%MPCOST%" nul 
	del "%MPCOST%" > nul 2>&1
	ECHO. - Current MP Cost. You have %PLAYERMAXMP% MP
)
IF %GILCOST% GTR %PLAYERGIL% (
	<nul set /p ".= " > "%GILCOST%" 
	findstr /v /a:0C /R "^$" "%GILCOST%" nul 
	del "%GILCOST%" > nul 2>&1
	ECHO. - Current Gil Cost. You have %PLAYERGIL% Gil
) ELSE (
	<nul set /p ".= " > "%GILCOST%" 
	findstr /v /a:0A /R "^$" "%GILCOST%" nul 
	del "%GILCOST%" > nul 2>&1
	ECHO. - Current Gil Cost. You have %PLAYERGIL% Gil
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