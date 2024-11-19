REM 252 |
SET /a COLUMN1WIDTH = 36
SET /a COLUMN2WIDTH = 23
CALL "%INITIALRESOURCEPATH%\settabsvars.bat"
REM CALL :TEMPSETUP
CALL :INITIALSETUP
CALL :INITIALISEVARS
CALL :COLUMN1CALCULATIONS
CALL :COLUMN2CALCULATIONS
CALL :DISPLAY
pause
GOTO :EOF



:TEMPSETUP
SET /a CHOICE = 1
SET ENEMY1NAME=Nick
SET /a ENEMY1NAMELENGTH = 4
SET ENEMY1DESCRIPTION1=Nick
SET /a ENEMY1DESCRIPTION1LENGTH = 4
SET ENEMY1DESCRIPTION2=Sisson
SET /a ENEMY1DESCRIPTION2LENGTH = 6
SET ENEMY1DESCRIPTION3=Nick
SET /a ENEMY1DESCRIPTION3LENGTH = 4
SET ENEMY1DESCRIPTION4=Sisson
SET /a ENEMY1DESCRIPTION4LENGTH = 6
SET /a ENEMY1DESCRIPTIONNUM = 4
SET /a ENEMY1LVL = 1
SET /a ENEMY1MAXHP = 50
SET /a ENEMY1STR = 5
SET /a ENEMY1END = 5
SET /a ENEMY1MAG = 5
SET /a ENEMY1SPR = 5
SET /a ENEMY1ACC = 5
SET /a ENEMY1EVA = 5
SET /a ENEMY1SPD = 5
SET /a ENEMY1LCK = 5
SET /a ENEMY1INT = 5
SET /a ENEMY1GIL = 500
SET /a ENEMY1EXP = 1000
SET /a ENEMY1WEAKNESSNUM = 2
SET ENEMY1WEAKNESS1=Fire
SET ENEMY1WEAKNESS2=Ice
SET /a ENEMY1STRENGTHNUM = 0
SET /a ENEMY1ELEMENTIMMUNENUM = 1
SET ENEMY1ELEMENTIMMUNE1=Electricity
SET /a ENEMY1ABSORBNUM = 0
SET /a ENEMY1STATUSIMMUNENUM = 1
SET ENEMY1STATUSIMMUNE1=Confusion
GOTO :EOF

:INITIALSETUP
SET /a TOTALROWS = 30
SET /a NAMECOL = 1
SET /a NAMEROWSTART = 1
SET /a DESCRIPTIONCOL = 1
SET /a DESCRIPTIONROWSTART = 2
SET /a STATCOL = 1
SET /a STATROWSTART = 7
SET /a RESISTANCECOL = 1
SET /a RESISTANCEROWSTART = 13

SET /a SPELLSCOL = 2
SET /a SPELLSROWSTART = 2
GOTO :EOF

:INITIALISEVARS
SET /a COLNUM = 1
CALL :INITIALISECOLUMN
SET /a COLNUM = 2
CALL :INITIALISECOLUMN
GOTO :EOF

:INITIALISECOLUMN
SET /a COUNT = 0
:INITIALISECOLUMNLOOP
SET /a COUNT = %COUNT% + 1
SET /a SPACENUM = !COLUMN%COLNUM%WIDTH!
SET COL%COLNUM%VAR%COUNT%=!SPACES%SPACENUM%!
IF %COUNT% LSS %TOTALROWS% (
	GOTO :INITIALISECOLUMNLOOP
)
GOTO :EOF

:COLUMN1CALCULATIONS
CALL :NAME
CALL :DESCRIPTION
CALL :STATS
CALL :RESISTANCES
GOTO :EOF

:COLUMN2CALCULATIONS
CALL :SPELLS
:: CALL :SKILLS
:: CALL :ITEMS
GOTO :EOF

:NAME
SET /a SPACENUM = !COLUMN%NAMECOL%WIDTH! - !ENEMY%CHOICE%NAMELENGTH!
SET COL%NAMECOL%VAR%NAMEROWSTART%=!ENEMY%CHOICE%NAME!!SPACES%SPACENUM%!
GOTO :EOF

:DESCRIPTION
SET /a COUNT = 0
SET /a TEMPCOUNT = %DESCRIPTIONROWSTART% - 1
:DESCRIPTIONLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
IF DEFINED ENEMY%CHOICE%DESCRIPTION%COUNT% (
	CALL :SETDESCRIPTION
) ELSE (
	GOTO :EOF
)
IF %COUNT% LSS 4 (
	GOTO :DESCRIPTIONLOOP
)
GOTO :EOF

