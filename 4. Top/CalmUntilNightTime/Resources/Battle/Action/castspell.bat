CALL :INITIALISEFLAGS
CALL :MPCOSTADJUSTQUERY
CALL :MPQUERY
CALL :MISSQUERY
CALL :REFLECTQUERY
CALL :CALCULATIONS
CALL :RECORDCOUNTINCREASE
CALL :ENDBATTLEQUERY
CALL "%BATTLEDISPLAYRESOURCEPATH%\battledisplay.bat"
CALL :MUSIC
CALL :DISPLAYTEXT
GOTO :EOF


:INITIALISEFLAGS
SET /a MPTOOLOW = 0
SET /a MISS = 0
SET /a REFLECTED = 0
SET /a CRITICALHIT = 0
SET /a EFFECTNUM = !%ATTACKER%SPELLEFFECTSNUM!
:LOOP2START
SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%WEAK = 0
SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%STRONG = 0
SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%IMMUNE = 0
SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%ABSORB = 0
SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%STATUSIMMUNE = 0
SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%AMOUNT!
SET /a DISPLAYEFFECT%EFFECTNUM%STATUSTEXT = 1
SET /a EFFECT%EFFECTNUM%ALREADYACTIVE = 0
SET /a EFFECTNUM = %EFFECTNUM% - 1
IF %EFFECTNUM% GTR 0 (
	GOTO :LOOP2START
)
GOTO :EOF

:MPCOSTADJUSTQUERY
IF %ATTACKER% EQU PLAYER (
	IF %PLAYERZEROMP% EQU 1 (
		SET /a PLAYERSPELLMPCOST = 0
	) ELSE IF %PLAYERHALFMP% EQU 1 (
		SET /a PLAYERSPELLMPCOST = %PLAYERSPELLMPCOST%/2
	)
)
GOTO :EOF

:MPQUERY
IF !%ATTACKER%SPELLMPCOST! GTR !%ATTACKER%MP! (
	SET /a MPTOOLOW = 1
	SET /a AUTOBATTLE = 0
	GOTO :EOF
) ELSE (
	SET /a %ATTACKER%MP=!%ATTACKER%MP!-!%ATTACKER%SPELLMPCOST!
)
::Because custom spells that cost negative MP could put you over max
IF %PLAYERMP% GTR %PLAYERMAXMP% (
	SET /a PLAYERMP = %PLAYERMAXMP%
)
GOTO :EOF

:MISSQUERY
IF %MPTOOLOW% EQU 1 (
	GOTO :EOF
)
CALL "%BATTLERESOURCEPATH%\ranresources.bat"
SET EQUATION=SPELLMISS
CALL "%BATTLERESOURCEPATH%\equations.bat"
REM IF !%ATTACKER%SPELLEFFECT%EFFECT1%TARGET! EQU DEFENDER (
REM 	SET /a MISSCHANCE = !%ATTACKER%ACC!*80*!%ATTACKER%SPELLACCURACY!/100/!%DEFENDER%EVA!
REM ) ELSE (
REM 	SET /a MISSCHANCE = !%ATTACKER%ACC!*80*!%ATTACKER%SPELLACCURACY!/100/!%ATTACKER%LVL!
REM )
IF %RANPERC% GEQ %MISSCHANCE% (
	SET /a MISS=1
)
GOTO :EOF

:REFLECTQUERY
IF %MPTOOLOW% EQU 1 (
	GOTO :EOF
) ELSE IF %MISS% EQU 1 (
	GOTO :EOF
) ELSE IF !%ATTACKER%SPELLREFLECTABLE! EQU 0 (
	GOTO :EOF
)
IF !%DEFENDER%REFLECT! EQU 1 (
	SET /a REFLECTED = 1
)
GOTO :EOF

