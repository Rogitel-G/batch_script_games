@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
::TEST
SET ITEM1NAME=Potion
SET ITEM1DESCRIPTION=Test
SET /a PLAYERITEM1NUM = 0
SET TYPE=ITEM
SET /a ID = 1
::


IF /I %TYPE% NEQ ITEM (
	IF /I %TYPE% NEQ SPECIALITEM (
		GOTO :EOF
	)
)
IF !PLAYER%TYPE%%ID%NUM! EQU 0 (
	ECHO New Item^^! !%TYPE%%ID%NAME! - !%TYPE%%ID%DESCRIPTION!
)
pause
GOTO :EOF