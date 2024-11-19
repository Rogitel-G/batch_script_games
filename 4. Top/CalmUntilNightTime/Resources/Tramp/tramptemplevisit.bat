SET /a PLAYERXCOORD = 7
SET /a PLAYERYCOORD = 2
SET /a STORY10VERSIONNUM = 2
CALL :CHAT
CALL :FIXQUERY
GOTO :EOF


:CHAT
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: How can I help you my Chi...Oh holy mother of christ^^!
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: ...
CALL :WAITFORONE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: Who in God's name is this?
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: And what the heck happened to his eye?
:TEMPLETRAMPCHAT
ECHO.
ECHO. 1 - It's my uncle %UNCLENAME%, he slipped and smashed his eye on a doorknob.
ECHO. 2 - This is my friend, %UNCLENAME%, he's a pirate but he's lost his eye-patch.
ECHO. 3 - This tramp I found round the back of the shop.
ECHO.
SET /P TEMPLETRAMPCHAT=
ECHO.
IF "%TEMPLETRAMPCHAT%" EQU "1" (
	SET /a TRAMPFIXCOST = %PLAYERLVL%*100
	GOTO :EOF
) ELSE IF "%TEMPLETRAMPCHAT%" EQU "2" (
	SET /a TRAMPFIXCOST = %PLAYERLVL%*100
	GOTO :EOF
) ELSE IF "%TEMPLETRAMPCHAT%" EQU "3" (
	CALL :TEMPLETRAMPCHAT3
) ELSE (
	CALL :TEMPLRETRAMPCHAT
)
GOTO :EOF

:TEMPLETRAMPCHAT3
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: And what happened to his eye?
ECHO.
IF "%TRAMPCHOICE%" EQU "4" (
	ECHO. 1 - I pulled it out of the socket while he was sleeping ok. Can you fix him?
) ELSE (
	IF %EXPLICIT% EQU 1 (
		ECHO. 1 - I kicked the shit out of him and he offered it to me as thanks because I spared his life.
	) ELSE (
		ECHO. 1 - I beat him up and he offered it to me as thanks because I spared his life.
	)
)
IF %EXPLICIT% EQU 1 (
	ECHO. 2 - I saw some thugs beat him up and pull his eye out. The Bastards...
) ELSE (
	ECHO. 2 - I saw some thugs beat him up and pull his eye out. The hooligans
)
ECHO. 3 - I don't know, I found him like this. Help him please
ECHO.
SET /P TEMPLETRAMPCHAT3=
ECHO.
IF "%TEMPLETRAMPCHAT3%" EQU "1" (
	SET /a TRAMPFIXCOST = %PLAYERLVL%*120
) ELSE IF "%TEMPLETRAMPCHAT3%" EQU "2" (
	SET /a TRAMPFIXCOST = %PLAYERLVL%*80
) ELSE IF "%TEMPLETRAMPCHAT3%" EQU "3" (
	SET /a TRAMPFIXCOST = %PLAYERLVL%*90
) ELSE (
	SET /a TRAMPFIXCOST = %PLAYERLVL%*300
)
GOTO :EOF

:FIXQUERY
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: If you want me to fix him up it'll cost you %TRAMPFIXCOST% Gil
ECHO.
ECHO. You have %PLAYERGIL% Gil
ECHO.
ECHO. 1 - Go ahead, I'll cover the cost
ECHO. 2 - How much??? Can we not come to some other arrangement?
ECHO. 3 - On second thoughts, I'm sure he'll do just fine on his own.
ECHO.
:TRAMPFIXCHOICE
SET /P TRAMPFIXCHOICE=
ECHO.
IF "%TRAMPFIXCHOICE%" EQU "1" (
	IF %PLAYERGIL% LSS %TRAMPFIXCOST% (
		CALL :MONEY
	) ELSE (
		SET /a PLAYERGIL = %PLAYERGIL% - %TRAMPFIXCOST%
		SET /a STORY11VERSIONNUM = 1
		CALL "%TRAMPRESOURCEPATH%\trampfix.bat"
	)
) ELSE IF "%TRAMPFIXCHOICE%" EQU "2" (
	CALL "%TRAMPRESOURCEPATH%\templequest.bat"
) ELSE IF "%TRAMPFIXCHOICE%" EQU "3" (
	SET /a STORY11VERSIONNUM = 2
	CALL :TRAMPDIE
) ELSE (
	CALL :TRAMPFIXCHOICE
)
GOTO :EOF
	
	
:MONEY
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: You don't have enough money
ECHO.
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: There is something you could do for me though... Would you like to hear me out?
ECHO.
ECHO. 1 - Yes
ECHO. 2 - No
ECHO.
:MONEYCHOICE
SET /P MONEYQUERY=
ECHO.
IF "%MONEYQUERY%" EQU "1" (
	CALL "%TRAMPRESOURCEPATH%\templequest.bat"
) ELSE IF "%MONEYQUERY%" EQU "2" (
	CALL :TRAMPDIE
) ELSE (
	CALL :MONEYCHOICE
)
GOTO :EOF


:TRAMPDIE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
SET /a TRAMPALIVE = 0
ECHO %PRIESTNAME%: That's fine, I'll feed him to the Cerberus.
ECHO.
CALL :WAITFORTWO
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp2.bat"
ECHO. %PRIESTNAME% takes the Tramp off into the Cerberus' lair...
ECHO.
CALL :WAITFORTWO
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp2.bat"
ECHO. Didn't know there was a Cerberus did you? Few do.
ECHO.
pause
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