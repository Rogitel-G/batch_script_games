:EXPLAINSTART
CALL "%ALCHEMISTRESOURCEPATH%\alchemistdisplay.bat"
ECHO.
ECHO %ALCHEMISTNAME%: What would you like to know about?
ECHO.
ECHO. 1 - Tell me about the items I can create
ECHO. 2 - Tell me about item combining
ECHO. 0 - I think I understand enough
ECHO.
:CHOICE
SET /P EXPLAINCHOICE=
ECHO.
IF "%EXPLAINCHOICE%" EQU "1" (
	CALL "%ALCHEMISTRESOURCEPATH%\explaincreate.bat"
) ELSE IF "%EXPLAINCHOICE%" EQU "2" (
	CALL "%ALCHEMISTRESOURCEPATH%\explaincombine.bat"
) ELSE IF "%EXPLAINCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CHOICE
)
GOTO :EXPLAINSTART
