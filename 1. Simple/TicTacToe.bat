@echo off
setlocal enabledelayedexpansion
color A

set /a p1Wins=0
set /a p2Wins=0

:replay
::Variables to hold spaces
set one=-
set two=-
set three=-
set four=-
set five=-
set six=-
set seven=-
set eight=-
set nine=-
set /a turn=0
set /a numberOfTurns=0

::Draw board to screen
:loop
cls

if !p1Wins! LSS 2 (
	if !p1Wins! GTR 0 (
		echo X player has !p1Wins! win
	) else (
		echo X player has !p1Wins! wins
	)
) else (
	echo X player has !p1Wins! wins
)

if !p2Wins! LSS 2 (
	if !p2Wins! GTR 0 (
		echo O player has !p2Wins! win
	) else (
		echo O player has !p2Wins! wins
	)
) else (
	echo O player has !p2Wins! wins
)

echo.

if !turn!==0 (
	echo It is the X player's turn
) else (
	echo It is the O player's turn
)
echo.

echo 	!one! ^| !two! ^| !three!
echo 	---------
echo 	!four! ^| !five! ^| !six!
echo 	---------
echo 	!seven! ^| !eight! ^| !nine!
echo.

::--------------------------
::determine win
::--------------------------

::rows
if !one! NEQ - (
	if !one!==!two! (
		if !two!==!three! (
			goto endgame
		)
	)
)

if !four! NEQ - (
	if !four!==!five! (
		if !five!==!six! (
			goto endgame
		)
	)
)

if !seven! NEQ - (
	if !seven!==!eight! (
		if !eight!==!nine! (
			goto endgame
		)
	)
)

::columns
if !one! NEQ - (
	if !one!==!four! (
		if !four!==!seven! (
			goto endgame
		)
	)
)

if !two! NEQ - (
	if !two!==!five! (
		if !five!==!eight! (
			goto endgame
		)
	)
)

if !three! NEQ - (
	if !three!==!six! (
		if !six!==!nine! (
			goto endgame
		)
	)
)

::diagonals
if !one! NEQ - (
	if !one!==!five! (
		if !five!==!nine! (
			goto endgame
		)
	)
)

if !three! NEQ - (
	if !three!==!five! (
		if !five!==!seven! (
			goto endgame
		)
	)
)

::determine tie game
if !numberOfTurns!==9 (
	echo Cats Game!
	goto prompt
	exit 0
)

::-------------------------------------
::take turn
::-------------------------------------
:turn
::set the turn symbol to either x or o
if !turn!==0 (
	set turnSymb=X
) else (
	set turnSymb=O
)

set /p userInput= :

if "!userInput!" EQU "help" (
	goto helpScreen
)

if "!userInput!" EQU "exit" (
	color 7
	echo goodbye
	pause
	cls
	exit 0
)

if "!userInput!" EQU "color" (
	goto changeColor
)

set /a input=!userInput!
::change variable to reflect input from player
if !input! EQU 7 (
	if !one! EQU - (
		set one=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else if !input! EQU 8 (
	if !two! EQU - (
		set two=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else if !input! EQU 9 (
	if !three! EQU - (
		set three=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else if !input! EQU 4 (
	if !four! EQU - (
		set four=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else if !input! EQU 5 (
	if !five! EQU - (
		set five=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else if !input! EQU 6 (
	if !six! EQU - (
		set six=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else if !input! EQU 1 (
	if !seven! EQU - (
		set seven=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else if !input! EQU 2 (
	if !eight! EQU - (
		set eight=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else if !input! EQU 3 (
	if !nine! EQU - (
		set nine=!turnSymb!
	) else (
		echo space already taken!
		goto turn
	)
) else (
	echo Invalid option!
	echo type "help" if you need help
	echo type "exit" if you wish to exit
	echo type "color" to change color of the game
	pause
	goto loop
)

::change whose turn it is
if !turn!==0 (
	set /a turn=1
) else (
	set /a turn=0
)

set /a numberOfTurns=!numberOfTurns!+1
goto loop

:endGame
if !turn!==0 (
	echo The O player has won the game!
	set /a p2Wins = !p2Wins! + 1
) else (
	echo The X player has won the game!
	set /a p1Wins = !p1Wins! + 1
)

:prompt
set userPrompt=y
echo would you like to play again? [y/n]
set /p userPrompt=:

if "!userPrompt!" EQU "y" (
	goto replay
) else if "!userPrompt!" EQU "Y" (
	goto replay
) else if "!userPrompt!" EQU "n" (
	echo goodbye
) else if "!userPrompt!" EQU "N" (
	echo goodbye
) else (
	echo invalid option!
	goto prompt
)

pause
endlocal
exit 0

:helpScreen
cls
echo The standard rules of tic tac toe apply
echo.
echo To choose a space you need to hit the corresponding
echo number on the number pad. For example 7 would represent
echo the space in the top left of the board
echo.
echo For reference this is what each number corresponds to...
echo.
echo		7 ^| 8 ^| 9
echo 	---------
echo		4 ^| 5 ^| 6
echo 	---------
echo		1 ^| 2 ^| 3
echo.
echo When prompted to play a new game, you can just hit enter
echo instead of entering y.
echo.
echo Type "color" to change the color of the game.
echo.
echo you may also type "exit" to quit the game at anytime. 
pause
goto loop

:changeColor
cls
echo What color would you like to change to?
echo 1) Green
echo 2) Light Blue
echo 3) Red
echo 4) Purple
echo 5) Yellow
echo 6) White
echo 7) default
set /p input=:

if "!input!" EQU "1" (
	color A
) else if "!input!" EQU "2" (
	color B
) else if "!input!" EQU "3" (
	color C
) else if "!input!" EQU "4" (
	color D
) else if "!input!" EQU "5" (
	color E
) else if "!input!" EQU "6" (
	color F
) else if "!input!" EQU "7" (
	color 7
) else (
	echo Invalid option!
	pause
	cls
	goto changeColor
)
cls
goto loop

