SET /a STORY11VERSIONNUM = 3
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: Okay, listen closely...
CALL :WAITFORTWO
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
IF %EXPLICIT% EQU 1 (
	ECHO %PRIESTNAME%: That bastard Shopkeeper and his cunting X-Potions have been putting me out of
	ECHO           business for fucking years^^!
) ELSE (
	ECHO %PRIESTNAME%: That shopkeeper and his bloody X-Potions have been putting me out of business for
	ECHO           years^^!
)
ECHO.
CALL :WAITFORTHREE
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
IF %EXPLICIT% EQU 1 (
	ECHO %PRIESTNAME%: If you go and kill the wanker and bring me back his little bitch eye as proof I can 
) ELSE (
	ECHO %PRIESTNAME%: If you go and kill him and bring me back his eye as proof I can 
)
IF %TEMPLETRAMPCHAT% EQU 1 (
	ECHO           fix your uncle's eye problem.
) ELSE IF %TEMPLETRAMPCHAT% EQU 2 (
	ECHO           fix your pirate friend's eye predicament.
) ELSE IF %TEMPLETRAMPCHAT% EQU 3 (
	ECHO           fix this tramp's eye issue that we have here.
)
ECHO.
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: Will you kill the shopkeeper for me?
IF !PLAYERKEYITEM%SKEYEID%ACQUIRED! EQU 1 (
	CALL :EYEALREADYACQUIRED
	GOTO :EOF
)
ECHO.
ECHO. 1 - YEAH^^! I hate him too^^!
ECHO. 2 - No way you crazy lunatic^^!
ECHO. 3 - I'd rather not...
ECHO.
:KILLSHOPCHOICE
SET /P KILLSHOPCHOICE=
ECHO.
IF "%KILLSHOPCHOICE%" EQU "1" (
	CALL "%TRAMPRESOURCEPATH%\starttemplequest.bat"
) ELSE IF "%KILLSHOPCHOICE%" EQU "2" (
	CALL :TRAMPDIE
) ELSE IF "%KILLSHOPCHOICE%" EQU "3" (
	CALL :TRAMPDIE
) ELSE (
	CALL :KILLSHOPCHOICE
)
GOTO :EOF

:EYEQUERY
IF !PLAYERKEYITEM%SKEYEID%ACQUIRED! EQU 1 (
	CALL :TRAMPFIX
) ELSE (
	CALL :TRAMPDIE2
)
GOTO :EOF

:TRAMPDIE
SET /a STORY11VERSIONNUM = 4
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO.
ECHO %PRIESTNAME%: Well get out of here then^^!
ECHO.
CALL :WAITFORTWO
ECHO. The Tramp died.
ECHO
pause
SET /a TRAMPALIVE = 0
GOTO :EOF



:EYEALREADYACQUIRED
SET /a STORY11VERSIONNUM = 5
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: Oh, I see you've already got his eye...
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: He must have rubbed you up the wrong way too^^!
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: That's enough proof for me, I'll get this guy all fixed up.
ECHO.
pause
CALL "%TRAMPRESOURCEPATH%\trampfix.bat"
GOTO :EOF




:WAITFORZERO
TIMEOUT /T 0 > nul
GOTO :EOF

:WAITFORONE
TIMEOUT /T 1 > nul
GOTO :EOF

:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF

:WAITFORTHREE
TIMEOUT /T 3 > nul
GOTO :EOF