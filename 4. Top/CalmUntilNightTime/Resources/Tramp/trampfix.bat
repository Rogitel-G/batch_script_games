CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: Okay, I'll just take him into the next room and perform the healing
ECHO           ritual into his gaping eye socket. We'll be done in a jiffy.
ECHO.
pause
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp2.bat"
ECHO. You hear a lot of moaning and groaning from the next room. It sounds like it's working^^!
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp2.bat"
ECHO. ...
CALL :WAITFORTWO
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO. %PRIESTNAME% and Tramp return from the other room.
ECHO.
CALL :WAITFORTWO
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
SET TEMPPATH=%MUSICPATH%\Chest
SET FILE=Chest.mp3
CALL "%MUSICPATH%\soundeffect.bat"
ECHO. The Tramp has been fully healed
ECHO.
pause
CALL :SCENE1
SET /a TRAMPQUESTACTIVE = 0
ECHO Tramp: You have saved my life, I'm eternally grateful^^!
ECHO.
CALL :WAITFORTHREE
CALL :SCENE1
ECHO Tramp: Here, let me teach you my tramp skill. It'll boost your stats significantly, but there's a price.
ECHO        Ask your friend %MENUNAME% for details. Thanks for all your help %PLAYERNAME%^^!
ECHO.
SET /a TRAMPSAVED = 1
pause
CALL :SCENE2
ECHO %MENUNAME%: I can't help but feel mean for what we've just done to that man...
ECHO.
CALL :WAITFORTHREE
CALL :SCENE2
ECHO %PLAYERNAME%: Shush %MENUNAME%^^! Christ, that was an ordeal. Let's go and see what's through this bloody cave.
ECHO.
pause
GOTO :EOF

:SCENE1
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                              /                     บ
ECHO    บ                                                                            /                       บ
ECHO    บ                                                                          /                         บ
ECHO    บ                                                                        /                           บ
ECHO    บ                                                                      /                             บ
ECHO    บ                                                                    /                               บ
ECHO    บ                                                                   ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                                                                   ณ                                บ
ECHO    บ          ฺฤฤฤฟ                               ฺฤฤฤฟ                ณ                                บ
ECHO    บ          ณ  Oณ                               ณO  ณ                ณ                                บ
ECHO    บ          ณ   ด                               ร   ณ                ณ    ณ                    ณ      บ
ECHO    บ          ภยฤยู                               ฑยฤยู                ณ   ฤลฤ                  ฤลฤ     บ
ECHO    บ         ฺฤู ภฤฟ                             ฺฤู ภฤฟ               ณ    ณ                    ณ      บ
ECHO    บ         ณ     ณ                             ณ     ณ               ณ    ณ                    ณ      บ
ECHO    บ         ณ   ณ ณ                             ณ ณ   ณ               ณ                                บ
ECHO    บ         ณ   ณ ณ                             ณ ณ   ณ               ณ                                บ
ECHO    บ         ณ   ณ ณ                             ณ ณ   ณ               ณ          ฺฤฤฤฤฤฟ               บ
ECHO    บ         ณ   ณ ณ                             ณ ณ   ณ               ณ          ณ     ณ               บ
ECHO    บ         ณ   ณ ณ                             ณ ณ   ณ               ณ          ณ     ณ               บ
ECHO    บ         ภยฤฤณยู                             ภยณฤฤยู               ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                               ณ   ณ                ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                               ณ   ณ                ณ          ณ    þณ               บ
ECHO    บ          ณ   ณ                               ณ   ณ                ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                               ณ   ณ                ณ          ณ     ณ               บ
ECHO    บ          ณ   ณ                               ณ   ณ                ณ          ณ     ณ               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:SCENE2
CLS
ECHO.
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




:WAITFORZERO
TIMEOUT /T 0 > nul
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