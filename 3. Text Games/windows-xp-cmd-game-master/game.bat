@echo off

:restart
set globalChoice=
set pwd=%~dp0

set /a brokenAnkleCounter=0

rem 
set /a enemySkeletonSoldierDead=1
set /a enemySludgeElfDead=0
set /a enemyMaggotDead=0
rem
set /a hasKey=1
rem
set /a potionsCollected=1
rem 
set /a hasRope=1

set /a currentEnemyHp=0
set /a currentEnemyDamage=0
set /a currentEnemyArmor=0
rem
set /a currentPlayerDamage=2
set /a currentPlayerHp=10
set /a currentPlayerArmor=8
rem
set /a currentPlayerPotions=2

set /a lastDiceRoll=0
set /a lastDiceRollSuccess=0

set /a candleConfiguration=0
set /a isLeftCandleLit=0
set /a isRightCandleLit=0
set /a isMiddleCandleLit=0
set /a candleTries=0

set /a hasPassphrase=0

goto menu

rem args: clearScreen, doPause, ...text
:printline
if %~1==1 cls

set /a printlineArgCount=0
for %%x in (%*) do (
	set /a printlineArgCount+=1
	setlocal enabledelayedexpansion
	if !printlineArgCount! gtr 2 (
		endlocal
		echo %%~x
		echo:
	) else (
		endlocal
	)
)

if %2==1 (
	pause > nul
)
exit /b

rem args: invalidLoopLabel, ...choices
:printchoice
setlocal enabledelayedexpansion
set argCount=0
echo --------------------------------------------------------------------------------
for %%x in (%*) do (
	set /a argCount+=1
	set "argVec[!argCount!]=%%~x"
)
for /L %%i in (2, 1, %argCount%) do (
	set /a num=%%i-1
	echo !num!. !argVec[%%i]!
	echo:
)

set /p returnVal=Enter choice: 
set /a maxChoiceIndex=%argCount%-1
echo %returnVal%|findstr /r "[^0-9]" && (
	endlocal & goto %1
	exit /b
)
set /a userChoiceIndex=%returnVal%
if %userChoiceIndex% gtr %maxChoiceIndex% (
	endlocal & goto %1
	exit /b
)
endlocal & set "globalChoice=%returnVal%"
exit /b

rem args: sides, armor
:roll_combat_dice
setlocal
set /a roll=%random% %%%~1 + 1
set /a success=0
if %roll% gtr %~2 (
	set /a success=1
)
endlocal & (
	set "lastDiceRoll=%roll%"
	set "lastDiceRollSuccess=%success%"
)
exit /b

rem args: damage
:damage_player
set /a currentPlayerHp-=%1
if %currentPlayerHp% leq 0 (
	goto game_over
)
exit /b

rem args: enemyName, enemyArtPath
:render_combat_ui
setlocal enabledelayedexpansion
set name=%~1

type %pwd%ui_fight.txt
for /L %%i in (1, 1, 2) do (
	echo:
)

echo %name% ^| Enemy HP: %currentEnemyHp% ^| Your HP: %currentPlayerHp% ^| Your Armor: %currentPlayerArmor%
type %~2
echo:
endlocal
exit /b

rem args: invalidLoopLabel, fleeLabel, renderEnemyUiLabel
:render_combat_options
set /a tmpEnemyHp=%currentEnemyHp%
if %currentPlayerPotions% gtr 0 (
	call :printchoice %1, "Attack", "Flee", "Use health potion"
) else (
	call :printchoice %1, "Attack", "Flee"
)
cls
call %3
if %globalChoice%==1 (
	call :roll_combat_dice 20, %currentEnemyArmor%
	setlocal enabledelayedexpansion
	if !lastDiceRollSuccess!==1 (
		endlocal
		set /a tmpEnemyHp-=%currentPlayerDamage%
		call :printline 0, 1, "You hit and deal %currentPlayerDamage% damage!"
	) else (
		endlocal
		call :printline 0, 1, "You missed!"
	)
)
if %globalChoice%==2 (
	goto %2
)
if %globalChoice%==3 (
	call :damage_player -4
)
set /a currentEnemyHp=%tmpEnemyHp%
if %currentEnemyHp% lss 0 (
	set /a currentEnemyHp=0
)
exit /b

:menu
cls
type %pwd%\logo.txt
echo:
echo:
echo A new adventure awaits! Press any key to get started.
pause > nul
goto start

