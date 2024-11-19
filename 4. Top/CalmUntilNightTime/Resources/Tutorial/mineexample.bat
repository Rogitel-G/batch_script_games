::@ECHO OFF
::SETLOCAL ENABLEDELAYEDEXPANSION
SET /a MINETUTORIALSEEN = 1
:: Don't actually do this
SET /a TUTORIALGIL = 900 + %PICKAXE1COST% + %MINEITEM1SPECIALUNLOCKCOST% + 1000 + !STRTRAININGFACILITY1COST!

:::::::::::::::FIRST GET GIVEN MONEY
:: Don't actually give the player any money
::SET /a PLAYERGIL = %PLAYERGIL% + %MONEYFORTUTORIAL%

:::::::::::::::THEN BUY SPACE FOR DWARVES
::Room for Dwarves
SET /a DWARFSLOTS = 1

:::::::::::::::THEN HIRE A DWARF
::Hiring Dwarf
SET DWARF1NAME=Babunu
SET /a DWARF1NAMELENGTH = 6
SET /a DWARF1LVL = 16
SET /a DWARF1EXP = 0
SET /a DWARF1BASESTR = 12
SET /a DWARF1BASESKL = 12
SET /a DWARF1BASEPER = 12
SET /a DWARF1SAT = 12
SET /a DWARF1SALARY = 100
SET /a DWARF1PICKAXEID = 0
SET /a DWARF1SACKID = 0
SET /a DWARF1PICKAXESTR = 0
SET /a DWARF1PICKAXESKL = 0
SET /a DWARF1PICKAXEPER = 0
SET /a DWARF1SACKSTR = 0
SET /a DWARF1SACKSKL = 0
SET /a DWARF1SACKPER = 0
SET DWARF1SPECIAL=STANDARD
SET DWARF1SPECIALDISPLAY=Standard Items
SET DWARF1TYPE=ITEM
SET DWARF1TYPE2=STANDARD
SET DWARF1TYPEDISPLAY=Standard Items
SET /a DWARF1MINID = %STANDARDSTART%
SET /a DWARF1MAXID = %STANDARDEND%
SET /a DWARF1TRAINING = 0
SET DWARF1TRAININGSTAT=NONE
SET /a RESETDWARVES = 1
SET /a DWARFCOUNT = 1
CALL "%MINERESOURCEPATH%\resetminetimes.bat"
SET PREFIX=DWARF1TRAINING
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
SET /a DWARFTOT = 1

:::::::::::::::THEN UNLOCK THE ITEMS MINE
::Types of stuff you can mine for
SET /a MINEITEMTYPE1UNLOCKED = 1

:::::::::::::::THEN DISCUSS STRATEGIES (I.E. CHANGE WHAT DWARVES MINE FOR)

:::::::::::::::THEN CHECK & EXPLAIN STATS
::Strength determines the number of items that a dwarf can bring back per haul. Certain items have strength requirements
::Skill determines what can be mined. Better stuff needs higher skill
::Persistance determines the number of hauls that a dwarf can have without needing to have his items collected

:::::::::::::::THEN ADJUST SALARY
SET /a DWARF1SALARY = 300

:::::::::::::::THEN BUY EQUIPMENT
SET /a PLAYERPICKAXE1NUM = %PLAYERPICKAXE1NUM% + 1

:::::::::::::::THEN EQUIP EQUIPMENT
SET /a DWARF1PICKAXESTR = %PICKAXE1STR%
SET /a DWARF1PICKAXESKL = %PICKAXE1SKL%
SET /a DWARF1PICKAXEPER = %PICKAXE1PER%

:::::::::::::::THEN PASS TIME
::Don't actually pass time, just have it as part of the tutorial
::SET /a DWARF1HOUR = %DWARF1HOUR% - 1

