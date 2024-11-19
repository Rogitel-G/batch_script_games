@ECHO OFF
CLS
ECHO.
ECHO Multiplayer doesn't work yet but I've had a play around with it and think it's achievable.
ECHO The basic idea would be that you take your character from single player mode and battle someone else.
ECHO.
ECHO The main problems are:
ECHO. 1 - I'd need an online database to store details of characters that are online. This costs money.
ECHO. 2 - At the moment, it's really easy to hack characters by just editing the save files.
ECHO.
ECHO Details of what I've done so far:
ECHO.
ECHO I've managed to run two instances of the game on the same computer and get them to enter a battle
ECHO with each other, bringing in both the player and enemy stats, specials, etc.
ECHO.
ECHO This was using WAMP to simulate a server on my local machine and then hosting a database on this 'server'.
ECHO The batch files can read from and write to the database using the 'curl' command to pass information to
ECHO php scripts.
ECHO.
ECHO If you're interested in this or have some suggestions for getting round the problems I mentioned, please
ECHO email me at nick_sisson@hotmail.co.uk.
ECHO If it gets enough interest then I'll work on adding it to the game and pay a bit of money to host the
ECHO database online.
pause
GOTO :EOF

SET SERVERROOT=http://localhost/buyanisland
:LOADGAME
CLS
ECHO.
CALL "%SAVERESOURCEPATH%\savelist.bat"
ECHO Choose which saved game's character you'd like to take into the arena?
ECHO.
ECHO. 1 - %SAVESLOT1NAME%
ECHO. 2 - %SAVESLOT2NAME%
ECHO. 3 - %SAVESLOT3NAME%
ECHO. 4 - %SAVESLOT4NAME%
ECHO. 5 - %SAVESLOT5NAME%
ECHO. 6 - %SAVESLOT6NAME%
ECHO. 7 - %SAVESLOT7NAME%
ECHO. 8 - %SAVESLOT8NAME%
ECHO. 9 - %SAVESLOT9NAME%
ECHO. 0 - Back
ECHO.
SET /P LOADCHOICE=
ECHO.
IF "%LOADCHOICE%" EQU "" (
	GOTO :LOADGAME
)
IF %LOADCHOICE% GTR 9 (
	GOTO :LOADGAME
) ELSE IF %LOADCHOICE% EQU 0 (
	SET /a MAINMENUBACK = 1
	GOTO :EOF
)
ECHO Loading...
ECHO.
IF NOT EXIST "%SAVERESOURCEPATH%\Slot%LOADCHOICE%\!SAVESLOT%LOADCHOICE%NAME!.bat" (
	GOTO :LOADGAME
)
CALL "%SAVERESOURCEPATH%\Slot%LOADCHOICE%\!SAVESLOT%LOADCHOICE%NAME!.bat"
CALL "%INITIALRESOURCEPATH%\playermodifiedstats.bat"
ECHO.
RMDIR "%CUSTOMSPELLRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMSPELLRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMSPELLRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMITEMRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMITEMRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMITEMRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMWEAPONRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMWEAPONRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMWEAPONRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMARMOURRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMARMOURRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMARMOURRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMACCESSORYRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMACCESSORYRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMACCESSORYRESOURCEPATH%\Temp" /E /I
CLS
ECHO.
ECHO !SAVESLOT%LOADCHOICE%NAME! loaded successfully. Sending to server...
ECHO.
curl -s %SERVERROOT%/start/initiate?name="%PLAYERNAME%"^&lvl=%PLAYERLVL%^&maxhp=%PLAYERMAXHP%^&maxmp=%PLAYERMAXMP%^&str=%PLAYERSTR%^&end=%PLAYEREND%^&mag=%PLAYERMAG%^&spr=%PLAYERSPR%^&acc=%PLAYERACC%^&eva=%PLAYEREVA%^&spd=%PLAYERSPD%^&lck=%PLAYERLCK% > output.bat
CALL output.bat
DEL output.bat
GOTO :EOF