:EXPLAINSTART
CALL "%ALCHEMISTRESOURCEPATH%\alchemistdisplay.bat"
ECHO.
ECHO %ALCHEMISTNAME%: Because I'm awesome and everything, I can combine your items to make
ECHO            brand new ones for you to use.
ECHO.
CALL :WAITFORTWO
IF %EXPLICIT% EQU 1 (
	ECHO            This is serious shit though and batch programs aren't very powerful.
) ELSE (
	ECHO            This is serious stuff though and batch programs aren't very powerful.
)
ECHO            You're lucky this is even in the game at all^^!
ECHO.
CALL :WAITFORTWO
ECHO            When you create your first item there will be a new section in the battle
ECHO            menu for custom items.
ECHO.
CALL :WAITFORTWO
ECHO            The number of items you can combine depends on how many of my challenges
ECHO            you've completed.
ECHO.
CALL :WAITFORTWO
ECHO            When you create an item to take a custom item slot. You'll unlock more slots
ECHO            as you complete my challenges.
ECHO.
CALL :WAITFORTWO
ECHO            You'll also need to have combining stones and gil to combine your items^^!
ECHO.
CALL :WAITFORTWO
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