:start
call :printline 1, 1, "Water drips from the ceiling. Rats scurry along the floor. You appear to be in a dungeon of sorts, but you can't recall how you got here. You think back to your last memory and realize you have no memory of your life at all." 
call :printline 0, 1, "Intrigued by this discovery you take a look at your surroundings. To your surprise, you notice your hands are bone. Your body has no flesh. You're a skeleton. Neat!"
	:start_loop
	call :printline 1, 0, "You should probably figure out what happened to you. You are currently enjoying a long nap in a sarcophagus."
	call :printchoice start_loop, "Get up", "Stay where you are"
	if %globalChoice%==1 goto room_crypt
	if %globalChoice%==2 goto start_stay

	:start_stay
	call :printline 1, 0, "You reckon you've been here for a while, so you decide to sleep in a bit more."
	call :printchoice start_stay, "Get up", "Sleep in some more"
	if %globalChoice%==1 goto room_crypt
	if %globalChoice%==2 goto start_stay_2
	
	:start_stay_2
	call :printline 1, 0, "Some more time passes, and you still feel no desire to uncover the truth of how you got here."
	call :printchoice start_stay_2, "Get up", "Sleep in some more"
	if %globalChoice%==1 goto room_crypt
	if %globalChoice%==2 goto start_stay_3

	:start_stay_3
	call :printline 1, 0, "You would think that having a new lease on life would fill one with vigor and vitality. But you are content to do nothing."
	call :printchoice start_stay_3, "Get up", "Continue doing nothing"
	if %globalChoice%==1 goto room_crypt_finally
	if %globalChoice%==2 goto start_stay_4
	
	:start_stay_4
	call :printline 1, 0, "You continue doing nothing."
	call :printchoice start_stay_4, "Get up", "Continue doing nothing"
	if %globalChoice%==1 goto room_crypt_finally
	if %globalChoice%==2 goto start_stay_5
	
	:start_stay_5
	call :printline 1, 0, "You continue doing nothing."
	call :printchoice start_stay_5, "Get up", "Continue doing nothing"
	if %globalChoice%==1 goto room_crypt_finally
	if %globalChoice%==2 goto start_stay_6
	
	:start_stay_6
	call :printline 1, 0, "This nothing is pretty exciting."
	call :printchoice start_stay_6, "Get up", "Continue doing nothing"
	if %globalChoice%==1 goto room_crypt_finally
	if %globalChoice%==2 goto start_stay_6

:room_crypt_finally
call :printline 1, 1, "After a completely unnecessary and useless delay, you find it within your bones to finally climb out of your sarcophagus."
goto room_crypt

:room_crypt
call :printline 1, 1, "You climb out of the sarcophagus and take a look around. You're in an unassuming stone room. You hear the soothing clock-like sound of dripping water."
call :printline 0, 1, "There's another skeleton in the corner. He seems not to have awakened from his death. You presume he was a soldier based on his attire."
	:room_crypt_options
	if %enemySkeletonSoldierDead%==0 (
		call :printline 1, 0, "You're standing in the damp crypt beside your now-empty sarcophagus. There's a dead fellow in the corner.", "There are passageways to the north and the south."
		call :printchoice room_crypt_options, "Investigate skeleton", "Go north", "Go south"
	) else (
		call :printline 1, 0, "You're back in the damp crypt from whence you came. The skeleton soldier is still dead in the corner. There are passageways to the north and the south."
		call :printchoice room_crypt_options, "Go north", "Go south"
	)
	
	if %enemySkeletonSoldierDead%==0 (
		if %globalChoice%==1 goto room_crypt_investigate
		if %globalChoice%==2 goto room_crypt_north
		if %globalChoice%==3 goto room_alchemy
	)
	if %globalChoice%==1 goto room_crypt_north
	if %globalChoice%==2 goto room_alchemy
	
	:room_crypt_investigate
	call :printline 1, 0, "You're sure now this man was a soldier. On his hip is a sheathed sword."
	call :printchoice room_crypt_investigate, "Take sword", "Leave"
	if %globalChoice%==1 goto room_crypt_fight_skeleton
	if %globalChoice%==2 goto room_crypt_options
	
	:room_crypt_render_skeleton_ui
	cls
	call :render_combat_ui "Skeletal Soldier", "%pwd%creatures\skeleton.txt"
	exit /b
	:room_crypt_fight_skeleton
	set /a currentEnemyHp=3
	set /a currentEnemyDamage=1
	set /a currentEnemyArmor=3
	:room_crypt_fight_skeleton_loop
	call :room_crypt_render_skeleton_ui
	call :render_combat_options room_crypt_fight_skeleton_loop, room_crypt_fight_skeleton_flee, :room_crypt_render_skeleton_ui
	
	if %currentEnemyHp%==0 (
		set /a enemySkeletonSoldierDead=1
		call :printline 0, 1, "The skeleton... dies. Again. He dies again."
		set /a currentPlayerDamage+=1
		call :printline 1, 1, "You looted a sword, damage +1"
		goto room_crypt_options
	)
	call :room_crypt_render_skeleton_ui
	call :printline 0, 1, "The skeleton soldier raises his sword to take a swing at you."
	call :roll_combat_dice 20, %currentPlayerArmor%
	if %lastDiceRollSuccess%==1 (
		call :printline 0, 1, "The skeleton soldier hits you dealing %currentEnemyDamage% damage."
		call :damage_player %currentEnemyDamage%
	) else (
		call :printline 0, 1, "The skeleton soldier misses."
	)
	goto room_crypt_fight_skeleton_loop
	
	:room_crypt_fight_skeleton_flee
	call :printline 1, 1, "You decide the skeleton is too scary. You flee the scene."
	goto room_crypt_options

