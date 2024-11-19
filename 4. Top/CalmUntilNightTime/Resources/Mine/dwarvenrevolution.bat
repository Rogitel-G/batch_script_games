CALL :INITIALISEGIMPLY
CALL :DETERMINEMINEDITEMS
CALL :TEST
SET /a DWARFCOUNT = 0
:SETLOOP
SET /a DWARFCOUNT = %DWARFCOUNT% + 1
SET TYPE=!DWARF%DWARFCOUNT%TYPE!
SET TYPE2=!DWARF%DWARFCOUNT%TYPE2!
ECHO STATS
CALL :ADDDWARFSTATS
CALL :ADDDWARFSKILLS
REM CALL :ADDDWARFEQUIPMENTSKILLS
CALL :SETTYPE2
IF %DWARFCOUNT% LSS %DWARFTOT% (
	GOTO :SETLOOP
)
CALL :CALCULATEFINALSTATS
CALL :DISPLAYGIMPLYSTATS
CALL :BATTLE
GOTO :EOF


:DETERMINEMINEDITEMS
SET /a DWARFCOUNT = 0
:INITIALDWARFLOOP
SET /a DWARFCOUNT = %DWARFCOUNT% + 1
SET /a SUCCESS = 0
CALL :INITIALISE
CALL :HAPPINESS
CALL :NEWSTATS
CALL :HAULNUM
CALL :ITEMCALCULATIONS
SET /a DWARF%DWARFCOUNT%REWARDTOT = %REWARDCOUNT%
CALL :CONSOLIDATEREWARDS
IF %DWARFCOUNT% LSS %DWARFTOT% (
	GOTO :INITIALDWARFLOOP
)
SET /a DWARFCOUNT = 0
:RESETDWARFTIMESLOOP
SET /a DWARFCOUNT = %DWARFCOUNT% + 1
CALL "%MINERESOURCEPATH%\resetminetimes.bat"
IF %DWARFCOUNT% LSS %DWARFTOT% (
	GOTO :RESETDWARFTIMESLOOP
)
GOTO :EOF



:INITIALISE
SET TYPE=!DWARF%DWARFCOUNT%TYPE!
SET TYPE2=!DWARF%DWARFCOUNT%TYPE2!
SET /a DWARF%DWARFCOUNT%REWARDTOT = 0
GOTO :EOF

:HAPPINESS
SET /a ARROGANCE = (2*!DWARF%DWARFCOUNT%LVL!) - !DWARF%DWARFCOUNT%SAT!
SET /a TEMP = (!DWARF%DWARFCOUNT%LVL!/2) + 1
IF %ARROGANCE% LSS %TEMP% (
	SET /a ARROGANCE = %TEMP%
)
SET /a EXPECTEDSALARY = !DWARF%DWARFCOUNT%LVL!*%ARROGANCE%/2
SET /a HAPPINESS = (!DWARF%DWARFCOUNT%SALARY!*100)/%EXPECTEDSALARY%
GOTO :EOF

