SET /a SHOPWELCOMESEEN = 1
SET NAME=!SHOPKEEPER%SHOPNUM%NAME!
SET /a SPACES = %SHOPKEEPER1SPACES%
CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
ECHO.
ECHO %NAME%: Hello there, welcome, I've not seen you around here before. Where are you from?
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: %TOWN1DISPLAYNAME%...
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: Oh, erm... I heard about what happened. My condolences my friend
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %NAME%: What can I do for you today?
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %PLAYERNAME%: I'd like to take a look at your wares, what do you sell here?
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %NAME%: Anything and everything my friend^^!
ECHO !SPACES10!  We've got Items, Weapons, Armour, Accessories, anything you need^^!
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: I'm starving, got any chips?
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: Erm...
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: No one's ever asked about food before, we just stock items for quests
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: And no one takes food on any of these 'quests'?
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: Apparently not, you'll just have to stick to items and equipment
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %NAME%: Feel free to take a look around. Let me know if there's anything that interests you
ECHO.
GOTO :EOF


:DISPLAY
IF %CUTSCENEPROGRESSION% EQU 1 (
	TIMEOUT /T %WAITTIME% > nul
) ELSE (
	pause > nul
)
CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
ECHO.
GOTO :EOF
