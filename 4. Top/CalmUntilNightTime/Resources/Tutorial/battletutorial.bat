@ECHO OFF
:ENTERTUTORIAL
CALL "%TUTORIALRESOURCEPATH%\tutorialdisplay.bat"
ECHO.
ECHO %TUTORIALNAME%: What would you like to know about battles?
ECHO.
ECHO. 1 - Tell me about my stats
ECHO. 2 - Tell me about status effects
ECHO. 3 - Tell me about magic
ECHO. 4 - Tell me about skills
ECHO. 5 - Tell me about resistances
ECHO. 6 - Tell me about catching enemies
ECHO. 7 - Tell me about running from battles
ECHO. 8 - Tell me about leveling up
ECHO. 9 - Tell me about special battles
ECHO. 0 - I've learned enough
ECHO.
:CATEGORYCHOICE
SET /P BATTLECATEGORY=
ECHO.
IF "%BATTLECATEGORY%" EQU "1" (
	CALL :STATS
) ELSE IF "%BATTLECATEGORY%" EQU "2" (
	CALL :STATUSES
) ELSE IF "%BATTLECATEGORY%" EQU "3" (
	CALL :MAGIC
) ELSE IF "%BATTLECATEGORY%" EQU "4" (
	CALL :SKILLS
) ELSE IF "%BATTLECATEGORY%" EQU "5" (
	CALL :RESISTANCES
) ELSE IF "%BATTLECATEGORY%" EQU "6" (
	CALL :CATCHING
) ELSE IF "%BATTLECATEGORY%" EQU "7" (
	CALL :RUNNING
) ELSE IF "%BATTLECATEGORY%" EQU "8" (
	CALL :LEVELUP
) ELSE IF "%BATTLECATEGORY%" EQU "9" (
	CALL :SPECIAL
) ELSE IF "%BATTLECATEGORY%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CATEGORYCHOICE
)
GOTO :ENTERTUTORIAL


:STATS
CLS
ECHO.
ECHO %TUTORIALNAME%: You have 10 main stats:
ECHO.
ECHO. Health Points (HP):  HP is what keeps you alive, lose it all and you die
ECHO. Magic Points  (MP):  MP is used to cast spells. When you cast a spell it will use up some MP
ECHO. Strength      (STR): Determines the damage that you will do when attacking or using physical skills
ECHO. Magic         (MAG): Determines the strength of your spells
ECHO. Endurance     (END): Determines how much HP you lose when attacked
ECHO. Spirit        (SPR): Determines how much HP you lose when an offensive spell is cast on you
ECHO. Accuracy      (ACC): Determines how likely you are to hit an enemy
ECHO. Evasion       (EVA): Determines how skilled you are at dodging attacks
ECHO. Speed         (SPD): Determines who goes first and your ability to catch enemies and run from battles
ECHO. Luck          (LCK): Determines your chance of doing a critical hit
ECHO.               
pause
ECHO.
ECHO %TUTORIALNAME%: Stats are mainly used in battle, although some of them have uses outside of battle too.
ECHO.
pause
GOTO :EOF

:STATUSES
CLS
ECHO.
ECHO %TUTORIALNAME%: Status effects affect your performance in battle. There are negative and positive statues:
ECHO.
ECHO. Negative:
ECHO.
ECHO. Blind:     Blindness reduces your accuracy
ECHO. Silence:   You are unable to cast magic when silenced
ECHO. Poison:    You will lose a small amount of HP each round while poisoned
ECHO. Slow:      Slow reduces your speed
ECHO. Sleep:     While asleep you are unable to act. You will be woken by an attack though
ECHO. Confusion: While confused you may attack yourself. You will snap out of if it attacked though
ECHO. Stop:      While stopped you are unable to act
ECHO.
pause
ECHO.
ECHO. Positive:
ECHO.
ECHO. Haste:     Haste increases your speed
ECHO. Protect:   Protect increases your endurance
ECHO. Shell:     Shell increases your spirit
ECHO. Reflect:   Reflect will send offensive spells back to the caster and damage them instead^^!
ECHO. Auto-life: Auto-life will bring you back to life with full HP and MP when you die^^!
ECHO.
pause
ECHO.
ECHO %TUTORIALNAME%: There are also ways that you can buff up your stats in battle:
ECHO.
ECHO. Meditate: This will increase the damage of your next attack
ECHO. Focus:    This will increase the magical power of your next spell
ECHO. Aim:      This will increase your accuracy until your next action
ECHO. Hide:     This will increase your evasion until your next action
ECHO.
pause
ECHO.
ECHO %TUTORIALNAME%: These buffs may be broken if the enemy successfully damages you.
ECHO                They have other uses too though so they're actually quite useful...
ECHO.
pause
GOTO :EOF

:MAGIC
CLS
ECHO.
ECHO %TUTORIALNAME%: Magic has many uses that can help you turn the tide in battle
ECHO                It can sometimes be used outside of battle too.
ECHO.
ECHO                There are 5 different types of magic:
ECHO.
ECHO. Offensive:   Damages enemies
ECHO. Status:      Causes negative status ailments to enemies
ECHO. Restorative: Restore your HP or cure negative status ailments
ECHO. Support:     Give yourself positive status ailments or remove the enemy's.
ECHO. Custom:      Whatever you like^^! Custom spells can be created in the temple after you reach level 10.
ECHO.
pause
GOTO :EOF

