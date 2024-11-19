SET TOWN2LOCATION2-5=
SET TOWN2LOCATION4-6=
SET /a MENUTUTORIALSEEN = 1
SET /a SCENETOT = 15
SET /a SKIP = 0
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT% + 1
CLS
ECHO.
CALL :SCENE%COUNT%IMAGE
CALL :SCENE%COUNT%TEXT
IF %COUNT% EQU 9 (
	GOTO :LOOPSTART
)
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
	GOTO :EOF
)
IF %COUNT% LSS %SCENETOT% (
	GOTO :LOOPSTART
)
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
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                                                                    /                               บ
ECHO    บ                                                                   ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                                                                   ณ                                บ
ECHO    บ                                  ฺฤฤฤฟ                            ณ                                บ
ECHO    บ                                  ณO  ณ                            ณ                                บ
ECHO    บ                                  ร   ณ                            ณ    ณ                    ณ      บ
ECHO    บ                                  ภยฤยู                            ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                                 ฺฤู ภฤฟ                           ณ    ณ                    ณ      บ
ECHO    บ                                 ณ     ณ                           ณ    ณ                    ณ      บ
ECHO    บ                                 ณ ณ   ณ                           ณ                                บ
ECHO    บ                                 ณ ณ   ณ                           ณ                                บ
ECHO    บ                                 ณ ณ   ณ                           ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                                 ณ ณ   ณ                           ณ          ณ     ณ               บ
ECHO    บ                                 ณ ณ   ณ                           ณ          ณ     ณ               บ
ECHO    บ                                 ภยณฤฤยู                           ณ          ณ     ณ               บ
ECHO    บ                                  ณ   ณ                            ณ          ณ     ณ               บ
ECHO    บ                                  ณ   ณ                            ณ          ณ    þณ               บ
ECHO    บ                                  ณ   ณ                            ณ          ณ     ณ               บ
ECHO    บ                                  ณ   ณ                            ณ          ณ     ณ               บ
ECHO    บ                                  ณ   ณ                            ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     ??????: Yooohooooo
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                                                                    /                               บ
ECHO    บ                                ณ                                  ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                                ณ                                  ณ                                บ
ECHO    บ                              ฺฤณฤฟ                                ณ                                บ
ECHO    บ                              ณ^<ณ ณ                                ณ                                บ
ECHO    บ                              ^> ณ ณ                                ณ    ณ                    ณ      บ
ECHO    บ                              ภยณยู                                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                             ฺฤูณภฤฟ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ  ณ  ณ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ     ณ                               ณ                                บ
ECHO    บ                             ณ     ณ                               ณ                                บ
ECHO    บ                             ณ     ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                             ณ     ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ณ     ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ภยฤฤฤยู                               ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ    þณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %PLAYERNAME%: Ahhhh^^! What the hell was that?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                       ณ\                                           /                               บ
ECHO    บ                     Üฺฤฤฤฟ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภฤฤ\ู                                        ณ                                บ
ECHO    บ                          ฯ   ฺฤฤฤฟ                                ณ                                บ
ECHO    บ                              ณO  ณ                                ณ                                บ
ECHO    บ                              ร   ณ                                ณ    ณ                    ณ      บ
ECHO    บ                              ภยฤยู                                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                             ฺฤู ภฤฟ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ     ณ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ภยณฤฤยู                               ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ    þณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     ?????: Sorry %PLAYERNAME%, I didn't mean to startle ya^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                       ณ\                                           /                               บ
ECHO    บ                     Üฺฤฤฤฟ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภฤฤ\ู                                        ณ                                บ
ECHO    บ                          ฯ   ฺฤฤฤฟ                                ณ                                บ
ECHO    บ                              ณO  ณ                                ณ                                บ
ECHO    บ                              ร   ณ                                ณ    ณ                    ณ      บ
ECHO    บ                              ภยฤยู                                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                             ฺฤู ภฤฟ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ     ณ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ภยณฤฤยู                               ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ    þณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %PLAYERNAME%: Sweet Christmas^^! What the hell are you? And how do you know my name?
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                       ณ\                                           /                               บ
ECHO    บ                     Üฺฤฤฤฟ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภฤฤ\ู                                        ณ                                บ
ECHO    บ                          ฯ   ฺฤฤฤฟ                                ณ                                บ
ECHO    บ                              ณO  ณ                                ณ                                บ
ECHO    บ                              ร   ณ                                ณ    ณ                    ณ      บ
ECHO    บ                              ภยฤยู                                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                             ฺฤู ภฤฟ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ     ณ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ภยณฤฤยู                               ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ    þณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     ?????: I'm a fairy, and I'm here to help you beat %LASTBOSSNAME%
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                       ณ\                                           /                               บ
ECHO    บ                     Üฺฤฤฤฟ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภฤฤ\ู     ^^!                                  ณ                                บ
ECHO    บ                          ฯ   ฺฤฤฤฟ                                ณ                                บ
ECHO    บ                              ณO  ณ                                ณ                                บ
ECHO    บ                              ร   ณ                                ณ    ณ                    ณ      บ
ECHO    บ                              ภยฤยู                                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                             ฺฤู ภฤฟ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ     ณ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ภยณฤฤยู                               ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ    þณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %PLAYERNAME%: And just how do you plan on helping me? I don't even know who you are
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                       ณ\                                           /                               บ
ECHO    บ                     Üฺฤฤฤฟ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภฤฤ\ู                                        ณ                                บ
ECHO    บ                          ฯ   ฺฤฤฤฟ                                ณ                                บ
ECHO    บ                              ณO  ณ                                ณ                                บ
ECHO    บ                              ร   ณ                                ณ    ณ                    ณ      บ
ECHO    บ                              ภยฤยู                                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                             ฺฤู ภฤฟ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ     ณ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ภยณฤฤยู                               ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ    þณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     ?????: I'm %MENUNAME%, pleased to meet ya^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                       ณ\                                           /                               บ
ECHO    บ                     Üฺฤฤฤฟ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภฤฤ\ู                                        ณ                                บ
ECHO    บ                          ฯ   ฺฤฤฤฟ                                ณ                                บ
ECHO    บ                              ณO  ณ                                ณ                                บ
ECHO    บ                              ร   ณ                                ณ    ณ                    ณ      บ
ECHO    บ                              ภยฤยู                                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                             ฺฤู ภฤฟ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ     ณ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ภยณฤฤยู                               ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ    þณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: %MENUNAME% ey? Nice to meet you too
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                       ณ\                                           /                               บ
ECHO    บ                     Üฺฤฤฤฟ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภฤฤ\ู                                        ณ                                บ
ECHO    บ                          ฯ   ฺฤฤฤฟ                                ณ                                บ
ECHO    บ                              ณO  ณ                                ณ                                บ
ECHO    บ                              ร   ณ                                ณ    ณ                    ณ      บ
ECHO    บ                              ภยฤยู                                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ                             ฺฤู ภฤฟ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ     ณ                               ณ    ณ                    ณ      บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ                                บ
ECHO    บ                             ณ ณ   ณ                               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ณ ณ   ณ                               ณ          ณ     ณ               บ
ECHO    บ                             ภยณฤฤยู                               ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ    þณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    บ                              ณ   ณ                                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %MENUNAME%: I can help you by organising your menu throughout your quest. Here, I'll show you what I mean.
TIMEOUT /T 5 > nul
CALL "%TUTORIALRESOURCEPATH%\menuexample.bat"
SET /a WAITTIME = %BASEWAITTIME% + 0
GOTO :EOF

