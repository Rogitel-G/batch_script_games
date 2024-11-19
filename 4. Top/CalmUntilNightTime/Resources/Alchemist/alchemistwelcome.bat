SET /a ALCHEMISTWELCOMESEEN = 1
SET NAME=%ALCHEMISTNAME%
SET /a SPACES = %ALCHEMISTSPACES%

CALL "%ALCHEMISTRESOURCEPATH%\alchemistdisplay.bat"
ECHO.
ECHO %NAME%: Hi, my name is %ALCHEMISTNAME% the Alchemist
SET /a WAITTIME = 3

CALL :DISPLAY
ECHO %PLAYERNAME%: That seems to be a theme...
SET /a WAITTIME = 2

CALL :DISPLAY
ECHO %NAME%: How can I help you today?
SET /a WAITTIME = 2

CALL :DISPLAY
ECHO %PLAYERNAME%: I have no idea, what do you do here %ALCHEMISTNAME%?
SET /a WAITTIME = 3

CALL :DISPLAY
ECHO %NAME%: Alchemy is all to do with making your items better. I can combine your items
ECHO !SPACES%SPACES%!  to make stronger ones, or I can make items from scratch if you have the correct ingredients
SET /a WAITTIME = 7

CALL :DISPLAY
ECHO %PLAYERNAME%: That sounds incredibly useful
SET /a WAITTIME = 3

CALL :DISPLAY
ECHO %NAME%: You have no idea. Items never miss you know, they an be insanely powerful.
SET /a WAITTIME = 7

:DISPLAY
IF %CUTSCENEPROGRESSION% EQU 1 (
	TIMEOUT /T %WAITTIME% > nul
) ELSE (
	pause > nul
)
CALL "%ALCHEMISTRESOURCEPATH%\alchemistdisplay.bat"
ECHO.
GOTO :EOF
