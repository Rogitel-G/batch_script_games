SET /a TRAMPQUESTACTIVE = 1
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: I'll keep him alive for 24 hours 
ECHO           If you don't kill the shopkeeper and bring me his eye within 24 hours, 
IF %TEMPLETRAMPCHAT% EQU 1 (
ECHO           your uncle dies.
) ELSE IF %TEMPLETRAMPCHAT% EQU 2 (
ECHO           your pirate friend dies.
) ELSE IF %TEMPLETRAMPCHAT% EQU 3 (
ECHO           the tramp dies.
)
ECHO.
SET PREFIX=TRAMP
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
pause
GOTO :EOF