:SCENE10IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                        /ณ                                          /                               บ
ECHO    บ                     ฺฤฤฤฟÜ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภ/ฤฤู                                        ณ                                บ
ECHO    บ          ฺฤฤฤฟ       ฯ                                            ณ                                บ
ECHO    บ          ณ  Oณ                                                    ณ                                บ
ECHO    บ          ณ   ด                                                    ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู                                                    ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู                                                   ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: Thanks %MENUNAME%, incredibly useful
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE11IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                        /ณ                                          /                               บ
ECHO    บ                     ฺฤฤฤฟÜ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภ/ฤฤู                                        ณ                                บ
ECHO    บ          ฺฤฤฤฟ       ฯ                                            ณ                                บ
ECHO    บ          ณ  Oณ                                                    ณ                                บ
ECHO    บ          ณ   ด                                                    ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู                                                    ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู                                                   ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %MENUNAME%: My pleasure. Be sure to keep on top of your development through the menu^^!
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE12IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                        /ณ                                          /                               บ
ECHO    บ                     ฺฤฤฤฟÜ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภ/ฤฤู                                        ณ                                บ
ECHO    บ          ฺฤฤฤฟ       ฯ                                            ณ                                บ
ECHO    บ          ณ  Oณ                                                    ณ                                บ
ECHO    บ          ณ   ด                                                    ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู                                                    ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู                                                   ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %MENUNAME%: If you haven't already, you should equip the items you have found so far. It'll boost your stats
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE13IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                        /ณ                                          /                               บ
ECHO    บ                     ฺฤฤฤฟÜ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภ/ฤฤู                                        ณ                                บ
ECHO    บ          ฺฤฤฤฟ       ฯ                                            ณ                                บ
ECHO    บ          ณ  Oณ                                                    ณ                                บ
ECHO    บ          ณ   ด                                                    ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู                                                    ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู                                                   ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %MENUNAME%: You can also quicksave and quickload from the map
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE14IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                        /ณ                                          /                               บ
ECHO    บ                     ฺฤฤฤฟÜ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภ/ฤฤู                                        ณ                                บ
ECHO    บ          ฺฤฤฤฟ       ฯ                                            ณ                                บ
ECHO    บ          ณ  Oณ                                                    ณ                                บ
ECHO    บ          ณ   ด                                                    ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู                                                    ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู                                                   ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %PLAYERNAME%: Good to know. Let's push on shall we? I need to find a way through that cave
SET /a WAITTIME = %BASEWAITTIME% + 7
GOTO :EOF

:SCENE15IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                        /ณ                                          /                               บ
ECHO    บ                     ฺฤฤฤฟÜ                                       ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                      ภ/ฤฤู                                        ณ                                บ
ECHO    บ          ฺฤฤฤฟ       ฯ                                            ณ                                บ
ECHO    บ          ณ  Oณ                                                    ณ                                บ
ECHO    บ          ณ   ด                                                    ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู                                                    ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ                                                   ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ                                บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ                                                   ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู                                                   ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                                                    ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     %MENUNAME%: Okey Dokey^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