:room_crypt_north
call :printline 1, 0, "You find yourself in a well-lit room. The source of the light is a large hole in the ceiling, through which sunlight penetrates.", "To the south is the crypt. To the west is an ornate locked door."
if %hasRope%==1 (
	call :printchoice room_crypt_north, "Use the rope to climb through ceiling", "Go south", "Go west"
) else (
	call :printchoice room_crypt_north, "Attempt to jump up through the ceiling hole", "Go south", "Go west"
)
if %globalChoice%==1 (
	if %hasRope%==1 goto room_grove
	set /a brokenAnkleCounter+=1
	setlocal enabledelayedexpansion
	if !brokenAnkleCounter!==2 (
		endlocal
		call :printline 1, 1, "Last time you did this you broke your ankle. It's not wise to try again."
		goto room_crypt_north
	)
	if !brokenAnkleCounter!==3 (
		endlocal
		call :printline 1, 1, "I really don't think you should do this."
		goto room_crypt_north
	)
	if !brokenAnkleCounter!==4 (
		endlocal
		call :printline 1, 1, "You're insufferable."
		goto room_crypt_north
	)
	if !brokenAnkleCounter!==5 (
		endlocal
		call :printline 1, 1, "Fine! You try the jump yadda-yadda and you take 1 more damage. Happy� Now stop."
		call :damage_player 1
		goto room_crypt_north
	)
	if !brokenAnkleCounter! gtr 6 (
		endlocal
		call :printline 1, 1, "..."
		goto room_crypt_north
	)
	endlocal
	call :printline 1, 1, "You muster the strength, seemingly miraculously given your lack of muscle, to jump at the hole in the ceiling. Unfortunately you don't even come close to making the jump. And you break your ankle. And you take 1 damage. Maybe don't do that again..."
	call :damage_player 1
	goto room_crypt_north
)
if %globalChoice%==2 goto room_crypt_options
if %globalChoice%==3 (
	if %hasKey%==0 (
		call :printline 1, 1, "You must've forgotten, the door is LOCKED. Turn around."
		goto room_crypt_north
	) else (
		goto room_torture_chamber
	)
)