:SETDESCRIPTION
SET /a SPACENUM = !COLUMN%DESCRIPTIONCOL%WIDTH! - !ENEMY%CHOICE%DESCRIPTION%COUNT%LENGTH!
SET COL%DESCRIPTIONCOL%VAR%TEMPCOUNT%=!ENEMY%CHOICE%DESCRIPTION%COUNT%!!SPACES%SPACENUM%!
GOTO :EOF

:STATS
SET /a SHORTSTATLENGTH = 9
SET /a LONGSTATLENGTH = %SHORTSTATLENGTH%*2
CALL :STATCALCULATIONS
CALL :ROWCALCULATIONS
GOTO :EOF

:STATCALCULATIONS
SET STAT=LVL
SET STATDISPLAY=LVL
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=MAXHP
SET STATDISPLAY=HP 
SET STATLENGTH=LONG
CALL :STATVAR
SET STAT=STR
SET STATDISPLAY=STR
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=END
SET STATDISPLAY=END
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=MAG
SET STATDISPLAY=MAG
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=SPR
SET STATDISPLAY=SPR
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=ACC
SET STATDISPLAY=ACC
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=EVA
SET STATDISPLAY=EVA
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=SPD
SET STATDISPLAY=SPD
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=LCK
SET STATDISPLAY=LCK
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=INT
SET STATDISPLAY=INT
SET STATLENGTH=SHORT
CALL :STATVAR
SET STAT=GIL
SET STATDISPLAY=Gil
SET STATLENGTH=LONG
CALL :STATVAR
SET STAT=EXP
SET STATDISPLAY=EXP
SET STATLENGTH=LONG
CALL :STATVAR
GOTO :EOF

:ROWCALCULATIONS
SET /a SPACENUM = !COLUMN%STATCOL%WIDTH! - 6
SET COL%STATCOL%VAR%STATROWSTART%=Stats:!SPACES%SPACENUM%!
SET /a COUNT = %STATROWSTART%
SET /a COUNT = %COUNT% + 1
SET COL%STATCOL%VAR%COUNT%=%LVLVAR%%MAXHPVAR%%STRVAR%
SET /a COUNT = %COUNT% + 1
SET COL%STATCOL%VAR%COUNT%=%ENDVAR%%MAGVAR%%SPRVAR%%ACCVAR%
SET /a COUNT = %COUNT% + 1
SET COL%STATCOL%VAR%COUNT%=%EVAVAR%%SPDVAR%%LCKVAR%%INTVAR%
SET /a COUNT = %COUNT% + 1
SET COL%STATCOL%VAR%COUNT%=%GILVAR%%EXPVAR%
GOTO :EOF


:STATVAR
SET %STAT%VAR=%STATDISPLAY%: !ENEMY%CHOICE%%STAT%!
CALL :STATNAMELENGTH
SET /a SPACENUM = !%STATLENGTH%STATLENGTH! - %STATNAMELENGTH%
SET %STAT%VAR=!%STAT%VAR!!SPACES%SPACENUM%!
GOTO :EOF


:STATNAMELENGTH
SET /a STATNAMELENGTH = 0
:STATNAMELOOPSTART
SET /a STATNAMELENGTH += 1
SET /a TEMP1 = %STATNAMELENGTH%
SET SUBSTR=!%STAT%VAR:~%TEMP1%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :STATNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %STATNAMELENGTH% + 1
	SET SUBSTR=!%STAT%NAME:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :STATNAMELOOPSTART
	)
)
GOTO :EOF

