:ENTERTUTORIAL
CALL "%TUTORIALRESOURCEPATH%\tutorialdisplay.bat"
ECHO.
ECHO %TUTORIALNAME%: Which type of items would you like to learn about?
ECHO.
ECHO. 1 - Usable Items
ECHO. 2 - Special Items
ECHO. 3 - Key Items
ECHO. 4 - Custom Items
ECHO. 5 - Weapons
ECHO. 6 - Armour
ECHO. 7 - Accessories
ECHO. 0 - I've learned enough
ECHO.
:CATEGORYCHOICE
SET /P ITEMSCATEGORY=
ECHO.
IF "%ITEMSCATEGORY%" EQU "1" (
	CALL :ITEMS
) ELSE IF "%ITEMSCATEGORY%" EQU "2" (
	CALL :SPECIAL
) ELSE IF "%ITEMSCATEGORY%" EQU "3" (
	CALL :KEY
) ELSE IF "%ITEMSCATEGORY%" EQU "4" (
	CALL :CUSTOM
) ELSE IF "%ITEMSCATEGORY%" EQU "5" (
	CALL :WEAPONS
) ELSE IF "%ITEMSCATEGORY%" EQU "6" (
	CALL :ARMOUR
) ELSE IF "%ITEMSCATEGORY%" EQU "7" (
	CALL :ACCESSORIES
) ELSE IF "%ITEMSCATEGORY%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CATEGORYCHOICE
)
GOTO :ENTERTUTORIAL

:ITEMS
CLS 
ECHO.
ECHO %TUTORIALNAME%: Items can either be bought in the shop, obtained by killing enemies
ECHO                or found in chests. They can be used in battle to help you out.
CALL :WAITFORTHREE
ECHO.
ECHO                These are a few different types of items:
ECHO.
ECHO. Items that heal your HP and MP or cure your status ailments
ECHO. Items that increase your stats in battle
ECHO. Items that damage the enemy
ECHO. Items that inflict status ailments on the enemy
REM ECHO. Items that make the enemy more vunerable to certain elements
ECHO.
ECHO %TUTORIALNAME%: And so on... explore everywhere to find out what all items do
ECHO.
pause
GOTO :EOF

:SPECIAL
CLS 
ECHO.
ECHO %TUTORIALNAME%: Special Items are used outside of battle and are primarily used
ECHO                for custom items/equipment
CALL :WAITFORTHREE
ECHO.
ECHO                A few examples are:
ECHO.
ECHO. Strength Stone - Used to increase the strength bonus of custom weapons
ECHO. Creation Stone - Used to create items
ECHO. Combination Stone - Used to combine items
ECHO. Auto-Protect Stone - Used to add the Auto-Protect special ability to custom accessories
ECHO.
ECHO %TUTORIALNAME%: I could tell you more but I don't want to spoil the fun^^!
ECHO.
pause
GOTO :EOF

:KEY
CLS 
ECHO.
ECHO %TUTORIALNAME%: Key Items generally relate to quests. For example, you need a
ECHO                particular smack head's eye to open the cave door.
CALL :WAITFORTWO
ECHO.
ECHO                This will appear as a Key Item in your menu
ECHO.
pause
GOTO :EOF

:CUSTOM
CLS 
ECHO.
ECHO %TUTORIALNAME%: Later in the game you'll find that you can create custom items.
CALL :WAITFORTWO
ECHO                You can do this by combining items that currently own to make
ECHO                super items that have both effects.
CALL :WAITFORTHREE
ECHO                For example, you could combine a Potion and a Grenade to make
ECHO                an item that hurts the enemy and heals you at the same time^^!
CALL :WAITFORTHREE
ECHO                They're pretty damn useful^^!
ECHO.
pause
GOTO :EOF

:WEAPONS
CLS
ECHO.
ECHO %TUTORIALNAME%: Weapons can either be bought in the shop, obtained by killing enemies
ECHO                of found in chests. They are equipped through the menu and increase
ECHO                your stats. They may also give you access to new skills if they contain
ECHO                the correct skill stones
ECHO.
ECHO                The stats that weapons affect are:
ECHO.
ECHO. Strength
ECHO. Magic
ECHO. Accuracy
ECHO.
pause
GOTO :EOF

:ARMOUR
CLS
ECHO.
ECHO %TUTORIALNAME%: Weapons can either be bought in the shop, obtained by killing enemies
ECHO                of found in chests. They are equipped through the menu and increase
ECHO                your stats. They may also alter your resistances
ECHO.
ECHO                The stats that armour affects are:
ECHO.
ECHO. Endurance
ECHO. Spirit
ECHO. Evasion
ECHO. Speed
ECHO.
pause
GOTO :EOF

:ACCESSORIES
CLS
ECHO.
ECHO %TUTORIALNAME%: Weapons can either be bought in the shop, obtained by killing enemies
ECHO                of found in chests. They are equipped through the menu and increase
ECHO                your stats. They may also have some other effects but you'll have
ECHO                to find out for yourself
ECHO.
ECHO                The stats that armour affects are:
ECHO.
ECHO. Health Points
ECHO. Magic Points
ECHO. Luck
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
