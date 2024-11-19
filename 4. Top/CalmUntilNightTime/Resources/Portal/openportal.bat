SET /a PORTALOPENED = 1
SET /a SCENETOT = 47
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
	GOTO :EOF
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
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~~~~~~~~~~~~~~~~~~~~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~~~~~~~~~~~~~~~~~~~~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐษออออออออปฐฐฐฐฐฐฐฐฐฐ         ฐฐฐฐฐฐฐฐฐฐษออออออออปบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐฐฐฐฐฐ -ฑ-      ฐฐฐฐฐฐฐฐฐฐบ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ  Shop  บฐฐฐฐฐฐฐฐฐฐ / \      ฐฐฐฐฐฐฐฐฐฐบ  Guru  บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐ                         บ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐ                         บ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐศออออออออผฐฐฐฐฐ                         ศออออออออผบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ                    ษออออออออปฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ                    บ        บฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ                    บ Temple บฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ         ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บ     ษออออออออปฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ       ฑอ ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บ     บ        บฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ       ู\ ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐศออออออออผ     บTeleportบฐฐฐฐฐบ
ECHO    บษออออออออปฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ  Pad   บฐฐฐฐฐบ
ECHO    บบ Forest บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐบ
ECHO    บศออออออออผฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐศออออออออผฐฐฐฐฐบ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     %PLAYERNAME%: Dammit^^! Why won't this thing open^^!?
SET /a WAITTIME = %BASEWAITTIME% + 3
::Friend at position 1
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~~~~~~~~~~~~~~~~~~~~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~~~~~~~~~~~~~~~~~~~~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐษออออออออปฐฐฐฐฐฐฐฐฐฐ         ฐฐฐฐฐฐฐฐฐฐษออออออออปบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐฐฐฐฐฐ -ฑ-      ฐฐฐฐฐฐฐฐฐฐบ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ  Shop  บฐฐฐฐฐฐฐฐฐฐ / \      ฐฐฐฐฐฐฐฐฐฐบ  Guru  บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐ                         บ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐ                         บ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐศออออออออผฐฐฐฐฐ                         ศออออออออผบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ                   ษออออออออปฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ            ฑอ      บ        บฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ           /)       บ Temple บฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ          ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บ     ษออออออออปฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ          ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บ     บ        บฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ          ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐศออออออออผ     บTeleportบฐฐฐฐฐบ
ECHO    บษออออออออปฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ  Pad   บฐฐฐฐฐบ
ECHO    บบ Forest บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐบ
ECHO    บศออออออออผฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐศออออออออผฐฐฐฐฐบ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %FRIENDNAME%: %PLAYERNAME%? Is that you?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~~~~~~~~~~~~~~~~~~~~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                  ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~~~~~~~~~~~~~~~~~~~~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐษออออออออปฐฐฐฐฐฐฐฐฐฐ         ฐฐฐฐฐฐฐฐฐฐษออออออออปบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐฐฐฐฐฐ -ฑ-      ฐฐฐฐฐฐฐฐฐฐบ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ  Shop  บฐฐฐฐฐฐฐฐฐฐ / \      ฐฐฐฐฐฐฐฐฐฐบ  Guru  บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐ                        บ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐ  ฑอ                     บ        บบ
ECHO    บฐฐฐฐฐฐฐฐฐฐศออออออออผฐฐฐฐฐ  ู\                     ศออออออออผบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ                    ษออออออออปฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ                    บ        บฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐฐฐฐฐฐ                    บ Temple บฐฐฐฐฐ     ฐฐฐฐฐฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ          ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บ     ษออออออออปฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ          ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บ     บ        บฐฐฐฐฐบ
ECHO    บฐฐฐฐฐ          ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐศออออออออผ     บTeleportบฐฐฐฐฐบ
ECHO    บษออออออออปฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ  Pad   บฐฐฐฐฐบ
ECHO    บบ Forest บฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐบ        บฐฐฐฐฐบ
ECHO    บศออออออออผฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐศออออออออผฐฐฐฐฐบ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %PLAYERNAME%: %FRIENDNAMECAP%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~      ^^!                              บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %FRIENDNAME%: My god am I glad to see you^^! You'd never believe what I've been through
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                          ?      ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %PLAYERNAME%: Town, Cave, Town, Casino, Castle, Mine, Town, Lake, Forest, Town?
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %FRIENDNAME%: ...Yes, but I had to...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %PLAYERNAME%: Fight the King of that underwater city like the one Jaja Binks comes from?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %FRIENDNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %FRIENDNAME%: Yea, but only because...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE10IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: Mist. Yea I know. You met %BANDITNAME% too.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE11IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~      ^^!                              บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณO  ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ร   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                ฤฤฤฤฤฤฤ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยฤฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE11TEXT
IF %EXPLICIT% EQU 1 (
	ECHO     %FRIENDNAME%: Would you just shut the fuck up^^!? This isn't how I imagined telling the tales of
) ELSE (
	ECHO     %FRIENDNAME%: Would you just shut up^^!? This isn't how I imagined telling the tales of
)
ECHO     my epic adventure.
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE12IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %PLAYERNAME%: The worst part was having to open the cave door with that tramp's eye
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE13IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~      ?                              บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %FRIENDNAME%: What?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE14IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %PLAYERNAME%: The tramp in the first town. His eye was disgusting. Only way to open the cave door though
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE15IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     %FRIENDNAME%: Did you not try "Open Sesame"?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE16IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                          ?      ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE16TEXT
ECHO     %PLAYERNAME%: ...What?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE17IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE17TEXT
ECHO     %FRIENDNAME%: You're kidding me.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE18IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE18TEXT
ECHO     %PLAYERNAME%: No, you're kidding me... Aren't you?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE19IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE19TEXT
IF %EXPLICIT% EQU 1 (
	ECHO     %FRIENDNAME%: You seriously went round shoving eyes on that piss soaked retina scanner
) ELSE (
	ECHO     %FRIENDNAME%: You seriously went round shoving eyes on that stinking retina scanner
)
ECHO     before trying "Open Sesame"?
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE20IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                          ^^!      ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE20TEXT
ECHO     %PLAYERNAME%: That's not obvious^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE21IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE21TEXT
ECHO     %FRIENDNAME%: How the hell did you get this far?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE22IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE22TEXT
ECHO     %PLAYERNAME%: Look, it doesn't matter. We can't get through this portal anyway. I've tried everything
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE23IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                                 ~                            ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~                            ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~                            ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE23TEXT
ECHO     %FRIENDNAME%: ...Open Sesame
SET /a WAITTIME = %BASEWAITTIME% + 1
CALL "%PORTALRESOURCEPATH%\portalopenscene.bat"
GOTO :EOF

