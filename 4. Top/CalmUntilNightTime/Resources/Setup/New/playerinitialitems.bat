SET /a COUNT = 0
:LOOPSTART
SET /a COUNT=%COUNT%+1
SET /a PLAYERITEM%COUNT%NUM = 0
IF %COUNT% LSS %ITEMTOTAL% (
	GOTO :LOOPSTART
)