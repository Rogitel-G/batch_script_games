:ENTERTUTORIAL
CALL "%TUTORIALRESOURCEPATH%\tutorialdisplay.bat"
ECHO.
ECHO %TUTORIALNAME%: Which place would you like to learn about?
ECHO.
ECHO. 1 - The Training Centre
ECHO. 2 - The Shop
ECHO. 3 - The Temple
ECHO. 4 - The Cave
ECHO. 5 - Special Buildings
ECHO. 0 - I've learned enough
ECHO.
:CATEGORYCHOICE
SET /P PLACESCATEGORY=
ECHO.
IF "%PLACESCATEGORY%" EQU "1" (
	CALL :TRAINING
) ELSE IF "%PLACESCATEGORY%" EQU "2" (
	CALL :SHOP
) ELSE IF "%PLACESCATEGORY%" EQU "3" (
	CALL :TEMPLE
) ELSE IF "%PLACESCATEGORY%" EQU "4" (
	CALL :CAVE
) ELSE IF "%PLACESCATEGORY%" EQU "5" (
	CALL :SPECIAL
) ELSE IF "%PLACESCATEGORY%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CATEGORYCHOICE
)
GOTO :ENTERTUTORIAL

:TRAINING
CLS
ECHO.
ECHO %TUTORIALNAME%: When you catch an enemy in battle it is availale to fight in the training centre. 
ECHO                You can fight it at many times as you like, providing that it doesn't escape.
ECHO.
CALL :WAITFORTHREE
ECHO                When you're fighting an enemy in the training centre you won't earn any Gil for
ECHO                winning the battle.
ECHO.
CALL :WAITFORTHREE
ECHO                If you lose the battle or run from a battle in the training centre then the enemy
ECHO                will escape.
ECHO.
CALL :WAITFORTHREE
ECHO                There are certain individuals who don't like people to keep animals in a cave and
ECHO                fight them repeatedly...
ECHO.
pause
GOTO :EOF


:SHOP
CLS
ECHO.
ECHO %TUTORIALNAME%: In the shop you can buy Items, Weapons, Armour and Accessories.
ECHO                You can also sell them but you won't get as much money as they'd cost to buy.
ECHO.
CALL :WAITFORTHREE
ECHO                When you enter different towns there will be other shops that have different stock.
ECHO                The shopkeepers are also involved in some of the story events.
ECHO.
pause
GOTO :EOF

:TEMPLE
CLS
ECHO.
ECHO %TUTORIALNAME%: In the temple you can restore your HP, MP and cure status ailments.
ECHO.
CALL :WAITFORTHREE
ECHO                Once you reach a level 10 you can also use it to create your own spells^^!
ECHO.
CALL :WAITFORTHREE
ECHO                You also can make donations to the temple to reduce the cost of some of the services,
ECHO                or even gain the ability to access the temple remotely if you donate enough^^!
ECHO.
CALL :WAITFORTHREE
ECHO                Later in the game there may also be some quests relating to the temple.
ECHO.
pause
GOTO :EOF

:CAVE
CLS
ECHO.
ECHO %TUTORIALNAME%: The cave door is shut at the start of the game and must be opened to access the cave.
ECHO                Inside the cave you'll find new enemies, some chests and some optional fights. You
ECHO                might even find a new ally^^! It's all very exciting^^!
ECHO.
CALL :WAITFORTHREE
ECHO                You'll need to go through the cave to access the second town too
ECHO.
pause
GOTO :EOF

:SPECIAL
CLS
ECHO.
ECHO %TUTORIALNAME%: Each town will have some of the same buildings, but each town will also have a special
ECHO                building that is one of a kind^^!
CALL :WAITFORTHREE
ECHO                You're actually standing in the special building for this town^^! Do you feel special?
ECHO.
ECHO. 1 - I do
ECHO. 2 - No
ECHO.
SET /P SPECIALCHOICE=
ECHO.
IF "%SPECIALCHOICE%" EQU "1" (
	ECHO %TUTORIALNAME%: Wehey^^! I like you kid, I'll let you in on a secret...
	ECHO.
	CALL :WAITFORTHREE
	ECHO                The special building in the second town is a Casino^^!
	ECHO.
) ELSE IF "%SPECIALCHOICE%" EQU "2" (
	ECHO %TUTORIALNAME%: You're a knob.
	ECHO.
)
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