:SCENE24IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ  Oณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ด    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ฤฤฤฤฤฤฤฤ                               ณ ณ   ณ                           บ
ECHO    บ                       ณ     ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ     ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ     ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ     ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤฤยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE24TEXT
ECHO     %PLAYERNAME%: Not a word %FRIENDNAME%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE25IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE25TEXT
ECHO     %FRIENDNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE26IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE26TEXT
ECHO     %PLAYERNAME%: I thought we needed 4 magic relics or something to open the portal?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE27IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                               ฯ    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                               ฤฤฤฤฤฤฤฤ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยฤฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE27TEXT
ECHO     %FRIENDNAME%: Yea I know, weird. I've only got this 1
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE28IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                          ^^!      ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ  Oณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                        ณ   ด    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE28TEXT
ECHO     %PLAYERNAME%: I've got the other 3 here^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE29IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE29TEXT
ECHO     %FRIENDNAME%: Oh cool, I wonder if it would have worked without them.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE30IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE30TEXT
ECHO     %PLAYERNAME%: I guess we'll never know...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE31IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE31TEXT
ECHO     %FRIENDNAME%: Right, enough chit-chat, should we go to hell?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE32IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                          ^^!      ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE32TEXT
ECHO     %PLAYERNAME%: Wait^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE33IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~      ?                              บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE33TEXT
ECHO     %FRIENDNAME%: What?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE34IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ  Oณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ณ   ด    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณ   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ฤฤฤฤฤฤฤฤ                               ณ ณ   ณ                           บ
ECHO    บ                       ณ     ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ     ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ     ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ     ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤฤยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE34TEXT
ECHO     %PLAYERNAME%: Can I have the !KEYITEM%MAGSTONE4ID%NAME!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE35IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ  Oณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                        ณ   ด    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                               ฯ    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                               ฤฤฤฤฤฤฤฤ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยฤฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE35TEXT
ECHO     %FRIENDNAME%: Yea sure
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE36IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ  Oณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                        ณ   ด    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                               ฯ    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                               ฤฤฤฤฤฤฤฤ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ     ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยฤฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE36TEXT
ECHO     %PLAYERNAME%: I'll Roshambo you for it,
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE37IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~      ?                              บ
ECHO    บ                        ฺฤฤฤฟ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                        ณ  Oณ    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                        ณ   ด    ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                        ภฤยฤู    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ                                    ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ                                    ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ                                    ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู                                    ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE37TEXT
ECHO     %FRIENDNAME%: You'll what?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE38IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                             ฺฤฤฤฟฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                             ณ  Oณฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                             ณ   ดฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                             ภฤยฤู~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                            ฺฤฤมฤฤฟ                               ฺฤฤมฤฤฟ                           บ
ECHO    บ                            ณ     ณ                               ณ     ณ                           บ
ECHO    บ                            ณ   ฤฤฤฤฤฤฤฤ                          ณ ณ   ณ                           บ
ECHO    บ                            ณ     ณ                               ณ ณ   ณ                           บ
ECHO    บ                            ณ     ณ                               ณ ณ   ณ                           บ
ECHO    บ                            ณ     ณ                               ณ ณ   ณ                           บ
ECHO    บ                            ณ     ณ                               ณ ณ   ณ                           บ
ECHO    บ                            ภยฤฤฤยู                               ภยณฤฤยู                           บ
ECHO    บ                              /\                                   ณ   ณ                            บ
ECHO    บ                             /  \                                  ณ   ณ                            บ
ECHO    บ                            /    )                                 ณ   ณ                            บ
ECHO    บ                           /    /                                  ณ   ณ                            บ
ECHO    บ                          /    /                                   ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE38TEXT
ECHO     %PLAYERNAME%: RO...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE39IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฺฤฤฤฟฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐณ  Oณฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                                 ~ฐณ   ดฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                                 ~~ภฤยฤู~~~~~~~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                                  ฺฤฤมฤฤฟ                         ฺฤฤมฤฤฟ                           บ
ECHO    บ                                  ณ     ณ                         ณ     ณ                           บ
ECHO    บ                                  ณ   ฤฤฤฤฤฤฤฤ                    ณ ณ   ณ                           บ
ECHO    บ                                  ณ     ณ                         ณ ณ   ณ                           บ
ECHO    บ                                  ณ     ณ                         ณ ณ   ณ                           บ
ECHO    บ                                  ณ     ณ                         ณ ณ   ณ                           บ
ECHO    บ                                  ณ     ณ                         ณ ณ   ณ                           บ
ECHO    บ                                  ภฤยฤฤฤู                         ภยณฤฤยู                           บ
ECHO    บ                                    ณ\                             ณ   ณ                            บ
ECHO    บ                                    ณ \                            ณ   ณ                            บ
ECHO    บ                                    ณ  \                           ณ   ณ                            บ
ECHO    บ                                  ฤฤู   \                          ณ   ณ                            บ
ECHO    บ                                         \                         ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE39TEXT
ECHO     %FRIENDNAME%: Wait, I said yes
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE40IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฺฤฤฤฟฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐณ  Oณฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐณ   ดฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                                 ~~~~~~~~ภฤยฤู~~~~~~~~~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                                        ฺฤฤมฤฤฟ                   ฺฤฤมฤฤฟ                           บ
ECHO    บ                                        ณ     ณ                   ณ     ณ                           บ
ECHO    บ                                        ณ   ฤฤฤฤฤฤฤฤ              ณ ณ   ณ                           บ
ECHO    บ                                        ณ     ณ                   ณ ณ   ณ                           บ
ECHO    บ                                        ณ     ณ                   ณ ณ   ณ                           บ
ECHO    บ                                        ณ     ณ                   ณ ณ   ณ                           บ
ECHO    บ                                        ณ     ณ                   ณ ณ   ณ                           บ
ECHO    บ                                        ภฤฤฤฤฤู                   ภยณฤฤยู                           บ
ECHO    บ                                          /\                       ณ   ณ                            บ
ECHO    บ                                         /  \                      ณ   ณ                            บ
ECHO    บ                                        /    )                     ณ   ณ                            บ
ECHO    บ                                       /    /                      ณ   ณ                            บ
ECHO    บ                                      /    /                       ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE40TEXT
ECHO     %PLAYERNAME%: SHAM...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE41IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฺฤฤฤฟฐฐฐฐฐฐฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ  Oณฐฐฐฐฐฐฐฐ~    ณO  ณ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ   ดฐฐฐฐฐฐฐฐ~    ร   ณ                            บ
ECHO    บ                                 ~~~~~~~~~~~~~~~~ภฤยฤู~~~~~~~~~    ภฤยฤู                            บ
ECHO    บ                                                ฺฤฤมฤฤฟ           ฺฤฤมฤฤฟ                           บ
ECHO    บ                                                ณ     ณ           ณ     ณ                           บ
ECHO    บ                                                ณ   ฤฤฤฤฤฤฤฤ      ณ ณ   ณ                           บ
ECHO    บ                                                ณ     ณ           ณ ณ   ณ                           บ
ECHO    บ                                                ณ     ณ           ณ ณ   ณ                           บ
ECHO    บ                                                ณ     ณ           ณ ณ   ณ                           บ
ECHO    บ                                                ณ     ณ           ณ ณ   ณ                           บ
ECHO    บ                                                ภฤยฤฤฤู           ภยณฤฤยู                           บ
ECHO    บ                                                  ณ\               ณ   ณ                            บ
ECHO    บ                                                  ณ \              ณ   ณ                            บ
ECHO    บ                                                  ณ  \             ณ   ณ                            บ
ECHO    บ                                                ฤฤู   \            ณ   ณ                            บ
ECHO    บ                                                       \           ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE41TEXT
ECHO     %FRIENDNAME%: Just stop^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE42IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฺฤฤฤฟฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ  Oณฐฐ~    ณ^<  ณ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ   ดฐฐ~    ^>   ณ                            บ
ECHO    บ                                 ~~~~~~~~~~~~~~~~~~~~~~ภฤยฤู~~~    ภฤยฤู                            บ
ECHO    บ                                                      ฺฤฤมฤฤฟ     ฺฤฤมฤฤฟ                           บ
ECHO    บ                                                      ณ     ณ     ณ     ณ                           บ
ECHO    บ                                                      ณ   ฤฤฤฤฤฤฤฤณ ณ   ณ                           บ
ECHO    บ                                                      ณ     ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ     ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ     ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ     ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ภฤฤฤฤฤู     ภยณฤฤยู                           บ
ECHO    บ                                                          ณฤฤฤฤฤฤฤฤฤฤ  ณ                            บ
ECHO    บ                                                          ณ        ณ   ณ                            บ
ECHO    บ                                                          ณ        ณ   ณ                            บ
ECHO    บ                                                          ณ        ณ   ณ                            บ
ECHO    บ                                                          ณ        ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE42TEXT
ECHO     %PLAYERNAME%: BO^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE43IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฺฤฤฤฟฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ  Oณฐฐ~    ณ^<  ณ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ   ดฐฐ~    ^>   ณ                            บ
ECHO    บ                                 ~~~~~~~~~~~~~~~~~~~~~~ภฤยฤู~~~    ภฤยฤู                            บ
ECHO    บ                                                      ฺฤฤมฤฤฟ     ฺฤฤมฤฤฟ                           บ
ECHO    บ                                                      ณ     ณ     ณ     ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ภยฤฤณยู     ภยณฤฤยู                           บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE43TEXT
ECHO     %FRIENDNAME%: OWWW^^! WHAT THE HELL^^!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE44IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฺฤฤฤฟฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ  Oณฐฐ~    ณ^<  ณ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ   ดฐฐ~    ^>   ณ                            บ
ECHO    บ                                 ~~~~~~~~~~~~~~~~~~~~~~ภฤยฤู~~~    ภฤยฤู                            บ
ECHO    บ                                                      ฺฤฤมฤฤฟ     ฺฤฤมฤฤฟ                           บ
ECHO    บ                                                      ณ     ณ     ณ     ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ภยฤฤณยู     ภยณฤฤยู                           บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE44TEXT
ECHO     %PLAYERNAME%: You brought this on yourself
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE45IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~      ^^!                              บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฺฤฤฤฟฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ  Oณฐฐ~    ณO  ณ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ   ดฐฐ~    ร   ณ                            บ
ECHO    บ                                 ~~~~~~~~~~~~~~~~~~~~~~ภฤยฤู~~~    ภฤยฤู                            บ
ECHO    บ                                                      ฺฤฤมฤฤฟ     ฺฤฤมฤฤฟ                           บ
ECHO    บ                                                      ณ     ณ     ณ     ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ภยฤฤณยู     ภยณฤฤยู                           บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE45TEXT
ECHO     %FRIENDNAME%: NO I DIDN'T^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE46IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฺฤฤฤฟฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ  Oณฐฐ~    ณO  ณ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ   ดฐฐ~    ร   ณ                            บ
ECHO    บ                                 ~~~~~~~~~~~~~~~~~~~~~~ภฤยฤู~~~    ภฤยฤู                            บ
ECHO    บ                                                      ฺฤฤมฤฤฟ     ฺฤฤมฤฤฟ                           บ
ECHO    บ                                                      ณ     ณ     ณ     ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ภยฤฤณยู     ภยณฤฤยู                           บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE46TEXT
ECHO     %PLAYERNAME%: Ok, let's go into hell now
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE47IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐ~                                     บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฺฤฤฤฟฐฐ~    ฺฤฤฤฟ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ  Oณฐฐ~    ณO  ณ                            บ
ECHO    บ                                 ~ฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐฐณ   ดฐฐ~    ร   ณ                            บ
ECHO    บ                                 ~~~~~~~~~~~~~~~~~~~~~~ภฤยฤู~~~    ภฤยฤู                            บ
ECHO    บ                                                      ฺฤฤมฤฤฟ     ฺฤฤมฤฤฟ                           บ
ECHO    บ                                                      ณ     ณ     ณ     ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ณ   ณ ณ     ณ ณ   ณ                           บ
ECHO    บ                                                      ภยฤฤณยู     ภยณฤฤยู                           บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    บ                                                       ณ   ณ       ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE47TEXT
ECHO     %FRIENDNAME%: You're a special kind of knobhead
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