:::::::::::::::THEN COLLECT ITEMS & EXPLAIN
::Explain about how "hauls" occur every 20 minutes, but each dwarf has a "maximum number of hauls" which is the square root of their persistance.
::Salary is paid per "haul" so you can work out the maximum cost before you collect items
::Don't actually collect, just have it as part of the tutorial
SET /a PLAYERITEM%XPOTID%NUM = 0
SET /a PLAYERITEM%ETHID%NUM = 0
SET /a OLDXPOT = !PLAYERITEM%XPOTID%NUM!
SET /a OLDETH = !PLAYERITEM%ETHID%NUM!
SET /a PLAYERITEM%XPOTID%NUM = !PLAYERITEM%XPOTID%NUM! + 3
SET /a PLAYERITEM%ETHID%NUM = !PLAYERITEM%ETHID%NUM! + 2

:::::::::::::::THEN UPGRADE TRAINING
SET /a STRTRAININGFACILITYUNLOCKED = 1

:::::::::::::::THEN START TRAINING

:::::::::::::::THEN PASS TIME
::90 hours

:::::::::::::::THEN REMOVE FROM TRAINING
SET /a DWARF1BASESTR = %DWARF1BASESTR% + 3

:::::::::::::::THE HIGHER A DWARF'S LEVEL, THE HIGHER HIS EXPECTED SALARY. THIS WILL ALLOW YOU TO INCREASE THE OUTPUT OF A DWARF WITHOUT INCREASING HIS EXPECTATIONS OF SALARY