:room_torture_chamber
if %enemyMaggotDead%==0 goto room_torture_chamber_intro
goto room_torture_chamber_no_enemy

	:room_torture_chamber_intro
	call :printline 1, 1, "You produce the key retrieved from the reliquary room. Cautiously you approach the ornate door."
	call :printline 0, 1, "You raise the key and bring it to the lock. As you do this, the key begins to pull itself toward the lock."
	call :printline 0, 1, "You release the key. It slams into the lock and twists itself. The echoes of heavy machinery fill the room. The ornate door slowly swings open."
	call :printline 1, 1, "As you step into the room you hear a rustling on the ceiling. Before you can look up, a mass of pearly white flesh falls from the ceiling. A giant maggot lands in front of you with a gut-churning squelch."
	goto room_torture_chamber_start_combat
	
	:room_torture_chamber_start_combat
	set /a currentEnemyArmor=15
	set /a currentEnemyHp=1
	set /a currentEnemyDamage=4
	goto room_torture_chamber_combat_loop

	:room_torture_chamber_render_maggot
	cls
	call :render_combat_ui "Giant Maggot", "%pwd%creatures\maggot.txt"
	exit /b
	
	:room_torture_chamber_combat_loop
	call :room_torture_chamber_render_maggot
	call :render_combat_options room_torture_chamber_combat_loop, room_torture_chamber_flee, :room_torture_chamber_render_maggot
	
	if %currentEnemyHp%==0 (
		set /a enemyMaggotDead=1
		call :printline 1, 1, "You strike the maggot with a weak blow. It lunges toward you in retaliation."
		call :printline 0, 1, "You quickly sidestep the maggot as it hurls past you and into a weapon rack."
		call :printline 0, 1, "The weapons, seemingly still sharp, tear the maggot's rubbery flesh apart. The maggot's entrails and fluids flood the room, covering the floor with a thin layer of iridescent oil."
		goto room_torture_chamber_no_enemy
	)
	
	call :room_torture_chamber_render_maggot
	call :printline 0, 1, "The maggot prepares to lunge at you."
	call :roll_combat_dice 20, %currentPlayerArmor%
	if %lastDiceRollSuccess%==1 (
		call :printline 0, 1, "The maggot hits you square in the chest, dealing considerable damage."
		call :damage_player %currentEnemyDamage%
	) else (
		call :printline 0, 1, "The maggot barely misses."
	)
	
	goto room_torture_chamber_combat_loop
	
	:room_torture_chamber_flee
	call :printline 1, 1, "The maggot in its pearlescent glory is far too terrifying to handle right now. You flee back into the main room. The ornate door slams shut and locks itself behind you."
	goto room_crypt_north
	
	:room_torture_chamber_no_enemy
	call :printline 1, 0, "The room in which you find yourself smells of death. Bloodstains cover the brick walls. Corpses hang from the ceilings by corroded chains."
	call :printline 0, 0, "The walls are lined with torture devices of varying complexity. Curiously, one of the torture stations has nothing but a restraining chair and a copy of The Great Gatsby."
	call :printline 0, 0, "At the far end of the room is a desk and bookshelves. To the east is the well-lit room whence you came."
	call :printchoice room_torture_chamber_no_enemy, "Investigate the desk", "Go east"
	if %globalChoice%==1 goto room_torture_chamber_desk
	if %globalChoice%==2 goto room_crypt_north
	
	:room_torture_chamber_desk
	call :printline 1, 0, "You approach the desk and bookshelves. There is nothing much here."
	if %hasPassphrase%==0 goto room_torture_chamber_desk_no_passphrase
	goto room_torture_chamber_desk_has_passphrase
	
	:room_torture_chamber_desk_no_passphrase
	call :printline 0, 0, "There is a single book in the bookshelf and a note upon the desk."
	call :printchoice room_torture_chamber_desk, "Read book", "Take note", "Go back"
	if %globalChoice%==1 goto room_torture_chamber_read_book
	if %globalChoice%==2 goto room_torture_chamber_take_note
	if %globalChoice%==3 goto room_torture_chamber
	
	:room_torture_chamber_desk_has_passphrase
	call :printline 0, 0, "There is a single book in the bookshelf."
	call :printchoice room_torture_chamber_desk, "Read book", "Go back"
	if %globalChoice%==1 goto room_torture_chamber_read_book
	if %globalChoice%==2 goto room_torture_chamber
	
	:room_torture_chamber_take_note
	set /a hasPassphrase=1
	call :printline 1, 0, "You pick up the note which is scribbled upon stained parchment. The note reads as follows:"
	call :printline 0, 0, "Mr. Warden,", "I'm writing concerning the mystic we have been working on for these past months. I am please to inform you that we acquired the information you seek.", "The way through the grove pass is to utter these words before the monolith: 'Esurio, ut epulemur.'"
	call :printline 0, 0, "Please provide us with further orders."
	call :printline 0, 1, "- Your Staff"
	call :printline 0, 1, "P.S. See you at the pot-luck next week."
	call :printline 1, 1, "You take the note."
	goto room_torture_chamber_desk
	
	:room_torture_chamber_read_book
	call :printline 1, 1, "You reach for the sole book and open it. You begin to read it."
	call :printline 1, 1, "Page 1:", "A fart is like success. It only bothers you when it's not your own."
	call :printline 1, 1, "Page 2:", "Love is like a fart. If you have to force it, it's probably crap."
	call :printline 1, 1, "Page 3:", "I would make a fart joke but I'm afraid that it would stink."
	call :printline 1, 1, "This goes on for 300 pages."
	call :printline 0, 1, "You return the book to its solitary place on the bookshelf."
	goto room_torture_chamber


