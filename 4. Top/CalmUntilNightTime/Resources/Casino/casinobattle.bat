CLS
ECHO.
ECHO %CASINOOWNERNAME%: Seems like every time you come in here you take money off me^^!
ECHO.
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  I'm starting to think that you might have more than just luck on your side^^!
CALL :WAITFORTWO
ECHO.
ECHO %CASINOOWNERSPACES%  Wanna explain?
ECHO.
CALL :WAITFORONE
:CHOICE
ECHO. 1 - There's nothing to explain, I'm just a lucky guy.
ECHO. 2 - I don't think I need to discuss this with you.
IF %EXPLICIT% EQU 1 (
	ECHO. 3 - Fuck you fat man^^!
) ELSE (
	ECHO. 3 - Shut up fat man^^!
)
ECHO. 0 - No thanks, I'll just be leaving now
ECHO.
SET /P CASINOCHATCHOICE=
ECHO.
IF "%CASINOCHATCHOICE%" EQU "1" (
	CALL :CASINOCHAT1
) ELSE IF "%CASINOCHATCHOICE%" EQU "2" (
	CALL :CASINOCHAT2
) ELSE IF "%CASINOCHATCHOICE%" EQU "3" (
	CALL :CASINOFIGHT
) ELSE IF "%CASINOCHATCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CHOICE
)
GOTO :EOF

:CASINOCHAT1
ECHO %CASINOOWNERNAME%: No one's that lucky, what's your secret?
ECHO.
ECHO. 1 - I'm just dead good looking so nice things happen to me
ECHO. 2 - If you give me 5000 Gil I'll tell you
ECHO. 3 - Well this is actually just a game so putting your luck stat up helps
IF %EXPLICIT% EQU 1 (
	ECHO. 4 - Fuck you fat man^^!
) ELSE (
	ECHO. 4 - Shut up fat man^^!
)
:CHOICE1
ECHO. 
SET /P CASINOCHATCHOICE1=
ECHO.
IF "%CASINOCHATCHOICE1%" EQU "1" (
	CALL :CASINOCHAT11
) ELSE IF "%CASINOCHATCHOICE1%" EQU "2" (
	CALL :CASINOCHAT12
) ELSE IF "%CASINOCHATCHOICE1%" EQU "3" (
	CALL :CASINOCHAT13
) ELSE IF "%CASINOCHATCHOICE1%" EQU "4" (
	CALL :CASINOFIGHT
) ELSE (
	GOTO :CHOICE1
)
GOTO :EOF

:CASINOCHAT11
ECHO %CASINOOWNERNAME%: Not for long mate...
ECHO.
CALL :WAITFORTWO
CALL :CASINOFIGHT
GOTO :EOF

:CASINOCHAT12
ECHO %CASINOOWNERNAME%: How about I give you 5000 Gil worth of pain^^!
ECHO.
CALL :WAITFORTHREE
CALL :CASINOFIGHT
GOTO :EOF

:CASINOCHAT13
ECHO %CASINOOWNERNAME%: What's a game? I'm confused. I don't like people who confuse me
ECHO %CASINOOWNERSPACES%  I'm going to crush your balls in a vice.
CALL :WAITFORTHREE
ECHO %CASINOOWNERSPACES%  Seriously, Imagine it. I'm going to crush your balls in a vice.
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  Imagine what that would feel like. Wouldn't just be a simple pop
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  It'd be a powerful squelch.
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  Ouch^^!!
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  Yea that's what I'm going to do to you...
ECHO.
CALL :WAITFORTHREE
ECHO.
CALL :CASINOFIGHT
GOTO :EOF

:CASINOCHAT2
ECHO %CASINOOWNERNAME%: That's where you're mistaken kiddo
ECHO.
CALL :WAITFORTWO
ECHO %CASINOOWNERSPACES%  Let's discuss this over a nice FIST IN YOUR FACE^^!^^!
ECHO.
CALL :WAITFORTWO
CALL :CASINOFIGHT
GOTO :EOF


:CASINOFIGHT
SET /a ENEMYID = %CASINOBOSSID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
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