:START
CLS
ECHO.
ECHO Dwarf Sultan: Wow, you beat !ENEMY%MINEBOSS2ID%NAME!^^! 
ECHO Now we can finally reopen our world famous mine complex.
ECHO.
CALL :WAITFORTWO
ECHO Hey, would you like to hear about what we do here?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No (Skip Tutorial)
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "1" (
	ECHO Dwarf Sultan: Alright, here goes^^!
	CALL :WAITFORTWO
) ELSE (
	ECHO Dwarf Sultan: ...I'll take that as a yes
	CALL :WAITFORTWO
)
CLS
ECHO.
ECHO Dwarf Sultan: Ok, I'll give you a guided tour. Here's some tutorial money to get you started
ECHO.
CALL :WAITFORTWO
ECHO The dwarf sultan gives you %TUTORIALGIL% tutorial gil
ECHO.
CALL :WAITFORTWO
ECHO Dwarf Sultan: And don't even think about just running off with that. It's magic "Tutorial Money"
ECHO that's only good for this tutorial.
ECHO.
CALL :WAITFORFOUR
:TUTORIAL1
CLS
ECHO.
ECHO Dwarf Sultan: Right let's get started. Before we can do anything, we'll need accommodation
ECHO for the little dwarf workers, so let's start by investing some of that magic tutorial money
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 4
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "4" (
	GOTO :TUTORIAL1
)
:TUTORIAL2
CLS
ECHO.
ECHO Dwarf Sultan: Ok, let's buy some sleeping quarters so you can hire more dwarves
ECHO.
ECHO You have %TUTORIALGIL% Gil
ECHO.
ECHO. 1 - Sleeping quarters for more dwarves   (1000 for 1 dwarf)
ECHO. 2 - Better dwarven training programs
ECHO. 3 - Expand the mine
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL2
)
SET /a TUTORIALGIL = %TUTORIALGIL% - 1000
:TUTORIAL3
CLS
ECHO.
ECHO Dwarf Sultan: Now that you've got somewhere for your dwarves to live, let's
ECHO hire some dwarves.
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 2
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "2" (
	GOTO :TUTORIAL3
)
:TUTORIAL4
CLS
ECHO.
ECHO Dwarf Sultan: Choose to hire dwarves
ECHO.
ECHO. 1 - Hire
ECHO. 2 - Fire
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL4
)
:TUTORIAL5
CLS
ECHO.
ECHO Dwarf Sultan: Ok, here's a list of dwarves that you can hire.
ECHO Press D or 6 to hire Babunu
ECHO.
ECHO. ¯ Babunu                           Level 15
ECHO.   Bod                              Level 1
ECHO.   Mathew                           Level 1
ECHO.   Hrcwiehis                        Level 1
ECHO.   Pezpcsh                          Level 1
ECHO.   Vadayrg                          Level 1
ECHO.   Ueabinskl                        Level 1
ECHO.   Xzefkcvlo                        Level 1
ECHO.   Nwmqaw                           Level 1
ECHO.
ECHO  Strength     11
ECHO  Skill        11
ECHO  Persistence  11
ECHO  Satisfaction 12
ECHO  Speciality   Standard Items
ECHO.
CHOICE /C:D60 /N
IF %ERRORLEVEL% EQU 1 (
	ECHO.
) ELSE IF %ERRORLEVEL% EQU 2 (
	ECHO.
) ELSE IF %ERRORLEVEL% EQU 3 (
	GOTO :EOF
)
:TUTORIAL6
CLS
ECHO.
ECHO Babunu has the following stats:
ECHO Level        5
ECHO Strength     11
ECHO Skill        11
ECHO Persistence  11
ECHO Satisfaction 12
ECHO Speciality   Standard Items
ECHO.
ECHO How much would you like to pay Babunu?
ECHO.
ECHO Dwarf Sultan: This will get deducted for each "haul" that the dwarf has
ECHO when he mines. More on this later but the general rule is 1 haul every 20 mins,
ECHO with a maximum number of hauls that's based on the dwarf's stats.
ECHO.
ECHO Dwarf Sultan: Let's set Babunu's salary to 100
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "100" (
	GOTO :TUTORIAL6
)
:TUTORIAL7
CLS
ECHO.
ECHO Dwarf Sultan: Ok, we've got a dwarf now, but he can't mine yet.
ECHO We need to expand the mine so we can mine for Standard Items first.
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 4
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "4" (
	GOTO :TUTORIAL7
)
:TUTORIAL8
CLS
ECHO.
ECHO Dwarf Sultan: Let's expand the mine
ECHO.
ECHO You have %TUTORIALGIL% Gil
ECHO.
ECHO. 1 - Sleeping quarters for more dwarves   (2000 for 2 dwarfs)
ECHO. 2 - Better dwarven training programs
ECHO. 3 - Expand the mine
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 3
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "3" (
	GOTO :TUTORIAL8
)
:TUTORIAL9
CLS
ECHO.
ECHO Dwarf Sultan: Ok, let's just unlock Standard Items for now.
ECHO.
ECHO You have %TUTORIALGIL% Gil
ECHO.
ECHO  1 - Standard Items         %MINEITEM1SPECIALUNLOCKCOST% Gil
ECHO  2 - Scrolls                %MINEITEM2SPECIALUNLOCKCOST% Gil
ECHO  3 - Stat Stones            %MINEITEM3SPECIALUNLOCKCOST% Gil
ECHO  4 - Skill Stones           %MINEITEM4SPECIALUNLOCKCOST% Gil
ECHO  5 - Resistance Powder      %MINEITEM5SPECIALUNLOCKCOST% Gil
ECHO  6 - Special Stones         %MINEITEM6SPECIALUNLOCKCOST% Gil
ECHO  7 - Weapons                %MINEITEM7SPECIALUNLOCKCOST% Gil
ECHO  8 - Armour                 %MINEITEM8SPECIALUNLOCKCOST% Gil
ECHO  9 - Accessories            %MINEITEM9SPECIALUNLOCKCOST% Gil
ECHO  0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL9
)
SET /a TUTORIALGIL = %TUTORIALGIL% - %MINEITEM1SPECIALUNLOCKCOST%
:TUTORIAL10
CLS
ECHO.
ECHO Dwarf Sultan: The more you expand the mine, the more stuff your dwarves can dig for.
ECHO At the moment we've only expanded enough to mine for Standard Items.
ECHO Let's manage our employees to make sure that's what Babunu is mining for
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 3
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "3" (
	GOTO :TUTORIAL10
)
:TUTORIAL11
CLS
ECHO.
ECHO Dwarf Sultan: From here you can put your dwarves in training, adjust what they mine for,
ECHO change their equipment and adjust their salaries.
ECHO.
ECHO Let's check Babunu's strategy now.
ECHO.
ECHO. 1 - Manage dwarf training
ECHO. 2 - Adjust dwarf strategies
ECHO. 3 - Adjust dwarf equipment
ECHO. 4 - Adjust dwarf salaries
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 2
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "2" (
	GOTO :TUTORIAL11
)
:TUTORIAL12
CLS
ECHO.
ECHO Dwarf Sultan: Choose Babunu.
ECHO.
ECHO. 1 - Babunu
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL12
)