:room_grove
call :printline 1, 0, "You climb up the rope and are blinded by a ray of sunshine. After a moment of adjustment, you find yourself in a forest grove."
call :printline 0, 0, "The trees around the grove are too thick to pass. A path leads to the north but is blocked by a stone monolith."
call :printchoice room_grove, "Investigate the monolith", "Climb down"
if %globalChoice%==1 goto room_grove_monolith
if %globalChoice%==2 goto room_crypt_north

	:room_grove_return
    call :printline 1, 0, "You find yourself back in the forest grove."
	call :printline 0, 0, "The trees around the grove are too thick to pass. A path leads to the north but is blocked by a stone monolith."
	call :printchoice room_grove, "Investigate the monolith", "Climb down"
	if %globalChoice%==1 goto room_grove_monolith
	if %globalChoice%==2 goto room_crypt_north

	:room_grove_monolith
	if %hasPassphrase%==0 goto room_grove_monolith_no_passphrase
	goto room_grove_monolith_passphrase
	
	:room_grove_monolith_no_passphrase
	call :printline 1, 0, "You approach the monolith and notice that it is inscribed with words. The words read: 'Only for spoken truth shall I open'."
	call :printline 0, 0, "It's a door, and it seems to be asking for a passphrase."
	call :printchoice room_grove_monolith_no_passphrase, "Say the sky is blue", "Utter random noises", "Demand it open at once", "Hit it with all your might", "Go back"
	if %globalChoice%==4 (
		call :printline 1, 1, "You summon all the strength within you and give the door a good whack. Nothing happens."
		goto room_grove_monolith_no_passphrase
	)
	if %globalChoice%==5 (
		goto room_grove_return
	)
	call :printline 1, 1, "Nothing happens."
	goto room_grove_monolith_no_passphrase
	
	:room_grove_monolith_passphrase
	call :printline 1, 0, "You approach the monolith and notice that it is inscribed with words. The words read: 'Only for spoken truth shall I open'."
	call :printline 0, 0, "It's a door, and it seems to be asking for a passphrase."
	call :printchoice room_grove_monolith_passphrase, "Say the phrase from the note: 'Esurio, ut epulemur.'", "Go back"
	if %globalChoice%==1 goto room_cave
	if %globalChoice%==2 goto room_grove_return
	

:room_cave
call :printline 1, 1, "A deep and resounding sound of crushed boulders rings through the air. The monolith cracks down the middle and swings open."
call :printline 0, 1, "Ahead of you is a dark cave. Deep into the cave a faint orange glow eminates. You step into the cave and approach the orange glow."
call :printline 0, 1, "As you venture deeper into the cave, you discover the source of the orange glow. Braziers are lit in front of a fresco painted upon the cave wall."
call :printline 1, 1, "You peer at the painting. The images depict a young businessman who appeared to be in a struggle to forge a profitable business."
call :printline 0, 1, "Frustrated by his lack of success, the businessman exhumed the graves of the dead."
call :printline 0, 1, "In a demonic ritual, he brought the corpses back to life and sent them to work 16 hour shifts in his factories with no benefits or pay."
call :printline 0, 1, "The final image depicts the necromancer's untimely demise due to a factory mishap. The undead workers rejoiced in their captor's death and eventually made their way back to their resting places."
call :printline 1, 1, "..."
call :printline 1, 1, "You were one of these workers."
goto game_complete


