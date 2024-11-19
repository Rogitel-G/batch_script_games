:CHAT1
CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: I think he's an insane grotesque cockshlurper. Why do you ask?
ECHO.
ECHO. 1 - He asked me to come here, kill you and take your eye to him.
ECHO. 0 - No reason, forget I asked.
ECHO.
:CHAT1CHOICE
SET /P CHAT1CHOICE=
ECHO.
IF "%CHAT1CHOICE%" EQU "1" (
	CALL :CHAT2
) ELSE IF "%CHAT1CHOICE%" EQU "0" (
	CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
	ECHO.
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: Okay...
	CALL :WAITFORTWO
) ELSE (
	GOTO :CHAT1CHOICE
)
GOTO :EOF

:CHAT2
CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
ECHO.
ECHO !SHOPKEEPER%SHOPNUM%NAME!: Two people came in and said the exact same thing to me last week^^!
ECHO.
CALL :WAITFORTWO
IF %EXPLICIT% EQU 1 (
	ECHO             One wanted to warn me what a fucking weirdo the guy is, I've only met him twice^^!
) ELSE (
	ECHO             One wanted to warn me what a weirdo the guy is, I've only met him twice^^!
)
ECHO.
CALL :WAITFORTWO
ECHO             The other one was foolish enough to actually try to kill me^^! I fed him to a 
ECHO             Yorkshire Terrier that I found outside.
ECHO.
CALL :WAITFORTHREE
ECHO             Seriously kid, that guy is insane. I'd keep away from him if I were you.
ECHO.
ECHO. 1 - Yea... I'm kinda planning on killing you and taking your eye to him...
ECHO. 0 - I just wanted to warn you too, he's mental. Can I buy something?
ECHO.
:CHAT2CHOICE
SET /P CHAT2CHOICE=
ECHO.
IF "%CHAT2CHOICE%" EQU "1" (
	CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
	ECHO.
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: Well in that case, get ready to be Yorkshire Terrier chow^^!^^!
	ECHO.
	CALL :WAITFORTHREE
	CALL "%SHOPRESOURCEPATH%\shopkeeperfight.bat"
) ELSE IF "%CHAT2CHOICE%" EQU "0" (
	CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
	ECHO.
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: Thanks for the warning kid, I'll sleep with one eye open.
	ECHO.
	CALL :WAITFORTHREE
) ELSE (
	GOTO :CHAT2CHOICE
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