:CALCULATIONS
IF %MPTOOLOW% EQU 1 (
	GOTO :EOF
) ELSE IF %MISS% EQU 1 (
	GOTO :EOF
) ELSE IF %REFLECTED% EQU 1 (
	SET DEFENDER=%ATTACKER%
)
SET /a EFFECTNUM = 0
:LOOP1START
SET /a EFFECTNUM = %EFFECTNUM% + 1
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TYPE! EQU STAT (
	CALL :STATCALCULATIONS
) ELSE IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TYPE! EQU STATUS (
	CALL :STATUSCALCULATIONS
)
IF %EFFECTNUM% LSS !%ATTACKER%SPELLEFFECTSNUM! (
	GOTO :LOOP1START
)
GOTO :EOF


:STATCALCULATIONS
CALL :FIXEDAMOUNTQUERY
CALL :ELEMENTS
CALL :CRITICALQUERY
CALL :SPECIALCASES
CALL :SHELLCHECK
CALL :DAMAGELIMITCHECK
CALL :STATCALCULATION
CALL :LIMITBREAKCALCULATION
CALL :LIMITQUERY
GOTO :EOF

:STATUSCALCULATIONS
CALL :IMMUNITIES
CALL :STATUSCALCULATION
CALL :TURNCOUNTS
GOTO :EOF


:FIXEDAMOUNTQUERY
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%FIXEDAMOUNT! EQU 0 (
	CALL :NEWAMOUNTCALC
)
GOTO :EOF

:NEWAMOUNTCALC
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! LSS 0 (
	SET /a TEMPAMOUNT2 = -!%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
) ELSE (
	SET /a TEMPAMOUNT2 = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
)
SET EQUATION=SPELLDAM
CALL "%BATTLERESOURCEPATH%\equations.bat"
REM IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET! EQU DEFENDER (
REM 	CALL :SETAMOUNT1
REM ) ELSE (
REM 	CALL :SETAMOUNT2
REM )
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! LSS 0 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = -%TEMPAMOUNT%
) ELSE (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = %TEMPAMOUNT%
)
GOTO :EOF

REM :SETAMOUNT1
REM SET /a TEMPAMOUNT = (((((!%ATTACKER%MAG!*%TEMPAMOUNT2%)+!%ATTACKER%LVL!)/((!%DEFENDER%SPR!*3)+!%DEFENDER%LVL!)*(!%ATTACKER%MAG!+%TEMPAMOUNT2%)*!%ATTACKER%LVL!/!%DEFENDER%LVL!)*100)*%RANFACT%)/10000
REM GOTO :EOF
REM :SETAMOUNT2
REM SET /a TEMPAMOUNT = !%ATTACKER%MAG!*!TEMPAMOUNT2!*%RANFACT%/300
REM GOTO :EOF

:ELEMENTS
IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%ELEMENT! EQU NONE (
	GOTO :EOF
)
:WEAKNESSES
SET /a COUNT = 0
IF !%DEFENDER%WEAKNESSNUM! EQU 0 (
	GOTO :STRENGTHS
)
:WEAKNESSLOOP
SET /a COUNT = %COUNT% + 1
IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%ELEMENT! EQU !%DEFENDER%WEAKNESS%COUNT%! (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!*2
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%WEAK = 1
) 
IF %COUNT% LSS !%DEFENDER%WEAKNESSNUM! (
	GOTO :WEAKNESSLOOP
)
:STRENGTHS
SET /a COUNT = 0
IF !%DEFENDER%STRENGTHNUM! EQU 0 (
	GOTO :ABSORBS
)
:STRENGTHLOOP
SET /a COUNT = %COUNT% + 1
IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%ELEMENT! EQU !%DEFENDER%STRENGTH%COUNT%! (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!/2
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%STRONG = 1
)
IF %COUNT% LSS !%DEFENDER%STRENGTHNUM! (
	GOTO :STRENGTHLOOP
)
:ABSORBS
SET /a COUNT = 0
IF !%DEFENDER%ABSORBNUM! EQU 0 (
	GOTO :ELEMENTIMMUNES
)
:ABSORBLOOP
SET /a COUNT = %COUNT% + 1
IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%ELEMENT! EQU !%DEFENDER%ABSORB%COUNT%! (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = -!%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%ABSORB = 1
)
IF %COUNT% LSS !%DEFENDER%ABSORBNUM! (
	GOTO :ABSORBLOOP
)
:ELEMENTIMMUNES
SET /a COUNT = 0
IF !%DEFENDER%ELEMENTIMMUNENUM! EQU 0 (
	GOTO :EOF
)
:ELEMENTIMMUNELOOP
SET /a COUNT = %COUNT% + 1
IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%ELEMENT! EQU !%DEFENDER%ELEMENTIMMUNE%COUNT%! (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = 0
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%IMMUNE = 1
)
IF %COUNT% LSS !%DEFENDER%ELEMENTIMMUNENUM! (
	GOTO :ELEMENTIMMUNELOOP
)
GOTO :EOF