:NEWSTATS
IF /I !DWARF%DWARFCOUNT%SPECIAL! EQU %TYPE2% (
	SET /a SPECIALMULTIPLIER = 3
) ELSE (
	SET /a SPECIALMULTIPLIER = 2
)
SET /a RANFACT = (%RANDOM% %% 40)+80
SET /a DWARF%DWARFCOUNT%EQUIPSTR = !DWARF%DWARFCOUNT%PICKAXESTR! + !DWARF%DWARFCOUNT%SACKSTR!
SET /a DWARF%DWARFCOUNT%EQUIPSKL = !DWARF%DWARFCOUNT%PICKAXESKL! + !DWARF%DWARFCOUNT%SACKSKL!
SET /a DWARF%DWARFCOUNT%EQUIPPER = !DWARF%DWARFCOUNT%PICKAXEPER! + !DWARF%DWARFCOUNT%SACKPER!
SET /a DWARF%DWARFCOUNT%STR = ((!DWARF%DWARFCOUNT%BASESTR! + !DWARF%DWARFCOUNT%EQUIPSTR!)*%HAPPINESS%*%RANFACT%*%SPECIALMULTIPLIER%)/20000
IF !DWARF%DWARFCOUNT%STR! LEQ 0 (
	SET /a DWARF%DWARFCOUNT%STR = 1
)
SET /a RANFACT = (%RANDOM% %% 40)+80
SET /a DWARF%DWARFCOUNT%SKL = ((!DWARF%DWARFCOUNT%BASESKL! + !DWARF%DWARFCOUNT%EQUIPSKL!)*%HAPPINESS%*%RANFACT%*%SPECIALMULTIPLIER%)/20000
IF !DWARF%DWARFCOUNT%SKL! LEQ 0 (
	SET /a DWARF%DWARFCOUNT%SKL = 1
)
SET /a RANFACT = (%RANDOM% %% 40)+80
SET /a DWARF%DWARFCOUNT%PER = ((!DWARF%DWARFCOUNT%BASEPER! + !DWARF%DWARFCOUNT%EQUIPPER!)*%HAPPINESS%*%RANFACT%*%SPECIALMULTIPLIER%)/20000
IF !DWARF%DWARFCOUNT%PER! LEQ 0 (
	SET /a DWARF%DWARFCOUNT%PER = 1
)
GOTO :EOF

:HAULNUM
SET PREFIX=NOW
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
SET /a YEARDIFF = %NOWYEAR%-!DWARF%DWARFCOUNT%YEAR!
SET /a YEARDIFFMIN = %YEARDIFF%*60*24*365
SET /a MONTHDIFF = %NOWMONTH%-!DWARF%DWARFCOUNT%MONTH!
SET /a MONTHDIFFMIN = %MONTHDIFF%*60*24*30
SET /a DAYDIFF = %NOWDAY%-!DWARF%DWARFCOUNT%DAY!
SET /a DAYDIFFMIN = %DAYDIFF%*60*24
SET /a HOURDIFF = %NOWHOUR%-!DWARF%DWARFCOUNT%HOUR!
SET /a HOURDIFFMIN = %HOURDIFF%*60
SET /a MINDIFFMIN = %NOWMIN%-!DWARF%DWARFCOUNT%MIN!
SET /a MINDIFF = %YEARDIFFMIN%+%MONTHDIFFMIN%+%DAYDIFFMIN%+%HOURDIFFMIN%+%MINDIFFMIN%
SET /a HAULS = %MINDIFF%/240
SET /a MAXHAULS = %PLAYERLVL%/5
IF %HAULS% GTR %MAXHAULS% (
	SET /a HAULS = %MAXHAULS%
)
SET /a TEMP = %HAULS%*%HAULS%
IF %TEMP% GEQ !DWARF%DWARFCOUNT%PER! (
	CALL :SQRTCALC
)
GOTO :EOF

:SQRTCALC
SET /a COUNT = 0
:SQRTCALCLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = !DWARF%DWARFCOUNT%PER!/%COUNT%
IF %TEMP% LSS %COUNT% (
	SET /a HAULS = %COUNT% - 1
) ELSE (
	GOTO :SQRTCALCLOOP
)
GOTO :EOF


:ITEMCALCULATIONS
SET /a REWARDCOUNT = 0
:ITEMCALCULATIONSLOOP1
SET /a REWARDCOUNT = %REWARDCOUNT% + 1
CALL :DETERMINEITEM
CALL :DETERMINEITEMNUM
IF %REWARDCOUNT% LSS %HAULS% (
	GOTO :ITEMCALCULATIONSLOOP1
)
GOTO :EOF

:DETERMINEITEM
SET /a COUNT = !%TYPE2%START!
SET /a ACTIVECOUNT = 0
SET /a POTENTIALREWARD%ACTIVECOUNT%CHANCECUM = 0
:DETERMINEACTIVELOOP
SET /a COUNT = %COUNT% + 1
IF !DWARF%DWARFCOUNT%SKL! GEQ !%TYPE%%COUNT%MINSKL! (
	IF !DWARF%DWARFCOUNT%SKL! LEQ !%TYPE%%COUNT%MAXSKL! (
		CALL :ACTIVE
	)
)
IF %COUNT% LSS !%TYPE2%END! (
	GOTO :DETERMINEACTIVELOOP
)
SET /a ACTIVETOT = %ACTIVECOUNT%
CALL :DETERMINEITEMREWARD
GOTO :EOF

