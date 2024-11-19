CALL :INITIALISE
CALL :MODIFIERS
CALL :REWARDQUERY
GOTO :EOF


:INITIALISE
SET TYPE=ITEM
CALL :INITIALISE1
SET TYPE=SPECIALITEM
CALL :INITIALISE1
SET TYPE=WEAPON
CALL :INITIALISE1
SET TYPE=ARMOUR
CALL :INITIALISE1
SET TYPE=ACCESSORY
CALL :INITIALISE1
SET TYPE=ITEM
CALL :INITIALISE2
SET TYPE=SPECIALITEM
CALL :INITIALISE2
SET TYPE=WEAPON
CALL :INITIALISE2
SET TYPE=ARMOUR
CALL :INITIALISE2
SET TYPE=ACCESSORY
CALL :INITIALISE2
GOTO :EOF



:INITIALISE1
SET /a COUNT = 0
:INITIALISE1LOOP
SET /a COUNT = %COUNT% + 1
SET /a PLAYER%TYPE%REWARD%COUNT%NUM = 0
SET /a %TYPE%REWARD%COUNT% = 0
IF %COUNT% LSS 4 (
	GOTO :INITIALISE1LOOP
)
GOTO :EOF


:INITIALISE2
IF DEFINED ENEMY%ENEMYID%SET%REWARDSET%%TYPE%NUM (
	SET /a %TYPE%REWARDNUM = !ENEMY%ENEMYID%SET%REWARDSET%%TYPE%NUM!
) ELSE (
	SET /a %TYPE%REWARDNUM = 0
)
IF !%TYPE%REWARDNUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:INITIALISE2LOOP
SET /a COUNT = %COUNT% + 1
SET /a %TYPE%REWARD%COUNT% = !ENEMY%ENEMYID%SET%REWARDSET%%TYPE%%COUNT%!
SET /a %TYPE%REWARD%COUNT%CHANCE = !ENEMY%ENEMYID%SET%REWARDSET%%TYPE%%COUNT%CHANCE!
SET /a %TYPE%REWARD%COUNT%MAXNUM = !ENEMY%ENEMYID%SET%REWARDSET%%TYPE%%COUNT%MAXNUM!
IF %COUNT% LSS !%TYPE%REWARDNUM! (
	GOTO :INITIALISE2LOOP
)
GOTO :EOF

:MODIFIERS
IF %PLAYERINCITEMFINDCHANCE% EQU 1 (
	CALL :MOREITEMS
)
IF %PLAYERINCEQUIPFINDCHANCE% EQU 1 (
	CALL :MOREEQUIPS
)
IF %PLAYERFINDBETTERITEM% EQU 1 (
	CALL :BETTERITEMS
)
IF %PLAYERFINDBETTEREQUIP% EQU 1 (
	CALL :BETTEREQUIPS
)
CALL :LUCKFACTOR
GOTO :EOF


:MOREITEMS
SET TYPE=ITEM
CALL :MOREREWARDS
SET TYPE=SPECIALITEM
CALL :MOREREWARDS
GOTO :EOF

:MOREEQUIPS
SET TYPE=WEAPON
CALL :MOREREWARDS
SET TYPE=ARMOUR
CALL :MOREREWARDS
SET TYPE=ACCESSORY
CALL :MOREREWARDS
GOTO :EOF

:MOREREWARDS
IF !%TYPE%REWARDNUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:MOREREWARDSLOOP
SET /a COUNT = %COUNT% + 1
SET /a %TYPE%REWARD%COUNT%MAXNUM = !%TYPE%REWARD%COUNT%MAXNUM!*2
SET /a %TYPE%REWARD%COUNT%CHANCE = (!%TYPE%REWARD%COUNT%CHANCE!*3)/2
IF %COUNT% LSS !%TYPE%REWARDNUM! (
	GOTO :MOREREWARDSLOOP
)
GOTO :EOF

:BETTERITEMS
SET TYPE=ITEM
CALL :BETTERREWARDS
SET TYPE=SPECIALITEM
CALL :BETTERREWARDS
GOTO :EOF

:BETTEREQUIPS
SET TYPE=WEAPON
CALL :BETTERREWARDS
SET TYPE=ARMOUR
CALL :BETTERREWARDS
SET TYPE=ACCESSORY
CALL :BETTERREWARDS
GOTO :EOF

:BETTERREWARDS
IF !%TYPE%REWARDNUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:BETTERREWARDSLOOP
SET /a COUNT = %COUNT% + 1
SET /a %TYPE%REWARD%COUNT%CHANCE = !%TYPE%REWARD%COUNT%CHANCE!*%COUNT%
IF %COUNT% LSS !%TYPE%REWARDNUM! (
	GOTO :BETTERREWARDSLOOP
)
GOTO :EOF

:LUCKFACTOR
SET TYPE=ITEM
CALL :LUCKFACTOR1
SET TYPE=SPECIALITEM
CALL :LUCKFACTOR1
SET TYPE=WEAPON
CALL :LUCKFACTOR1
SET TYPE=ARMOUR
CALL :LUCKFACTOR1
SET TYPE=ACCESSORY
CALL :LUCKFACTOR1
GOTO :EOF

:LUCKFACTOR1
IF !%TYPE%REWARDNUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:LUCKFACTOR1LOOP
SET /a COUNT = %COUNT% + 1
SET /a %TYPE%REWARD%COUNT%CHANCE = !%TYPE%REWARD%COUNT%CHANCE! + (%PLAYERLCK%/5)
IF %COUNT% LSS !%TYPE%REWARDNUM! (
	GOTO :LUCKFACTOR1LOOP
)
GOTO :EOF


:REWARDQUERY
SET TYPE=ITEM
CALL :REWARDQUERY1
SET TYPE=SPECIALITEM
CALL :REWARDQUERY1
SET TYPE=WEAPON
CALL :REWARDQUERY1
SET TYPE=ARMOUR
CALL :REWARDQUERY1
SET TYPE=ACCESSORY
CALL :REWARDQUERY1
GOTO :EOF


:REWARDQUERY1
IF !%TYPE%REWARDNUM! EQU 0 (
	GOTO :EOF
)
SET /a COUNT = 0
:REWARDQUERY1LOOP
SET /a COUNT = %COUNT% + 1
SET /a NUMCOUNT = 0
:REWARDQUERY2LOOP
SET /a RANPERC=%RANDOM% %% 150
SET /a NUMCOUNT = %NUMCOUNT% + 1
SET /a TEMP = !%TYPE%REWARD%COUNT%CHANCE!/%NUMCOUNT%
IF %TEMP% GTR %RANPERC% (
	SET /a PLAYER%TYPE%REWARD%COUNT%NUM = !PLAYER%TYPE%REWARD%COUNT%NUM! + 1
)
IF %NUMCOUNT% LSS !%TYPE%REWARD%COUNT%MAXNUM! (
	GOTO :REWARDQUERY2LOOP
) ELSE IF %COUNT% LSS !%TYPE%REWARDNUM! (
	GOTO :REWARDQUERY1LOOP
)
GOTO :EOF

