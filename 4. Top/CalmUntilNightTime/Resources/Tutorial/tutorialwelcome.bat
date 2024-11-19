SET /a TUTORIALWELCOMESEEN = 1
SET NAME=%TUTORIALNAME%
SET /a SPACES = %TUTORIALSPACES%
CALL "%TUTORIALRESOURCEPATH%\tutorialdisplay.bat"
ECHO.
ECHO %NAME%: Well hello there young man, I don't believe we've met before?
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: We haven't, I'm %PLAYERNAME%. I'm sort of new here...
SET /a WAITTIME = 2
CALL :DISPLAY
ECHO %NAME%: In that case, you'll definitely be interested in what I have to say.
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %PLAYERNAME%: Go on...
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %NAME%: Hello there! Welcome to the world of POKeM..
SET /a WAITTIME = 4
CALL :DISPLAY
ECHO %NAME%: Ahem^^! I mean, my name is %NAME%, the tutorial man.
SET /a WAITTIME = 3
CALL :DISPLAY
ECHO %NAME%: If you have any questions about how things work, you've come to the right place^^!
SET /a WAITTIME = 5
TIMEOUT /T %WAITTIME% > nul
GOTO :EOF


:DISPLAY
IF %CUTSCENEPROGRESSION% EQU 1 (
	TIMEOUT /T %WAITTIME% > nul
) ELSE (
	pause > nul
)
CALL "%TUTORIALRESOURCEPATH%\tutorialdisplay.bat"
ECHO.
GOTO :EOF
