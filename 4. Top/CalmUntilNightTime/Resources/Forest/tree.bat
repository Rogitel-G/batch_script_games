SET /a PLAYERXCOORD = 6
SET /a PLAYERYCOORD = 5
IF %BANDITQUESTCOMPLETE% EQU 1 (
	CALL :NOBODY
) ELSE IF %BEATBANDIT% EQU 1 (
	CALL :BANDITQUEST
) ELSE (
	CALL :BANDITAPPEAR
)
GOTO :EOF

:NOBODY
CLS
ECHO.
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
ECHO    บ                                 /             \                                                    บ
ECHO    บ                                 ฤฤ    þ   ๙  ฤฤ                                                    บ
ECHO    บ                                  / þ         \                                                     บ
ECHO    บ                                 /þ    ๙  þ    \                                                    บ
ECHO    บ                                /    þ      ๙   \                                                   บ
ECHO    บ                               /   ๙    þ      þ \                                                  บ
ECHO    บ                               ฤฤฤฤฤฤฤฟ    ฺฤฤฤฤฤฤ                                                  บ
ECHO    บ                                      ภฤฤฤฤู                                                        บ
ECHO    บ                                             ฺฤฟ                                                    บ
ECHO    บ                                             ณ ณ                                                    บ
ECHO    บ                                             ภยู                                                    บ
ECHO    บ                                            ฺฤมฤฟ                                                   บ
ECHO    บ                                           ฤด   รฤ                                                  บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    บ                                            ณ   ณ                                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO There's nobody here...
CALL :WAITFORTWO
GOTO :EOF

:BANDITAPPEAR
CLS
ECHO.
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
ECHO    บ                                  / þ         \    ภยู ณ                                            บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟล                                            บ
ECHO    บ                                /    þ      ๙   \ฤด   รู                                            บ
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
ECHO Bandit: Give me your gil or I'll shank ya^^!
ECHO.
ECHO. 1 - OK, have some money, just don't hurt me^^!
ECHO. 2 - Err, no...
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL :GIVEMONEY
) ELSE IF "%CHOICE%" EQU "2" (
	CALL :DONTGIVEMONEY
) ELSE (
	GOTO :BANDITAPPEAR
)
GOTO :EOF

:GIVEMONEY
IF %PLAYERGIL% LEQ 0 (
	CLS
	ECHO.
	ECHO You don't have any gil to give the Bandit
	CALL :WAITFORTWO
	CLS
	ECHO.
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
	ECHO    บ                                  / þ         \    ภยู ณ                                            บ
	ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟล                                            บ
	ECHO    บ                                /    þ      ๙   \ฤด   รู                                            บ
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
	ECHO Bandit: You're useless^^! Shank time^^!
	CALL :BANDITBATTLE
	GOTO :EOF
)
SET /a STORY25VERSIONNUM = 1
SET /a TEMP = %PLAYERLVL%*100
SET /a PLAYERGIL = %PLAYERGIL% - %TEMP%
SET /a BANDITGILSTEAL = %BANDITGILSTEAL% + %TEMP%
IF %PLAYERGIL% LSS 0 (
	SET /a TEMP = %TEMP% + %PLAYERGIL%
	SET /a PLAYERGIL = 0
)
CLS
ECHO.
ECHO You give the Bandit %TEMP% gil.
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
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
ECHO    บ                                  / þ         \    ภยู ณ                                            บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟล                                            บ
ECHO    บ                                /    þ      ๙   \ฤด   รู                                            บ
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
ECHO Bandit: Thanks for the cash sucka`^^!
CALL :WAITFORTWO
GOTO :EOF

:DONTGIVEMONEY
CLS
ECHO.
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
ECHO    บ                                  / þ         \    ภยู ณ                                            บ
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟล                                            บ
ECHO    บ                                /    þ      ๙   \ฤด   รู                                            บ
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
ECHO Bandit: This isn't a game kid, do you want to get stabbed?
ECHO.
ECHO. 1 - You couldn't kill me if you tried
ECHO. 2 - Ok, here's some gil
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	ECHO Bandit: We'll see about that^^!
	CALL :BANDITBATTLE
) ELSE IF "%CHOICE%" EQU "2" (
	CALL :GIVEMONEY
) ELSE (
	GOTO :DONTGIVEMONEY
)
GOTO :EOF

:BANDITBATTLE
SET /a STORY25VERSIONNUM = 2
SET /a ENEMYID = %BANDITID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
IF %WINBATTLE% EQU 1 (
	CALL :BANDITWIN
)
GOTO :EOF

:BANDITWIN
SET /a STORY25VERSIONNUM = 3
SET /a STORY26VERSIONNUM = 1
SET /a PLAYERKEYITEM%MAGSTONE3ID%ACQUIRED = 1
SET /a PLAYERBASEACC = %PLAYERBASEACC% + 10
SET /a PLAYERBASEEVA = %PLAYERBASEEVA% + 10
CALL "%FORESTRESOURCEPATH%\winbattlecutscene.bat"
GOTO :EOF


:BANDITQUEST
IF %ENEMY40CAUGHT% EQU 1 (
	CALL :CAUGHTDRAGON
) ELSE IF !PLAYERACCESSORY%GOALIEGLOVESID%NUM! EQU 0 (
	CALL :GLOVES
) ELSE (
	CALL :NOCATCH
)
GOTO :EOF

:CAUGHTDRAGON
SET /a BANDITQUESTCOMPLETE = 1
SET /a STORY27VERSIONNUM = 1
CALL "%FORESTRESOURCEPATH%\catchdragoncutscene.bat"
GOTO :EOF

:GLOVES
CLS
ECHO.
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
ECHO %BANDITNAME%: Having trouble catching the Dragon?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No
ECHO.
SET /P CHOICE=
IF "%CHOICE%" EQU "1" (
	CALL :SELLGLOVES
) ELSE IF "%CHOICE%" EQU "0" (
	CLS
	ECHO.
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
	ECHO %BANDITNAME%: Ok, hurry back then
	ECHO.
	CALL :WAITFORTWO
) ELSE (
	GOTO :GLOVES
)
GOTO :EOF

:SELLGLOVES
CLS
ECHO.
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
ECHO %BANDITNAME%: I might have something that can help you...
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
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
ECHO    บ                                 /þ    ๙  þ    \  ฺฤมฤฟ Û                                           บ
ECHO    บ                                /    þ      ๙   \ฤด   รฤู                                           บ
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
ECHO %BANDITNAME%: Would you be interested in purchasing some gloves that help you catch things?
ECHO.
ECHO %BANDITNAME%: It'll be !ACCESSORY%GOALIEGLOVESID%COST! gil, but they'll quadruple your chances of catching^^!
ECHO.
ECHO. 1 - Yes please
ECHO. 0 - Bit too pricey for me %BANDITNAME%
ECHO.
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL :BUYGLOVES
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :SELLGLOVES
)
GOTO :EOF

:BUYGLOVES
CLS
ECHO.
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
IF %PLAYERGIL% GEQ !ACCESSORY%GOALIEGLOVESID%COST! (
	SET /a PLAYERGIL = %PLAYERGIL% - !ACCESSORY%GOALIEGLOVESID%COST!
	SET /a PLAYERACCESSORY%GOALIEGLOVESID%NUM = !PLAYERACCESSORY%GOALIEGLOVESID%NUM! + 1
	ECHO %BANDITNAME%: There you are %PLAYERNAME%, you won't be sorry^^!
	CALL :WAITFORTHREE
) ELSE (
	ECHO %BANDITNAME%: You don't have enough gil for that %PLAYERNAME%
	CALL :WAITFORTHREE
)
GOTO :EOF

:NOCATCH
CLS
ECHO.
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
ECHO %BANDITNAME%: Even with the !ACCESSORY%GOALIEGLOVESID%NAME! you can't catch a Dragon?
ECHO.
CALL :WAITFORTWO
ECHO %BANDITNAME%: I'm afraid I can't help you any more that I already have
CALL :WAITFORTHREE
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