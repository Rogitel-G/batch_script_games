SET /a COUNT = 0
:ACCESSORYSPECIALLOOP
SET /a COUNT = %COUNT% + 1
SET /a PLAYER!SPECIAL%COUNT%NICKNAME! = 0
IF %COUNT% LSS %SPECIALTOT% (
	GOTO :ACCESSORYSPECIALLOOP
)