:ACTIVE
SET /a OLDACTIVECOUNT = %ACTIVECOUNT%
SET /a ACTIVECOUNT = %ACTIVECOUNT% + 1
SET /a POTENTIALREWARD%ACTIVECOUNT%ID = %COUNT%
REM The 2 is to make the minimum skill requirement matter more
SET /a POTENTIALREWARD%ACTIVECOUNT%CHANCE = (!%TYPE%%COUNT%MINSKL!*2)+!DWARF%DWARFCOUNT%LVL!
SET /a POTENTIALREWARD%ACTIVECOUNT%CHANCECUM = !POTENTIALREWARD%OLDACTIVECOUNT%CHANCECUM! + !POTENTIALREWARD%ACTIVECOUNT%CHANCE!
GOTO :EOF

:DETERMINEITEMREWARD
SET /a RANREWARD = %RANDOM% %% !POTENTIALREWARD%ACTIVETOT%CHANCECUM!
SET /a COUNT = 0
:DETERMINEITEMREWARDLOOP
SET /a COUNT = %COUNT% + 1
IF %RANREWARD% LEQ !POTENTIALREWARD%COUNT%CHANCECUM! (
	CALL :GETTHISREWARD
) ELSE (
	GOTO :DETERMINEITEMREWARDLOOP
)
GOTO :EOF

:GETTHISREWARD
SET /a DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID = !POTENTIALREWARD%COUNT%ID!
REM SET DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%TYPE=%TYPE%
GOTO :EOF

:DETERMINEITEMNUM
SET /a ID = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID!
SET /a QUANTDIV = !%TYPE%%ID%QUANTDIV!
SET /a DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM = !DWARF%DWARFCOUNT%STR!/%QUANTDIV%
GOTO :EOF


:CONSOLIDATEREWARDS
SET /a REWARDCOUNT = 0
:CONSOLIDATEREWARDSLOOP1
SET /a REWARDCOUNT = %REWARDCOUNT% + 1
SET /a TEMPCOUNT = 0
:CONSOLIDATEREWARDSLOOP2
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
IF %TEMPCOUNT% EQU %REWARDCOUNT% (
	GOTO :CONSOLIDATEREWARDSLOOPEND
) ELSE IF !DWARF%DWARFCOUNT%REWARD%TEMPCOUNT%ID! EQU 0 (
	GOTO :CONSOLIDATEREWARDSLOOPEND
)
IF !DWARF%DWARFCOUNT%REWARD%TEMPCOUNT%ID! EQU !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! (
	CALL :ADDITEMS
)
:CONSOLIDATEREWARDSLOOPEND
IF %TEMPCOUNT% LSS !DWARF%DWARFCOUNT%REWARDTOT! (
	GOTO :CONSOLIDATEREWARDSLOOP2
) ELSE IF %REWARDCOUNT% LSS !DWARF%DWARFCOUNT%REWARDTOT! (
	GOTO :CONSOLIDATEREWARDSLOOP1
)
GOTO :EOF


:ADDITEMS
SET /a DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM! + !DWARF%DWARFCOUNT%REWARD%TEMPCOUNT%NUM!
SET /a DWARF%DWARFCOUNT%REWARD%TEMPCOUNT%ID = 0
GOTO :EOF

:TEST
SET /a DWARFCOUNT = 0
:TESTLOOP1
SET /a DWARFCOUNT = %DWARFCOUNT% + 1
SET /a REWARDCOUNT = 0
:TESTLOOP2
SET /a REWARDCOUNT = %REWARDCOUNT% + 1
SET /a ID = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID!
IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! GTR 0 (
	ECHO !DWARF%DWARFCOUNT%NAME! - !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM! !%TYPE%%ID%NAME!s
)
IF %REWARDCOUNT% LSS !DWARF%DWARFCOUNT%REWARDTOT! (
	GOTO :TESTLOOP2
)
IF %DWARFCOUNT% LSS %DWARFTOT% (
	GOTO :TESTLOOP1
)
pause
GOTO :EOF

