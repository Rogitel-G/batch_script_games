IF !%TARGET%POISON! EQU 1 (
	CALL "%BATTLESTATUSRESOURCEPATH%\poison.bat"
)
IF !%TARGET%REGEN! EQU 1 (
	CALL "%BATTLESTATUSRESOURCEPATH%\regen.bat"
)
:BLIND
IF !%TARGET%BLIND! EQU 1 (
	CALL "%BATTLESTATUSRESOURCEPATH%\blind.bat"
)
IF !%TARGET%SLOW! EQU 1 (
	CALL "%BATTLESTATUSRESOURCEPATH%\slow.bat"
)
IF !%TARGET%HASTE! EQU 1 (
	CALL "%BATTLESTATUSRESOURCEPATH%\haste.bat"
)
GOTO :EOF

::Protect is now done in "attack.bat" and the various files for skills and enemy skills
::Shell is now done in "castspell.bat" and "useitem.bat"
IF !%TARGET%PROTECT! EQU 1 (
	CALL "%BATTLESTATUSRESOURCEPATH%\protect.bat"
)
IF !%TARGET%SHELL! EQU 1 (
	CALL "%BATTLESTATUSRESOURCEPATH%\shell.bat"
)