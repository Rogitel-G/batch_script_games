SET /a TEMPLEWELCOMESEEN = 1
SET NAME=%PRIESTNAME%
SET /a SPACES = %PRIESTSPACES%
SET /a WAITTIME = 0
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %NAME%: Welcome back %PLAYERNAME%. How are you feeling?
SET /a WAITTIME = 3
CALL :DISPLAY
SET /a PERCHP = (%PLAYERHP%*100)/%PLAYERMAXHP%
IF %PERCHP% LSS 20 (
	ECHO %PLAYERNAME%: My lord ow^^!
) ELSE IF %PERCHP% LSS 60 (
	ECHO %PLAYERNAME%: Not too bad, my everything kinda hurts a bit though
) ELSE (
	ECHO %PLAYERNAME%: Pretty good actually
)
SET /a WAITTIME = 2
CALL :DISPLAY
IF %PERCHP% LSS 60 (
	ECHO %NAME%: Not too worry %PLAYERNAME%, that's what we're here for. Have a free heal on us.
) ELSE (
	ECHO %NAME%: Better safe than sorry %PLAYERNAME%, have a free heal on us.
)
SET /a PLAYERMP = %PLAYERBASEMAXMP%+%PLAYEREQUIPMAXMP%
SET /a PLAYERHP = %PLAYERBASEMAXHP%+%PLAYEREQUIPMAXHP%
SET TEMPPATH=%MUSICPATH%\Battle\Spells
SET FILE=Cura.mp3
IF EXIST "%TEMPPATH%\%FILE%" (
	CALL "%MUSICPATH%\soundeffect.bat"
)
SET FILE=Esuna.mp3
IF EXIST "%TEMPPATH%\%FILE%" (
	CALL "%MUSICPATH%\soundeffect.bat"
)
SET /a WAITTIME = 5
CALL :DISPLAY
ECHO %PLAYERNAME%: What the hell did you just do??
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: I healed you, %PLAYERNAME%
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: We can heal your HP, MP and any status ailments that you're afflicted with
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: Sounds very handy^^! How much does it cost?
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: That depends on your maximum HP and MP. The stronger you are the more it costs.
SET /a WAITTIME = 4
CALL :DISPLAY
ECHO %PLAYERNAME%: Do you offer any other services?
SET /a WAITTIME = 3
CALL :DISPLAY
IF %PLAYERLVL% GEQ 5 (
	ECHO %NAME%: We certainly do, and luckily for you, you're strong enough to partake
) ELSE (
	ECHO %NAME%: We do, but you're not quite strong enough to partake yet
)
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %NAME%: We can create custom spells for strong individuals, but this can get quite expensive
SET /a WAITTIME = 4
CALL :DISPLAY
ECHO %PLAYERNAME%: Custom spells? How does that work?
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: We draw upon the power of the spells that you've learned to create a more powerful spell
SET /a WAITTIME = 4
CALL :DISPLAY
ECHO %NAME%: For example, if you've unlocked a spell to poison the enemy and a spell to protect yourself
ECHO           you can create a new spell that does both of these things and more.
SET /a WAITTIME = 7
CALL :DISPLAY
ECHO %NAME%: The possibilities are almost literally endless^^!
SET /a WAITTIME = 4
TIMEOUT /T %WAITTIME% > nul
GOTO :EOF


:DISPLAY
IF %CUTSCENEPROGRESSION% EQU 1 (
	TIMEOUT /T %WAITTIME% > nul
) ELSE (
	pause > nul
)
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
GOTO :EOF