:INITIALISEGIMPLY
SET /a ENEMY%GIMPLYID%MAXHP = 100
SET /a ENEMY%GIMPLYID%MAXMP = 50000
SET /a ENEMY%GIMPLYID%MP = 50000
SET /a ENEMY%GIMPLYID%LVL = 1
SET /a ENEMY%GIMPLYID%STR = 1
SET /a ENEMY%GIMPLYID%END = 1
SET /a ENEMY%GIMPLYID%MAG = 1
SET /a ENEMY%GIMPLYID%SPR = 1
SET /a ENEMY%GIMPLYID%ACC = 1
SET /a ENEMY%GIMPLYID%EVA = 1
SET /a ENEMY%GIMPLYID%SPD = 1
SET /a ENEMY%GIMPLYID%LCK = 1
SET /a ENEMY%GIMPLYID%INT = 1
SET /a ENEMY%GIMPLYID%WEAKNESSNUM = 0
SET /a ENEMY%GIMPLYID%STRENGTHNUM = 0
SET /a ENEMY%GIMPLYID%ELEMENTIMMUNENUM = 0
SET /a ENEMY%GIMPLYID%ABSORBNUM = 0
SET /a ENEMY%GIMPLYID%STATUSIMMUNENUM = 0
SET /a ENEMY%GIMPLYID%EXP = 0
SET /a ENEMY%GIMPLYID%GIL = 0
SET /a ENEMY%GIMPLYID%SPELLCHANCE = 0
SET /a ENEMY%GIMPLYID%SKILLNUM = 0
SET /a ENEMY%GIMPLYID%ITEMNUM = 0
SET /a ENEMY%GIMPLYID%ITEMCHANCE = 0
SET /a ENEMY%GIMPLYID%SET1ITEMNUM = 0
SET /a ENEMY%GIMPLYID%SET1SPECIALITEMNUM = 0
SET /a ENEMY%GIMPLYID%SET1WEAPONNUM = 0
SET /a ENEMY%GIMPLYID%SET1ARMOURNUM = 0
SET /a ENEMY%GIMPLYID%SET1ACCESSORYNUM = 0
SET /a ENEMY%GIMPLYID%SET1STEALGIL = 0
SET /a ENEMY%GIMPLYID%SET1MORPHGIL = 0
SET ENEMY%GIMPLYID%SET1MORPHTYPE=ITEM
SET /a ENEMY%GIMPLYID%SET1MORPHID = 0
SET /a ENEMY%GIMPLYID%SET1MORPHMINPERC = 0
SET /a ENEMY%GIMPLYID%SET1MORPHMAXNUM = 0
GOTO :EOF

:ADDDWARFSTATS
SET /a DWARFVAR = (%DWARFTOT%+1)/2
SET /a ENEMY%GIMPLYID%LVL = !ENEMY%GIMPLYID%LVL! + (!DWARF%DWARFCOUNT%LVL!/%DWARFVAR%)
SET /a TEMP = (!DWARF%DWARFCOUNT%BASESTR! + !DWARF%DWARFCOUNT%PICKAXESTR! + !DWARF%DWARFCOUNT%SACKSTR!)/%DWARFVAR%
SET /a ENEMY%GIMPLYID%STR = !ENEMY%GIMPLYID%STR! + %TEMP%
SET /a ENEMY%GIMPLYID%MAG = !ENEMY%GIMPLYID%MAG! + %TEMP%
SET /a TEMP = (!DWARF%DWARFCOUNT%BASEPER! + !DWARF%DWARFCOUNT%PICKAXEPER! + !DWARF%DWARFCOUNT%SACKPER!)/%DWARFVAR%
SET /a ENEMY%GIMPLYID%END = !ENEMY%GIMPLYID%END! + %TEMP%
SET /a ENEMY%GIMPLYID%SPR = !ENEMY%GIMPLYID%SPR! + %TEMP%
SET /a TEMP = (!DWARF%DWARFCOUNT%BASESKL! + !DWARF%DWARFCOUNT%PICKAXESKL! + !DWARF%DWARFCOUNT%SACKSKL!)/%DWARFVAR%
SET /a ENEMY%GIMPLYID%ACC = !ENEMY%GIMPLYID%ACC! + %TEMP%
SET /a ENEMY%GIMPLYID%EVA = !ENEMY%GIMPLYID%EVA! + %TEMP%
SET /a TEMP = (!DWARF%DWARFCOUNT%BASESTR! + !DWARF%DWARFCOUNT%BASESKL! + !DWARF%DWARFCOUNT%BASEPER!)/%DWARFVAR%
SET /a ENEMY%GIMPLYID%SPD = !ENEMY%GIMPLYID%SPD! + %TEMP%
SET /a ENEMY%GIMPLYID%LCK = !ENEMY%GIMPLYID%LCK! + %TEMP%
GOTO :EOF