:room_alchemy
set directions="To the north is the crypt. To the west is a room that seems to be emitting faint sparkles. To the east is a storage closet."
if %enemySludgeElfDead%==0 goto room_alchemy_initial_options
goto room_alchemy_no_elf

	:room_alchemy_initial_options
	call :printline 1, 0, "You step into a room furnished with long tables. Upon the tables are various alchemical tools. Beakers, tubes, and strange ingredients are strewn about.", "On one of the tables, you notice a boiling cauldron. The cauldron doesn't have a visible heat source. Behind the cauldron is a cabinet which looks to contain potions and vials.", %directions%
	call :printchoice room_alchemy_initial_options, "Investigate boiling cauldron", "Investigate potion cabinet", "Go north", "Go east", "Go west" 
	if %globalChoice%==1 goto room_alchemy_cauldron
	if %globalChoice%==2 goto room_alchemy_potion_cabinet
	if %globalChoice%==3 goto room_crypt_options
	if %globalChoice%==4 goto room_storage
	if %globalChoice%==5 goto room_reliquary
	
	:room_alchemy_no_elf
	call :printline 1, 0, "You are in the alchemy room furnished with long tables. Upon the tables are various alchemical tools.", "The cauldron that was previously boiling is now still.", "Behind the cauldron is a cabinet which looks to contain potions and vials.", %directions%
	call :printchoice room_alchemy_no_elf, "Investigate potion cabinet", "Go north", "Go east", "Go west"
	if %globalChoice%==1 goto room_alchemy_potion_cabinet
	if %globalChoice%==2 goto room_crypt_options
	if %globalChoice%==3 goto room_storage
	if %globalChoice%==4 goto room_reliquary
	
	:room_alchemy_potion_cabinet
	if %potionsCollected%==0 goto room_alchemy_potion_cabinet_full
	goto room_alchemy_potion_cabinet_empty
	
		:room_alchemy_potion_cabinet_full
		call :printline 1, 0, "You open the potion cabinet and among the empty and broken jars are 2 full health potions."
		call :printchoice room_alchemy_potion_cabinet_full, "Go back", "Take potions"
		if %globalChoice%==1 goto room_alchemy
		if %globalChoice%==2 (
			set /a currentPlayerPotions+=2
			set /a potionsCollected=1
			call :printline 1, 1, "You grab the 2 health potions. These will come in handy!"
			goto room_alchemy
		)
		
		:room_alchemy_potion_cabinet_empty
		call :printline 1, 1, "You take a peek at the potion cabinet just in case 2 more health potions have spontaneously spawned. Much to your surprise, there are no more health potions."
		goto room_alchemy
	
	:room_alchemy_cauldron
	call :printline 1, 0, "The bubbling sounds get louder as you approach the cauldron. Beside the cauldron you see several ingredient jars that appear to be empty, except for one.", "The remaining ingredient jar looks to contain pickled elf ears, a rare treat for some beasts."
	call :printchoice room_alchemy_cauldron, "Go back", "Add a pinch of pickled elf ear to the potion", "Add all of the pickled elf ears to the potion"
	if %globalChoice%==1 goto room_alchemy
	if %globalChoice%==2 goto room_alchemy_combat_easy
	if %globalChoice%==3 goto room_alchemy_combat_hard
	
	:room_alchemy_combat_easy
	set /a currentEnemyArmor=8
	set /a currentEnemyHp=5
	set /a currentEnemyDamage=1
	call :printline 1, 1, "You add the pickled elf ears and the cauldron starts to bubble violently. A sudden splash of scalding water erupts from the cauldron, revealing a sludge elf^^!"
	goto room_alchemy_combat_loop
	
	:room_alchemy_combat_hard
	set /a currentEnemyArmor=10
	set /a currentEnemyHp=7
	set /a currentEnemyDamage=2
	call :printline 1, 1, "You add the pickled elf ears and the cauldron starts to bubble violently. A sudden splash of scalding water erupts from the cauldron, revealing a sludge elf^^!"
	goto room_alchemy_combat_loop
	
	:room_alchemy_render_sludge_elf
	cls
	call :render_combat_ui "Sludge Elf", "%pwd%creatures\elf.txt"
	exit /b
	
	:room_alchemy_combat_loop
	call :room_alchemy_render_sludge_elf
	call :render_combat_options room_alchemy_combat_loop, room_alchemy_combat_flee, :room_alchemy_render_sludge_elf
	
	if %currentEnemyHp%==0 (
		set /a enemySludgeElfDead=1
		call :printline 0, 1, "The sludge elf gasps with an air of pathetic melodrama before diving headfirst back into the cauldron."
		call :printline 0, 1, "As you peer into the cauldron you notice something bubbling to the surface. It appears to be a clump of goo molded into the shape of a helmet."
		set /a currentPlayerArmor+=2
		call :printline 1, 1, "You looted a Gooey Helmet, +2 armor."
		goto room_alchemy
	)
	
	call :room_alchemy_render_sludge_elf
	call :printline 0, 1, "The sludge elf readies a sticky attack!"
	
	call :roll_combat_dice 20, %currentPlayerArmor%
	if %lastDiceRollSuccess%==1 (
		call :printline 0, 1, "The sludge elf hurls a glob of questionable goo at you dealing %currentEnemyDamage% damage."
		call :damage_player %currentEnemyDamage%
	) else (
		call :printline 0, 1, "The sludge elf hurls a glob of questionable goo at you and misses."
	)
	goto room_alchemy_combat_loop
	
