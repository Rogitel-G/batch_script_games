:ENTERTUTORIAL
CALL "%TUTORIALRESOURCEPATH%\tutorialdisplay.bat"
ECHO.
ECHO %TUTORIALNAME%: Which section of the menu would you like to learn about
ECHO.
ECHO. 1 - Inventory
ECHO. 2 - Equipment
ECHO. 3 - Character details
ECHO. 4 - Caught Enemies
ECHO. 5 - Records
ECHO. 6 - Story Review
ECHO. 7 - Spells and Skills
ECHO. 8 - Save my game
ECHO. 9 - Exit to main menu
ECHO. 0 - I've learned enough
ECHO.
:CATEGORYCHOICE
SET /P MENUCATEGORY=
ECHO.
IF "%MENUCATEGORY%" EQU "1" (
	CALL :INVENTORY
) ELSE IF "%MENUCATEGORY%" EQU "2" (
	CALL :EQUIPMENT
) ELSE IF "%MENUCATEGORY%" EQU "3" (
	CALL :DETAILS
) ELSE IF "%MENUCATEGORY%" EQU "4" (
	CALL :CAUGHT
) ELSE IF "%MENUCATEGORY%" EQU "5" (
	CALL :RECORDS
) ELSE IF "%MENUCATEGORY%" EQU "6" (
	CALL :STORY
) ELSE IF "%MENUCATEGORY%" EQU "7" (
	CALL :SPELLSKILL
) ELSE IF "%MENUCATEGORY%" EQU "8" (
	CALL :SAVE
) ELSE IF "%MENUCATEGORY%" EQU "9" (
	CALL :EXIT
) ELSE IF "%MENUCATEGORY%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CATEGORYCHOICE
)
GOTO :ENTERTUTORIAL

:INVENTORY
CLS
ECHO.
ECHO     %TUTORIALNAME%: This allows you to check what items you have. It'll also give you a brief description
ECHO     of what each of them does. Items are broken down into the follow categories:
ECHO.
ECHO     Standard Items - Items that can be used in battle.
ECHO     Special Items  - Generally used to create custom Spells/Equipment/Items
ECHO     Key Items      - Quest Items
ECHO     Custom Items   - Like Standard Items, but you made them. These can be incredibly powerful.
ECHO.
pause
GOTO :EOF

:EQUIPMENT
CLS
ECHO.
ECHO     %TUTORIALNAME%: From here you can equip, unequip and change your Weapons, Armour and Accessories.
ECHO.
ECHO     Equipment is split into 3 categories:
ECHO.
ECHO     Weapons     - Weapons can increase your STR, MAG and ACC. They can also give you skills to use in battle
ECHO     Armour      - Armour can increase your END, SPR, EVA and SPD. They can also affect your Elemental and
ECHO                   Status Resistances
ECHO     Accessories - Accessories can increase your HP, MP and LCK. They can also give you passive special
ECHO                   abilities that can have positive effects both in and outside of battles
ECHO.
pause
GOTO :EOF

:DETAILS
CLS
ECHO.
ECHO     %TUTORIALNAME%: The Character Menu lets you see your current stats, experience, status ailments and passive
ECHO     specials (from Accessories)
ECHO.
pause
GOTO :EOF

:CAUGHT
CLS
ECHO.
ECHO     %TUTORIALNAME%: The Caught Enemies Menu lets you see very detailed information about enemies that you have caught.
ECHO.
ECHO     It'll show you things like their base stats, elemental and status resistances/weaknesses, how much EXP and Gil you get
ECHO     for defeating them, what Skill/Spells they have, what rewards you can get from them, etc.
ECHO.
pause
GOTO :EOF

:RECORDS
CLS
ECHO.
ECHO     %TUTORIALNAME%: The Records Menu lets you see loads of interesting, but ultimately useless information.
ECHO.
ECHO     Things like how many battles you've fought, how many pieces of equipment you've crafted, how many
ECHO     custom items you've create, etc.
ECHO.
pause
GOTO :EOF

:STORY
CLS
ECHO.
ECHO     %TUTORIALNAME%: The Story Review Menu lets you review what's happened so far in your adventure.
ECHO.
ECHO     Some of the entries are fixed text, but others are directly dependent on choices that you've made^^!
ECHO.
pause
GOTO :EOF

:SPELLSKILL
CLS
ECHO.
ECHO     %TUTORIALNAME%: The Spells and Skills Menu lets you review what Spells and Skills you've unlocked.
ECHO.
ECHO     A useful thing about skills is that they can be Enabled by equipping the correct weapon, but
ECHO     they can also be Earned by meeting specific criteria. If you've Enabled a skill, but not yet
ECHO     Earned it, you can check this Menu to see what you have to do to earn the skill^^!
ECHO.
pause
GOTO :EOF

:SAVE
CLS
ECHO.
ECHO     %TUTORIALNAME%: This is where you can save your game. You can then return to this point later
ECHO.
ECHO     You can also perform a "quicksave" from the world map, this is a temporary save
ECHO     that can be loaded by performing a "quickload" from the map.
ECHO.
pause
GOTO :EOF

:EXIT
CLS
ECHO.
ECHO      %TUTORIALNAME%: Pretty much just does what it says on the tin. You will lose any unsaved progress
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
