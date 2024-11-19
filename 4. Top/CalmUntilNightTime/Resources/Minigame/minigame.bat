@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
COLOR 0F
TITLE Minigame
ECHO SET /a MINIGAMEGILREWARD = 0 > "%MINIGAMERESOURCEPATH%\rewards.bat"
SET /a MINIGAMEREWARDVAR = 0
CALL :DIFFICULTYSELECTION
GOTO :EOF




:DIFFICULTYSELECTION
CLS
ECHO.
ECHO    ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
ECHO    ~                                                                                         ~
ECHO    ~         ______   _       __       _   _           __   __   _    _   _______  __   __   ~
ECHO    ~        /  ___/  / ³     / /      / ³ / ³         / /  / /  / ³  / / /__  __/ / /  / /   ~
ECHO    ~       /  /     /  ³    / /      /  ³/  ³        / /  / /  /  ³ / /    / /   / /  / /    ~
ECHO    ~      /  /     / Ù ³   / /      / /³ /³ ³       / /  / /  /   ³/ /    / /   / /  / /     ~
ECHO    ~     /  /__   / _  ³  / /___   / / ³/ ³ ³      / /__/ /  / /³   /    / /   / /  / /___   ~
ECHO    ~    /_____/  /_/ ³_³ /_____/  /_/     ³_³     /______/  /_/ ³__/    /_/   /_/  /_____/   ~
ECHO    ~                                                                                         ~
ECHO    ~                                                                                         ~
ECHO    ~                                                                                         ~
ECHO    ~                                                                                         ~
ECHO    ~        _    _    __   ______   __  __  _______      _______  _    _   _       ______    ~
ECHO    ~       / ³  / /  / /  / ____/  / / / / /__  __/     /__  __/ / /  / ³ / ³     / ____/    ~
ECHO    ~      /  ³ / /  / /  / / ___  / /_/ /    / /          / /   / /  /  ³/  ³    / /_        ~
ECHO    ~     /   ³/ /  / /  / / / _/ / __  /    / /          / /   / /  / /³ /³ ³   / __/        ~
ECHO    ~    / /³   /  / /  / /__//  / / / /    / /          / /   / /  / / ³/ ³ ³  / /___        ~
ECHO    ~   /_/ ³__/  /_/  /_____/  /_/ /_/    /_/          /_/   /_/  /_/     ³_³ /_____/        ~
ECHO    ~                                                                                         ~
ECHO    ~                                                                                         ~
ECHO    ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
ECHO.
ECHO. Welcome to Calm Until Night Time^^!
ECHO.
ECHO The game is huge and takes a minute or two to load so in the mean-time you can play this minigame.
ECHO You'll be able to tell when the game's loaded by the pleasant title music.
ECHO.
ECHO You will be told to press a key, press it in time to advance, miss it and you won't.
ECHO If you're feeling lucky, you can choose to gamble your winnings in a game of roulette.
ECHO.
ECHO The results of this minigame will give you rewards when you start the game. 
ECHO The higher the difficulty, the more money you'll get.
ECHO The amount of money you earn will be scaled if you're loading a game rather than starting a new one.
ECHO.
ECHO Would you like to play on easy, medium or hard mode?
ECHO.
ECHO. 1 - Easy
ECHO. 2 - Medium
ECHO. 3 - Hard
ECHO. 0 - None
:CHOICE
SET /P DIFFICULTY=
ECHO.
IF "%DIFFICULTY%" EQU "1" (
	SET /a MINIGAMEREWARDVAR = 1
	CALL "%MINIGAMERESOURCEPATH%\easy.bat"
) ELSE IF "%DIFFICULTY%" EQU "2" (
	SET /a MINIGAMEREWARDVAR = 2
	CALL "%MINIGAMERESOURCEPATH%\easy.bat"
) ELSE IF "%DIFFICULTY%" EQU "3" (
	SET /a MINIGAMEREWARDVAR = 3
	CALL "%MINIGAMERESOURCEPATH%\hard.bat"
) ELSE IF "%DIFFICULTY%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CHOICE
)
SET /a MINIGAMEGILREWARD = %MINIGAMEREWARDVAR%*%ROUND%
IF %MINIGAMEGILREWARD% EQU 0 (
	CALL :REPLAYQUERY
) ELSE (
	CALL :REPLAYGAMBLEQUERY
)
IF "%REPLAY%" EQU "2" (
	GOTO :DIFFICULTYSELECTION
)
CALL "%MINIGAMERESOURCEPATH%\determinereward.bat"
GOTO :EOF

:REPLAYGAMBLEQUERY
CLS
ECHO.
ECHO For you efforts, you'll receive %MINIGAMEGILREWARD% Gil (multiplied by half your level if you load a game)
ECHO.
ECHO You can choose to gamble with this money, try again or accept it
ECHO.
ECHO. 1 - Gamble^^!
ECHO. 2 - Try again
ECHO. 0 - I'll accept %MINIGAMEGILREWARD% thanks
ECHO.
:CHOICE2
SET /P REPLAY=
IF "%REPLAY%" EQU "1" (
	SET /a MINIGAMEGAMBLE = 1
	SET GILVAR=MINIGAMEGILREWARD
	CALL "%CASINORESOURCEPATH%\roulette.bat"
) ELSE IF "%REPLAY%" EQU "2" (
	ECHO.
) ELSE IF "%REPLAY%" EQU "0" (
	ECHO.
) ELSE (
	GOTO :CHOICE2
)
GOTO :EOF


:REPLAYQUERY
CLS
ECHO.
ECHO You'll get 0 Gil for that awful effort^^!
ECHO.
ECHO Would you like to try again?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No, I'm happy being a loser
ECHO.
:CHOICE3
SET /P REPLAY=
IF "%REPLAY%" EQU "1" (
	SET /a REPLAY = 2
) ELSE IF "%REPLAY%" EQU "0" (
	ECHO.
) ELSE (
	GOTO :CHOICE3
)
GOTO :EOF
	


