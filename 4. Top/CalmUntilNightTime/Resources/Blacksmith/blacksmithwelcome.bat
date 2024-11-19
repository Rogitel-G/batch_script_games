SET /a BLACKSMITHWELCOMESEEN = 1
SET NAME=%BLACKSMITHNAME%
SET /a SPACES = %BLACKSMITHSPACES%
CALL "%BLACKSMITHRESOURCEPATH%\blacksmithdisplay.bat"
ECHO.
ECHO %NAME%: Hey laddie, I've not seen you in %TOWN4NICKNAME% before. You new here?
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: I'm more passing through. My name's %PLAYERNAME%, nice to meet you
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %NAME%: A pleasure sonnie, my name's %NAME%
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %PLAYERNAME%: You're name's %NAME%?
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: Aye, like my pa's name and his pa before him
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: Our family's not very creative, but we do have one skill^^!
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: Smithing?
SET /a WAITTIME = 1
CALL :DISPLAY
ECHO %NAME%: Aye^^! Did you know my pa?
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %PLAYERNAME%: More of a guess...
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: Ahh, you're one of those educated types then I see. Very sharp^^!
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: Erm, thanks... What kind of services do you offer then?
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: I take your equipment and make it better laddie^^!
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %NAME%: I can add stats to all equipment, skills to weapons, resistances to armour
ECHO !SPACES%SPACES%! and abilities to accessories
SET /a WAITTIME = 6
CALL :DISPLAY
ECHO %NAME%: You'll need the correct items and enough coin though laddie
SET /a WAITTIME = 6
TIMEOUT /T %WAITTIME% > nul
GOTO :EOF


:DISPLAY
IF %CUTSCENEPROGRESSION% EQU 1 (
	TIMEOUT /T %WAITTIME% > nul
) ELSE (
	pause > nul
)
CALL "%BLACKSMITHRESOURCEPATH%\blacksmithdisplay.bat"
ECHO.
GOTO :EOF
