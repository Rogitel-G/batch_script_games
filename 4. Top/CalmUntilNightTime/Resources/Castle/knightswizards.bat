CALL "%MUSICPATH%\stopmusic.bat"
SET /a CASTLECUTSCENESEEN = 1
SET /a SCENETOT = 9
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
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                               บ
ECHO    บ                                      ณ      ฒ      ณ                                               บ
ECHO    บ                                      ณ      ฒ      ณ                                               บ
ECHO    บ                                      ณฒฒฒÛÛฒฒฒÛÛฒฒฒณ                                               บ
ECHO    บ                                      ณ      ฒ      ณ       /\                                      บ
ECHO    บ                                      ณ þþþþ ฒ þþþþ ณ      /  \                                     บ
ECHO    บ                                      ณ þþþþ ฒ þþþþ ณ      ณ  ณ                                     บ
ECHO    บ                                      ณ þþþþ ฒ þþþþ ณ      ณ บณ                                     บ
ECHO    บ                                      ณ þþþþ ฒ þþþþ ณ      ณ บณ                                     บ
ECHO    บ                                      ภฤฤฤฟ     ฺฤฤฤู      ณ บณ                                     บ
ECHO    บ                   ณ\ฤฤฤฤฤฤฤฤฤฤ/ณ ฺฤฤฤฤฤฤฤู     ภฤฤฤฤฤฤฟ   ณ บณ                                     บ
ECHO    บ                   ณ            ณ ณ                    ณ   ณ บณ                                     บ
ECHO    บ                   ณ      ณ     ณ ณ                    ณ   ณ บณ                                     บ
ECHO    บ                   ณ      ณ     ณ ณ                    ณ   ณ บณ                                     บ
ECHO    บ                   ณ   ฤฤฤลฤฤฤ  ณ ณ          ณ         ณ   ณ บณ                                     บ
ECHO    บ                   ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                                     บ
ECHO    บ                   ณ      ณ     ณ ณ       ฤฤฤลฤฤฤ      ณ   ณ บณ                                     บ
ECHO    บ                   ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                                     บ
ECHO    บ                   ณ      ณ     ณ ณ          ณ         ณษป ณ บณ ษป                                  บ
ECHO    บ                    \     ณ    /  ณ          ณ         ณบศอผ  ศอผบ                                  บ
ECHO    บ                     \        /   ณ          ณ         ณศออป  ษออผ                                  บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     Knight: We are the Knights of Nee^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                           /\                                                       บ
ECHO    บ                                          /  \                                                      บ
ECHO    บ                                         /    \                                                     บ
ECHO    บ                                        /      \                                                    บ
ECHO    บ                                       /        \                                                   บ
ECHO    บ                                      /          \                                                  บ
ECHO    บ                                 ____/____________\____                                             บ
ECHO    บ                                    ณ              ณ                                                บ
ECHO    บ                                    ณ    \    /    ณ                                                บ
ECHO    บ                                    ณ    O    O    ณ                                                บ
ECHO    บ                                    ณ              ณ        ณ                                       บ
ECHO    บ                                    ณ              ณ      \   /                                     บ
ECHO    บ                                    ณ    ฤฤฤฤฤฤ    ณ     _ ÛÛÛ _                                    บ
ECHO    บ                                    ณ              ณ       ÛÛÛ                                      บ
ECHO    บ                                    ภฤฤฤฤฟ     ฺฤฤฤู     / ณ ณ \                                    บ
ECHO    บ                                     /ฤฤฤู     ภฤฤฤ\       ณ ณ                                      บ
ECHO    บ                                    /               \      ณ ณ                                      บ
ECHO    บ                                   /        ณ        \     ณ ณ                                      บ
ECHO    บ                                  /         ณ         \    ณ ณ                                      บ
ECHO    บ                                 ณ        ฤฤลฤฤ        ณ   ณ ณ                                      บ
ECHO    บ                                 ณ          ณ          ณ   ณ ณ                                      บ
ECHO    บ                                 ณ          ณ          ณ   ณ ณ                                      บ
ECHO    บ                                 ณ          ณ          ณ   ณ ณ                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     Wizard: And we are the Wizards of w...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                           /\                                                       บ
ECHO    บ                                          /  \                                                      บ
ECHO    บ                                         /    \                                                     บ
ECHO    บ                                        /      \                                                    บ
ECHO    บ                                       /        \                                                   บ
ECHO    บ                                      /          \                                                  บ
ECHO    บ                                 ____/____________\____                                             บ
ECHO    บ                                    ณ              ณ                                                บ
ECHO    บ                                    ณ    ฤ    ฤ    ณ                                                บ
ECHO    บ                                    ณ    O    O    ณ                                                บ
ECHO    บ                                    ณ              ณ        ณ                                       บ
ECHO    บ                                    ณ              ณ      \   /                                     บ
ECHO    บ                                    ณ    ฤฤฤฤฤฤ    ณ     _ ÛÛÛ _                                    บ
ECHO    บ                                    ณ              ณ       ÛÛÛ                                      บ
ECHO    บ                                    ภฤฤฤฤฟ     ฺฤฤฤู     / ณ ณ \                                    บ
ECHO    บ                                     /ฤฤฤู     ภฤฤฤ\       ณ ณ                                      บ
ECHO    บ                                    /               \      ณ ณ                                      บ
ECHO    บ                                   /        ณ        \     ณ ณ                                      บ
ECHO    บ                                  /         ณ         \    ณ ณ                                      บ
ECHO    บ                                 ณ        ฤฤลฤฤ        ณ   ณ ณ                                      บ
ECHO    บ                                 ณ          ณ          ณ   ณ ณ                                      บ
ECHO    บ                                 ณ          ณ          ณ   ณ ณ                                      บ
ECHO    บ                                 ณ          ณ          ณ   ณ ณ                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     Wizard: Wazarath...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                        /\                          บ
ECHO    บ                                                                       /  \                         บ
ECHO    บ                     ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                  /    \                        บ
ECHO    บ                     ณ      ฒ      ณ                                 /      \                       บ
ECHO    บ                     ณ      ฒ      ณ                                /        \                      บ
ECHO    บ                     ณฒฒฒÛÛฒฒฒÛÛฒฒฒณ                               /          \                     บ
ECHO    บ                     ณ      ฒ      ณ       /\                 ____/____________\____                บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      /  \                   ณ              ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ  ณ                   ณ    \    /    ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ    O    O    ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ              ณ        ณ          บ
ECHO    บ                     ภฤฤฤฟ     ฺฤฤฤู      ณ บณ                   ณ              ณ      \   /        บ
ECHO    บ  ณ\ฤฤฤฤฤฤฤฤฤฤ/ณ ฺฤฤฤฤฤฤฤู     ภฤฤฤฤฤฤฟ   ณ บณ                   ณ    ฤฤฤฤฤฤ    ณ     _ ÛÛÛ _       บ
ECHO    บ  ณ            ณ ณ                    ณ   ณ บณ                   ณ              ณ       ÛÛÛ         บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                   ภฤฤฤฤฟ     ฺฤฤฤู     / ณ ณ \       บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                    /ฤฤฤู     ภฤฤฤ\       ณ ณ         บ
ECHO    บ  ณ   ฤฤฤลฤฤฤ  ณ ณ          ณ         ณ   ณ บณ                   /               \      ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                  /        ณ        \     ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ       ฤฤฤลฤฤฤ      ณ   ณ บณ                 /         ณ         \    ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                ณ        ฤฤลฤฤ        ณ   ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณษป ณ บณ ษป             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ   \     ณ    /  ณ          ณ         ณบศอผ  ศอผบ             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ    \        /   ณ          ณ         ณศออป  ษออผ             ณ          ณ          ณ   ณ ณ         บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     Both: And together we are...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                        /\                          บ
ECHO    บ                                                                       /  \                         บ
ECHO    บ                     ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                  /    \                        บ
ECHO    บ                     ณ      ฒ      ณ                                 /      \                       บ
ECHO    บ                     ณ      ฒ      ณ                                /        \                      บ
ECHO    บ                     ณฒฒฒÛÛฒฒฒÛÛฒฒฒณ                               /          \                     บ
ECHO    บ                     ณ      ฒ      ณ       /\                 ____/____________\____                บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      /  \                   ณ              ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ  ณ                   ณ    \    /    ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ    O    O    ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ              ณ        ณ          บ
ECHO    บ                     ภฤฤฤฟ     ฺฤฤฤู      ณ บณ                   ณ              ณ      \   /        บ
ECHO    บ  ณ\ฤฤฤฤฤฤฤฤฤฤ/ณ ฺฤฤฤฤฤฤฤู     ภฤฤฤฤฤฤฟ   ณ บณ                   ณ    ฤฤฤฤฤฤ    ณ     _ ÛÛÛ _       บ
ECHO    บ  ณ            ณ ณ                    ณ   ณ บณ                   ณ              ณ       ÛÛÛ         บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                   ภฤฤฤฤฟ     ฺฤฤฤู     / ณ ณ \       บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                    /ฤฤฤู     ภฤฤฤ\       ณ ณ         บ
ECHO    บ  ณ   ฤฤฤลฤฤฤ  ณ ณ          ณ         ณ   ณ บณ                   /               \      ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                  /        ณ        \     ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ       ฤฤฤลฤฤฤ      ณ   ณ บณ                 /         ณ         \    ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                ณ        ฤฤลฤฤ        ณ   ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณษป ณ บณ ษป             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ   \     ณ    /  ณ          ณ         ณบศอผ  ศอผบ             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ    \        /   ณ          ณ         ณศออป  ษออผ             ณ          ณ          ณ   ณ ณ         บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     Both: The Knights of Nee and the Wizards of Wazarath^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                        /\                          บ
ECHO    บ                                                                       /  \                         บ
ECHO    บ                     ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                  /    \                        บ
ECHO    บ                     ณ      ฒ      ณ                                 /      \                       บ
ECHO    บ                     ณ      ฒ      ณ                                /        \                      บ
ECHO    บ                     ณฒฒฒÛÛฒฒฒÛÛฒฒฒณ                               /          \                     บ
ECHO    บ                     ณ      ฒ      ณ       /\                 ____/____________\____                บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      /  \                   ณ              ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ  ณ                   ณ    \    /    ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ    O    O    ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ              ณ        ณ          บ
ECHO    บ                     ภฤฤฤฟ     ฺฤฤฤู      ณ บณ                   ณ              ณ      \   /        บ
ECHO    บ  ณ\ฤฤฤฤฤฤฤฤฤฤ/ณ ฺฤฤฤฤฤฤฤู     ภฤฤฤฤฤฤฟ   ณ บณ                   ณ    ฤฤฤฤฤฤ    ณ     _ ÛÛÛ _       บ
ECHO    บ  ณ            ณ ณ                    ณ   ณ บณ                   ณ              ณ       ÛÛÛ         บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                   ภฤฤฤฤฟ     ฺฤฤฤู     / ณ ณ \       บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                    /ฤฤฤู     ภฤฤฤ\       ณ ณ         บ
ECHO    บ  ณ   ฤฤฤลฤฤฤ  ณ ณ          ณ         ณ   ณ บณ                   /               \      ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                  /        ณ        \     ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ       ฤฤฤลฤฤฤ      ณ   ณ บณ                 /         ณ         \    ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                ณ        ฤฤลฤฤ        ณ   ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณษป ณ บณ ษป             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ   \     ณ    /  ณ          ณ         ณบศอผ  ศอผบ             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ    \        /   ณ          ณ         ณศออป  ษออผ             ณ          ณ          ณ   ณ ณ         บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     Knight: Defeat us to get access to better and better rewards from the chests
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                        /\                          บ
ECHO    บ                                                                       /  \                         บ
ECHO    บ                     ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                  /    \                        บ
ECHO    บ                     ณ      ฒ      ณ                                 /      \                       บ
ECHO    บ                     ณ      ฒ      ณ                                /        \                      บ
ECHO    บ                     ณฒฒฒÛÛฒฒฒÛÛฒฒฒณ                               /          \                     บ
ECHO    บ                     ณ      ฒ      ณ       /\                 ____/____________\____                บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      /  \                   ณ              ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ  ณ                   ณ /            ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ O            ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ              ณ        ณ          บ
ECHO    บ                     ภฤฤฤฟ     ฺฤฤฤู      ณ บณ                   ณ              ณ      \   /        บ
ECHO    บ  ณ\ฤฤฤฤฤฤฤฤฤฤ/ณ ฺฤฤฤฤฤฤฤู     ภฤฤฤฤฤฤฟ   ณ บณ                   รฤฤฤ           ณ     _ ÛÛÛ _       บ
ECHO    บ  ณ            ณ ณ                    ณ   ณ บณ                   ณ              ณ       ÛÛÛ         บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                   ภฤฤฤฤฟ     ฺฤฤฤู     / ณ ณ \       บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                    /ฤฤฤู     ภฤฤฤ\       ณ ณ         บ
ECHO    บ  ณ   ฤฤฤลฤฤฤ  ณ ณ          ณ         ณ   ณ บณ                   /               \      ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                  /        ณ        \     ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ       ฤฤฤลฤฤฤ      ณ   ณ บณ                 /         ณ         \    ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                ณ        ฤฤลฤฤ        ณ   ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณษป ณ บณ ษป             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ   \     ณ    /  ณ          ณ         ณบศอผ  ศอผบ             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ    \        /   ณ          ณ         ณศออป  ษออผ             ณ          ณ          ณ   ณ ณ         บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     Wizard: What the hell did you tell him that for^^!?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                        /\                          บ
ECHO    บ                                                                       /  \                         บ
ECHO    บ                     ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                  /    \                        บ
ECHO    บ                     ณ      ฒ      ณ                                 /      \                       บ
ECHO    บ                     ณ      ฒ      ณ                                /        \                      บ
ECHO    บ                     ณฒฒฒÛÛฒฒฒÛÛฒฒฒณ                               /          \                     บ
ECHO    บ                     ณ      ฒ      ณ       /\                 ____/____________\____                บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      /  \                   ณ              ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ  ณ                   ณ /            ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ O            ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ              ณ        ณ          บ
ECHO    บ                     ภฤฤฤฟ     ฺฤฤฤู      ณ บณ                   ณ              ณ      \   /        บ
ECHO    บ  ณ\ฤฤฤฤฤฤฤฤฤฤ/ณ ฺฤฤฤฤฤฤฤู     ภฤฤฤฤฤฤฟ   ณ บณ                   รฤฤฤ           ณ     _ ÛÛÛ _       บ
ECHO    บ  ณ            ณ ณ                    ณ   ณ บณ                   ณ              ณ       ÛÛÛ         บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                   ภฤฤฤฤฟ     ฺฤฤฤู     / ณ ณ \       บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                    /ฤฤฤู     ภฤฤฤ\       ณ ณ         บ
ECHO    บ  ณ   ฤฤฤลฤฤฤ  ณ ณ          ณ         ณ   ณ บณ                   /               \      ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                  /        ณ        \     ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ       ฤฤฤลฤฤฤ      ณ   ณ บณ                 /         ณ         \    ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                ณ        ฤฤลฤฤ        ณ   ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณษป ณ บณ ษป             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ   \     ณ    /  ณ          ณ         ณบศอผ  ศอผบ             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ    \        /   ณ          ณ         ณศออป  ษออผ             ณ          ณ          ณ   ณ ณ         บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     Knight: ...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                        /\                          บ
ECHO    บ                                                                       /  \                         บ
ECHO    บ                     ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                  /    \                        บ
ECHO    บ                     ณ      ฒ      ณ                                 /      \                       บ
ECHO    บ                     ณ      ฒ      ณ                                /        \                      บ
ECHO    บ                     ณฒฒฒÛÛฒฒฒÛÛฒฒฒณ                               /          \                     บ
ECHO    บ                     ณ      ฒ      ณ       /\                 ____/____________\____                บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      /  \                   ณ              ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ  ณ                   ณ    \    /    ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ    O    O    ณ                   บ
ECHO    บ                     ณ þþþþ ฒ þþþþ ณ      ณ บณ                   ณ              ณ        ณ          บ
ECHO    บ                     ภฤฤฤฟ     ฺฤฤฤู      ณ บณ                   ณ              ณ      \   /        บ
ECHO    บ  ณ\ฤฤฤฤฤฤฤฤฤฤ/ณ ฺฤฤฤฤฤฤฤู     ภฤฤฤฤฤฤฟ   ณ บณ                   ณ    ฤฤฤฤฤฤ    ณ     _ ÛÛÛ _       บ
ECHO    บ  ณ            ณ ณ                    ณ   ณ บณ                   ณ              ณ       ÛÛÛ         บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                   ภฤฤฤฤฟ     ฺฤฤฤู     / ณ ณ \       บ
ECHO    บ  ณ      ณ     ณ ณ                    ณ   ณ บณ                    /ฤฤฤู     ภฤฤฤ\       ณ ณ         บ
ECHO    บ  ณ   ฤฤฤลฤฤฤ  ณ ณ          ณ         ณ   ณ บณ                   /               \      ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                  /        ณ        \     ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ       ฤฤฤลฤฤฤ      ณ   ณ บณ                 /         ณ         \    ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณ   ณ บณ                ณ        ฤฤลฤฤ        ณ   ณ ณ         บ
ECHO    บ  ณ      ณ     ณ ณ          ณ         ณษป ณ บณ ษป             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ   \     ณ    /  ณ          ณ         ณบศอผ  ศอผบ             ณ          ณ          ณ   ณ ณ         บ
ECHO    บ    \        /   ณ          ณ         ณศออป  ษออผ             ณ          ณ          ณ   ณ ณ         บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     Wizard: Idiot...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF
