CALL "%MUSICPATH%\stopmusic.bat"
SET /a SCENETOT = 13
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
SET /a HOMETOWNQUESTPHASE = 6
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
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     %PLAYERNAME%: Hi %MOTHERNAME%, I'm back
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %MOTHERNAME%: Hi dear, how was your day
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %PLAYERNAME%: It was good fun, I hung out with %FRIENDNAME% and %GIRLNAME%.
ECHO     Am I ok to camp out with them tonight at the old mill?
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %MOTHERNAME%: As long as you promise to be careful^^! It's dangerous in there,
ECHO     make sure you don't fall off anything
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %MOTHERNAME%: And no drinking young man^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %PLAYERNAME%: Don't worry %MOTHERNAME%, we're just camping. No drinking or anything
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %MOTHERNAME%: And you know how to run away from strong enemies don't you?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: Erm...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %MOTHERNAME%: Don't worry dear, I'll show you
SET /a WAITTIME = 0
TIMEOUT /T 3 > nul
SET TEMPPATH=%MUSICPATH%\Battle\StandardBattle
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
CALL "%TUTORIALRESOURCEPATH%\runexample.bat"
CALL "%MUSICPATH%\stopmusic.bat"
GOTO :EOF

:SCENE10IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %MOTHERNAME%: Phew, that was close^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE11IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %MOTHERNAME%: If you're really struggling to escape from a battle
ECHO     You can caste spells like Haste to increase your SPD, or even
ECHO     use certain skills to increase your chances of escape
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE12IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %MOTHERNAME%: Ok, now that you know how to run, I'm fine with you camping out.
ECHO     Just make sure you don't come back too late tomorrow
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE13IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %PLAYERNAME%: Will do, thanks %MOTHERNAME%^^! You're the best mum in the world^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE14IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %MOTHERNAME%: Bye bye son, call uncle %UNCLENAME% if you need anything
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF









