IF %REMOTEACCESS% EQU 0 (
	CALL :SETLOCATION
) ELSE (
	SET /a REMOTEACCESS = 0
)
IF %TEMPLEWELCOMESEEN% EQU 0 (
	CALL "%TEMPLERESOURCEPATH%\templewelcome.bat"
)
:ENTERTEMPLE
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
IF %TRAMPQUESTACTIVE% EQU 1 (
	GOTO :TRAMPQUEST
	GOTO :EOF
)
ECHO %PRIESTNAME%: How can I help you my child?
:NORMALSERVICES
ECHO. 
ECHO. 1 - I need healing
ECHO. 2 - I would like my MP restored
ECHO. 3 - Can you restore my HP and MP?
ECHO. 4 - Remove my status ailments
ECHO. 5 - I'd like to make a donation
ECHO. 6 - I'd like to create custom spell
ECHO. 0 - I'm going now
ECHO. 
:TEMPLECHOICE
SET /P TEMPLECHOICE=
ECHO.
IF "%TEMPLECHOICE%" EQU "1" (
	CALL "%TEMPLERESOURCEPATH%\restorehp.bat"
) ELSE IF "%TEMPLECHOICE%" EQU "2" (
	CALL "%TEMPLERESOURCEPATH%\restoremp.bat"
) ELSE IF "%TEMPLECHOICE%" EQU "3" (
	CALL "%TEMPLERESOURCEPATH%\restorehpandmp.bat"
) ELSE IF "%TEMPLECHOICE%" EQU "4" (
	CALL "%TEMPLERESOURCEPATH%\restorestatus.bat"
) ELSE IF "%TEMPLECHOICE%" EQU "5" (
	CALL "%TEMPLERESOURCEPATH%\templedonation.bat"
) ELSE IF "%TEMPLECHOICE%" EQU "6" (
	CALL "%TEMPLERESOURCEPATH%\spellcreation.bat"
) ELSE IF "%TEMPLECHOICE%" EQU "0" (
	ECHO %PRIESTNAME%: That's fine, I'll carry on seeing to these other children
	ECHO.
	CALL "%REMOTERESOURCEPATH%\temple.bat"
	CALL "%REMOTERESOURCEPATH%\temple2.bat"
	GOTO :EOF
) ELSE (
	GOTO :TEMPLECHOICE
)
GOTO :ENTERTEMPLE

:SETLOCATION
IF /I %MAP% EQU town2 (
	SET /a PLAYERXCOORD = 7
	SET /a PLAYERYCOORD = 2
) ELSE IF /I %MAP% EQU town3 (
	SET /a PLAYERXCOORD = 4
	SET /a PLAYERYCOORD = 6
) ELSE IF /I %MAP% EQU town4 (
	SET /a PLAYERXCOORD = 4
	SET /a PLAYERYCOORD = 4
) ELSE IF /I %MAP% EQU town5 (
	SET /a PLAYERXCOORD = 4
	SET /a PLAYERYCOORD = 4
) ELSE IF /I %MAP% EQU town6 (
	SET /a PLAYERXCOORD = 6
	SET /a PLAYERYCOORD = 3
)
GOTO :EOF

:TRAMPQUEST
SET PREFIX=NOW
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
SET BEFORE=TRAMP
SET AFTER=NOW
CALL "%MISCRESOURCEPATH%\calculatetimediff.bat"
IF %HOURDIFF% GEQ 24 (
	SET /a STORY11VERSIONNUM = 4
	ECHO %PRIESTNAME%: Sorry my child, you've left it too long and your friend passed away...
	ECHO.
	pause
	SET /a TRAMPQUESTACTIVE = 0
	GOTO :EOF
)
ECHO %PRIESTNAME%: Have you got the shopkeeper's eye yet?
ECHO.
ECHO. 1 - I don't have it yet
ECHO. 2 - I've changed my mind, I'm not going to kill him
IF !PLAYERKEYITEM%SKEYEID%ACQUIRED! EQU 1 (
	ECHO. 3 - Yep, take a look
)
ECHO. 0 - Can I just use the normal services for now?
ECHO.
:SKEYECHOICE
SET /P SKEYECHOICE=
ECHO.
IF "%SKEYECHOICE%" EQU "1" (
	CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
	ECHO.
	ECHO %PRIESTNAME%: Come on my child, time is ticking...
	ECHO.
	pause
	GOTO :EOF
) ELSE IF "%SKEYECHOICE%" EQU "2" (
	SET /a STORY11VERSIONNUM = 4
	CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
	ECHO.
	ECHO %PRIESTNAME%: That's fine, I understand my child.
	ECHO.
	CALL :WAITFORTHREE
	ECHO           Now go away while I kill your friend.
	ECHO.
	SET /a TRAMPQUESTACTIVE = 0
	SET /a TRAMPALIVE = 0
	CALL :WAITFORTHREE
) ELSE IF "%SKEYECHOICE%" EQU "3" (
	IF !PLAYERKEYITEM%SKEYEID%ACQUIRED! EQU 1 (
		SET /a STORY11VERSIONNUM = 5
		CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
		ECHO.
		ECHO %PRIESTNAME%: Ooooo thank you^^! That'll teach him to try to put me out of business^^!
		ECHO.
		CALL :WAITFORTWO
		ECHO. You hand over the Shopkeeper's eye.
		ECHO.
		CALL :WAITFORTWO
		SET /a !PLAYERKEYITEM%SKEYEID%ACQUIRED! = 0
		CALL "%TRAMPRESOURCEPATH%\trampfix.bat"
	) ELSE (
		GOTO :SKEYECHOICE
	)
) ELSE IF "%SKEYECHOICE%" EQU "0" (
	CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
	ECHO.
	ECHO %PRIESTNAME%: I don't see why not.
	GOTO :NORMALSERVICES
) ELSE (
	GOTO :SKEYECHOICE
)
GOTO :EOF

:TIMEZONEDIFF
IF %TRAMPDAYDIFF% EQU 1 (
	
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