:SKILLS
CLS
ECHO.
ECHO %TUTORIALNAME%: Skills are unique abilities that can be acquired in one of two ways:
ECHO                1) Equipping certain weapons gives you access to skills whilst that weapon is equipped
ECHO                2) Meeting certain conditions in the game give you access to skills permanently, regardless
ECHO                   of the weapon you have equipped
ECHO.
ECHO                Once learned, they can then be used in battle (and sometimes outside of battle^^!)
ECHO.
pause
ECHO.
ECHO %TUTORIALNAME%: I won't tell you about all of the available skills but here's a few and how to learn them.
ECHO.
ECHO. Meditate:   Donate !SKILL%MEDID%UNLOCKTHRESHOLD! Gil to the temple
ECHO. Focus:      Create !SKILL%FOCID%UNLOCKTHRESHOLD! custom spells
ECHO. Aim:        Miss !SKILL%AIMID%UNLOCKTHRESHOLD! times
ECHO. Hide:       Dodge !SKILL%HIDEID%UNLOCKTHRESHOLD! attacks
ECHO. Tramp Rage: Help someone in need...
ECHO.
pause
GOTO :EOF

:RESISTANCES
CLS
ECHO.
ECHO %TUTORIALNAME%: Certain enemies may be resistant or weak to some status effects or elemental attacks.
ECHO                For instance, Yorkshire Terriers are weak to fire^^!
ECHO.
CALL :WAITFORTHREE
ECHO Fun Fact: This particular weakness applies to real life too^^!
ECHO.
pause
ECHO.
ECHO %TUTORIALNAME%: The levels of resistance are as follows:
ECHO.
ECHO. Weakness:        You take more damage from spells of this element
ECHO. Resistant:       You take less damage from spells of this element
ECHO. Immunity:        You cannot be hurt by spells of this element
ECHO. Absorb:          You are healed by spells of this element
ECHO. Status Immunity: You are unable to be affected by this status ailment
ECHO.
pause
GOTO :EOF

:CATCHING
CLS
ECHO.
ECHO %TUTORIALNAME%: When fighting enemies you have the option to catch them.
ECHO                Catching a wild enemy will make them available for battle in your training centre.
ECHO.
CALL :WAITFORTHREE
ECHO                It also means that when you fight that type of enemy again you will automatically be
ECHO                able to see their strengths and weaknesses, along with how much EXP and Gil they will
ECHO                give you if you win.
ECHO.
CALL :WAITFORTHREE
ECHO                That's not all^^! If you've caught an enemy, you will also be able to see a lot of details
ECHO                about them from the menu
ECHO.
CALL :WAITFORTHREE
ECHO                You can't catch an enemy when you're in training or if it's a special battle.
ECHO.                
CALL :WAITFORTWO
ECHO                Your chance of catching an enemy depends on your speed and how much HP they have,
ECHO                so it's worth damaging an enemy before you try to catch them.
ECHO.
CALL :WAITFORTHREE
ECHO                If you are unsuccessful when trying to catch an enemy then they will either 
ECHO                stand and fight or run away, depending on how much HP they have left.
ECHO.
CALL :WAITFORTHREE
ECHO %TUTORIALNAME%: Gotta Catch 'em All^^!
ECHO.
pause
ECHO.
ECHO %TUTORIALNAME%: Well you don't have to really... it's kind of up to you.
ECHO.
CALL :WAITFORTHREE
GOTO :EOF

:RUNNING
CLS
ECHO.
ECHO %TUTORIALNAME%: If things are looking bleak then you can choose to run from the battle.
ECHO.
CALL :WAITFORTWO
ECHO                When you do this your speed is compared against the enemy's.
ECHO                If their speed is higher that yours then you'll have a hard time escaping.
ECHO                (But it is always possible^^!)
ECHO.
CALL :WAITFORTHREE
ECHO                If you run from a battle whilst training then the enemy will escape
ECHO. 
pause
GOTO :EOF

:LEVELUP
CLS
ECHO.
ECHO %TUTORIALNAME%: You gain experience for winning battles. When you gain enough you will level up.
ECHO                It increases your base power and will give you a certain number of stats points
ECHO                to distribute.
ECHO.
CALL :WAITFORTHREE
ECHO                After a certain number of level ups you will gain a spell point. This can be used
ECHO                to unlock a new spell, or saved for later if you wish.
ECHO.
CALL :WAITFORTHREE
ECHO                Spells will be unlocked at different levels so keep checking to see what you can
ECHO                unlock.
ECHO.
pause
GOTO :EOF

:SPECIAL
CLS
ECHO.
ECHO %TUTORIALNAME%: Certain events or choices may trigger special battles. You cannot catch these
ECHO                enemies.
ECHO.
ECHO                These battles may unlock new areas, give you new skills or change the course
ECHO                of the game. It's worth looking for all of them.
ECHO.
pause
GOTO :EOF



:WAITFORZERO
TIMEOUT /T 0 > nul
GOTO :EOF

:WAITFORONE
TIMEOUT /T 1 > nul
GOTO :EOF

:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF

:WAITFORTHREE
TIMEOUT /T 3 > nul
GOTO :EOF


   