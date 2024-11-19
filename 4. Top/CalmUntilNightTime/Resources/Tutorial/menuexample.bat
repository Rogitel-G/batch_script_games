SET /a VAR = 1
CALL :DISPLAYMENU
CALL :INVENTORYTEXT
pause
SET /a VAR = 2
CALL :DISPLAYMENU
CALL :EQUIPMENTTEXT
pause
SET /a VAR = 3
CALL :DISPLAYMENU
CALL :CHARACTERTEXT
pause
SET /a VAR = 4
CALL :DISPLAYMENU
CALL :CAUGHTTEXT
pause
SET /a VAR = 5
CALL :DISPLAYMENU
CALL :RECORDSTEXT
pause
SET /a VAR = 6
CALL :DISPLAYMENU
CALL :STORYTEXT
pause
SET /a VAR = 7
CALL :DISPLAYMENU
CALL :SPELLSKILLTEXT
pause
CALL :DISPLAYMENU
CALL :LIMITBREAK
SET /a VAR = 0
pause
CALL :DISPLAYMENU
CALL :ENDTEXT
pause
CALL :DISPLAYMENU
CALL :HINT
pause
GOTO :EOF


:INVENTORYTEXT
ECHO     %MENUNAME%: The Inventory Menu lets you see what items you have. Items are split into 4 categories:
ECHO.
ECHO     Standard Items - Items that can be used in battle.
ECHO     Special Items  - Generally used to create custom Spells/Equipment/Items
ECHO     Key Items      - Quest Items
ECHO     Custom Items   - Like Standard Items, but you made them. It'll be a while until you reach the
ECHO                      Alchemist though. These can be incredibly powerful.
ECHO.
GOTO :EOF

:EQUIPMENTTEXT
ECHO     %MENUNAME%: The Equipment Menu lets you see what equipment you have and also to equip it^^!
ECHO     Equipment is split into 3 categories:
ECHO.
ECHO     Weapons     - Weapons can increase your STR, MAG and ACC. They can also give you skills to use in battle.
ECHO.
ECHO     Armour      - Armour can increase your END, SPR, EVA and SPD. They can also affect your Elemental and
ECHO                   Status Resistances.
ECHO.
ECHO     Accessories - Accessories can increase your HP, MP and LCK. They can also give you passive special
ECHO                   abilities that can have positive effects both in and outside of battles.
ECHO.
GOTO :EOF

:CHARACTERTEXT
ECHO     %MENUNAME%: The Character details Menu lets you see your current stats, experience, status ailments and
ECHO     passive specials (from Accessories)
ECHO.
GOTO :EOF

:CAUGHTTEXT
ECHO     %MENUNAME%: The Caught Enemies Menu lets you see detailed information about enemies that you have caught.
ECHO.
ECHO     It'll show you things like their base stats, elemental and status resistances/weaknesses, how much EXP
ECHO     and Gil you get for defeating them, what Skill/Spells they have, what rewards you can get from them, etc.
ECHO.
GOTO :EOF

:RECORDSTEXT
ECHO     %MENUNAME%: The Records Menu lets you see loads of interesting, but ultimately useless information.
ECHO.
ECHO     Things like how many battles you've fought, how many pieces of equipment you've crafted, how many
ECHO     custom items you've created, etc.
ECHO.
GOTO :EOF

:STORYTEXT
ECHO     %MENUNAME%: The Story Review Menu lets you review what's happened so far in your adventure.
ECHO.
ECHO     It's a good place to look if you need to refresh your memory or if you're at a loss for what to do next.
ECHO.
GOTO :EOF

:SPELLSKILLTEXT
ECHO     %MENUNAME%: The Spells and Skills Menu lets you review what Spells and Skills you've unlocked.
ECHO.
ECHO     If you've unlocked a skill from a weapon then you can see what you need to do to unlock it permanently^^!
ECHO.
GOTO :EOF

:LIMITBREAK
ECHO     %MENUNAME%: The Limit Break Menu lets you choose which stat you want to get a boost from your limit break bar.
ECHO.
ECHO     As you limit break bar increases, the bonus that you receive to your chosen stat will increase.
ECHO     When you use your limit break, the bonus will be lost. It's up to you to decide whether you'd
ECHO     like to use your limit break and lose the bonus, or keep the bonus and not use your limit break.
ECHO.
GOTO :EOF

:ENDTEXT
ECHO     %MENUNAME%: The last two are fairly self explanatory. I'll let you get on with the game now.
ECHO     Don't forget that you can see all this info again in the Tutorial Building.
ECHO.
ECHO     There's also another option that might become available as you progress - Remote Access.
ECHO     This one lets you access certain buildings (e.g. Shop, Temple, etc.) from the Menu.
ECHO     Each building has it's own criteria to unlock. You'll just have to play to find out^^!
ECHO.
ECHO     If you're wondering what to do next, I'd level up a bit, get some new equipment from the shop
ECHO     and then go and see what that guy behind the shop is up to. He might help you get through the
ECHO     cave...
ECHO.
GOTO :EOF

:HINT
ECHO     %MENUNAME%: Don't forget to equip the stuff you won earlier with %FRIENDNAME%^^!
ECHO.
GOTO :EOF

:DISPLAYMENU
CALL "%MENURESOURCEPATH%\menudisplay.bat"
::ECHO %MENUNAME%: This is the Menu^^! You can see this information again at any time by visiting the Tutorial Building
::ECHO.
SET TEXT=1 - Inventory
IF %VAR% EQU 1 (
	CALL :SETTEXT
	ECHO.
) ELSE (
	ECHO. %TEXT%
)
SET TEXT=2 - Equipment
IF %VAR% EQU 2 (
	CALL :SETTEXT
	ECHO.
) ELSE (
	ECHO. %TEXT%
)
SET TEXT=3 - Character details
IF %VAR% EQU 3 (
	CALL :SETTEXT
	ECHO.
) ELSE (
	ECHO. %TEXT%
)
SET TEXT=4 - Caught Enemies
IF %VAR% EQU 4 (
	CALL :SETTEXT
	ECHO.
) ELSE (
	ECHO. %TEXT%
)
SET TEXT=5 - Records
IF %VAR% EQU 5 (
	CALL :SETTEXT
	ECHO.
) ELSE (
	ECHO. %TEXT%
)
SET TEXT=6 - Story Review
IF %VAR% EQU 6 (
	CALL :SETTEXT
	ECHO.
) ELSE (
	ECHO. %TEXT%
)
SET TEXT=7 - Spells, Skills and Limit Break Bonus
IF %VAR% EQU 7 (
	CALL :SETTEXT
	ECHO.
) ELSE (
	ECHO. %TEXT%
)
ECHO. 8 - Save my game
ECHO. 9 - Exit to main menu
ECHO. 0 - Close the menu
ECHO.
GOTO :EOF

:SETTEXT
<nul set /p ".= " > " %TEXT%" 
findstr /v /a:8F /R "^$" " %TEXT%" nul 
del " %TEXT%" > nul 2>&1
GOTO :EOF
	

