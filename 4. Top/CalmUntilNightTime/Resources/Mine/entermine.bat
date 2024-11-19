IF %STORY14VERSIONNUM% EQU 0 (
	SET /a STORY14VERSIONNUM = 1
)
IF !PLAYERKEYITEM%MINEKEYID%ACQUIRED! EQU 1 (
	SET MAP=MINE1
	SET /a PLAYERXCOORD = 2
	SET /a PLAYERYCOORD = 2
	SET /a EXITMAP = 1
) ELSE (
	CLS
	ECHO.
	ECHO The mine is locked. Maybe the key is in the castle somewhere...
	SET MAP=town3
	SET /a PLAYERXCOORD = %PLAYEROLDXCOORD%
	SET /a PLAYERYCOORD = %PLAYEROLDYCOORD%
)