:CRITICALQUERY
SET /a RANCRITICALFACTOR=%RANDOM% %% %CRITICALHITFACTOR%
IF %ATTACKER% EQU PLAYER (
	IF %PLAYERINCCRITCHANCE% EQU 1 (
		SET /a RANCRITICALFACTOR = %RANCRITICALFACTOR%/2
	)
)
IF !%ATTACKER%FOC! EQU 1 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!*5/2
	SET /a %ATTACKER%FOC = 0
)
SET /a CRITICALCHANCE = !%ATTACKER%LCK!*10/!%DEFENDER%LCK!
IF %CRITICALCHANCE% GTR %RANCRITICALFACTOR% (
	CALL :CRITICALSUCCESS
) ELSE (
	SET /a CRITICALHIT = 0
)
GOTO :EOF

:CRITICALSUCCESS
SET /a CRITICALHIT = 1
SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!*2
IF %ATTACKER% EQU PLAYER (
	IF %PLAYERINCCRITDAM% EQU 1 (
		SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!*2
	)
)
GOTO :EOF

:DAMAGELIMITCHECK
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! LSS 0 (
	SET /a TEMPAMOUNT = -!%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
) ELSE (
	SET /a TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
)
IF %ATTACKER% EQU PLAYER (
	IF %PLAYERBREAKDAM% EQU 1 (
		GOTO :BREAKDAM
	)
)
IF %TEMPAMOUNT% GTR %MAXDAM% (
	SET /a TEMPAMOUNT = %MAXDAM%
) ELSE IF %TEMPAMOUNT% LSS 0 (
	SET /a TEMPAMOUNT = %MAXDAM%
) ELSE (
	GOTO :EOF
)
:BREAKDAM
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! LSS 0 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = -%TEMPAMOUNT%
) ELSE (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = %TEMPAMOUNT%
)
GOTO :EOF

:SPECIALCASES
IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%ELEMENT! EQU DEMI (
	CALL :DEMI
)
GOTO :EOF

:DEMI
IF /I !%ATTACKER%SPELLNAME! EQU DEMI (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = -!%DEFENDER%HP!/4
) ELSE IF /I !%ATTACKER%SPELLNAME! EQU DEMIRA (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = -!%DEFENDER%HP!/2
) ELSE IF /I !%ATTACKER%SPELLNAME! EQU DEMIGA (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = -!%DEFENDER%HP!*3/4
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%WEAK! EQU 1 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!*2
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%STRONG! EQU 1 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!/2
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%ABSORB! EQU 1 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = -!%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%IMMUNE! EQU 1 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = 0
)
GOTO :EOF

:SHELLCHECK
IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET! EQU ATTACKER (
	GOTO :EOF
)
IF !%DEFENDER%SHELL! EQU 1 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!/2
)
GOTO :EOF

:STATCALCULATION
SET TEMP=!%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET!
SET TEMP2=!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!
SET TEMP3=!%TEMP%!
SET /a !%TEMP%!!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE! = !%TEMP3%%TEMP2%! + !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
IF %ATTACKER% EQU PLAYER (
	IF %DEFENDER% EQU ENEMY (
		IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE! EQU HP (
			IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! LSS 0 (
				CALL :APCALCULATION
			)
		)
	)
)
GOTO :EOF

