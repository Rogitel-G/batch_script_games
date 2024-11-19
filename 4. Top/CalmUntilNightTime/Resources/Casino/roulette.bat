::TEST
REM @ECHO OFF
REM SETLOCAL ENABLEDELAYEDEXPANSION
REM SET /a MINIGAMEGILREWARD = 100
REM SET /a MINIGAMEGAMBLE = 1
::TESTEND

:ROULETTESTART
CALL :INITIALISEVARS
CALL :NOGILQUERY
IF !%GILVAR%! EQU 0 (
	GOTO :EOF
)
:BETNUMBACK
SET /a BACK = 0
CALL :ROULETTEWELCOME
IF %BACK% EQU 1 (
	GOTO :EOF
)
:BETBACK
CALL :INITIALISEVARS
SET /a BACK = 0
CALL :BETNUM
IF %BACK% EQU 1 (
	GOTO :BETNUMBACK
)
:SETBETAMOUNTBACK
CALL :INITIALISEVARS
SET /a BACK = 0
CALL :BET%ROULETTEBETCHOICE%
IF %BACK% EQU 1 (
	GOTO :BETBACK
)
SET /a BACK = 0
CALL :SETBETAMOUNT
IF %BACK% EQU 1 (
	GOTO :SETBETAMOUNTBACK
)
CALL :ROULETTERANNUM
CALL :PLAYERWINQUERY
CALL :SPIN
IF %PLAYERROULETTEWIN% EQU 1 (
	CALL :PLAYERWIN
) ELSE ( 
	CALL :PLAYERLOSE
)
CALL :PLAYAGAIN
GOTO :EOF




:INITIALISEVARS
SET /a PLAYERROULETTEWIN = 0
SET /a COUNT = 0
:INITIALISEWINLOOP
SET /a PLAYER%COUNT%WIN = 0
SET /a COUNT = %COUNT% + 1
IF %COUNT% LEQ 36 (
	GOTO :INITIALISEWINLOOP
)
GOTO :EOF

:NOGILQUERY
IF !%GILVAR%! EQU 0 (
	CLS
	ECHO.
	ECHO %CASINOOWNERNAME%: Your cash runs from you like diarrhoea from the buffalo
	ECHO.
	CALL :WAITFORTWO
	ECHO %CASINOOWNERSPACES%  Leave now.
	ECHO.
	pause
)
GOTO :EOF


:ROULETTEWELCOME
SET /a ROULETTEPLAYEDTOTAL = %ROULETTEPLAYEDTOTAL%+1
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
ECHO %CASINOOWNERNAME%: How would you like to bet?
ECHO. 
ECHO. 1 - Single number
ECHO. 2 - Set of 6
ECHO. 3 - Set of 12
ECHO. 4 - Set of 18
ECHO. 5 - Even/Odd
ECHO. 6 - Red/Black
ECHO. 0 - Actually I'd rather not
ECHO. 
:ROULETTEBETCHOICE
SET /P ROULETTEBETCHOICE=
ECHO.
IF "%ROULETTEBETCHOICE%" EQU "1" (
	SET BETVAR=Single number
	SET /a WINFACTOR = 36
) ELSE IF "%ROULETTEBETCHOICE%" EQU "2" (
	SET BETVAR=Set of 6
	SET /a WINFACTOR = 6
) ELSE IF "%ROULETTEBETCHOICE%" EQU "3" (
	SET BETVAR=Set of 12
	SET /a WINFACTOR = 3
) ELSE IF "%ROULETTEBETCHOICE%" EQU "4" (
	SET BETVAR=Set of 18
	SET /a WINFACTOR = 2
) ELSE IF "%ROULETTEBETCHOICE%" EQU "5" (
	SET BETVAR=Even/Odd
	SET /a WINFACTOR = 2
) ELSE IF "%ROULETTEBETCHOICE%" EQU "6" (
	SET BETVAR=Red/Black
	SET /a WINFACTOR = 2
) ELSE IF "%ROULETTEBETCHOICE%" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
) ELSE (
	GOTO :ROULETTEBETCHOICE
)
GOTO :EOF

