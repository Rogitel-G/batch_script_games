CALL "%MUSICPATH%\stopmusic.bat"
SET /a SCENETOT = 10
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
SET /a HOMETOWNQUESTPHASE = 4
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
ECHO    บ                     ณ          ณ  ณ  ณ           ณ   ฺฤฟ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ณ  ณ  ณ           ณ   ณ ณ ณ                    ณ          ณ         บ
ECHO    บ                     ณ          ภฤฤมฤฤู           ณ   ภยู ณ                    ณ          ณ         บ
ECHO    บ                     ณ                            ณ Û  ณ  ณ                    ณ          ณ         บ
ECHO    บ                     ณ                            ณ   ฤลฤ ณ                    ณ        /           บ
ECHO    บ                     ณ                            ณ    ณ  ณ                    ณ      /             บ
ECHO    บ                     ณ                            ณ    ณ  ณ                    ณ    /               บ
ECHO    บ                     ณ                            ณ   / \ ณ                    ณ  /                 บ
ECHO    บ                     ณ                            ณ  /   \ณ                    ณ/                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     You knock at %FRIENDNAME%'s door...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     %FRIENDNAME%: Hi %PLAYERNAME%^^! How's it going?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     %PLAYERNAME%: I'm good^^! What you wanna do today?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     %FRIENDNAME%: Well, why don't we go and murder animals? I've heard that's
ECHO     how people get stronger^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     %PLAYERNAME%: Yea^^! That's definitely how life works
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     Disclaimer: NO^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     %FRIENDNAME%: What's that you say? You don't know how to kill things?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     %FRIENDNAME%: Let me show you
SET /a WAITTIME = %BASEWAITTIME% + 3
SET TEMPPATH=%MUSICPATH%\Battle\StandardBattle
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
TIMEOUT /T 2 > nul
CALL "%TUTORIALRESOURCEPATH%\battleexample.bat"
CALL "%MUSICPATH%\stopmusic.bat"
SET /a COUNT = 8
GOTO :EOF

REM First level up

:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     %FRIENDNAME%: See^^! You're stronger already. Isn't life great in our
ECHO     quaint little village. I sure hope nothing horrific happens any time soon
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE10IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ       / / / / / / /          ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
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
ECHO     %FRIENDNAME%: Let's go and see what %GIRLNAME%'s up to today. Maybe you can
ECHO     impress her with your new found strength^^! And don't forget to equip your new stuff
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF




