:START
SET /a CHALLENGED = 0
SET /a CHALLENGEACCEPTED = 2
CLS
ECHO.
ECHO Your ID is %PLAYERID%
ECHO.
ECHO Enter the ID of the player you'd like to battle.
ECHO.
ECHO Enter R to check for battle requests.
ECHO.
ECHO Enter 0 to exit
ECHO.
SET /P CHALLENGEDID=
ECHO.
IF "%CHALLENGEDID%" EQU "" (
	GOTO :START
) ELSE IF "%CHALLENGEDID%" EQU "0" (
	curl -s %SERVERROOT%/start/tidyplayers?id=%PLAYERID% > nul
	GOTO :EOF
)
IF /I %CHALLENGEDID% EQU R (
	ECHO.
) ELSE IF %CHALLENGEDID% GTR 10000 (
	CLS
	ECHO.
	ECHO This is not a valid ID. Enter a number between 0 and 10000
	TIMEOUT /T 4 > nul
	GOTO :START
) ELSE IF %CHALLENGEDID% LSS 0 (
	CLS
	ECHO.
	ECHO This is not a valid ID. Enter a number between 0 and 10000
	TIMEOUT /T 4 > nul
	GOTO :START
)
IF /I "%CHALLENGEDID%" EQU "R" (
	CALL :REFRESH
) ELSE (
	CALL :INITIATECHALLENGE
	curl -s %SERVERROOT%/challenge/tidychallenges?challenger=%PLAYERID%^&challenged=%CHALLENGEDID% > nul
)
:BATTLESTART
IF %CHALLENGEACCEPTED% EQU 1 (
	CALL :BATTLE
)
GOTO :START

:BATTLE
CLS
ECHO.
ECHO You are entering a battle. Your battle ID is %BATTLEID%
ECHO.
CALL "%MULTIPLAYERRESOURCEPATH%\Battle\initiatebattle.bat"
GOTO :EOF

:INITIATECHALLENGE
CLS
ECHO.
curl -s %SERVERROOT%/challenge/challenge?challenger=%PLAYERID%^&challenged=%CHALLENGEDID% > output.bat
CALL output.bat
IF %CHALLENGEVALID% EQU 0 (
	ECHO This is not a valid ID. Please enter the ID of someone who's online
	ECHO.
	TIMEOUT /T 4 > nul
	GOTO :EOF
)
SET /a COUNT = 0
:RESPONSELOOP
SET /a COUNT = %COUNT% + 1
CLS
ECHO.
ECHO You have challenged %PLAYER2NAME% (ID - %CHALLENGEDID%). Their stats are: 
ECHO.
ECHO Level:     %PLAYER2LVL%
ECHO Max HP:    %PLAYER2MAXHP%
ECHO Max MP:    %PLAYER2MAXMP%
ECHO Strength:  %PLAYER2BASESTR%
ECHO Endurance: %PLAYER2BASEEND%
ECHO Magic:     %PLAYER2BASEMAG%
ECHO Sprit:     %PLAYER2BASESPR%
ECHO Accuracy:  %PLAYER2BASEACC%
ECHO Evasion:   %PLAYER2BASEEVA%
ECHO Speed:     %PLAYER2BASESPD%
ECHO Luck:      %PLAYER2BASELCK%
ECHO.
ECHO Awaiting response...
ECHO.
TIMEOUT /T 2 > nul
curl -s %SERVERROOT%/challenge/awaitresponse?challenger=%PLAYERID%^&challenged=%CHALLENGEDID% > output.bat
CALL output.bat
IF %CHALLENGEACCEPTED% EQU 1 (
	SET /a PLAYERVAR = 1
	curl -s %SERVERROOT%/challenge/getbattleid?challenger=%PLAYERID%^&challenged=%CHALLENGEDID% > output.bat
	CALL output.bat
	GOTO :EOF
) ELSE IF %CHALLENGEACCEPTED% EQU 0 (
	ECHO.
	ECHO You challenge has been rejected
	ECHO.
	TIMEOUT /T 3 > nul
	GOTO :EOF
) ELSE IF %COUNT% LSS 10 (
	GOTO :RESPONSELOOP
) ELSE (
	ECHO Request has timed out. Please try again
	ECHO.
	TIMEOUT /T 3 > nul
	GOTO :EOF
)

:REFRESH
curl -s %SERVERROOT%/challenge/challengedquery?challenged=%PLAYERID% > output.bat
CALL output.bat
IF %CHALLENGED% EQU 0 (
	CLS
	ECHO.
	ECHO You have no challenges
	ECHO.
	TIMEOUT /T 3 > nul
	GOTO :EOF
)
:REFRESH2
CLS
ECHO.
ECHO You have been challenged by %PLAYER1NAME% (ID - %CHALLENGERID%). Their stats are:
ECHO.
ECHO Level:     %PLAYER1LVL%
ECHO Max HP:    %PLAYER1MAXHP%
ECHO Max MP:    %PLAYER1MAXMP%
ECHO Strength:  %PLAYER1BASESTR%
ECHO Endurance: %PLAYER1BASEEND%
ECHO Magic:     %PLAYER1BASEMAG%
ECHO Sprit:     %PLAYER1BASESPR%
ECHO Accuracy:  %PLAYER1BASEACC%
ECHO Evasion:   %PLAYER1BASEEVA%
ECHO Speed:     %PLAYER1BASESPD%
ECHO Luck:      %PLAYER1BASELCK%
ECHO.
ECHO Do you accept?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No
ECHO.
SET /P CHALLENGEACCEPTED=
ECHO.
IF "%CHALLENGEACCEPTED%" EQU "1" (
	SET /a PLAYERVAR = 2
	curl -s %SERVERROOT%/challenge/accept?challenger=%CHALLENGERID%^&challenged=%PLAYERID% > nul
	curl -s %SERVERROOT%/challenge/generatebattleid?challenger=%CHALLENGERID%^&challenged=%PLAYERID% > output.bat
	CALL output.bat
) ELSE IF "%CHALLENGEACCEPTED%" EQU "0" (
	curl -s %SERVERROOT%/challenge/reject?challenger=%CHALLENGERID%^&challenged=%PLAYERID% > nul
) ELSE (
	GOTO :REFRESH2
)
GOTO :EOF








