CALL :ELEMENTQUERY
CALL :INITIALISE
CALL :ALREADYWEAKQUERY
CALL :OTHERABNORMALITIES
IF %ALREADYWEAK% EQU 0 (
	CALL :ADDWEAKNESS
)
CALL :DISPLAY
GOTO :EOF

:TEST
SET ENEMYNAME=Yorkshire Terrier
SET /a ENEMYWEAKNESSNUM = 2
SET ENEMYWEAKNESS1=Fire
SET ENEMYWEAKNESS2=Ice
SET /a ENEMYSTRENGTHNUM = 1
SET ENEMYSTRENGTH1=Electricity
SET /a ENEMYELEMENTIMMUNENUM = 3
SET ENEMYELEMENTIMMUNE1=Water
SET ENEMYELEMENTIMMUNE2=Earth
SET ENEMYELEMENTIMMUNE3=Forbidden
SET /a ENEMYABSORBNUM = 1
SET ENEMYABSORB1=Demi
GOTO :EOF

:ELEMENTQUERY
ECHO Which elemental weakness would you like to induce?
ECHO.
ECHO. 1 - Fire
ECHO. 2 - Ice
ECHO. 3 - Electricity
ECHO. 4 - Water
ECHO. 5 - Earth
ECHO. 6 - Demi
ECHO. 7 - Forbidden
ECHO.
:CHOICE
SET /P CHOICE=
IF "%CHOICE%" EQU "1" (
	SET ELEMENT=Fire
) ELSE IF "%CHOICE%" EQU "2" (
	SET ELEMENT=Ice
) ELSE IF "%CHOICE%" EQU "3" (
	SET ELEMENT=Electricity
) ELSE IF "%CHOICE%" EQU "4" (
	SET ELEMENT=Water
) ELSE IF "%CHOICE%" EQU "5" (
	SET ELEMENT=Earth
) ELSE IF "%CHOICE%" EQU "6" (
	SET ELEMENT=Demi
) ELSE IF "%CHOICE%" EQU "7" (
	SET ELEMENT=Forbidden
) ELSE (
	GOTO :CHOICE
)
GOTO :EOF

:INITIALISE
SET /a ALREADYWEAK = 0
SET /a ALREADYSTRENGTH = 0
SET /a ALREADYELEMENTIMMUNE = 0
SET /a ALREADYABSORB = 0
GOTO :EOF

:ALREADYWEAKQUERY
SET /a COUNT = 0
IF %ENEMYWEAKNESSNUM% EQU 0 (
	GOTO :EOF
)
:ALREADYWEAKQUERYLOOP
SET /a COUNT = %COUNT% + 1
IF /I !ENEMYWEAKNESS%COUNT%! EQU %ELEMENT% (
	SET /a ALREADYWEAK = 1
)
IF %COUNT% LSS %ENEMYWEAKNESSNUM% (
	GOTO :ALREADYWEAKQUERYLOOP
)
GOTO :EOF

:ADDWEAKNESS
SET /a ENEMYWEAKNESSNUM = %ENEMYWEAKNESSNUM% + 1
SET ENEMYWEAKNESS%ENEMYWEAKNESSNUM%=%ELEMENT%
GOTO :EOF

:OTHERABNORMALITIES
SET TYPE=STRENGTH
CALL :CHECK
SET TYPE=ELEMENTIMMUNE
CALL :CHECK
SET TYPE=ABSORB
CALL :CHECK
GOTO :EOF

:CHECK
IF !ENEMY%TYPE%NUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:CHECKLOOP
SET /a COUNT = %COUNT% + 1
IF /I !ENEMY%TYPE%%COUNT%! EQU %ELEMENT% (
	SET /a ALREADY%TYPE% = 1
	CALL :REMOVE
	GOTO :EOF
)
IF %COUNT% LSS !ENEMY%TYPE%NUM! (
	GOTO :CHECKLOOP
)
GOTO :EOF

:REMOVE
IF %COUNT% EQU !ENEMY%TYPE%NUM! (
	CALL :REMOVELAST
) ELSE (
	CALL :REMOVEMID
)
GOTO :EOF

:REMOVELAST
SET /a ENEMY%TYPE%NUM = !ENEMY%TYPE%NUM! - 1
GOTO :EOF

:REMOVEMID
SET /a TEMPCOUNT = %COUNT% + 1
SET ENEMY%TYPE%%COUNT%=!ENEMY%TYPE%%TEMPCOUNT%!
SET /a COUNT = %COUNT% + 1
IF %COUNT% LSS !ENEMY%TYPE%NUM! (
	GOTO :REMOVEMID
)
SET /a ENEMY%TYPE%NUM = !ENEMY%TYPE%NUM! - 1
GOTO :EOF

:DISPLAY
ECHO.
IF %ALREADYSTRENGTH% EQU 1 (
	ECHO %ENEMYNAME% is no longer resistant to the %ELEMENT% element^^!
	ECHO.
) ELSE IF %ALREADYELEMENTIMMUNE% EQU 1 (
	ECHO %ENEMYNAME% is no longer immune to the %ELEMENT% element^^!
	ECHO.
) ELSE IF %ALREADYABSORB% EQU 1 (
	ECHO %ENEMYNAME% no longer absorbs the %ELEMENT% element^^!
	ECHO.
) 
IF %ALREADYWEAK% EQU 1 (
	ECHO %ENEMYNAME% is already weak to the %ELEMENT% element^^!
) ELSE (
	ECHO %ENEMYNAME% is now weak to the %ELEMENT% element
	CALL "%BATTLEDISPLAYRESOURCEPATH%\setupscandisplay.bat"
)
ECHO.
GOTO :EOF