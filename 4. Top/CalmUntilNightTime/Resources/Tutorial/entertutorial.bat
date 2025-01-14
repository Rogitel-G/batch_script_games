@ECHO OFF
CALL :SETLOCATION
IF %TUTORIALWELCOMESEEN% EQU 0 (
	CALL "%TUTORIALRESOURCEPATH%\tutorialwelcome.bat"
)
:ENTERTUTORIAL
CALL "%TUTORIALRESOURCEPATH%\tutorialdisplay.bat"
ECHO.
ECHO %TUTORIALNAME%: Hi there %PLAYERNAME%, what would you like to learn about?
ECHO.
ECHO. 1 - Random Hint
ECHO. 2 - Battles
ECHO. 3 - Places
ECHO. 4 - Items
ECHO. 5 - Menu
ECHO. 0 - I've learned enough
ECHO.
:CATEGORYCHOICE
SET /P TUTORIALCATEGORY=
ECHO.
IF "%TUTORIALCATEGORY%" EQU "1" (
	CALL :RANDOMHINT
) ELSE IF "%TUTORIALCATEGORY%" EQU "2" (
	CALL "%TUTORIALRESOURCEPATH%\battletutorial.bat"
) ELSE IF "%TUTORIALCATEGORY%" EQU "3" (
	CALL "%TUTORIALRESOURCEPATH%\placestutorial.bat"
) ELSE IF "%TUTORIALCATEGORY%" EQU "4" (
	CALL "%TUTORIALRESOURCEPATH%\itemtutorial.bat"
) ELSE IF "%TUTORIALCATEGORY%" EQU "5" (
	CALL "%TUTORIALRESOURCEPATH%\menututorial.bat"
) ELSE IF "%TUTORIALCATEGORY%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CATEGORYCHOICE
)
GOTO :ENTERTUTORIAL

:RANDOMHINT
SET /a HINTNUM = %RANDOM% %% %HINTTOT% + 1
CALL "%TUTORIALRESOURCEPATH%\tutorialdisplay.bat"
ECHO.
ECHO %TUTORIALNAME%: !HINT%HINTNUM%LINE1!
IF !HINT%HINTNUM%LINENUM! EQU 1 (
	GOTO :LOOPEND
)
SET /a COUNT = 1
:HINTLOOP
SET /a COUNT = %COUNT% + 1
ECHO                !HINT%HINTNUM%LINE%COUNT%!
IF %COUNT% LSS !HINT%HINTNUM%LINENUM! (
	GOTO :HINTLOOP
)
:LOOPEND
ECHO.
ECHO.
ECHO %TUTORIALNAME%: Would you like to hear another?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No
ECHO.
SET /P CHOICE=
:HERE
IF "%CHOICE%" EQU "1" (
	GOTO :RANDOMHINT
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
)
GOTO :HERE


:SETLOCATION
IF /I %MAP% EQU town2 (
	SET /a PLAYERXCOORD = 3
	SET /a PLAYERYCOORD = 2
)
GOTO :EOF
