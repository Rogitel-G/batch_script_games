:EXPLAINSTART
CALL "%ALCHEMISTRESOURCEPATH%\alchemistdisplay.bat"
ECHO.
ECHO %ALCHEMISTNAME%: The items you can create are determined by what spells you have.
ECHO.
CALL :WAITFORTWO
ECHO            For instance, if you have unlocked the fire spell, you can create
ECHO            a fire scroll that will cast fire on an enemy when it's used.
ECHO.
CALL :WAITFORTHREE
ECHO            The bonus is that it won't cost any MP to use these items so they
ECHO            can get you out of a tight spot^^!
ECHO.
CALL :WAITFORTWO
ECHO            Oh, I almost forgot. You'll need a creation stone to and some Gil to
ECHO            create an item.
ECHO.
CALL :WAITFORTWO
ECHO            Does that clear things up for you kid?
ECHO.
CALL :WAITFORTWO
ECHO. 1 - Yes
ECHO. 2 - No
ECHO.
:CHOICE
SET /P EXPLAINCHOICE=
ECHO.
IF "%EXPLAINCHOICE%" EQU "1" (
	ECHO %ALCHEMISTNAME%: Good^^!
	ECHO.
) ELSE IF "%EXPLAINCHOICE%" EQU "2" (
	ECHO %ALCHEMISTNAME%: Tough.
	ECHO.
	CALL :WAITFORTWO
	ECHO            Just try experimenting, Jesus Christ it's an RPG
	ECHO.
) ELSE (
	GOTO :CHOICE
)
pause
GOTO :EOF












:WAITFORZERO
TIMEOUT /T 0 > nul
GOTO :EOF

:WAITFORONE
TIMEOUT /T 1 > nul
GOTO :EOF

:WAITFORTWO
TIMEOUT /T 4 > nul
GOTO :EOF

:WAITFORTHREE
TIMEOUT /T 5 > nul
GOTO :EOF