:room_storage
set directions="To the west is the alchemy room."
if %hasRope%==0 goto room_storage_no_rope
goto room_storage_has_rope
	
	:room_storage_no_rope
	call :printline 1, 0, "You enter a dusty room brimming with crates, barrels, and other odds and ends. Atop a nearby crate is a rope. There's a suspiciously empty crate in the corner of the room."
	call :printline 0, 0, %directions%
	call :printchoice room_storage_no_rope, "Take the rope", "Investigate the empty crate", "Go west"
	if %globalChoice%==1 (
		set /a hasRope=1
		call :printline 1, 1, "You collect the rope."
		goto room_storage_has_rope
	)
	if %globalChoice%==2 goto room_storage_investigate_crate
	if %globalChoice%==3 goto room_alchemy
	
	:room_storage_has_rope
	call :printline 1, 0, "You are back in the dusty room brimming with crates, barrels, and other odds and ends. There's a suspiciously empty crate in the corner of the room."
	call :printline 0, 0, %directions%
	call :printchoice room_storage_has_rope, "Investigate the empty crate", "Go west"
	if %globalChoice%==1 goto room_storage_investigate_crate
	if %globalChoice%==2 goto room_alchemy
	
	:room_storage_investigate_crate
	call :printline 1, 0, "The crate is rather large. It could easily contain a full grown man. A compulsive thought flicks through your mind: you should climb in."
	call :printchoice room_storage_investigate_crate, "Give in to the compulsion", "Resist the compulsion"
	if %globalChoice%==1 goto room_storage_inside_crate
	if %globalChoice%==2 goto room_storage_escape_crate
	
	:room_storage_escape_crate
	call :roll_combat_dice 20, %currentPlayerArmor%
	if %lastDiceRollSuccess%==1 (
		call :printline 1, 1, "You try to resist the compulsive thought, but you lose the battle with yourself. After all, what's the harm in trying it..."
		goto room_storage_inside_crate
	)
	call :printline 1, 1, "After a brief internal struggle, you decide against climbing into the crate. It seems unnecessary and you're still unsure of the danger that lurks in these halls."
	goto room_storage
	
	:room_storage_inside_crate
	call :printline 1, 1, "You climb into the crate. It's pretty unremarkable."
	call :printline 0, 1, "You sit in the crate for a while. When you've had enough, you decide to climb out."
	call :printline 0, 1, "As you attempt to climb out, you come to a horrifying realization. You are completely paralyzed."
	call :printline 0, 1, "Facing the terror of an eternity stuck in a crate, you feel panic set in."
	call :printline 0, 1, "You try to collect yourself to no avail. You will spend an eternity here."
	call :printline 1, 1, "Finally you regain some of your capacity to move. You begin to flail maniacally."
	call :printline 0, 1, "A jarring force pierces your core. In a moment of supernatural clarity you realize that you're standing beside the crate. You're not trapped at all."
	call :printline 0, 1, "You stand for a moment, confused. Did that just happen..."
	goto room_storage
	