:SETTYPE2
SET /a REWARDCOUNT = 0
:SETSTANDARDLOOP
SET /a REWARDCOUNT = %REWARDCOUNT% + 1
IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! GTR 0 (
	IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM! GTR 0 (
		CALL :SET%TYPE2%
	)
)
IF %REWARDCOUNT% LSS !DWARF%DWARFCOUNT%REWARDTOT! (
	GOTO :SETSTANDARDLOOP
)
GOTO :EOF

:SETSTANDARD
SET /a ENEMY%GIMPLYID%ITEMNUM = !ENEMY%GIMPLYID%ITEMNUM! + 1
SET /a ENEMY%GIMPLYID%ITEM!ENEMY%GIMPLYID%ITEMNUM! = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID!
SET /a ENEMY%GIMPLYID%ITEM!ENEMY%GIMPLYID%ITEMNUM!NUM = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!
SET /a ENEMY%GIMPLYID%ITEM!ENEMY%GIMPLYID%ITEMNUM!CHANCE = 20
SET /a ENEMY%GIMPLYID%ITEMCHANCE = 50
GOTO :EOF

:SETSCROLL
SET /a ENEMY%GIMPLYID%ITEMNUM = !ENEMY%GIMPLYID%ITEMNUM! + 1
SET /a ENEMY%GIMPLYID%ITEM!ENEMY%GIMPLYID%ITEMNUM! = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID!
SET /a ENEMY%GIMPLYID%ITEM!ENEMY%GIMPLYID%ITEMNUM!NUM = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!
SET /a ENEMY%GIMPLYID%ITEM!ENEMY%GIMPLYID%ITEMNUM!CHANCE = 20
SET /a ENEMY%GIMPLYID%ITEMCHANCE = 50
GOTO :EOF

