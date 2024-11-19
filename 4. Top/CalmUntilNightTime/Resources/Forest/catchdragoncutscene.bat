SET /a BANDITQUESTCOMPLETE = 1
SET /a SCENETOT = 12
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
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \     ^^!                                               บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     %BANDITNAME%: Wow, you really caught a Dragon^^!? I never thought you'd actually do it^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \                                                     บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %BANDITNAME%: Ok, I'll teach you the Mug skill now. I don't actually want the Dragon, it was just a test.
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \                                                     บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %BANDITNAME%: Right, what you do is you hit them hard and then take their stuff.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \                                                     บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %PLAYERNAME%: Ok right, then what?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \     ?                                               บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %BANDITNAME%: ...What do you mean?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \                                                     บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %PLAYERNAME%: There must be more than that.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE7IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \     ?                                               บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %BANDITNAME%: Like what? By that point you'll have their stuff. You can run away if you like but that's optional.
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE8IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \                                                     บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู ...  ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: I know, but... there must be more.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE9IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \    ...                                              บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %BANDITNAME%: I don't follow your logic...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE10IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \                                                     บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู  ^^!   ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: I just caught a Dragon^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF


:SCENE11IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \                                                     บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %BANDITNAME%: I know yea, that was impressive, hats off to you^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF


:SCENE12IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                      /   \                                                         บ
ECHO    บ                                     / þ ๙ \                                                        บ
ECHO    บ                                     ฤ   þ ฤ                                                        บ
ECHO    บ                                     /     \                                                        บ
ECHO    บ                                    / ๙ þ   \                                                       บ
ECHO    บ                                   /      þ  \                                                      บ
ECHO    บ                                   ฤ þ  ๙    ฤ                                                      บ
ECHO    บ                                   /         \                                                      บ
ECHO    บ                                  /  ๙  þ þ ๙ \                                                     บ
ECHO    บ                                 /             \   ฺฤฟ                                              บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ   ณณ                                              บ
ECHO    บ                                  / þ         \    ภยู                                              บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ                                             บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤฤ                                           บ
ECHO    บ                               /   ๙    þ      þ \ณ   ณ                                             บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤณ   ณ                                             บ
ECHO    บ                                      ภฤฤฤฤู      ภยฤยู                                             บ
ECHO    บ                                             ฺฤฟ   ณ ณ                                              บ
ECHO    บ                                             ณ ณ   ณ ณ                                              บ
ECHO    บ                                             ภยู   ณ ณ                                              บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %PLAYERNAME%: Shut up %BANDITNAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF



