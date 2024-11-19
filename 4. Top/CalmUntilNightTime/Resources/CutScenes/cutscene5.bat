CALL "%MUSICPATH%\stopmusic.bat"
SET /a SCENETOT = 37
SET /a SKIP = 0
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT% + 1
CLS
ECHO.
CALL :SCENE%COUNT%IMAGE
CALL :SCENE%COUNT%TEXT
CALL :CONTROLS
IF %CUTSCENEPROGRESSION% EQU 1 (
	CHOICE /C:012 /N /T:%WAITTIME% /D:1
) ELSE (
	CHOICE /C:012 /N /T:9999 /D:1
)
IF %ERRORLEVEL% EQU 1 (
	SET /a SKIP = 1
) ELSE IF %ERRORLEVEL% EQU 3 (
	IF %COUNT% GTR 1 (
		SET /a COUNT = %COUNT% - 2
	) ELSE (
		SET /a COUNT = %COUNT% - 1
	)
)
IF %SKIP% EQU 1 (
	CALL :CONFIRM
)
IF %SKIP% EQU 1 (
	GOTO :END
)
IF %COUNT% LSS %SCENETOT% (
	GOTO :LOOPSTART
)
:END
ECHO.
SET /a HOMETOWNQUESTPHASE = 5
SET /a ENEMY1CAUGHT=1
SET /a CATCHSUCCESSCOUNT = %CATCHSUCCESSCOUNT% + 1
SET /a STORY2VERSIONNUM = 1
GOTO :EOF

:CONTROLS
ECHO.
ECHO. 1 - Fast forward
ECHO. 2 - Rewind
ECHO. 0 - Pause, with the option to skip
ECHO.
GOTO :EOF

:CONFIRM
CLS
ECHO.
ECHO Paused. Do you want to skip this cutscene?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No, continue
ECHO.
SET /P SKIP=
IF "%SKIP%" EQU "1" (
	GOTO :EOF
) ELSE IF "%SKIP%" EQU "0" (
	SET /a COUNT = %COUNT% - 1
	GOTO :EOF
) ELSE (
	GOTO :CONFIRM
)
GOTO :EOF