:APCALCULATION
SET /a TEMP = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!/10
SET /a PLAYERAPGAIN = -%TEMP%
IF %PLAYERAPGAIN% GTR %MAXAPGAIN% (
	SET /a PLAYERAPGAIN = %MAXAPGAIN%
)
IF %PLAYERFASTAP% EQU 1 (
	SET /a PLAYERAPGAIN = %PLAYERAPGAIN%*2
) 
SET /a PLAYERAP = %PLAYERAP% + %PLAYERAPGAIN%
IF %PLAYERAP% GTR %PLAYERMAXAP% (
	SET /a PLAYERAP = %PLAYERMAXAP%
)
GOTO :EOF

:LIMITBREAKCALCULATION
IF %MISS% EQU 1 (
	GOTO :EOF
)
IF %ATTACKER% EQU PLAYER (
	GOTO :EOF
)
IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET! EQU ATTACKER (
	GOTO :EOF
)
IF %PLAYERLIMITBREAKACTIVE% EQU 0 (
	SET /a PLAYERLIMITBREAK = %PLAYERLIMITBREAK%-!%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
)
IF %PLAYERDOUBLELIM% EQU 1 (
	SET /a PLAYERLIMITBREAK = %PLAYERLIMITBREAK%-!%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
)
IF %PLAYERLIMITBREAK% LSS 0 (
	SET /a PLAYERLIMITBREAK = 0
) ELSE IF %PLAYERLIMITBREAK% GTR %PLAYERMAXLIMITBREAK% (
	SET /a PLAYERLIMITBREAK = %PLAYERMAXLIMITBREAK%
)
GOTO :EOF

:LIMITQUERY
IF %ENEMYHP% LEQ 0 (
	SET /a ENEMYHP = 0
) ELSE IF %ENEMYHP% GTR %ENEMYMAXHP% (
	SET /a ENEMYHP = %ENEMYMAXHP%
)
IF %PLAYERHP% LEQ 0 (
	SET /a PLAYERHP = 0
) ELSE IF %PLAYERHP% GTR %PLAYERMAXHP% (
	SET /a PLAYERHP = %PLAYERMAXHP%
)
GOTO :EOF


:IMMUNITIES
SET TEMP=!%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET!
SET TEMP2=!%TEMP%!
SET /a COUNT = 0
IF !%TEMP2%STATUSIMMUNENUM! EQU 0 (
	GOTO :STATUSIMMUNELOOPEND
)
:STATUSIMMUNELOOP
SET /a COUNT = %COUNT% + 1
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE! EQU !%TEMP2%STATUSIMMUNE%COUNT%! (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%STATUSIMMUNE = 1
)
IF %COUNT% LSS !%TEMP2%STATUSIMMUNENUM! (
	GOTO :STATUSIMMUNELOOP
)
:STATUSIMMUNELOOPEND
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! EQU 0 (
	SET /a %ATTACKER%SPELLEFFECT%EFFECTNUM%STATUSIMMUNE = 0
)
GOTO :EOF

:STATUSCALCULATION
SET /a EFFECT%EFFECTNUM%ALREADYACTIVE = 0
SET TEMP=!%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET!
SET TEMP2=!%TEMP%!
SET TEMP3=!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%STATUSIMMUNE! EQU 1 (
	SET /a DISPLAYEFFECT%EFFECTNUM%STATUSTEXT = 0
) ELSE IF !%TEMP2%%TEMP3%! EQU 0 (
	IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! EQU 0 (
		SET /a DISPLAYEFFECT%EFFECTNUM%STATUSTEXT = 0
	)
) ELSE IF !%TEMP2%%TEMP3%! EQU 1 (
	IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! EQU 1 (
		SET /a EFFECT%EFFECTNUM%ALREADYACTIVE = 1
		SET /a DISPLAYEFFECT%EFFECTNUM%STATUSTEXT = 0
	)
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%STATUSIMMUNE! EQU 0 (
	SET /a %TEMP2%!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE! = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
)
GOTO :EOF

:TURNCOUNTS
IF !EFFECT%EFFECTNUM%ALREADYACTIVE! EQU 1 (
	GOTO :EOF
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! GEQ 1 (
	IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%STATUSIMMUNE! EQU 0 (
		IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%MINTURNCOUNT! GTR 0 (
			IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET! EQU DEFENDER (
				CALL :SETTURNCOUNTSDEF
			) ELSE (
				CALL :SETTURNCOUNTSATT
			)
		)
	)
) ELSE (
	CALL :SETTURNCOUNTSNULL
)
GOTO :EOF

:SETTURNCOUNTSDEF
SET TEMP=!%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET!
SET TEMP2=!%TEMP%!
SET TEMP3=!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!
SET /a %TEMP2%!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!TURNCOUNT = (!%ATTACKER%MAG!/!%DEFENDER%SPR!)+(!%ATTACKER%SPELLEFFECT%EFFECTNUM%MINTURNCOUNT!-1)
IF !%TEMP2%%TEMP3%TURNCOUNT! LSS !%ATTACKER%SPELLEFFECT%EFFECTNUM%MINTURNCOUNT! (
	SET /a %TEMP2%%TEMP3%TURNCOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%MINTURNCOUNT!
) ELSE IF !%TEMP2%%TEMP3%TURNCOUNT! GTR !%ATTACKER%SPELLEFFECT%EFFECTNUM%MAXTURNCOUNT! (
	SET /a %TEMP2%%TEMP3%TURNCOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%MAXTURNCOUNT!
)
GOTO :EOF

:SETTURNCOUNTSATT
SET TEMP=!%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET!
SET TEMP2=!%TEMP%!
SET TEMP3=!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!
SET /a %TEMP2%%TEMP3%TURNCOUNT = (!%ATTACKER%MAG!/!%ATTACKER%LVL!/2)+(!%ATTACKER%SPELLEFFECT%EFFECTNUM%MINTURNCOUNT!-1)
IF !%TEMP2%%TEMP3%TURNCOUNT! LSS !%ATTACKER%SPELLEFFECT%EFFECTNUM%MINTURNCOUNT! (
	SET /a %TEMP2%%TEMP3%TURNCOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%MINTURNCOUNT!
) ELSE IF !%TEMP2%%TEMP3%TURNCOUNT! GTR !%ATTACKER%SPELLEFFECT%EFFECTNUM%MAXTURNCOUNT! (
	SET /a %TEMP2%%TEMP3%TURNCOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%MAXTURNCOUNT!
)
GOTO :EOF

:SETTURNCOUNTSNULL
SET TEMP=!%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET!
SET TEMP2=!%TEMP%!
SET TEMP3=!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!
SET /a %TEMP2%!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!TURNCOUNT = 0
GOTO :EOF

:RECORDCOUNTINCREASE
IF %MISS% EQU 1 (
	IF %ATTACKER% EQU ENEMY (	
		SET /a DODGESUCCESSCOUNT = %DODGESUCCESSCOUNT% + 1
	) ELSE (
		SET /a PLAYERMISSCOUNT = %PLAYERMISSCOUNT% + 1
	)
	GOTO :EOF
)
IF %ATTACKER% EQU ENEMY (
	GOTO :EOF
)
IF %CRITICALHIT% EQU 1 (
	SET /a CRITICALHITSUCCESSCOUNT = %CRITICALHITSUCCESSCOUNT% + 1
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%WEAK! EQU 1 (
	SET /a WEAKNESSSPELLCOUNT = %WEAKNESSSPELLCOUNT% + 1
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%STRONG! EQU 1 (
	SET /a STRENGTHSPELLCOUNT = %STRENGTHSPELLCOUNT% + 1
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%ABSORB! EQU 1 (
	SET /a ABSORBSPELLCOUNT = %ABSORBSPELLCOUNT% + 1
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%IMMUNE! EQU 1 (
	SET /a ELEMENTIMMUNESPELLCOUNT = %ELEMENTIMMUNESPELLCOUNT% + 1
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%STATUSIMMUNE! EQU 1 (
	SET /a STATUSIMMUNESPELLCOUNT = %STATUSIMMUNESPELLCOUNT% + 1
)
SET /a COUNT = 0
:RECORDELEMENTLOOP
SET /a COUNT = %COUNT% + 1
IF /I !%ATTACKER%SPELLEFFECT%COUNT%ELEMENT! EQU NONE (
	GOTO :RECORDELEMENTLOOPEND
) ELSE IF /I !%ATTACKER%SPELLEFFECT%COUNT%ELEMENT! EQU DRAIN (
	GOTO :RECORDELEMENTLOOPEND
) ELSE IF /I !%ATTACKER%SPELLEFFECT%COUNT%ELEMENT! EQU DEMI (
	GOTO :RECORDELEMENTLOOPEND
)
SET TEMP=!%ATTACKER%SPELLEFFECT%COUNT%ELEMENT!
SET /a %TEMP%SPELLSCASTCOUNT = !%TEMP%SPELLSCASTCOUNT! + 1
:RECORDELEMENTLOOPEND
IF %COUNT% LSS !%ATTACKER%SPELLEFFFECTSNUM! (
	GOTO :RECORDELEMENTLOOP
)
GOTO :EOF



:ENDBATTLEQUERY
IF %ENEMYHP% EQU 0 (
	SET /a WINBATTLE = 1
) ELSE IF %PLAYERHP% EQU 0 (
	SET /a LOSEBATTLE = 1
)
GOTO :EOF

:MUSIC
SET TEMPPATH=%MUSICPATH%\Battle\Spells
IF EXIST "%TEMPPATH%\!%ATTACKER%SPELLNAME!.mp3" (
	SET FILE=!%ATTACKER%SPELLNAME!.mp3
	CALL "%MUSICPATH%\soundeffect.bat"
) ELSE IF EXIST "%TEMPPATH%\!%ATTACKER%SPELLEFFECT1ELEMENT!.mp3" (
	SET FILE=!%ATTACKER%SPELLEFFECT1ELEMENT!.mp3
	CALL "%MUSICPATH%\soundeffect.bat"
) ELSE IF DEFINED PLAYERSPELLSOUNDEFFECT (
	SET FILE=%PLAYERSPELLSOUNDEFFECT%
	CALL "%MUSICPATH%\soundeffect.bat"
)
:: The last one is for custom spells
GOTO :EOF

:DISPLAYTEXT
IF %AUTOBATTLE% EQU 1 (
	SET WAITTIME=ZERO
) ELSE (
	SET WAITTIME=ONE
)
IF %MPTOOLOW% EQU 1 (
	ECHO !%ATTACKER%NAME! tried to cast !%ATTACKER%SPELLNAME!, but did not have enough MP^^!
	ECHO.
	CALL :WAITFOR%WAITTIME%
	GOTO :EOF
)
ECHO !%ATTACKER%NAME! successfully cast !%ATTACKER%SPELLNAME! for !%ATTACKER%SPELLMPCOST! MP
ECHO.
IF %AUTOBATTLE% EQU 0 (
	CALL :WAITFORZERO
)
SET ANIMATION=%ATTACKER%!%ATTACKER%SPELLANIMATION!
CALL "%BATTLEDISPLAYRESOURCEPATH%\animation.bat"
IF %MISS% EQU 1 (
	ECHO But the spell missed^^!
	ECHO.
	CALL :WAITFOR%WAITTIME%
	GOTO :EOF
)
IF %REFLECTED% EQU 1 (
	ECHO But the spell was reflected back at !%ATTACKER%NAME!^^!
	ECHO.
	CALL :WAITFOR%WAITTIME%
)
IF %CRITICALHIT% EQU 1 (
	ECHO Critical Hit^^!
	ECHO.
	CALL :WAITFOR%WAITTIME%
)
SET /a EFFECTNUM = 0
:LOOP6START
SET /a EFFECTNUM = %EFFECTNUM% + 1
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! LSS 0 (
	SET /a DISPLAYAMOUNT = -!%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
) ELSE (
	SET /a DISPLAYAMOUNT = !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT!
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%WEAK! EQU 1 (
	ECHO It's super effective^^!
	ECHO.
	CALL :WAITFOR%WAITTIME%
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%STRONG! EQU 1 (
	ECHO It's not very effective...
	ECHO.
	CALL :WAITFOR%WAITTIME%
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%ABSORB! EQU 1 (
	ECHO But the !%ATTACKER%SPELLNAME! was absorbed^^!
	ECHO.
	CALL :WAITFOR%WAITTIME%
)
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TYPE! EQU STAT (
	IF /I !%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET! EQU ATTACKER (
		GOTO :EOF
	)
	IF !%DEFENDER%SHELL! EQU 1 (
		ECHO Shell halved the spell's effectiveness
		ECHO.
		CALL :WAITFOR%WAITTIME%
	)
)
:SKIPSHELL
SET TEMPTARGET1=!%ATTACKER%SPELLEFFECT%EFFECTNUM%TARGET!
SET TEMPTARGET=!%TEMPTARGET1%!
SET TEMPTYPE=!%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!
IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TYPE! EQU STAT (
	IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE! EQU HP (
		IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! GTR 0 (
			ECHO The !%ATTACKER%SPELLNAME! spell healed !%TEMPTARGET%NAME! by %DISPLAYAMOUNT% HP
			ECHO.
			CALL :WAITFOR%WAITTIME%
		) ELSE IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEMPAMOUNT! LSS 0 (
			ECHO The !%ATTACKER%SPELLNAME! spell did %DISPLAYAMOUNT% damage
			ECHO.
			CALL :WAITFOR%WAITTIME%
		) ELSE IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%IMMUNE! EQU 1 (
			ECHO But !%DEFENDER%NAME! is immune to !%ATTACKER%SPELLEFFECT%EFFECTNUM%ELEMENT! magic^^!
			ECHO.
			CALL :WAITFOR%WAITTIME%
		) ELSE (
			ECHO The spell was too weak to do anything^^!
			ECHO.
			CALL :WAITFOR%WAITTIME%
		)
	) ELSE (
		ECHO !%DEFENDER%NAME!'s !%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE! was damaged by %DISPLAYAMOUNT%^^!
		ECHO.
		CALL :WAITFOR%WAITTIME%
	)
) ELSE IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%TYPE! EQU STATUS (
	IF !DISPLAYEFFECT%EFFECTNUM%STATUSTEXT! EQU 1 (
		ECHO !%TEMPTARGET%NAME! !%ATTACKER%SPELLEFFECT%EFFECTNUM%TEXT!
		ECHO.
		CALL :WAITFOR%WAITTIME%
		IF !%TEMPTARGET%%TEMPTYPE%TURNCOUNT! GTR 0 (
			ECHO It will last for !%TEMPTARGET%%TEMPTYPE%TURNCOUNT! turns^^!
			ECHO.
			CALL :WAITFOR%WAITTIME%
		)
	) ELSE IF !EFFECT%EFFECTNUM%ALREADYACTIVE! EQU 1 (
		ECHO !%TEMPTARGET%NAME! already has the !%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE! status active
		ECHO.
		CALL :WAITFOR%WAITTIME%
	) ELSE IF !%ATTACKER%SPELLEFFECT%EFFECTNUM%STATUSIMMUNE! EQU 1 (
		ECHO !%TEMPTARGET%NAME! is immune to !%ATTACKER%SPELLEFFECT%EFFECTNUM%ATTRIBUTE!^^!
		ECHO.
		CALL :WAITFOR%WAITTIME%
	)
)
IF %EFFECTNUM% LSS !%ATTACKER%SPELLEFFECTSNUM! (
	GOTO :LOOP6START
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