:RESISTANCES
SET /a VARCOUNT = %RESISTANCEROWSTART%
SET /a SPACENUM = !COLUMN%RESISTANCECOL%WIDTH! - 34
SET COL%RESISTANCECOL%VAR%VARCOUNT%=Elemental and Status Abnormalities!SPACES%SPACENUM%!
IF !ENEMY%CHOICE%WEAKNESSNUM! EQU 0 (
	GOTO :STRENGTHS
)
SET /a COUNT = 0
:WEAKNESSLOOP
SET /a COUNT = %COUNT% + 1
SET /a VARCOUNT = %VARCOUNT% + 1
SET COL%RESISTANCECOL%VAR%VARCOUNT%=Weakness: !ENEMY%CHOICE%WEAKNESS%COUNT%!
CALL :RESISTANCELENGTH
SET /a SPACENUM = !COLUMN%RESISTANCECOL%WIDTH! - %RESISTANCENAMELENGTH%
SET COL%RESISTANCECOL%VAR%VARCOUNT%=!COL%RESISTANCECOL%VAR%VARCOUNT%!!SPACES%SPACENUM%!
IF %COUNT% LSS !ENEMY%CHOICE%WEAKNESSNUM! (
	GOTO :WEAKNESSLOOP
)
:STRENGTHS
IF !ENEMY%CHOICE%STRENGTHNUM! EQU 0 (
	GOTO :ELEMENTALIMMUNES
)
SET /a COUNT = 0
:STRENGTHLOOP
SET /a COUNT = %COUNT% + 1
SET /a VARCOUNT = %VARCOUNT% + 1
SET COL%RESISTANCECOL%VAR%VARCOUNT%=Strength: !ENEMY%CHOICE%STRENGTH%COUNT%!
CALL :RESISTANCELENGTH
SET /a SPACENUM = !COLUMN%RESISTANCECOL%WIDTH! - %RESISTANCENAMELENGTH%
SET COL%RESISTANCECOL%VAR%VARCOUNT%=!COL%RESISTANCECOL%VAR%VARCOUNT%!!SPACES%SPACENUM%!
IF %COUNT% LSS !ENEMY%CHOICE%STRENGTHNUM! (
	GOTO :STRENGTHLOOP
)
:ELEMENTALIMMUNES
IF !ENEMY%CHOICE%ELEMENTIMMUNENUM! EQU 0 (
	GOTO :ABSORBS
)
SET /a COUNT = 0
:ELEMENTALIMMUNELOOP
SET /a COUNT = %COUNT% + 1
SET /a VARCOUNT = %VARCOUNT% + 1
SET COL%RESISTANCECOL%VAR%VARCOUNT%=Elemental Immunity: !ENEMY%CHOICE%ELEMENTIMMUNE%COUNT%!
CALL :RESISTANCELENGTH
SET /a SPACENUM = !COLUMN%RESISTANCECOL%WIDTH! - %RESISTANCENAMELENGTH%
SET COL%RESISTANCECOL%VAR%VARCOUNT%=!COL%RESISTANCECOL%VAR%VARCOUNT%!!SPACES%SPACENUM%!
IF %COUNT% LSS !ENEMY%CHOICE%ELEMENTALIMMUNENUM! (
	GOTO :ELEMENTALIMMUNELOOP
)
:ABSORBS
IF !ENEMY%CHOICE%ABSORBNUM! EQU 0 (
	GOTO :STATUSIMMUNES
)
SET /a COUNT = 0
:ABSORBLOOP
SET /a COUNT = %COUNT% + 1
SET /a VARCOUNT = %VARCOUNT% + 1
SET COL%RESISTANCECOL%VAR%VARCOUNT%=Absorb: !ENEMY%CHOICE%ABSORB%COUNT%!
CALL :RESISTANCELENGTH
SET /a SPACENUM = !COLUMN%RESISTANCECOL%WIDTH! - %RESISTANCENAMELENGTH%
SET COL%RESISTANCECOL%VAR%VARCOUNT%=!COL%RESISTANCECOL%VAR%VARCOUNT%!!SPACES%SPACENUM%!
IF %COUNT% LSS !ENEMY%CHOICE%ABSORBNUM! (
	GOTO :ABSORBLOOP
)
:STATUSIMMUNES
IF !ENEMY%CHOICE%STATUSIMMUNENUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:STATUSIMMUNELOOP
SET /a COUNT = %COUNT% + 1
SET /a VARCOUNT = %VARCOUNT% + 1
SET COL%RESISTANCECOL%VAR%VARCOUNT%=Status Immune: !ENEMY%CHOICE%STATUSIMMUNE%COUNT%!
CALL :RESISTANCELENGTH
SET /a SPACENUM = !COLUMN%RESISTANCECOL%WIDTH! - %RESISTANCENAMELENGTH%
SET COL%RESISTANCECOL%VAR%VARCOUNT%=!COL%RESISTANCECOL%VAR%VARCOUNT%!!SPACES%SPACENUM%!
IF %COUNT% LSS !ENEMY%CHOICE%STATUSIMMUNENUM! (
	GOTO :STATUSIMMUNELOOP
)
GOTO :EOF

GOTO :EOF

:RESISTANCELENGTH
SET /a RESISTANCENAMELENGTH = 0
:RESISTANCENAMELOOPSTART
SET /a RESISTANCENAMELENGTH += 1
SET SUBSTR=!COL%RESISTANCECOL%VAR%VARCOUNT%:~%RESISTANCENAMELENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :RESISTANCENAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %RESISTANCENAMELENGTH% + 1
	SET SUBSTR=!COL%RESISTANCECOL%VAR%VARCOUNT%:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :RESISTANCENAMELOOPSTART
	)
)
GOTO :EOF

:SPELLS
SET /a VARCOUNT = %SPELLSROWSTART%
SET /a SPACENUM = !COLUMN%SPELLSCOL%WIDTH! - 7
SET COL%SPELLSCOL%VAR%VARCOUNT%=Spells:!SPACES%SPACENUM%!
SET TYPE=OFF
CALL :SETSPELLS
SET TYPE=STAT
CALL :SETSPELLS
SET TYPE=REST
CALL :SETSPELLS
SET TYPE=SUPP
CALL :SETSPELLS
GOTO :EOF

:SETSPELLS
IF !ENEMY%CHOICE%%TYPE%SPELLNUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:SPELLLOOP
SET /a COUNT = %COUNT% + 1
SET /a VARCOUNT = %VARCOUNT% + 1
SET /a TEMP = !ENEMY%CHOICE%%TYPE%SPELL%COUNT%!
SET COL%SPELLSCOL%VAR%VARCOUNT%=!%TYPE%%TEMP%SPELL!
CALL :SPELLLENGTH
SET /a SPACENUM = !COLUMN%SPELLSCOL%WIDTH! - %SPELLNAMELENGTH%
SET COL%SPELLSCOL%VAR%VARCOUNT%=!COL%SPELLSCOL%VAR%VARCOUNT%!!SPACES%SPACENUM%!
IF %COUNT% LSS !ENEMY%CHOICE%%TYPE%SPELLNUM! (
	GOTO :SPELLLOOP
)
GOTO :EOF

:SPELLLENGTH
SET /a SPELLNAMELENGTH = 0
:SPELLNAMELOOPSTART
SET /a SPELLNAMELENGTH += 1
SET SUBSTR=!COL%SPELLSCOL%VAR%VARCOUNT%:~%SPELLNAMELENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :SPELLNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %SPELLNAMELENGTH% + 1
	SET SUBSTR=!COL%SPELLSCOL%VAR%VARCOUNT%:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :SPELLNAMELOOPSTART
	)
)
GOTO :EOF

:DISPLAY
CLS
ECHO.
ECHO � %COL1VAR1% � %COL2VAR1% �
ECHO � %COL1VAR2% � %COL2VAR2% �
ECHO � %COL1VAR3% � %COL2VAR3% �
ECHO � %COL1VAR4% � %COL2VAR4% �
ECHO � %COL1VAR5% � %COL2VAR5% �
ECHO � %COL1VAR6% � %COL2VAR6% �
ECHO � %COL1VAR7% � %COL2VAR7% �
ECHO � %COL1VAR8% � %COL2VAR8% �
ECHO � %COL1VAR9% � %COL2VAR9% �
ECHO � %COL1VAR10% � %COL2VAR10% �
ECHO � %COL1VAR11% � %COL2VAR11% �
ECHO � %COL1VAR12% � %COL2VAR12% �
ECHO � %COL1VAR13% � %COL2VAR13% �
ECHO � %COL1VAR14% � %COL2VAR14% �
ECHO � %COL1VAR15% � %COL2VAR15% �
ECHO � %COL1VAR16% � %COL2VAR16% �
ECHO � %COL1VAR17% � %COL2VAR17% �
ECHO � %COL1VAR18% � %COL2VAR18% �
ECHO � %COL1VAR19% � %COL2VAR19% �
ECHO � %COL1VAR20% � %COL2VAR20% �
ECHO � %COL1VAR21% � %COL2VAR21% �
ECHO � %COL1VAR22% � %COL2VAR22% �
ECHO � %COL1VAR23% � %COL2VAR23% �
ECHO � %COL1VAR24% � %COL2VAR24% �
ECHO � %COL1VAR25% � %COL2VAR25% �
ECHO � %COL1VAR26% � %COL2VAR26% �
ECHO � %COL1VAR27% � %COL2VAR27% �
ECHO � %COL1VAR28% � %COL2VAR28% �
ECHO � %COL1VAR29% � %COL2VAR29% �
ECHO � %COL1VAR30% � %COL2VAR30% �
ECHO.
GOTO :EOF