:SCENE1IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                               /                                                         /ณ         บ
ECHO    บ                             /                                                         /  ณ         บ
ECHO    บ                           /                                                         /    ณ         บ
ECHO    บ                         /                                                         /      ณ         บ
ECHO    บ                       /                                                         /        ณ         บ
ECHO    บ                     /                                                         /          ณ         บ
ECHO    บ                     รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ          ฺฤฤยฤฤฟ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ฺฤฤฤฤฤฤฤฟ                    ณ          ณ         บ
ECHO    บ                     ณ          รฤฤลฤฤด           ณ       ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ฺฤด   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ณ ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู         ภยด   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                           ณณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                         ฤฤลลฤ  ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                          / \   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                         /  ณ\ /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     You and %FRIENDNAME% knock at %GIRLNAME%'s door...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %GIRLNAME%: Hi %FRIENDNAME%, hi %PLAYERNAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %PLAYERNAME%: (Wow, she's beautiful...)
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %PLAYERNAME%: (I've known her since I was little, but we've never really been that close)
SET /a WAITTIME = %BASEWAITTIME% + 2
SET /a COUNT = 5
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %PLAYERNAME%: (We only really started hanging out after Mum and Dad had that accident)
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %PLAYERNAME%: (I think love her, she's just so beautiful)
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %GIRLNAME%: Errr, are you ok? You haven't blinked or said anything...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %FRIENDNAME%: I think he's just madly in l..
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

REM First level up
:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %PLAYERNAME%: *COUGH*^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE10IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %FRIENDNAME%: I mean I think he's just coming to terms with his new found strength
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE11IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %FRIENDNAME%: We've been training this morning and he's gotten much stronger
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE12IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %GIRLNAME%: What do you mean training? What's that?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE13IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %FRIENDNAME%: It's where you find animals and k..
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE14IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE14TEXT
IF %EXPLICIT% EQU 1 (
	ECHO     %PLAYERNAME%: *COUGH FUCKING COUGH*^^!
) ELSE (
	ECHO     %PLAYERNAME%: *COUGH COUGH*^^!
)
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE15IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     %GIRLNAME%: Are you ok %PLAYERNAME%? All you've done is stand there coughing?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE16IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE16TEXT
ECHO     %PLAYERNAME%: I'm fine, just got a bit of a tickly throat that's all...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE17IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE17TEXT
ECHO     %PLAYERNAME%: What %FRIENDNAME% was going to say is that it's where you find
ECHO     animals and ...catch them
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE18IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE18TEXT
ECHO     %GIRLNAME%: Oh^^! I know how to do that^^! Can I train with you?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE19IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE19TEXT
ECHO     %PLAYERNAME%: I don't know, it's not really a good activity for girls
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE20IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE20TEXT
IF %EXPLICIT% EQU 1 (
	ECHO     %GIRLNAME%: Fuck you^^! I bet I can train better than either of you,
) ELSE (
	ECHO     %GIRLNAME%: Shut up! I bet I can train better than either of you,
)
ECHO     just watch me^^! I'll show you how good I am at catching
SET /a WAITTIME = 0
TIMEOUT /T 5 > nul
SET TEMPPATH=%MUSICPATH%\Battle\StandardBattle
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
CALL "%TUTORIALRESOURCEPATH%\catchexample.bat"
CALL "%MUSICPATH%\stopmusic.bat"
GOTO :EOF

:SCENE21IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE21TEXT
ECHO     %GIRLNAME%: See, I'm pro^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE22IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE22TEXT
ECHO     %PLAYERNAME%: (That was awesome, I want to marry her^^!)
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE23IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE23TEXT
ECHO     %FRIENDNAME%: Nice work %GIRLNAME%^^! I think you're cool enough to
ECHO     invite to our super-secret camp out tonight
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE24IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE24TEXT
ECHO     %PLAYERNAME%: (What's he talking about?)
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE25IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE25TEXT
ECHO     %FRIENDNAME%: %PLAYERNAME% and I are going to camp out in the old mill
ECHO     tonight, are you in?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE26IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE26TEXT
ECHO     %GIRLNAME%: I don't know... It's scary up there
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE27IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE27TEXT
ECHO     %FRIENDNAME%: Don't be a chicken^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE28IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE28TEXT
ECHO     %GIRLNAME%: I'm not a chicken^^! I'll be there^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE29IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE29TEXT
ECHO     %FRIENDNAME%: Ok, see you at 9 then
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE30IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ     ษอออออออออออออออป        ณ                                   บ
ECHO    บ                                 ณ     บฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ÜÜ   ÜÜ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฺฟ   ฺฟ   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ภู   ภู   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ      ู      ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ   ฿ÜÜÜÜÜ฿   ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บณ             ณบ        ณ                                   บ
ECHO    บ                                 ณ     บภฤฤฤฤยฤฤฤยฤฤฤฤูบ        ณ                                   บ
ECHO    บ                                 ณ     บ     ณ   ณ     บ        ณ                                   บ
ECHO    บ                                 ณ   ฺฤบฤฤฤฤฤมฤฤฤมฤฤฤฤฤบฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ บ               บ ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE30TEXT
ECHO     %GIRLNAME%: See you later^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE31IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                               /                                                         /ณ         บ
ECHO    บ                             /                                                         /  ณ         บ
ECHO    บ                           /                                                         /    ณ         บ
ECHO    บ                         /                                                         /      ณ         บ
ECHO    บ                       /                                                         /        ณ         บ
ECHO    บ                     /                                                         /          ณ         บ
ECHO    บ                     รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ          ฺฤฤยฤฤฟ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ฺฤฤฤฤฤฤฤฟ                    ณ          ณ         บ
ECHO    บ                     ณ          รฤฤลฤฤด           ณ       ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ฺฤด   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ณ ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู         ภยด   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                           ณณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                         ฤฤลลฤ  ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                          / \   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                         /  ณ\ /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE31TEXT
ECHO     %FRIENDNAME%: You can thank me later^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE32IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                               /                                                         /ณ         บ
ECHO    บ                             /                                                         /  ณ         บ
ECHO    บ                           /                                                         /    ณ         บ
ECHO    บ                         /                                                         /      ณ         บ
ECHO    บ                       /                                                         /        ณ         บ
ECHO    บ                     /                                                         /          ณ         บ
ECHO    บ                     รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ          ฺฤฤยฤฤฟ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ฺฤฤฤฤฤฤฤฟ                    ณ          ณ         บ
ECHO    บ                     ณ          รฤฤลฤฤด           ณ       ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ฺฤด   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ณ ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู         ภยด   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                           ณณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                         ฤฤลลฤ  ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                          / \   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                         /  ณ\ /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE32TEXT
ECHO     %PLAYERNAME%: Thank you^^!? I can barely speak to her for more than two minutes.
ECHO     What the hell am I going to do on a camping trip with her^^!?
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE33IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                               /                                                         /ณ         บ
ECHO    บ                             /                                                         /  ณ         บ
ECHO    บ                           /                                                         /    ณ         บ
ECHO    บ                         /                                                         /      ณ         บ
ECHO    บ                       /                                                         /        ณ         บ
ECHO    บ                     /                                                         /          ณ         บ
ECHO    บ                     รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ          ฺฤฤยฤฤฟ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ฺฤฤฤฤฤฤฤฟ                    ณ          ณ         บ
ECHO    บ                     ณ          รฤฤลฤฤด           ณ       ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ฺฤด   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ณ ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู         ภยด   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                           ณณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                         ฤฤลลฤ  ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                          / \   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                         /  ณ\ /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE33TEXT
ECHO     %PLAYERNAME%: And in the old mill of all places^^! Why are we taking her up into
ECHO     the old mill? I've heard it's haunted^^!
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE34IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                               /                                                         /ณ         บ
ECHO    บ                             /                                                         /  ณ         บ
ECHO    บ                           /                                                         /    ณ         บ
ECHO    บ                         /                                                         /      ณ         บ
ECHO    บ                       /                                                         /        ณ         บ
ECHO    บ                     /                                                         /          ณ         บ
ECHO    บ                     รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ          ฺฤฤยฤฤฟ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ฺฤฤฤฤฤฤฤฟ                    ณ          ณ         บ
ECHO    บ                     ณ          รฤฤลฤฤด           ณ       ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ฺฤด   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ณ ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู         ภยด   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                           ณณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                         ฤฤลลฤ  ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                          / \   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                         /  ณ\ /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE34TEXT
ECHO     %FRIENDNAME%: Bet you'd love to take her up the old mill^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE35IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                               /                                                         /ณ         บ
ECHO    บ                             /                                                         /  ณ         บ
ECHO    บ                           /                                                         /    ณ         บ
ECHO    บ                         /                                                         /      ณ         บ
ECHO    บ                       /                                                         /        ณ         บ
ECHO    บ                     /                                                         /          ณ         บ
ECHO    บ                     รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ          ฺฤฤยฤฤฟ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ฺฤฤฤฤฤฤฤฟ                    ณ          ณ         บ
ECHO    บ                     ณ          รฤฤลฤฤด           ณ       ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ฺฤด   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ณ ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู         ภยด   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                           ณณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                         ฤฤลลฤ  ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                          / \   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                         /  ณ\ /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE35TEXT
IF %EXPLICIT% EQU 1 (
	ECHO     %PLAYERNAME%: HA^^! Shut up you prick
) ELSE (
	ECHO     %PLAYERNAME%: HA^^! Shut up
)
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE36IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                               /                                                         /ณ         บ
ECHO    บ                             /                                                         /  ณ         บ
ECHO    บ                           /                                                         /    ณ         บ
ECHO    บ                         /                                                         /      ณ         บ
ECHO    บ                       /                                                         /        ณ         บ
ECHO    บ                     /                                                         /          ณ         บ
ECHO    บ                     รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ          ฺฤฤยฤฤฟ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ฺฤฤฤฤฤฤฤฟ                    ณ          ณ         บ
ECHO    บ                     ณ          รฤฤลฤฤด           ณ       ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ฺฤด   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ณ ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู         ภยด   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                           ณณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                         ฤฤลลฤ  ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                          / \   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                         /  ณ\ /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE36TEXT
ECHO     %FRIENDNAME%: Right, let's head home and meet at the old mill later on
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE37IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                               /                                                         /ณ         บ
ECHO    บ                             /                                                         /  ณ         บ
ECHO    บ                           /                                                         /    ณ         บ
ECHO    บ                         /                                                         /      ณ         บ
ECHO    บ                       /                                                         /        ณ         บ
ECHO    บ                     /                                                         /          ณ         บ
ECHO    บ                     รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ                                                         ณ          ณ         บ
ECHO    บ                     ณ          ฺฤฤยฤฤฟ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ                                        ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ฺฤฤฤฤฤฤฤฟ                    ณ          ณ         บ
ECHO    บ                     ณ          รฤฤลฤฤด           ณ       ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ฺฤด   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ         ณ ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู         ภยด   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                           ณณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                         ฤฤลลฤ  ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                           ณณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                          / \   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                         /  ณ\ /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE37TEXT
ECHO     %PLAYERNAME%: Ok, catch ya later
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