:BETNUM
IF %WINFACTOR% EQU 2 (
	SET /a BETNUM = 1
	GOTO :EOF
)
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
ECHO %CASINOOWNERNAME%: How many %BETVAR% bets would you like to make?
ECHO.
ECHO. Max %BETVAR% bets: %WINFACTOR%
ECHO.
ECHO. 0 - Back
:BETNUMCHOICE
ECHO.
SET /P BETNUM=
IF "%BETNUM%" EQU "" (
	GOTO :BETNUMCHOICE
) ELSE IF "%BETNUM%" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
)
IF %BETNUM% LSS 0 (
	GOTO :BETNUMCHOICE
) ELSE IF %BETNUM% GTR %WINFACTOR% (
	GOTO :BETNUMCHOICE
)
GOTO :EOF



:BET1
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
CALL :BETNUMDISPLAY
IF %BETNUM% GTR 1 (
	ECHO %CASINOOWNERNAME%: Which numbers would you like to bet on?
) ELSE (
	ECHO %CASINOOWNERNAME%: Which number would you like to bet on?
)
ECHO.
ECHO. B - Back
ECHO.
SET /a COUNT = 0
:BET1CHOICE
SET /a COUNT = %COUNT% + 1
SET /P BETNUM%COUNT%=
IF "!BETNUM%COUNT%!" EQU "" (
	GOTO :BET1CHOICE
) ELSE IF /I "!BETNUM%COUNT%!" EQU "B" (
	SET /a BACK = 1
	GOTO :EOF
)
IF !BETNUM%COUNT%! GTR 36 (
	ECHO.
	ECHO. Personally I would have went for something between 0 and 36...
	TIMEOUT /T 1 > nul
) ELSE IF !BETNUM%COUNT%! LSS 0 (
	ECHO.
	ECHO. Personally I would have went for something between 0 and 36...
	TIMEOUT /T 1 > nul
) ELSE (
	SET /a PLAYER!BETNUM%COUNT%!WIN = 1
)
IF %COUNT% LSS %BETNUM% (
	GOTO :BET1CHOICE
)
GOTO :EOF


