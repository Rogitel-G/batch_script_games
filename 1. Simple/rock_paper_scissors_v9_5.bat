@echo off
set local enabledelayedexpansion
set /a winstr=0
cls

:top
set /a num1=%random% %% 3 + 1
echo Current win streak: %winstr%
echo 1: rock
echo 2: paper
echo 3: scissors
echo.
set /p num=:
echo.

if %num%==1 (
	set /a player=1
) else if %num%==2 ( 
	set /a player=10
) else if %num%==3 (
	set /a player=100
) 

if %num1%==1 (
	set /a com=-1
) else if %num1%==2 ( 
	set /a com=-10
) else if %num1%==3 (
	set /a com=-100
) 

set /a final=%com%+%player%

if %final%==0 (
	echo Tie game!
) else if %final%==9 ( 
	echo Your pick: paper / computer pick: rock
	echo You Win!
	set /a winstr=%winstr%+1
) else if %final%==99 (
	echo Your pick: scissors / computer pick: rock 
	echo You lose
	set /a winstr=0
) else if %final%==90 (
	echo Your pick: scissors / computer pick: paper
	echo You Win!
	set /a winstr=%winstr%+1
) else if %final%==-9 (
	echo Your pick: rock / computer pick: paper
	echo You Lose
	set /a winstr=0
) else if %final%==-90 (
	echo Your pick: paper / computer pick: scissors
	echo You Lose
	set /a winstr=0
) else if %final%==-99 (
	echo Your pick: rock / computer pick: scissors
	echo You Win!
	set /a winstr=%winstr%+1
)

pause
cls
goto top
end local
return 0