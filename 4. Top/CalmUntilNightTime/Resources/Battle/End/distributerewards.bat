CALL :EXP
CALL :GIL
CALL :ITEMS
GOTO :EOF


:EXP
SET /a PLAYEROLDLVL = (%EXP%/200)+1
SET /a EXP = %EXP% + %GAINEDEXP%
SET /a PLAYERNEWLVL = (%EXP%/200)+1
SET /a PLAYERLEVELUPNUM = %PLAYERNEWLVL% - %PLAYEROLDLVL%
GOTO :EOF

:GIL
IF %TRAINBATTLE% EQU 1 (
	GOTO :EOF
)
IF %PLAYERFINDMOREGIL% EQU 1 (
	SET /a GAINEDGIL = %GAINEDGIL%*2
)
SET /a PLAYERGIL = %PLAYERGIL% + %GAINEDGIL%
GOTO :EOF

:ITEMS
IF %TRAINBATTLE% EQU 1 (
	GOTO :EOF
)
SET TYPE=ITEM
CALL :REWARDS
SET TYPE=SPECIALITEM
CALL :REWARDS
SET TYPE=WEAPON
CALL :REWARDS
SET TYPE=ARMOUR
CALL :REWARDS
SET TYPE=ACCESSORY
CALL :REWARDS
GOTO :EOF


:REWARDS
IF !%TYPE%REWARDNUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:REWARDSLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = !%TYPE%REWARD%COUNT%!
SET /a PLAYER%TYPE%%TEMP%NUM = !PLAYER%TYPE%%TEMP%NUM! + !PLAYER%TYPE%REWARD%COUNT%NUM!
IF %COUNT% LSS !%TYPE%REWARDNUM! (
	GOTO :REWARDSLOOP
)
GOTO :EOF
