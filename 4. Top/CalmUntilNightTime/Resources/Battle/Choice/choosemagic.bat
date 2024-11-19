IF %AUTOBATTLE% EQU 1 (
	GOTO :EOF
)
CALL "%DYNAMICRESOURCEPATH%\dynamicspellchoose.bat"
SET /a SELECTED = 1
:CHOOSEMAGIC
SET /a BACK = 0
CALL "%BATTLEDISPLAYRESOURCEPATH%\battledisplay.bat"
IF %OPTIONTOT% EQU 0 (
	ECHO You don't have any spells to choose from
	CALL :WAITFORTHREE
	SET /a BACK = 1
	GOTO :EOF
)
ECHO Choose the Spell you wish to cast (Current MP %PLAYERMP%)
ECHO.
CALL "%MISCRESOURCEPATH%\menu2.bat"
IF %VARSELECTED% EQU 1 (
	CALL :SELECTED
)
IF %BACK% EQU 1 (
	GOTO :EOF
)
IF %VARSELECTED% EQU 0 (
	GOTO :CHOOSEMAGIC
) ELSE (
	GOTO :EOF
)

:SELECTED
CALL :SETSTATICID
CALL :SPELLSTATS
GOTO :EOF

:SETSTATICID
SET /a COUNT = 0
:LOOP2START
SET /a COUNT = %COUNT%+1
IF /I !%TYPE%%COUNT%SPELL! EQU !TEXT%SELECTED%NAME1! (
	SET /a MAGICCHOICE = %COUNT%
	GOTO :EOF
)
GOTO :LOOP2START



:SPELLSTATS
SET PLAYERSPELLNAME=!%TYPE%%MAGICCHOICE%SPELL!
SET /a PLAYERSPELLACCURACY = !%TYPE%%MAGICCHOICE%ACCURACY!
SET /a PLAYERSPELLMPCOST = !%TYPE%%MAGICCHOICE%MPCOST!
SET /a PLAYERSPELLREFLECTABLE = !%TYPE%%MAGICCHOICE%REFLECTABLE!
SET /a PLAYERSPELLEFFECTSNUM = !%TYPE%%MAGICCHOICE%EFFECTSNUM!
SET PLAYERSPELLANIMATION=!%TYPE%%MAGICCHOICE%ANIMATION!
SET /a EFFECTNUM = 0
:LOOP1START
SET /a EFFECTNUM = %EFFECTNUM% + 1
SET PLAYERSPELLEFFECT%EFFECTNUM%ELEMENT=!%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%ELEMENT!
SET PLAYERSPELLEFFECT%EFFECTNUM%TYPE=!%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%TYPE!
SET PLAYERSPELLEFFECT%EFFECTNUM%ATTRIBUTE=!%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%ATTRIBUTE!
SET PLAYERSPELLEFFECT%EFFECTNUM%TARGET=!%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%TARGET!
SET /a PLAYERSPELLEFFECT%EFFECTNUM%AMOUNT = !%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%AMOUNT!
SET /a PLAYERSPELLEFFECT%EFFECTNUM%FIXEDAMOUNT = !%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%FIXEDAMOUNT!
SET /a PLAYERSPELLEFFECT%EFFECTNUM%MINTURNCOUNT = !%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%MINTURNCOUNT!
SET /a PLAYERSPELLEFFECT%EFFECTNUM%MAXTURNCOUNT = !%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%MAXTURNCOUNT!
SET PLAYERSPELLEFFECT%EFFECTNUM%TEXT=!%TYPE%%MAGICCHOICE%EFFECT%EFFECTNUM%PLAYERTEXT!
IF %EFFECTNUM% LSS !PLAYERSPELLEFFECTSNUM! (
	GOTO :LOOP1START
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

