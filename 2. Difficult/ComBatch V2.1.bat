@echo off
title ComBatch v2.1 - Main Menu

:setup
set Health=100
set EnemyDmg=10
set PlayerDmg=10
set EnemeyHealth=100
set Text=Pick A move...
set enemymove=s
goto mainmenu

:mainmenu
title ComBatch v2.1 - Main Menu
cls
echo.
echo "  ____                        ____              __           __          "          
echo " /\  _`\                     /\  _`\           /\ \__       /\ \         "        
echo " \ \ \/\_\    ___     ___ ___\ \ \L\ \     __  \ \ ,_\   ___\ \ \___     "  
echo "  \ \ \/_/_  / __`\ /' __` __`\ \  _ <'  /'__`\ \ \ \/  /'___\ \  _ `\   " 
echo "   \ \ \L\ \/\ \L\ \/\ \/\ \/\ \ \ \L\ \/\ \L\.\_\ \ \_/\ \__/\ \ \ \ \  "
echo "    \ \____/\ \____/\ \_\ \_\ \_\ \____/\ \__/.\_\\ \__\ \____\\ \_\ \_\ "
echo "     \/___/  \/___/  \/_/\/_/\/_/\/___/  \/__/\/_/ \/__/\/____/ \/_/\/_/ " 
echo ---------------------------------------------------------------------------
echo                              Version: 2.1
echo.
echo (1) - Start                                                     (2) Credits
echo.
choice /c 12l >nul
if %errorlevel% == 1 goto actns
if %errorlevel% == 2 goto Credits
if %errorlevel% == 3 goto Cheat
goto mainmenu

:Credits
cls
echo.
echo.
echo ComBatch - v2.1
echo.
timeout /t 2 >nul
echo Made By Carsyn Lee Peters
timeout /t 4 >nul
echo Made in Batch / CommandPrompt
timeout /t 5 >nul
echo Big letters in mainmenu were made in
echo "https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20"
timeout /t 10 >nul
echo.
echo Thank you for reading the Credits!
echo.
pause
goto mainmenu

:Cheat
echo.
echo COMBATCH CHEAT SYSTEM
echo =====================
set /p er=
%er%
echo =====================
goto Cheat

:rndchoice1
set /a rand=%random% %%3
if %rand% == 0 set enemymove=a
if %rand% == 1 set enemymove=b
if %rand% == 2 set enemymove=s
goto main1

:rndchoice2
set /a rand=%random% %%3
if %rand% == 0 set enemymove=a
if %rand% == 1 set enemymove=b
if %rand% == 2 set enemymove=s
goto main2

:main1
if %enemymove% == a goto actaa
if %enemymove% == b goto actab
if %enemymove% == s goto actan
goto main1

:main2
if %enemymove% == a goto actba
if %enemymove% == b goto actbb
if %enemymove% == s goto actbn
goto main2

:actns
title ComBatch v2.1 - In Game Session
set text=Pick a move...
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo.
echo    O                   X
echo   OOO  /           \  XXX
echo    O O/             \X X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo (1) Attack          (2) Block
echo.
choice /c 12 >nul
if %errorlevel% == 1 goto rndchoice1
if %errorlevel% == 2 goto rndchoice2
goto actns

:actan
set text=You've attacked!
set /a EnemeyHealth-=10
if %EnemeyHealth% leq 10 goto win
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo.
echo    O                   X
echo   OOO              \  XXX
echo    O O---           \X X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 5 >nul
goto actns

:actbn
set text=You've blocked!
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo.
echo    O  I                X
echo   OOO I            \  XXX
echo    O OI             \X X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 5 >nul
goto actns

:actaa
set text=You've attacked and so has the enemy!
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo.
echo    O         x         X
echo   OOO       xXx       XXX
echo    O O---    x    ---X X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 5 >nul
goto actns

:actab
set text=You've attacked but he has blocked!
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo.
echo    O                I  X
echo   OOO               I XXX
echo    O O---           IX X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 5 >nul
set text=You've became dizzy! The enemy Did a free hit now
set /a Health-=10
if %Health% LSS 10 goto lose
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo    z
echo    O   /               X
echo   OOOO/               XXX
echo    O              ---X X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 6 >nul
if %Health% leq 10 goto lose
goto actns

:actba
set text=You've blocked but he attacked!
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo.
echo    O  I                X
echo   OOO I               XXX
echo    O OI           ---X X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 5 >nul
set text= The enemy became dizzy and you've attacked!
set /a EnemeyHealth-=10
if %EnemeyHealth% LSS 10 goto win
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo                        z
echo    O                   X
echo   OOO  /           \  XXX
echo    O O/             \X X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 5 >nul
goto actns

:actbb
set text=Both of you blocked!
cls
echo.
echo.
echo Health-%Health%
echo Enemy -%EnemeyHealth%
echo %text%
echo =============================
echo.
echo    O  I             I  X
echo   OOO I             I XXX
echo    O OI             IX X
echo __O O_________________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 5 >nul
goto actns

:win
set text=Enemy: Ouch!
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo.
echo    O                   X
echo   OOO                =XXX
echo    O O---              X
echo __O O_________---_X___X_X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 4 >nul
set text=
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo.
echo    O                   X
echo \ OOO                =XXX
echo  \OO                   X
echo __O O_________---_X___X_X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 3 >nul
set text=Enemy: Ugh!!!
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo.
echo    O                   _   x
echo   OOO                =XXX
echo    OOO---              X
echo __O O_________---_X___X_X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 2 >nul
set text=Thump
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo.
echo    O                       
echo   OOO /                   
echo    OO/              
echo __O O_________---_X__XXXXX___
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 3 >nul
set text=You've won the battle!
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo            _____
echo            O O O    
echo             OOO    
echo              O   
echo ____________O_O--_X__________
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 3 >nul
pause
goto setup

:lose
set text=%username%: Ouch!
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo.
echo    O                   X
echo   OOO=                XXX
echo    O              ---X X
echo __O O____O_---________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 3 >nul
set text=%username%: Ouch!
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo.
echo    O                   X
echo   OOO=                XXX /
echo    O                   XX/
echo __O O____O_---________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 3 >nul
set text=%username%: Ugh!!!
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo.
echo O  _                   X
echo   OOO=                XXX
echo    O              ---XXX
echo __O O____O_---________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 3 >nul
set text=%username%: Ouch!
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo.
echo                        X
echo                    \  XXX
echo                     \X X
echo _OOOOO_O_---__________X X____
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 3 >nul
set text=You've Loss the battle!
cls
echo.
echo.
echo.
echo %text%
echo =============================
echo            _____
echo            X X X    
echo             XXX    
echo              X   
echo ________O_--X_X______________
echo =============================
echo =============================
echo -----------------------------
echo.
ping localhost -n 3 >nul
pause
goto setup