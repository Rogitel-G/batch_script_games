SET TEMPPATH=%MUSICPATH%\Maps\Hell
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
SET /a SCENETOT = 24
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
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ        ^^!                              บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     %FRIENDNAME%: %LASTBOSSNAMECAP%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                          ^^!      þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %PLAYERNAME%: GIVE US BACK OUR FAMILIES^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %PLAYERNAME%: ...Yes^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ        ^^!                              บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %FRIENDNAME%: GIVE THEM BACK OR WE'LL KILL YOU^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ  Oณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ด     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: We're not really getting anywhere here...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ  Oณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ด     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE10IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                          ^^!      þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: I was talking to %FRIENDNAME%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE11IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณO  ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ร   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %FRIENDNAME%: Should we...attack?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE12IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณO  ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ร   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE13IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                          ^^!      þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %PLAYERNAME%: SHUT UP^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE14IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %PLAYERNAME%: Yea, we should probably attack
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE15IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                         ...     þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     %PLAYERNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE16IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ       ...                             บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE16TEXT
ECHO     %FRIENDNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE17IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE17TEXT
ECHO     %FRIENDNAME%: Is this sensible? We're in Hell and we're about to attack some kind of death robot demon thing...
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE18IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE18TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE19IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE19TEXT
ECHO     %PLAYERNAME%: I'm ignoring him from now on.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE20IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ                                       บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE20TEXT
ECHO     %PLAYERNAME%: Well we have come all this way...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE21IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ       þþ                                        บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ   þÛÛþ                                       บ
ECHO    บ                                 þÛÛþ   ณ            ณ   þÛÛþ        ^^!                              บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ    ณณ       ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤูณ       ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤู       ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ             ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE21TEXT
ECHO     %FRIENDNAME%: Yea, you're right. I'm going for it^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE22IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ                                                 บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ                                              บ
ECHO    บ                                 þÛÛþ   ณ            ณ                                              บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ         þþ  ฺฤฤฤฟ                            บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤฤฤฤฤ ÛÛþ ณ   ณ                            บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤฤฤฤ ÛÛþ ณ   ณ                            บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ         þþ  ภฤยฤู                            บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ            ฺฤฤมฤฤฟ                           บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ            ณ     ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู            ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ               ณ ณ   ณ                           บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ               ภยณฤฤยู                           บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    บ                        ณ   ณ                                      ณ   ณ                            บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE22TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE23IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ        þþ                                       บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ    þÛÛþ                                      บ
ECHO    บ                          ^^!      þÛÛþ   ณ            ณ    þÛÛþ                                      บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ     ณณ                                       บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤฤูณ                                       บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤฤู                                       บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ                                              บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ                                              บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ                                              บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ                                              บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ                                              บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู                                              บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ                                                 บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ                                                 บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ                                                 บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                       ฺฤฤฤฤฤฤฤฤฟ                บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                       ณ        ณฺฤฤฤฟ           บ
ECHO    บ                        ณ   ณ                                     ฤฤฤฤฤฤฤฤดฤฤฤฤฤฤ  ณณ   ณ           บ
ECHO    บ                        ณ   ณ                                     ฤฤฤฤฤฤฤฤด        รด   ณ           บ
ECHO    บ                        ณ   ณ                                             ภฤฤฤฤฤฤฤฤูภฤฤฤู           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE23TEXT
ECHO     %PLAYERNAME%: %FRIENDNAMECAP%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE24IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                          \        /                                                บ
ECHO    บ                                           \฿฿฿฿฿฿/                                                 บ
ECHO    บ                                           ร Ü  Ü ด                                                 บ
ECHO    บ                                           ณ ฿  ฿ ณ                                                 บ
ECHO    บ                                           ณ      ณ                                                 บ
ECHO    บ                                  þþ       ณ ฿฿฿฿ ณ        þþ                                       บ
ECHO    บ                                 þÛÛþ   ฺฤฤมฤมฤฤมฤมฤฤฟ    þÛÛþ                                      บ
ECHO    บ                          ^^!      þÛÛþ   ณ            ณ    þÛÛþ                                      บ
ECHO    บ                        ฺฤฤฤฟ     ณณ    ณ            ณ     ณณ                                       บ
ECHO    บ                        ณ   ณ     ณภฤฤฤฤด  ภฤู  ภฤู  รฤฤฤฤฤูณ                                       บ
ECHO    บ                        ณ   ณ     ภฤฤฤฤฤด            รฤฤฤฤฤฤู                                       บ
ECHO    บ                        ภฤยฤู           ณ    ~~~~    ณ                                              บ
ECHO    บ                       ฺฤฤมฤฤฟ          ณ    ~~~~    ณ                                              บ
ECHO    บ                       ณ     ณ          ณ    ~~~~    ณ                                              บ
ECHO    บ                       ณ   ณ ณ          ณ    ~~~~    ณ                                              บ
ECHO    บ                       ณ   ณ ณ          ณ            ณ                                              บ
ECHO    บ                       ณ   ณ ณ          ภฤฤยยฤฤฤฤยยฤฤู                                              บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ                                                 บ
ECHO    บ                       ณ   ณ ณ             ณณ    ณณ                                                 บ
ECHO    บ                       ภยฤฤณยู             ณณ    ณณ                                                 บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                       ฺฤฤฤฤฤฤฤฤฟ                บ
ECHO    บ                        ณ   ณ              ณณ    ณณ                       ณ        ณฺฤฤฤฟ           บ
ECHO    บ                        ณ   ณ                                     ฤฤฤฤฤฤฤฤดฤฤฤฤฤฤ  ณณ   ณ           บ
ECHO    บ                        ณ   ณ                                     ฤฤฤฤฤฤฤฤด        รด   ณ           บ
ECHO    บ                        ณ   ณ                                             ภฤฤฤฤฤฤฤฤูภฤฤฤู           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE24TEXT
ECHO     %PLAYERNAME%: You are so annoying^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF