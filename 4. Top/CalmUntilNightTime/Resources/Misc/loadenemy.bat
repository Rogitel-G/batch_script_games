::Will need to run this for all caught enemies when the player checks this in the menu
::Will need to run this for all enemies when the player speaks to the Guru. This may have to be changed! Maybe split the choice by map
::e.g. choose map, then choose enemy to fight!
CALL "%INITIALRESOURCEPATH%\enemystats.bat"
SET TYPE=OFF
CALL :SPELLLOOP
SET TYPE=STAT
CALL :SPELLLOOP
SET TYPE=REST
CALL :SPELLLOOP
SET TYPE=SUPP
CALL :SPELLLOOP
CALL :SKILLS
CALL :SETNAMELENGTH
CALL :SETDESCRIPTIONLENGTH
GOTO :EOF

:SPELLLOOP
SET /a TEMPCOUNT = 0
SET /a ENEMY%ENEMYID%%TYPE%SPELLNUM = 0
:SPELLLOOP2
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
SET TEMP=!%TYPE%%TEMPCOUNT%SPELL!
IF !ENEMY%ENEMYID%%TEMP%ENABLED! EQU 1 (
	CALL :ENABLED
)
IF %TEMPCOUNT% LSS !%TYPE%SPELLTOT! (
	GOTO :SPELLLOOP2
)
GOTO :EOF

:ENABLED
SET /a ENEMY%ENEMYID%%TYPE%SPELLNUM = !ENEMY%ENEMYID%%TYPE%SPELLNUM! + 1
SET /a ENEMY%ENEMYID%%TYPE%SPELL!ENEMY%ENEMYID%%TYPE%SPELLNUM! = %TEMPCOUNT%
GOTO :EOF


:::::::::::::::::::::::::::::::::::::::::


:SKILLS
SET /a TEMPCOUNT = 0
:SKILLLOOP
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
SET /a ENEMY%ENEMYID%!ENEMYSKILL%TEMPCOUNT%NICKNAME!ENABLED = 0
IF %TEMPCOUNT% LSS %ENEMYSKILLTOT% (
	GOTO :SKILLLOOP
)
SET /a TEMPCOUNT = 0
IF !ENEMY%ENEMYID%SKILLNUM! EQU 0 (
	GOTO :SKILLLOOP2END
)
:SKILLLOOP2
SET /a TEMPCOUNT = %TEMPCOUNT% + 1
SET /a TEMP = !ENEMY%ENEMYID%SKILL%TEMPCOUNT%!
SET /a ENEMY%ENEMYID%!ENEMYSKILL%TEMP%NICKNAME!ENABLED = 1
IF %TEMPCOUNT% LSS !ENEMY%ENEMYID%SKILLNUM! (
	GOTO :SKILLLOOP2
)
:SKILLLOOP2END
GOTO :EOF


:::::::::::::::::::::::::::::::::::::::::


:SETNAMELENGTH
SET /a LENGTH = 0
:ENEMYNAMELOOPSTART
SET /a LENGTH += 1
SET SUBSTR=!ENEMY%ENEMYID%NAME:~%LENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :ENEMYNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %LENGTH% + 1
	SET SUBSTR=!ENEMY%ENEMYID%NAME:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :ENEMYNAMELOOPSTART
	)
)
SET /a ENEMY%ENEMYID%NAMELENGTH = %LENGTH%
GOTO :EOF


:::::::::::::::::::::::::::::::::::::::::


:SETDESCRIPTIONLENGTH
SET /a DESCCOUNT = 0
:DESCLOOPSTART
SET /a DESCCOUNT = %DESCCOUNT% + 1
IF DEFINED ENEMY%ENEMYID%DESCRIPTION%DESCCOUNT% (
	CALL :SETDESCLENGTH
)
IF %DESCCOUNT% LSS 4 (
	GOTO :DESCLOOPSTART
)
GOTO :EOF

:SETDESCLENGTH
SET /a LENGTH = 0
:ENEMYDESCRIPTIONLOOPSTART
SET /a LENGTH += 1
SET SUBSTR=!ENEMY%ENEMYID%DESCRIPTION%DESCCOUNT%:~%LENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :ENEMYDESCRIPTIONLOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %LENGTH% + 1
	SET SUBSTR=!ENEMY%ENEMYID%DESCRIPTION%DESCCOUNT%:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :ENEMYDESCRIPTIONLOOPSTART
	)
)
SET /a ENEMY%ENEMYID%DESCRIPTION%DESCCOUNT%LENGTH = %LENGTH%
GOTO :EOF