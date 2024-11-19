SET /a HOMETOWNQUESTPHASE = 1
CALL "%MUSICPATH%\stopmusic.bat"
IF !%MAP%CHEST1OPEN! EQU 1 (
	SET /a SCENETOT = 10
	SET /a HOMETOWNQUESTPHASE = 2
) ELSE (
	SET /a SCENETOT = 9
)
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
ECHO     You knock on uncle %UNCLENAME%'s door
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE2IMAGE
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
:SCENE2TEXT
ECHO     %UNCLENAME%: Who is it?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
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
:SCENE3TEXT
ECHO     %PLAYERNAME%: Hi uncle %UNCLENAME%^^! It's me, %PLAYERNAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
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
:SCENE4TEXT
ECHO     %UNCLENAME%: %PLAYERNAME%, good morning lad. How are you on this fine day?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE5IMAGE
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
:SCENE5TEXT
ECHO     %PLAYERNAME%: I'm good thanks. Mum told me you wanted to see me?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
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
ECHO     %UNCLENAME%: I do indeed^^! I want to show you how to use menus and equipment
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
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
ECHO     %PLAYERNAME%: Mum said something about lethal weapons?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
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
ECHO     %UNCLENAME%: She exaggerates.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
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
ECHO     %UNCLENAME%: I saw a chest by the old mill the other day, can you go and grab the contents
ECHO     of it for me please?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE10IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
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
ECHO     %UNCLENAME%: Oh, I see you've already found it^^! Clever lad
SET /a WAITTIME = %BASEWAITTIME% + 3
SET /a HOMETOWNQUESTPHASE = 2
GOTO :EOF