:TUTORIAL13
CLS
ECHO.
ECHO Dwarf Sultan: Babunu currently mines for Standard Items
ECHO               Their speciality is Standard Items
ECHO               what would you like them to mine for?
ECHO.
ECHO Dwarf Sultan: When you expand the mine, the locked options will become
ECHO available. For now just choose Standard Items.
ECHO.
ECHO. 1 - Standard Items
ECHO. 2 - Locked^^!
ECHO. 3 - Locked^^!
ECHO. 4 - Locked^^!
ECHO. 5 - Locked^^!
ECHO. 6 - Locked^^!
ECHO. 7 - Locked^^!
ECHO. 8 - Locked^^!
ECHO. 9 - Locked^^!
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL13
)
:TUTORIAL14
CLS
ECHO.
ECHO Dwarf Sultan: Time to explain stats. Choose option 6.
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 6
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "6" (
	GOTO :TUTORIAL14
)
:TUTORIAL15
CLS
ECHO.
ECHO Dwarf Sultan: Here's a list of your dwarves and their stats.
ECHO.
ECHO  Name           Level    Strength   Skill    Persistence  Satisfaction  Salary  Happiness
ECHO  Babunu         15       11         11       11           12            100     Unhappy
ECHO.
ECHO. Level        - Dwarves level up by mining. In general, high level means higher expected salary
ECHO. Strength     - Higher strength allows dwarves to carry more items per haul
ECHO. Skill        - Higher skill means that dwarves will find better stuff
ECHO. Persistence  - Higher persistence increases the maximum number of hauls your dwarf can have
ECHO. Satisfaction - Higher job satisfaction lowers your dwarf's expected salary
ECHO. Salary       - The salary that you elected to pay your dwarf (per haul)
ECHO. Happiness    - How happy your dwarf is with their salary. Happy dwarves are better in every way
ECHO.
pause
:TUTORIAL16
CLS
ECHO.
ECHO Dwarf Sultan: Babunu was unhappy when we checked his stats. Let's increase his salary.
ECHO Do this through the Manage Dwarves menu
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 3
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "3" (
	GOTO :TUTORIAL16
)
:TUTORIAL17
CLS
ECHO.
ECHO Dwarf Sultan: Adjust dwarf salaries
ECHO.
ECHO. 1 - Manage dwarf training
ECHO. 2 - Adjust dwarf strategies
ECHO. 3 - Adjust dwarf equipment
ECHO. 4 - Adjust dwarf salaries
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 4
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "4" (
	GOTO :TUTORIAL17
)
:TUTORIAL18
CLS
ECHO.
ECHO Dwarf Sultan: Choose Babunu.
ECHO.
ECHO. 1 - Babunu
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL18
)
:TUTORIAL19
CLS
ECHO.
ECHO Babunu's current salary is 100
ECHO They are unhappy with this salary.
ECHO.
ECHO How much would you like to pay them?
ECHO.
ECHO. 0 - Exit Tutorial
ECHO.
ECHO Dwarf Sultan: Let's put his salary up to 300
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "300" (
	GOTO :TUTORIAL19
)
:TUTORIAL20
CLS
ECHO.
ECHO If you pay Babunu 300 Gil they will be very happy
ECHO.
ECHO Would you like to go ahead with the change?
ECHO.
ECHO Dwarf Sultan: Yes you would^^!
ECHO.
ECHO. 1 - Yes
ECHO. 0 - Exit Tutorial
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL20
)
:TUTORIAL21
CLS
ECHO.
ECHO Dwarf Sultan: Now that he's happier, let's go to the shop to buy him some equipment.
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 5
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "5" (
	GOTO :TUTORIAL21
)
:TUTORIAL22
CLS
ECHO.
ECHO Dwarf Sultan: Let's buy a pickaxe
ECHO.
ECHO. 1 - Buy Pickaxes
ECHO. 2 - Buy Sacks
ECHO. 3 - Sell Pickaxes
ECHO. 4 - Sell Sacks
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL22
)
:TUTORIAL23
CLS
ECHO.
ECHO Dwarf Sultan: Let's just buy a %PICKAXE1NAME%. Press 6 or D to buy it.
ECHO.
ECHO You have %TUTORIALGIL% Gil
ECHO.
SET /a SPACENUM = 34 - %PICKAXE1NAMELENGTH%
ECHO. ¯ %PICKAXE1NAME%!SPACES%SPACENUM%!%PICKAXE1COST%
SET /a COUNT = 1
:TUTORIAL23LOOP
SET /a COUNT = %COUNT% + 1
SET /a SPACENUM = 34 - !PICKAXE%COUNT%NAMELENGTH!
ECHO.   !PICKAXE%COUNT%NAME!!SPACES%SPACENUM%!!PICKAXE%COUNT%COST!
IF %COUNT% LSS %PICKAXETOT% (
	GOTO :TUTORIAL23LOOP
)
ECHO.
ECHO  Strength     %PICKAXE1STR%
ECHO  Skill        %PICKAXE1SKL%
ECHO  Persistence  %PICKAXE1PER%
ECHO.
CHOICE /C:D60 /N
IF %ERRORLEVEL% EQU 1 (
	ECHO.
) ELSE IF %ERRORLEVEL% EQU 2 (
	ECHO.
) ELSE IF %ERRORLEVEL% EQU 3 (
	GOTO :EOF
)
SET /a TUTORIALGIL = %TUTORIALGIL% - %PICKAXE1COST%
:TUTORIAL24
CLS
ECHO.
ECHO Dwarf Sultan: Let's equip the new pickaxe. Choose Manage Dwarves
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 3
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "3" (
	GOTO :TUTORIAL24
)
:TUTORIAL25
CLS
ECHO.
ECHO Dwarf Sultan: Adjust dwarf equipment
ECHO.
ECHO. 1 - Manage dwarf training
ECHO. 2 - Adjust dwarf strategies
ECHO. 3 - Adjust dwarf equipment
ECHO. 4 - Adjust dwarf salaries
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 3
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "3" (
	GOTO :TUTORIAL25
)
:TUTORIAL26
CLS
ECHO.
ECHO Dwarf Sultan: Choose Babunu.
ECHO.
ECHO. 1 - Babunu
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL26
)
:TUTORIAL27
CLS
ECHO.
ECHO Dwarf Sultan: We just bought a pickaxe, so choose pickaxes.
ECHO.
ECHO. 1 - Pickaxes
ECHO. 2 - Sacks
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL27
)
:TUTORIAL999
CLS
ECHO.
ECHO Dwarf Sultan: Babunu doesn't have a Pickaxe equipped
ECHO.
ECHO Choose to equip a %PICKAXE1NAME%
ECHO.
ECHO. 1 - %PICKAXE1NAME%            1 Available
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL999
)
CLS
ECHO.
ECHO Dwarf Sultan: Babunu has equipped a %PICKAXE1NAME%^^!
ECHO.
CALL :WAITFORTHREE
:TUTORIAL28
CLS
ECHO.
ECHO Dwarf Sultan: Right, we're ready to mine^^!
ECHO.
ECHO Dwarf Sultan: With my magic dwarven tutorial powers, we'll say that 1 hour has passed.
ECHO Choose to collect the items.
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL28
)
:TUTORIAL29
CLS
ECHO.
ECHO Dwarf Sultan: Who would you like to collect items from?
ECHO.
ECHO. 1 - Babunu      (Level 15)
ECHO. A - All
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL29
)
SET /a TUTORIALGIL = %TUTORIALGIL% - 900
:TUTORIAL30
CLS
ECHO.
ECHO You have paid Babunu 900 Gil for 3 hauls
ECHO.
ECHO You have %TUTORIALGIL% Gil left
ECHO.
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ Acquired                                    Total    ³
pause
IF !PLAYERITEM%ETHID%NUM! LSS 10 (
	ECHO. ³ 2 Ethers                                  !PLAYERITEM%ETHID%NUM!        ³
) ELSE (
	ECHO. ³ 2 Ethers                                  !PLAYERITEM%ETHID%NUM!       ³
)
pause
IF !PLAYERITEM%XPOTID%NUM! LSS 10 (
	ECHO. ³ 3 X-Potions                               !PLAYERITEM%XPOTID%NUM!        ³
) ELSE (
	ECHO. ³ 3 X-Potions                               !PLAYERITEM%XPOTID%NUM!       ³
)
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
ECHO.
pause
CLS
ECHO.
ECHO Dwarf Sultan: Babunu has levelled up^^!
ECHO.
ECHO               Babunu is now level 16
ECHO.
CALL :WAITFORFOUR
CLS
ECHO.
ECHO Dwarf Sultan: You have 3 stats to distribute. Choose the stat you'd like to increase.
ECHO.
ECHO. 1 - Strength       (Currently 11)
ECHO. 2 - Skill          (Currently 11)
ECHO. 3 - Persistence    (Currently 11)
ECHO. 4 - Satisfaction   (Currently 12)
ECHO.
ECHO Dwarf Sultan: Normally you'd be able to choose, but for the tutorial, I'm going to put
ECHO one each in Strength, Skill and Persistence.
ECHO.
pause
CLS
ECHO.
ECHO Dwarf Sultan: Job done! Here are Babunu's new stats
ECHO.
ECHO. Strength       12
ECHO. Skill          12
ECHO. Persistence    12
ECHO. Satisfaction   12
ECHO.
pause
:TUTORIAL31
CLS
ECHO.
ECHO Dwarf Sultan: Well that was good wasn't it^^! Cheaper than the shop too.
ECHO.
ECHO Dwarf Sultan: Babunu levelled up there, which means his expected salary will be slightly higher.
ECHO In general, high stats = good, high level = bad.
ECHO Let's look into ways of increasing stats without having to level up. Choose to invest gil
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 4
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "4" (
	GOTO :TUTORIAL31
)
:TUTORIAL32
CLS
ECHO.
ECHO Dwarf Sultan: Let's get some better training programs
ECHO.
ECHO You have %TUTORIALGIL% Gil
ECHO.
ECHO. 1 - Sleeping quarters for more dwarves   (2000 for 2 dwarfs)
ECHO. 2 - Better dwarven training programs
ECHO. 3 - Expand the mine
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 2
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "2" (
	GOTO :TUTORIAL32
)
:TUTORIAL33
CLS
ECHO.
ECHO Dwarf Sultan: Let's buy the %STRTRAININGFACILITY1NAME%
ECHO.
ECHO You have %TUTORIALGIL% Gil
ECHO.
SET /a SPACENUM = 30 - %STRTRAININGFACILITY1NAMELENGTH%
ECHO. 1 - %STRTRAININGFACILITY1NAME%!SPACES%SPACENUM%!- !STRTRAININGFACILITY1COST! Gil
SET /a SPACENUM = 30 - %SKLTRAININGFACILITY1NAMELENGTH%
ECHO. 2 - %SKLTRAININGFACILITY1NAME%!SPACES%SPACENUM%!- !SKLTRAININGFACILITY1COST! Gil
SET /a SPACENUM = 30 - %PERTRAININGFACILITY1NAMELENGTH%
ECHO. 3 - %PERTRAININGFACILITY1NAME%!SPACES%SPACENUM%!- !PERTRAININGFACILITY1COST! Gil
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL33
)
SET /a TUTORIALGIL = %TUTORIALGIL% - %STRTRAININGFACILITY1COST%
:TUTORIAL34
CLS
ECHO.
ECHO Dwarf Sultan: Now that we've bought a training facility, let's start training Babunu.
ECHO.
ECHO Dwarf Sultan: The advantage of training is that you can increase stats without increasing
ECHO level. This means that they'll be as efficient at mining, but will have a lower expected
ECHO salary (and therefore higher happiness and productivity).
ECHO.
ECHO. 1 - Collect items
ECHO. 2 - Manage employment
ECHO. 3 - Manage Dwarves
ECHO. 4 - Invest Gil in the mine
ECHO. 5 - Visit the dwarven shop
ECHO. 6 - Check Dwarf stats
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 3
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "3" (
	GOTO :TUTORIAL34
)
:TUTORIAL35
CLS
ECHO.
ECHO Dwarf Sultan: Manage dwarf training
ECHO.
ECHO. 1 - Manage dwarf training
ECHO. 2 - Adjust dwarf strategies
ECHO. 3 - Adjust dwarf equipment
ECHO. 4 - Adjust dwarf salaries
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL35
)
:TUTORIAL36
CLS
ECHO.
ECHO Dwarf Sultan: Choose Babunu.
ECHO.
ECHO. 1 - Babunu
ECHO. 0 - Exit Tutorial
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL36
)
:TUTORIAL37
CLS
ECHO.
ECHO Dwarf Sultan: Let's start Babunu training with the %STRTRAININGFACILITY1NAME%. Keep in mind that
ECHO you can remove Babunu from training at any time, but his stats might not go up if he
ECHO hasn't been in there for very long.
ECHO.
ECHO. 1 - %STRTRAININGFACILITY1NAME%                      - Min 30 hours
ECHO. 0 - Back
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL37
)
CLS
ECHO.
ECHO Dwarf Sultan: I'll just use my magic powers to pass 90 hours...
ECHO.
CALL :WAITFORTWO
ECHO ...
ECHO.
CALL :WAITFORTWO
ECHO ...there we go^^!
ECHO.
CALL :WAITFORTWO
:TUTORIAL38
CLS
ECHO.
ECHO Dwarf Sultan: Wow, the future... I wonder how the human/dwarf races have progressed
ECHO in the time that we missed...
ECHO.
CALL :WAITFORFOUR
ECHO Dwarf Sultan: Sorry, let's remove Babunu from training
ECHO.
ECHO. 1 - Babunu - Training STR for 90 hours (+3 STR)
ECHO. 0 - Back
ECHO.
ECHO. Select 1
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%CHOICE%" NEQ "1" (
	GOTO :TUTORIAL38
)
CLS
ECHO.
ECHO Dwarf Sultan: Done^^! That's all there is to our mine. You can get some items here that
ECHO aren't accessible any other way so don't neglect us^^!
ECHO.
pause
GOTO :EOF





:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF
:WAITFORTHREE
TIMEOUT /T 3 > nul
GOTO :EOF
:WAITFORFOUR
TIMEOUT /T 4 > nul
GOTO :EOF