:BET2
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
CALL :BETNUMDISPLAY
IF %BETNUM% GTR 1 (
	ECHO %CASINOOWNERNAME%: Which number sets would you like to bet on?
) ELSE (
	ECHO %CASINOOWNERNAME%: Which number set would you like to bet on?
)
ECHO.
ECHO. 1 - 1-6
ECHO. 2 - 7-12
ECHO. 3 - 13-18
ECHO. 4 - 19-24
ECHO. 5 - 25-30
ECHO. 6 - 31-36
ECHO. 0 - Back
ECHO.
SET /a COUNT = 0
:BET2CHOICE
SET /a COUNT = %COUNT% + 1
:BET2SILLYCHOICE
SET /P BETNUM%COUNT%=
IF "!BETNUM%COUNT%!" EQU "1" (
	SET /a PLAYER1WIN = 1
	SET /a PLAYER2WIN = 1
	SET /a PLAYER3WIN = 1
	SET /a PLAYER4WIN = 1
	SET /a PLAYER5WIN = 1
	SET /a PLAYER6WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "2" (
	SET /a PLAYER7WIN = 1
	SET /a PLAYER8WIN = 1
	SET /a PLAYER9WIN = 1
	SET /a PLAYER10WIN = 1
	SET /a PLAYER11WIN = 1
	SET /a PLAYER12WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "3" (
	SET /a PLAYER13WIN = 1
	SET /a PLAYER14WIN = 1
	SET /a PLAYER15WIN = 1
	SET /a PLAYER16WIN = 1
	SET /a PLAYER17WIN = 1
	SET /a PLAYER18WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "4" (
	SET /a PLAYER19WIN = 1
	SET /a PLAYER20WIN = 1
	SET /a PLAYER21WIN = 1
	SET /a PLAYER22WIN = 1
	SET /a PLAYER23WIN = 1
	SET /a PLAYER24WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "5" (
	SET /a PLAYER25WIN = 1
	SET /a PLAYER26WIN = 1
	SET /a PLAYER27WIN = 1
	SET /a PLAYER28WIN = 1
	SET /a PLAYER29WIN = 1
	SET /a PLAYER30WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "6" (
	SET /a PLAYER31WIN = 1
	SET /a PLAYER32WIN = 1
	SET /a PLAYER33WIN = 1
	SET /a PLAYER34WIN = 1
	SET /a PLAYER35WIN = 1
	SET /a PLAYER36WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
) ELSE (
	GOTO :BET2SILLYCHOICE
)
IF %COUNT% LSS %BETNUM% (
	GOTO :BET2CHOICE
)
GOTO :EOF

:BET3
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
CALL :BETNUMDISPLAY
IF %BETNUM% GTR 1 (
	ECHO %CASINOOWNERNAME%: Which number sets would you like to bet on?
) ELSE (
	ECHO %CASINOOWNERNAME%: Which number set would you like to bet on?
)
ECHO.
ECHO. 1 - 1-12
ECHO. 2 - 13-24
ECHO. 3 - 25-36
ECHO. 0 - Back
ECHO.
SET /a COUNT = 0
:BET3CHOICE
SET /a COUNT = %COUNT% + 1
:BET3SILLYCHOICE
SET /P BETNUM%COUNT%=
IF "!BETNUM%COUNT%!" EQU "1" (
	SET /a PLAYER1WIN = 1
	SET /a PLAYER2WIN = 1
	SET /a PLAYER3WIN = 1
	SET /a PLAYER4WIN = 1
	SET /a PLAYER5WIN = 1
	SET /a PLAYER6WIN = 1
	SET /a PLAYER7WIN = 1
	SET /a PLAYER8WIN = 1
	SET /a PLAYER9WIN = 1
	SET /a PLAYER10WIN = 1
	SET /a PLAYER11WIN = 1
	SET /a PLAYER12WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "2" (
	SET /a PLAYER13WIN = 1
	SET /a PLAYER14WIN = 1
	SET /a PLAYER15WIN = 1
	SET /a PLAYER16WIN = 1
	SET /a PLAYER17WIN = 1
	SET /a PLAYER18WIN = 1
	SET /a PLAYER19WIN = 1
	SET /a PLAYER20WIN = 1
	SET /a PLAYER21WIN = 1
	SET /a PLAYER22WIN = 1
	SET /a PLAYER23WIN = 1
	SET /a PLAYER24WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "3" (
	SET /a PLAYER25WIN = 1
	SET /a PLAYER26WIN = 1
	SET /a PLAYER27WIN = 1
	SET /a PLAYER28WIN = 1
	SET /a PLAYER29WIN = 1
	SET /a PLAYER30WIN = 1
	SET /a PLAYER31WIN = 1
	SET /a PLAYER32WIN = 1
	SET /a PLAYER33WIN = 1
	SET /a PLAYER34WIN = 1
	SET /a PLAYER35WIN = 1
	SET /a PLAYER36WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
) ELSE (
	GOTO :BET3SILLYCHOICE
)
IF %COUNT% LSS %BETNUM% (
	GOTO :BET3CHOICE
)
GOTO :EOF

:BET4
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
CALL :BETNUMDISPLAY
IF %BETNUM% GTR 1 (
	ECHO %CASINOOWNERNAME%: Which number sets would you like to bet on?
) ELSE (
	ECHO %CASINOOWNERNAME%: Which number set would you like to bet on?
)
ECHO.
ECHO. 1 - 1-18
ECHO. 2 - 19-36
ECHO. 0 - Back
ECHO.
SET /a COUNT = 0
:BET4CHOICE
SET /a COUNT = %COUNT% + 1
:BET4SILLYCHOICE
SET /P BETNUM%COUNT%=
IF "!BETNUM%COUNT%!" EQU "1" (
	SET /a PLAYER1WIN = 1
	SET /a PLAYER2WIN = 1
	SET /a PLAYER3WIN = 1
	SET /a PLAYER4WIN = 1
	SET /a PLAYER5WIN = 1
	SET /a PLAYER6WIN = 1
	SET /a PLAYER7WIN = 1
	SET /a PLAYER8WIN = 1
	SET /a PLAYER9WIN = 1
	SET /a PLAYER10WIN = 1
	SET /a PLAYER11WIN = 1
	SET /a PLAYER12WIN = 1
	SET /a PLAYER13WIN = 1
	SET /a PLAYER14WIN = 1
	SET /a PLAYER15WIN = 1
	SET /a PLAYER16WIN = 1
	SET /a PLAYER17WIN = 1
	SET /a PLAYER18WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "2" (
	SET /a PLAYER19WIN = 1
	SET /a PLAYER20WIN = 1
	SET /a PLAYER21WIN = 1
	SET /a PLAYER22WIN = 1
	SET /a PLAYER23WIN = 1
	SET /a PLAYER24WIN = 1
	SET /a PLAYER25WIN = 1
	SET /a PLAYER26WIN = 1
	SET /a PLAYER27WIN = 1
	SET /a PLAYER28WIN = 1
	SET /a PLAYER29WIN = 1
	SET /a PLAYER30WIN = 1
	SET /a PLAYER31WIN = 1
	SET /a PLAYER32WIN = 1
	SET /a PLAYER33WIN = 1
	SET /a PLAYER34WIN = 1
	SET /a PLAYER35WIN = 1
	SET /a PLAYER36WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
) ELSE (
	GOTO :BET4SILLYCHOICE
)
IF %COUNT% LSS %BETNUM% (
	GOTO :BET4CHOICE
)
GOTO :EOF


:BET5
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
CALL :BETNUMDISPLAY
IF %BETNUM% GTR 1 (
	ECHO %CASINOOWNERNAME%: Which number sets would you like to bet on?
) ELSE (
	ECHO %CASINOOWNERNAME%: Which number set would you like to bet on?
)
ECHO.
ECHO. 1 - Even
ECHO. 2 - Odd
ECHO. 0 - Back
ECHO.
SET /a COUNT = 0
:BET5CHOICE
SET /a COUNT = %COUNT% + 1
:BET5SILLYCHOICE
SET /P BETNUM%COUNT%=
IF "!BETNUM%COUNT%!" EQU "1" (
	SET /a PLAYER2WIN = 1
	SET /a PLAYER4WIN = 1
	SET /a PLAYER6WIN = 1
	SET /a PLAYER8WIN = 1
	SET /a PLAYER10WIN = 1
	SET /a PLAYER12WIN = 1
	SET /a PLAYER14WIN = 1
	SET /a PLAYER16WIN = 1
	SET /a PLAYER18WIN = 1
	SET /a PLAYER20WIN = 1
	SET /a PLAYER22WIN = 1
	SET /a PLAYER24WIN = 1
	SET /a PLAYER26WIN = 1
	SET /a PLAYER28WIN = 1
	SET /a PLAYER30WIN = 1
	SET /a PLAYER32WIN = 1
	SET /a PLAYER34WIN = 1
	SET /a PLAYER36WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "2" (
	SET /a PLAYER1WIN = 1
	SET /a PLAYER3WIN = 1
	SET /a PLAYER5WIN = 1
	SET /a PLAYER7WIN = 1
	SET /a PLAYER9WIN = 1
	SET /a PLAYER11WIN = 1
	SET /a PLAYER13WIN = 1
	SET /a PLAYER15WIN = 1
	SET /a PLAYER17WIN = 1
	SET /a PLAYER19WIN = 1
	SET /a PLAYER21WIN = 1
	SET /a PLAYER23WIN = 1
	SET /a PLAYER25WIN = 1
	SET /a PLAYER27WIN = 1
	SET /a PLAYER29WIN = 1
	SET /a PLAYER31WIN = 1
	SET /a PLAYER33WIN = 1
	SET /a PLAYER35WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
) ELSE (
	GOTO :BET5SILLYCHOICE
)
IF %COUNT% LSS %BETNUM% (
	GOTO :BET5CHOICE
)
GOTO :EOF

:BET6
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
CALL :BETNUMDISPLAY
IF %BETNUM% GTR 1 (
	ECHO %CASINOOWNERNAME%: Which number sets would you like to bet on?
) ELSE (
	ECHO %CASINOOWNERNAME%: Which number set would you like to bet on?
)
ECHO.
ECHO. 1 - Red
ECHO. 2 - Black
ECHO. 0 - Back
ECHO.
SET /a COUNT = 0
:BET6CHOICE
SET /a COUNT = %COUNT% + 1
:BET6SILLYCHOICE
SET /P BETNUM%COUNT%=
IF "!BETNUM%COUNT%!" EQU "1" (
	SET /a PLAYER1WIN = 1
	SET /a PLAYER3WIN = 1
	SET /a PLAYER5WIN = 1
	SET /a PLAYER7WIN = 1
	SET /a PLAYER9WIN = 1
	SET /a PLAYER12WIN = 1
	SET /a PLAYER14WIN = 1
	SET /a PLAYER16WIN = 1
	SET /a PLAYER18WIN = 1
	SET /a PLAYER19WIN = 1
	SET /a PLAYER21WIN = 1
	SET /a PLAYER23WIN = 1
	SET /a PLAYER25WIN = 1
	SET /a PLAYER27WIN = 1
	SET /a PLAYER30WIN = 1
	SET /a PLAYER32WIN = 1
	SET /a PLAYER34WIN = 1
	SET /a PLAYER36WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "2" (
	SET /a PLAYER2WIN = 1
	SET /a PLAYER4WIN = 1
	SET /a PLAYER6WIN = 1
	SET /a PLAYER8WIN = 1
	SET /a PLAYER10WIN = 1
	SET /a PLAYER11WIN = 1
	SET /a PLAYER13WIN = 1
	SET /a PLAYER15WIN = 1
	SET /a PLAYER17WIN = 1
	SET /a PLAYER20WIN = 1
	SET /a PLAYER22WIN = 1
	SET /a PLAYER24WIN = 1
	SET /a PLAYER26WIN = 1
	SET /a PLAYER28WIN = 1
	SET /a PLAYER29WIN = 1
	SET /a PLAYER31WIN = 1
	SET /a PLAYER33WIN = 1
	SET /a PLAYER35WIN = 1
) ELSE IF /I "!BETNUM%COUNT%!" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
) ELSE (
	GOTO :BET6ILLYCHOICE
)
IF %COUNT% LSS %BETNUM% (
	GOTO :BET6CHOICE
)
GOTO :EOF


:SETBETAMOUNT
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
CALL :BETNUMDISPLAY
ECHO %CASINOOWNERNAME%: How much would you like to put down for each bet?
ECHO.
ECHO. 0 - Back
ECHO.
:SETBETAMOUNTCHOICE
SET /P BETAMOUNTCHOICE=
ECHO.
IF "%BETAMOUNTCHOICE%" EQU "" (
	GOTO :SETBETAMOUNTCHOICE
) ELSE IF "%BETAMOUNTCHOICE%" EQU "0" (
	SET /a BACK = 1
	GOTO :EOF
)
IF %BETAMOUNTCHOICE% LSS 0 (
	ECHO No.
	CALL :WAITFORTWO
	GOTO :SETBETAMOUNT
)
SET /a TEMP=%BETAMOUNTCHOICE%*%BETNUM%
IF %TEMP% GTR !%GILVAR%! (
	ECHO You don't have enough Gil for that^^!
	CALL :WAITFORTWO
	GOTO :SETBETAMOUNT
) ELSE IF %TEMP% LEQ 0 (
	ECHO You don't have enough Gil for that^^!
	CALL :WAITFORTWO
	GOTO :SETBETAMOUNT
)
SET /a %GILVAR% = !%GILVAR%! - %TEMP%
IF /I "%GILVAR%" NEQ "MINIGAMEGILREWARD" (
	SET /a ROULETTEPROFIT = %ROULETTEPROFIT% - %TEMP%
)
GOTO :EOF

:BETNUMDISPLAY
IF %WINFACTOR% EQU 2 (
	GOTO :EOF
)
IF %BETNUM% GTR 1 (
	ECHO You have chosen to make %BETNUM% %BETVAR% bets
) ELSE (
	ECHO You have chosen to make %BETNUM% %BETVAR% bet
)
ECHO.
GOTO :EOF


:ROULETTERANNUM
REM GENERATES A RANDOM NUMBER BETWEEN 0 and 36
SET /a RANROULETTE=%RANDOM% %% 37
IF "%GILVAR%" NEQ "MINIGAMEGILREWARD" (
	CALL :LUCKEFFECT
)
SET /a MOD=%RANROULETTE%/2
SET /a MOD=%MOD%*2
IF %MOD% EQU %RANROULETTE% (
	SET RANROULETTECOLOUR=Black
) ELSE (
	SET RANROULETTECOLOUR=Red
)
IF %RANROULETTE% GTR 10 (
	IF %MOD% EQU %RANROULETTE% (
		SET RANROULETTECOLOUR=Red
	) ELSE (
	SET RANROULETTECOLOUR=Black
	)
)
IF %RANROULETTE% GTR 18 (
	IF %MOD% EQU %RANROULETTE% (
		SET RANROULETTECOLOUR=Black
	) ELSE (
	SET RANROULETTECOLOUR=Red
	)
)
IF %RANROULETTE% GTR 28 (
	IF %MOD% EQU %RANROULETTE% (
		SET RANROULETTECOLOUR=Red
	) ELSE (
	SET RANROULETTECOLOUR=Black
	)
)
IF %RANROULETTE% EQU 0 (
	SET RANROULETTECOLOUR=Green
)
IF %RANROULETTE% GTR 36 (
	SET RANROULETTECOLOUR=Obsidian
)
IF %RANROULETTE% LSS 0 (
	SET RANROULETTECOLOUR=Mauve
)
GOTO :EOF


:PLAYERWINQUERY
IF %PLAYERROULETTEWIN% EQU 1 (
	GOTO :EOF
)
IF !PLAYER%RANROULETTE%WIN! EQU 1 (
	SET /a PLAYERROULETTEWIN = 1
) ELSE (
	SET /a PLAYERROULETTEWIN = 0
)
GOTO :EOF


:SPIN
CLS
ECHO.
ECHO The roulette wheel spins...
ECHO.
CALL :WAITFORTWO
ECHO ...
ECHO.
CALL :WAITFORTWO
ECHO ...
ECHO.
CALL :WAITFORTWO
ECHO %CASINOOWNERNAME%: %RANROULETTE% - %RANROULETTECOLOUR%
ECHO.
CALL :WAITFORONE
IF %RANROULETTE% GTR 36 (
	CALL :UNLIKELYWIN
) ELSE IF %RANROULETTE% LSS 0 (
	CALL :UNLIKELYWIN
)
GOTO :EOF

:UNLIKELYWIN
ECHO %CASINOOWNERNAME%: But...
ECHO.
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  How did you...
ECHO.
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  And where did the colour come from...
ECHO.
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  ...
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:PLAYERWIN
SET /a ROULETTEWINAMOUNT=%BETAMOUNTCHOICE%*%WINFACTOR%
SET /a %GILVAR%=!%GILVAR%!+%ROULETTEWINAMOUNT%
IF "%GILVAR%" NEQ "MINIGAMEGILREWARD" (
	SET /a ROULETTEPROFIT = %ROULETTEPROFIT%+%ROULETTEWINAMOUNT%
	SET /a ROULETTEWINTOTAL = %ROULETTEWINTOTAL%+1
)
ECHO %CASINOOWNERNAME%: Player wins^^!
ECHO.
pause
GOTO :EOF

:PLAYERLOSE
IF "%GILVAR%" NEQ "MINIGAMEGILREWARD" (
	SET /a ROULETTELOSETOTAL = %ROULETTELOSETOTAL%+1
)
ECHO %CASINOOWNERNAME%: Player loses.
ECHO.
pause
GOTO :EOF



:PLAYAGAIN
CLS
ECHO.
ECHO %CASINOOWNERNAME%: Thank you for playing at Three Feathers, may your life be filled with the song of the sparrow.
ECHO.
ECHO %CASINOOWNERSPACES%  Would you like to play again?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No
ECHO.
SET /P PLAYAGAIN=
ECHO.
IF "%PLAYAGAIN%" EQU "1" (
	GOTO :ROULETTESTART
) ELSE IF "%PLAYAGAIN%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :PLAYAGAIN
)
GOTO :EOF

:LUCKEFFECT
SET /a TEMP = %ROULETTELUCKFACTOR%*%WINFACTOR%
SET /a RANLUCKFACTOR=%RANDOM% %% %TEMP%
IF %PLAYERLCK% GTR %RANLUCKFACTOR% (
	SET /a PLAYERROULETTEWIN = 1
	CALL :LUCK%ROULETTEBETCHOICE%
)
GOTO :EOF

:LUCK1
SET /a RANTEMP=(%RANDOM% %% %BETNUM%)+1
SET /a RANROULETTE = !BETNUM%RANTEMP%!
GOTO :EOF

:LUCK2
SET /a RANTEMP=(%RANDOM% %% %BETNUM%)+1
SET /a TEMP = !BETNUM%RANTEMP%!
SET /a TEMPMIN = (%TEMP%*6)-5
SET /a RANROULETTE=(%RANDOM% %% 6)+%TEMPMIN%
GOTO :EOF

:LUCK3
SET /a RANTEMP=(%RANDOM% %% %BETNUM%)+1
SET /a TEMP = !BETNUM%RANTEMP%!
SET /a TEMPMIN = (%TEMP%*12)-11
SET /a RANROULETTE=(%RANDOM% %% 12)+%TEMPMIN%
GOTO :EOF

:LUCK4
SET /a RANTEMP=(%RANDOM% %% %BETNUM%)+1
SET /a TEMP = !BETNUM%RANTEMP%!
SET /a TEMPMIN = (%TEMP%*18)-17
SET /a RANROULETTE=(%RANDOM% %% 18)+%TEMPMIN%
GOTO :EOF

:LUCK5
SET /a RANROULETTE=(%RANDOM% %% 36)+1
SET /a MOD=%RANROULETTE%/2
SET /a MOD=%MOD%*2
IF %BETNUM1% EQU 1 (
	IF %MOD% NEQ %RANROULETTE% (
		GOTO :LUCK5
	)
) ELSE IF %BETNUM1% EQU 2 (
	IF %MOD% EQU %RANROULETTE% (
		GOTO :LUCK5
	)
)
GOTO :EOF

:LUCK6
SET /a RANROULETTE=(%RANDOM% %% 36)+1
SET /a MOD=%RANROULETTE%/2
SET /a MOD=%MOD%*2
IF %MOD% EQU %RANROULETTE% (
	SET RANROULETTECOLOUR=Black
) ELSE (
	SET RANROULETTECOLOUR=Red
)
IF %RANROULETTE% GTR 10 (
	IF %MOD% EQU %RANROULETTE% (
		SET RANROULETTECOLOUR=Red
	) ELSE (
	SET RANROULETTECOLOUR=Black
	)
)
IF %RANROULETTE% GTR 18 (
	IF %MOD% EQU %RANROULETTE% (
		SET RANROULETTECOLOUR=Black
	) ELSE (
	SET RANROULETTECOLOUR=Red
	)
)
IF %RANROULETTE% GTR 28 (
	IF %MOD% EQU %RANROULETTE% (
		SET RANROULETTECOLOUR=Red
	) ELSE (
	SET RANROULETTECOLOUR=Black
	)
)
IF %BETNUM1% EQU 1 (
	IF /I %RANROULETTECOLOUR% EQU Black (
		GOTO :LUCK6
	)
) ELSE IF %BETNUM1% EQU 2 (
	IF /I %RANROULETTECOLOUR% EQU Red (
		GOTO :LUCK6
	)
)
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