:SETSTATSTONE
IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 1 (
	SET STAT=STR
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 2 (
	SET STAT=MAG
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 3 (
	SET STAT=ACC
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 4 (
	SET STAT=END
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 5 (
	SET STAT=SPR
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 6 (
	SET STAT=EVA
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 7 (
	SET STAT=SPD
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 8 (
	SET STAT=MAXHP
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 9 (
	SET STAT=MAXMP
) ELSE IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! EQU 10 (
	SET STAT=LCK
)
CALL :ADDSTATSTONE
GOTO :EOF

:ADDSTATSTONE
IF !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID! NEQ 8 (
	SET /a ENEMY%GIMPLYID%%STAT% = !ENEMY%GIMPLYID%%STAT%! + !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!
) ELSE (
	SET /a ENEMY%GIMPLYID%%STAT% = !ENEMY%GIMPLYID%%STAT%! + (!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!*10)
)
GOTO :EOF

:SETSKILLSTONE
REM Enemies can not have player skills so this is blank
GOTO :EOF

:SETSPECIALSTONE
REM Enemies do not have specials so this is blank
GOTO :EOF

:SETRESISTANCEPOWDER
REM Maybe leave this one for now
GOTO :EOF

:SETWEAPON
SET /a ID = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID!
SET /a ENEMY%GIMPLYID%STR = !ENEMY%GIMPLYID%STR! + (!WEAPON%ID%STR!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
SET /a ENEMY%GIMPLYID%MAG = !ENEMY%GIMPLYID%MAG! + (!WEAPON%ID%MAG!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
SET /a ENEMY%GIMPLYID%ACC = !ENEMY%GIMPLYID%ACC! + (!WEAPON%ID%ACC!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
GOTO :EOF

:SETARMOUR
SET /a ID = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID!
SET /a ENEMY%GIMPLYID%END = !ENEMY%GIMPLYID%END! + (!ARMOUR%ID%END!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
SET /a ENEMY%GIMPLYID%SPR = !ENEMY%GIMPLYID%SPR! + (!ARMOUR%ID%SPR!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
SET /a ENEMY%GIMPLYID%EVA = !ENEMY%GIMPLYID%EVA! + (!ARMOUR%ID%EVA!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
SET /a ENEMY%GIMPLYID%SPD = !ENEMY%GIMPLYID%SPD! + (!ARMOUR%ID%SPD!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
IF !ARMOUR%ID%WEAKNESSNUM! EQU 0 (
	GOTO :ADDSTRENGTHS
)
SET /a COUNT = 0
:WEAKNESSLOOP
SET /a COUNT = %COUNT% + 1
SET /a ENEMY%GIMPLYID%WEAKNESSNUM = !ENEMY%GIMPLYID%WEAKNESSNUM! + 1
SET /a ENEMY%GIMPLYID%WEAKNESS!ENEMY%GIMPLYID%WEAKNESSNUM!=!ARMOUR%ID%WEAKNESS%COUNT%!
IF %COUNT% LSS !ARMOUR%ID%WEAKNESSNUM! (
	GOTO :WEAKNESSLOOP
)
:ADDSTRENGTHS
IF !ARMOUR%ID%STRENGTHNUM! EQU 0 (
	GOTO :ADDELEIMM
)
SET /a COUNT = 0
:STRENGTHLOOP
SET /a COUNT = %COUNT% + 1
SET /a ENEMY%GIMPLYID%STRENGTHNUM = !ENEMY%GIMPLYID%STRENGTHNUM! + 1
SET /a ENEMY%GIMPLYID%STRENGTH!ENEMY%GIMPLYID%STRENGTHNUM!=!ARMOUR%ID%STRENGTH%COUNT%!
IF %COUNT% LSS !ARMOUR%ID%STRENGTHNUM! (
	GOTO :STRENGTHLOOP
)
:ADDELEIMM
IF !ARMOUR%ID%ELEMENTIMMUNENUM! EQU 0 (
	GOTO :ADDABSORB
)
SET /a COUNT = 0
:ELEIMMLOOP
SET /a COUNT = %COUNT% + 1
SET /a ENEMY%GIMPLYID%ELEMENTIMMUNENUM = !ENEMY%GIMPLYID%ELEMENTIMMUNENUM! + 1
SET /a ENEMY%GIMPLYID%ELEMENTIMMUNE!ENEMY%GIMPLYID%ELEMENTIMMUNENUM!=!ARMOUR%ID%ELEMENTIMMUNE%COUNT%!
IF %COUNT% LSS !ARMOUR%ID%ELEMENTIMMUNENUM! (
	GOTO :ELEIMMLOOP
)
:ADDABSORB
IF !ARMOUR%ID%ABSORBNUM! EQU 0 (
	GOTO :ADDSTATIMM
)
SET /a COUNT = 0
:ABSORBLOOP
SET /a COUNT = %COUNT% + 1
SET /a ENEMY%GIMPLYID%ABSORBNUM = !ENEMY%GIMPLYID%ABSORBNUM! + 1
SET /a ENEMY%GIMPLYID%ABSORB!ENEMY%GIMPLYID%ABSORBNUM!=!ARMOUR%ID%ABSORB%COUNT%!
IF %COUNT% LSS !ARMOUR%ID%ABSORBNUM! (
	GOTO :ABSORBLOOP
)
:ADDSTATIMM
IF !ARMOUR%ID%STATUSIMMUNENUMNUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:STATIMMLOOP
SET /a COUNT = %COUNT% + 1
SET /a ENEMY%GIMPLYID%STATUSIMMUNENUM = !ENEMY%GIMPLYID%STATUSIMMUNENUM! + 1
SET /a ENEMY%GIMPLYID%STATUSIMMUNE!ENEMY%GIMPLYID%STATUSIMMUNENUM!=!ARMOUR%ID%STATUSIMMUNE%COUNT%!
IF %COUNT% LSS !ARMOUR%ID%STATUSIMMUNENUM! (
	GOTO :STATIMMLOOP
)
GOTO :EOF

:SETACCESSORY
SET /a ID = !DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%ID!
SET /a ENEMY%GIMPLYID%MAXHP = !ENEMY%GIMPLYID%MAXHP! + (!ACCESSORY%ID%MAXHP!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
SET /a ENEMY%GIMPLYID%MAXMP = !ENEMY%GIMPLYID%MAXMP! + (!ACCESSORY%ID%MAXMP!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
SET /a ENEMY%GIMPLYID%LCK = !ENEMY%GIMPLYID%LCK! + (!ACCESSORY%ID%LCK!*!DWARF%DWARFCOUNT%REWARD%REWARDCOUNT%NUM!)
GOTO :EOF

:ADDDWARFSKILLS
IF !DWARF%DWARFCOUNT%PICKAXEID! EQU 0 (
	GOTO :SACKSKILLS
)
SET /a ID = !DWARF%DWARFCOUNT%PICKAXEID!
SET /a ENEMY%GIMPLYID%SKILLCHANCE = 50
SET /a ENEMY%GIMPLYID%SKILLNUM = !ENEMY%GIMPLYID%SKILLNUM! + 1
SET /a ENEMY%GIMPLYID%SKILL!ENEMY%GIMPLYID%SKILLNUM! = !PICKAXE%ID%ENEMYSKILL!
SET /a ENEMY%GIMPLYID%SKILL!ENEMY%GIMPLYID%SKILLNUM!CHANCE = 10
:SACKSKILLS
IF !DWARF%DWARFCOUNT%SACKID! EQU 0 (
	GOTO :EOF
)
SET /a ID = !DWARF%DWARFCOUNT%SACKID!
SET /a ENEMY%GIMPLYID%SKILLCHANCE = 50
SET /a ENEMY%GIMPLYID%SKILLNUM = !ENEMY%GIMPLYID%SKILLNUM! + 1
SET /a ENEMY%GIMPLYID%SKILL!ENEMY%GIMPLYID%SKILLNUM! = !SACK%ID%ENEMYSKILL!
SET /a ENEMY%GIMPLYID%SKILL!ENEMY%GIMPLYID%SKILLNUM!CHANCE = 10
GOTO :EOF

:DISPLAYGIMPLYSTATS
::CLS
ECHO HP  !ENEMY%GIMPLYID%MAXHP!
ECHO LVL !ENEMY%GIMPLYID%LVL!
ECHO STR !ENEMY%GIMPLYID%STR!
ECHO END !ENEMY%GIMPLYID%END!
ECHO MAG !ENEMY%GIMPLYID%MAG!
ECHO SPR !ENEMY%GIMPLYID%SPR!
ECHO ACC !ENEMY%GIMPLYID%ACC!
ECHO EVA !ENEMY%GIMPLYID%EVA!
ECHO SPD !ENEMY%GIMPLYID%SPD!
ECHO LCK !ENEMY%GIMPLYID%LCK!
ECHO INT !ENEMY%GIMPLYID%INT!
ECHO EXP !ENEMY%GIMPLYID%EXP!
ECHO GIL !ENEMY%GIMPLYID%GIL!
ECHO ITEM TOTAL !ENEMY%GIMPLYID%ITEMNUM!
SET /a TEMPCOUNT = 0
:ITEMCOUNT
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
ECHO ITEM %TEMPCOUNT% !ENEMY%GIMPLYID%ITEM%TEMPCOUNT%!
ECHO ITEM %TEMPCOUNT% NUM !ENEMY%GIMPLYID%ITEM%TEMPCOUNT%NUM!
IF %TEMPCOUNT% LSS !ENEMY%GIMPLYID%ITEMNUM! (
	GOTO :ITEMCOUNT
)
ECHO SKILL TOTAL !ENEMY%GIMPLYID%SKILLNUM!
SET /a TEMPCOUNT = 0
:SKILLCOUNT
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
ECHO SKILL %TEMPCOUNT% !ENEMY%GIMPLYID%SKILL%TEMPCOUNT%!
IF %TEMPCOUNT% LSS !ENEMY%GIMPLYID%SKILLNUM! (
	GOTO :SKILLCOUNT
)
ECHO WEAKNESSNUM !ENEMY%GIMPLYID%WEAKNESSNUM!
SET /a TEMPCOUNT = 0
:WEAKNESSCOUNT
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
ECHO WEAKNESS %TEMPCOUNT% !ENEMY%GIMPLYID%WEAKNESS%TEMPCOUNT%!
IF %TEMPCOUNT% LSS !ENEMY%GIMPLYID%WEAKNESSNUM! (
	GOTO :WEAKNESSCOUNT
)
ECHO STRENGTHNUM !ENEMY%GIMPLYID%STRENGTHNUM!
SET /a TEMPCOUNT = 0
:STRENGTHCOUNT
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
ECHO STRENGTH %TEMPCOUNT% !ENEMY%GIMPLYID%STRENGTH%TEMPCOUNT%!
IF %TEMPCOUNT% LSS !ENEMY%GIMPLYID%STRENGTHNUM! (
	GOTO :STRENGTHCOUNT
)
ECHO ELEMENTIMMUNENUM !ENEMY%GIMPLYID%ELEMENTIMMUNENUM!
SET /a TEMPCOUNT = 0
:ELEMENTIMMUNECOUNT
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
ECHO ELEMENTIMMUNE %TEMPCOUNT% !ENEMY%GIMPLYID%ELEMENTIMMUNE%TEMPCOUNT%!
IF %TEMPCOUNT% LSS !ENEMY%GIMPLYID%ELEMENTIMMUNENUM! (
	GOTO :ELEMENTIMMUNECOUNT
)
ECHO ABSORBNUM !ENEMY%GIMPLYID%ABSORBNUM!
SET /a TEMPCOUNT = 0
:ABSORBCOUNT
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
ECHO ABSORB %TEMPCOUNT% !ENEMY%GIMPLYID%ABSORB%TEMPCOUNT%!
IF %TEMPCOUNT% LSS !ENEMY%GIMPLYID%ABSORBNUM! (
	GOTO :ABSORBCOUNT
)
ECHO STATUSIMMUNENUM !ENEMY%GIMPLYID%STATUSIMMUNENUM!
SET /a TEMPCOUNT = 0
:STATUSIMMUNECOUNT
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
ECHO STATUSIMMUNE %TEMPCOUNT% !ENEMY%GIMPLYID%STATUSIMMUNE%TEMPCOUNT%!
IF %TEMPCOUNT% LSS !ENEMY%GIMPLYID%STATUSIMMUNENUM! (
	GOTO :STATUSIMMUNECOUNT
)
ECHO.
pause
GOTO :EOF


:CALCULATEFINALSTATS
SET /a ENEMY%GIMPLYID%MP = !ENEMY%GIMPLYID%MAXMP!
SET /a ENEMY%GIMPLYID%MAXHP = !ENEMY%GIMPLYID%MAXHP! + (50*!ENEMY%GIMPLYID%LVL!)
SET /a ENEMY%GIMPLYID%HP = !ENEMY%GIMPLYID%MAXHP!
SET /a ENEMY%GIMPLYID%EXP = !ENEMY%GIMPLYID%LVL!*200
SET /a ENEMY%GIMPLYID%GIL = !ENEMY%GIMPLYID%LVL!*500
GOTO :EOF

:BATTLE
SET /a ENEMYID = %GIMPLYID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
GOTO :EOF