:room_reliquary
if %hasKey%==1 goto room_reliquary_puzzle_solved
goto room_reliquary_puzzle_unsolved

	:room_reliquary_puzzle_unsolved
	call :printline 1, 0, "You enter a dark room. Through the darkness you notice a slight sparkling emanating from all around.", "As you adjust to the darkness, you see that the sparkling is emitting from ancient reliquaries."
	call :printline 0, 0, "These reliquaries no doubt contain valuable artifacts. You should be careful here."
	call :printline 0, 0, "At the end of the room appears to be a table with 3 unlit candles."
	call :printline 0, 0, "To the east is the alchemy room."
	call :printchoice room_reliquary_puzzle_unsolved, "Investigate the candles", "Go east"
	if %globalChoice%==1 goto room_reliquary_candles
	if %globalChoice%==2 goto room_alchemy
	
	:room_reliquary_puzzle_solved
	call :printline 1, 0, "You return to the reliquary room. These reliquaries no doubt contain valuable artifacts. You should be careful here."
	call :printline 0, 0, "At the end of the room is the altar where you performed a ritual to receive a key."
	call :printline 0, 0, "To the east is the alchemy room."
	call :printchoice room_reliquary_puzzle_solved, "Go east"
	if %globalChoice%==1 goto room_alchemy
	
	:print_candle_configuration
	if %candleConfiguration%==0 (
		call :printline 0, 0, "None of the candles are lit."
	)
	if %candleConfiguration%==1 (
		call :printline 0, 0, "Only the rightmost candle is lit."
	)
	if %candleConfiguration%==2 (
		call :printline 0, 0, "Only the middle candle is lit."
	)
	if %candleConfiguration%==3 (
		call :printline 0, 0, "The middle and rightmost candles are lit."
	)
	if %candleConfiguration%==4 (
		call :printline 0, 0, "Only the leftmost candle is lit."
	)
	if %candleConfiguration%==5 (
		call :printline 0, 0, "The leftmost and rightmost candles are lit."
	)
	if %candleConfiguration%==6 (
		call :printline 0, 0, "The leftmost and middle candles are lit."
	)
	if %candleConfiguration%==7 (
		call :printline 0, 0, "All the candles are lit."
	)
	exit /b

	:room_reliquary_candles
	call :printline 1, 1, "You approach the unlit candles which sit upon an altar."
	
	:room_reliquary_candles_options
	call :printline 1, 0, "Hanging on the wall above the altar is an oddly intricate portrait of the number 5.", "Beside the candles is an old tome. It has been opened to a page emblazoned with the title 'The Revealed Holy Order of the Base 2 Number System.'", "Unfortunately, the words on the page have faded to the point of illegibility."
	call :print_candle_configuration
	call :printchoice room_reliquary_candles_options, "Light or unlight the leftmost candle", "Light or unlight middle candle", "Light or unlight rightmost candle", "Go back"
	if %globalChoice%==4 goto room_reliquary
	goto room_reliquary_candles_options_process_choice
	
	:room_reliquary_candles_options_alternate
	call :printline 1, 0, "Hanging on the wall above the altar is an oddly intricate portrait of the number 5.", "Beside the candles is an old tome. It has been opened to a page emblazoned with the title 'The Revealed Holy Order of the Base 2 Number System.'", "Unfortunately, the words on the page have faded to the point of illegibility."
	call :print_candle_configuration
	call :printchoice room_reliquary_candles_options, "Light or unlight the leftmost candle", "Light or unlight middle candle", "Light or unlight rightmost candle", "Destroy the candles in frustration", "Go back"
	if %globalChoice%==4 goto room_reliquary_candles_brute_solved
	if %globalChoice%==5 goto room_reliquary
	goto room_reliquary_candles_options_process_choice
	
	:room_reliquary_candles_options_process_choice
	set /a candleChange=0
	if %globalChoice%==1 (
		if %isLeftCandleLit%==1 (
			set /a isLeftCandleLit=0
			set /a candleChange=-4
		) else (
			set /a isLeftCandleLit=1
			set /a candleChange=4
		)
	)
	if %globalChoice%==2 (
		if %isMiddleCandleLit%==1 (
			set /a isMiddleCandleLit=0
			set /a candleChange=-2
		) else (
			set /a isMiddleCandleLit=1
			set /a candleChange=2
		)
	)
	if %globalChoice%==3 (
		if %isRightCandleLit%==1 (
			set /a isRightCandleLit=0
			set /a candleChange=-1
		) else (
			set /a isRightCandleLit=1
			set /a candleChange=1
		)
	)
	
	set /a candleTries=%candleTries%+1
	set /a candleConfiguration=%candleConfiguration%+%candleChange%
	if %candleConfiguration%==5 goto room_reliquary_candles_solved
	if %candleTries% geq 5 (
		goto room_reliquary_candles_options_alternate
	)
	goto room_reliquary_candles_options
	
	:room_reliquary_candles_solved
	call :printline 1, 1, "With the leftmost and rightmost candles lit, the room starts to shake. The candles begin to burn violently, shooting jets of flame into the ceiling."
	call :printline 0, 1, "After a brief moment of terror the shaking stops and the candles extinguish.", "Upon the alter is a key."
	call :printline 1, 1, "You take the key."
	set /a hasKey=1
	goto room_reliquary
	
	:room_reliquary_candles_brute_solved
	call :printline 1, 1, "Because of your inferior intelligence, you cannot solve the puzzle. Frustrated by your imbecility, you embrace your inner cro-magnon and violently throw the candles to the ground."
	call :printline 0, 1, "After your fit of rage subsides, you notice a key sitting upon the altar."
	call :printline 1, 1, "You take the key."
	set /a hasKey=1
	goto room_reliquary

:game_over
call :printline 1, 1, "You have succumbed to death once again. Perhaps this isn't the end, however..."
goto restart

:game_complete
cls
type %pwd%game_complete.txt
call :printline 0, 1, "You have completed the game! I hope you enjoyed this short adventure."
goto eof

:eof
exit /b 0
