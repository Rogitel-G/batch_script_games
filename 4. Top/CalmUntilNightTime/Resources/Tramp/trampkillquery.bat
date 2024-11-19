CALL "%MUSICPATH%\stopmusic.bat"
CALL :TRAMPDOWN
ECHO Tramp: Please, don't kill me. I have a family
ECHO.
ECHO. 1 - Kill the tramp, they're no good for the economy and he definitely doesn't have a family...
ECHO. 2 - Spare the poor guy's life
ECHO.
:TRAMPKILLCHOICE
SET /P TRAMPKILLCHOICE=
ECHO.
IF "%TRAMPKILLCHOICE%" EQU "1" (
	CALL :KILLTRAMP
) ELSE IF "%TRAMPKILLCHOICE%" EQU "2" (
	IF %TRAMPCHOICE% EQU 4 (	
		CLS
		ECHO.
		SET /a STORY9VERSIONNUM = 2
		CALL :EYEALREADYACQUIRED
	) ELSE (
		CALL :SPARETRAMP
	)
) ELSE (
	GOTO :TRAMPKILLCHOICE
)
GOTO :EOF

:KILLTRAMP
SET /a STORY10VERSIONNUM = 1
CALL :TRAMPDOWN
CALL :WAITFORONE
CALL :TRAMPKILL1
CALL :WAITFORZERO
CALL :TRAMPKILL2
CALL :WAITFORZERO
CALL :TRAMPKILL3
ECHO. You kill the tramp in an unnecessarily brutal way.
ECHO.
pause
SET /a TRAMPALIVE = 0
CALL :TRAMPKILLEYE
SET TEMPPATH=%MUSICPATH%\Chest
SET FILE=Chest.mp3
CALL "%MUSICPATH%\soundeffect.bat"
SET /a PLAYERKEYITEM%TEYEID%ACQUIRED = 1
ECHO. You have acquired the tramp's eye^^!
ECHO.
pause
GOTO :EOF

:SPARETRAMP
SET /a STORY9VERSIONNUM = 1
CALL :TRAMPALIVE1
ECHO Tramp: Thank you, thank you^^! Please, take this as a token of my thanks^^!
ECHO.
CALL :WAITFORTHREE
CALL :TRAMPALIVE2
ECHO. In a crystal meth induced euphoria the tramp excitedly pulls out his own eye
ECHO. and offers it to you as thanks for sparing his life.
ECHO.
CALL :WAITFORTWO
CALL :TRAMPALIVE3
ECHO. In a crystal meth induced euphoria the tramp excitedly pulls out his own eye
ECHO. and offers it to you as thanks for sparing his life.
ECHO.
CALL :WAITFORTWO
CALL :TRAMPALIVE4
ECHO. In a crystal meth induced euphoria the tramp excitedly pulls out his own eye
ECHO. and offers it to you as thanks for sparing his life.
ECHO.
CALL :WAITFORTWO
CALL :TRAMPALIVE5
ECHO. You reluctantly accept the eye, give it a bit of a wipe and put it in your pocket.
ECHO.
CALL :WAITFORTWO
CALL :TRAMPALIVE6
ECHO. You reluctantly accept the eye, give it a bit of a wipe and put it in your pocket.
ECHO.
SET TEMPPATH=%MUSICPATH%\Chest
SET FILE=Chest.mp3
CALL "%MUSICPATH%\soundeffect.bat"
SET /a PLAYERKEYITEM%TEYEID%ACQUIRED = 1
CALL :WAITFORTWO
:EYEALREADYACQUIRED
CALL :TRAMPFACE
ECHO. The tramp doesn't look so good...
ECHO.
ECHO. 1 - Take him to the temple to get him fixed up
ECHO. 2 - He'll be alright, probably best to just leave him to it
ECHO.
:SPARETRAMPCHOICE
SET /P SPARETRAMPCHOICE=
ECHO.
IF "%SPARETRAMPCHOICE%" EQU "1" (
	CALL "%TRAMPRESOURCEPATH%\tramptemplevisit.bat"
) ELSE IF "%SPARETRAMPCHOICE%" EQU "2" (
	CALL :TRAMPLEAVE1
	ECHO. You leave the tramp behind the shop.
	ECHO.
	CALL :WAITFORTWO
	SET /a TRAMPALIVE = 0
	SET /a STORY10VERSIONNUM = 1
	CALL :TRAMPLEAVE2
	ECHO. He died.
	ECHO.
	pause
	GOTO :EOF
) ELSE (
	GOTO :SPARETRAMPCHOICE
)
GOTO :EOF


:TRAMPDOWN
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ          ฺฤฤฤฟ          ณ                                                                          บ
ECHO    บ          ณ  Oณ          ณ                                                                          บ
ECHO    บ          ณ   ด          ณ                                                                          บ
ECHO    บ          ภยฤยู          ณ                                                                          บ
ECHO    บ         ฺฤู ภฤฟ         ณ                                                                          บ
ECHO    บ         ณ     ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ                                          ~                               บ
ECHO    บ         ณ   ณ ณ         ณ                               ~    ~                                     บ
ECHO    บ         ณ   ณ ณ         ณ                        ~   ~      ~    ~    ~                            บ
ECHO    บ         ณ   ณ ณ         ณ                           ฺฤฤฤฟฺฤฤฤฤฤฤฤฤฤฤฤฟ                             บ
ECHO    บ         ภยฤฤณยู         ณ                         ~ ณ   ภู           ณ  ~                          บ
ECHO    บ          ณ   ณ          ณ                           ณO  ฺฟ           ณ      ~                      บ
ECHO    บ          ณ   ณ          ณ                           ภฤฤมฑณ  ณ        ณ  ~                          บ
ECHO    บ          ณ   ณ          ณ                                ภฤฤลฤฤฤฤฤฤยยู                             บ
ECHO    บ          ณ   ณ          ณ                            ~      ณ      ณภฤฤฤฤ   ~                      บ
ECHO    บ          ณ   ณ          ณ                                   ณ      ภฤฤฤฤ                           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPKILL1
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                ฺฤฤฤฟ    ณ                                                                          บ
ECHO    บ                ณ  Oณ    ณ                                                                          บ
ECHO    บ                ณ   ด    ณ                                                                          บ
ECHO    บ                ภยฤยู    ณ                                                                          บ
ECHO    บ               ฺฤู ภฤฟ   ณ                                                                          บ
ECHO    บ               ณ     ณ   ณ                                                                          บ
ECHO    บ               ณ  ฤฤฤฤฤฤฤฤ                                                                          บ
ECHO    บ               ณ     ณ   ณ                                          ~                               บ
ECHO    บ               ณ     ณ   ณ                               ~    ~                                     บ
ECHO    บ               ณ     ณ   ณ                        ~   ~      ~    ~    ~                            บ
ECHO    บ               ณ     ณ   ณ                           ฺฤฤฤฟฺฤฤฤฤฤฤฤฤฤฤฤฟ                             บ
ECHO    บ               ภฤยฤฤฤู   ณ                         ~ ณ   ภู           ณ  ~                          บ
ECHO    บ                 ณ\      ณ                           ณO  ฺฟ           ณ      ~                      บ
ECHO    บ                 ณ \     ณ                           ภฤฤมฑณ  ณ        ณ  ~                          บ
ECHO    บ                 ณ  \    ณ                                ภฤฤลฤฤฤฤฤฤยยู                             บ
ECHO    บ               ฤฤู   \   ณ                            ~      ณ      ณภฤฤฤฤ   ~                      บ
ECHO    บ                      \  ณ                                   ณ      ภฤฤฤฤ                           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPKILL2
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ ฺฤฤฤฟ                                                                    บ
ECHO    บ                         ณ ณ  Oณ                                                                    บ
ECHO    บ                         ณ ณ   ด                                                                    บ
ECHO    บ                         ณ ภยฤยู                                                                    บ
ECHO    บ                         ณฺฤู ภฤฟ                                                                   บ
ECHO    บ                         ณณ     ณ                                                                   บ
ECHO    บ                         ณณ  ฤฤฤฤฤฤฤฤ                                                               บ
ECHO    บ                         ณณ     ณ                                   ~                               บ
ECHO    บ                         ณณ     ณ                        ~    ~                                     บ
ECHO    บ                         ณณ     ณ                 ~   ~      ~    ~    ~                            บ
ECHO    บ                         ณณ     ณ                    ฺฤฤฤฟฺฤฤฤฤฤฤฤฤฤฤฤฟ                             บ
ECHO    บ                         ณภฤยฤฤฤู                  ~ ณ   ภู           ณ  ~                          บ
ECHO    บ                         ณ  ณ\                       ณO  ฺฟ           ณ      ~                      บ
ECHO    บ                         ณ  ณ \                      ภฤฤมฑณ  ณ        ณ  ~                          บ
ECHO    บ                         ณ  ณ  \                          ภฤฤลฤฤฤฤฤฤยยู                             บ
ECHO    บ                         ณฤฤู   \                     ~      ณ      ณภฤฤฤฤ   ~                      บ
ECHO    บ                         ณ       \                           ณ      ภฤฤฤฤ                           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPKILL3
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                ฺฤฤฤฟ                                                   บ
ECHO    บ                         ณ                ณ^> ^<ณ                                                     บ
ECHO    บ                         ณ                ณ o ด                                                     บ
ECHO    บ                         ณ                ภฤยฤู                                                     บ
ECHO    บ                         ณ               ฺฤฤมฤฤฟ X                                                  บ
ECHO    บ                         ณ               ณ     ณ ณ                                                  บ
ECHO    บ                         ณ               ณ    ฤฤฤู                                                  บ
ECHO    บ                         ณ               ณ     ณ                                                    บ
ECHO    บ                         ณ               ณ     ณ                                                    บ
ECHO    บ                         ณ               ณ     ณ                                                    บ
ECHO    บ                         ณ               ณ     ณ                    ~                               บ
ECHO    บ                         ณ               ภยฤฤฤยู         ~    ~                                     บ
ECHO    บ                         ณ                 \   \  ~   ~      ~    ~    ~                            บ
ECHO    บ                         ณ                  \    \   ฺฤฤฤฟฺฤฤฤฤฤฤฤฤฤฤฤฟ                             บ
ECHO    บ                         ณ                   \     \ ณ   ภู           ณ  ~                          บ
ECHO    บ                         ณ                           \V  ฺฟ           ณ      ~                      บ
ECHO    บ                         ณ                           ภฤฤมฑณ  ณ        ณ  ~                          บ
ECHO    บ                         ณ                                ภฤฤลฤฤฤฤฤฤยยู                             บ
ECHO    บ                         ณ                            ~      ณ      ณภฤฤฤฤ   ~                      บ
ECHO    บ                         ณ                                   ณ      ภฤฤฤฤ                           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPKILLEYE
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ     ฺฤฤฤฟ                                                                บ
ECHO    บ                         ณ     ณ  Oณ                                                                บ
ECHO    บ                         ณ     ณ   ด                                                                บ
ECHO    บ                         ณ     ภยฤยู   O                                                            บ
ECHO    บ                         ณ    ฺฤู ภฤฟ  ณ                                                            บ
ECHO    บ                         ณ    ณ     ณ  ณ                                                            บ
ECHO    บ                         ณ    ณ   ฤฤฤฤฤู                                                            บ
ECHO    บ                         ณ    ณ     ณ                                                               บ
ECHO    บ                         ณ    ณ     ณ                                                               บ
ECHO    บ                         ณ    ณ     ณ                                                               บ
ECHO    บ                         ณ    ณ     ณ                                                               บ
ECHO    บ                         ณ    ภยฤฤฤยู                                                               บ
ECHO    บ                         ณ     ณ   ณ                 ฺฤฤฤฟฺฤฤฤฤฤฤฤฤฤฤฤฟ                             บ
ECHO    บ                         ณ     ณ   ณ                 ณ   ภู           ณ                             บ
ECHO    บ                         ณ     ณ   ณ                 ณX  ฺฟ           รฤฤฤฤฤฤฤฤ                     บ
ECHO    บ                         ณ     ณ   ณ                 ภฤฤมฑณ  ณ        รฤฤฤฤฤฤฤฤ                     บ
ECHO    บ                         ณ     ณ   ณ                      ภฤฤลฤฤฤฤฤฤยยู                             บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPALIVE1
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ          ฺฤฤฤฟ          ณ                                                                          บ
ECHO    บ          ณ  Oณ          ณ                                                                          บ
ECHO    บ          ณ   ด          ณ                                                                          บ
ECHO    บ          ภยฤยู          ณ                                                                          บ
ECHO    บ         ฺฤู ภฤฟ         ณ                                                                          บ
ECHO    บ         ณ     ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ                                          ~                               บ
ECHO    บ         ณ   ณ ณ         ณ                               ~    ~                                     บ
ECHO    บ         ณ   ณ ณ         ณ                        ~   ~      ~    ~    ~                            บ
ECHO    บ         ณ   ณ ณ         ณ                           ฺฤฤฤฟฺฤฤฤฤฤฤฤฤฤฤฤฟ                             บ
ECHO    บ         ภยฤฤณยู         ณ                         ~ ณO  ภู           ณ  ~                          บ
ECHO    บ          ณ   ณ          ณ                           ร   ฺฟ           ณ      ~                      บ
ECHO    บ          ณ   ณ          ณ                           ฑฤฤฤูณ  ณ        ณ  ~                          บ
ECHO    บ          ณ   ณ          ณ                                ภฤฤลฤฤฤฤฤฤยยู                             บ
ECHO    บ          ณ   ณ          ณ                            ~      ณ      ณภฤฤฤฤ   ~                      บ
ECHO    บ          ณ   ณ          ณ                                   ณ      ภฤฤฤฤ                           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPALIVE2
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ          ฺฤฤฤฟ          ณ          ฺฤฤฤฟ                                                           บ
ECHO    บ          ณ  Oณ          ณ          ณO  ณ                                                           บ
ECHO    บ          ณ   ด          ณ          ร   ณ                                                           บ
ECHO    บ          ภยฤยู          ณ          ฑยฤยู                                                           บ
ECHO    บ         ฺฤู ภฤฟ         ณ         ฺฤู ภฤฟ                                                          บ
ECHO    บ         ณ     ณ         ณ         ณ     ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ ณ   ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ ณ   ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ ณ   ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ ณ   ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ ณ   ณ                                                          บ
ECHO    บ         ภยฤฤณยู         ณ         ภยณฤฤยู                                                          บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPALIVE3
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ          ฺฤฤฤฟ          ณ          ฺฤฤฤฟ                                                           บ
ECHO    บ          ณ  Oณ          ณ          /^<  ณ                                                           บ
ECHO    บ          ณ   ด          ณ         /ร   ณ                                                           บ
ECHO    บ          ภยฤยู          ณ        ( ฑยฤยู                                                           บ
ECHO    บ         ฺฤู ภฤฟ         ณ         \ฤู ภฤฟ                                                          บ
ECHO    บ         ณ     ณ         ณ         ณ\    ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ \   ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ     ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ     ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ     ณ                                                          บ
ECHO    บ         ณ   ณ ณ         ณ         ณ     ณ                                                          บ
ECHO    บ         ภยฤฤณยู         ณ         ภยฤฤฤยู                                                          บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    บ          ณ   ณ          ณ          ณ   ณ                                                           บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPALIVE4
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ          ฺฤฤฤฟ          ณ       ฺฤฤฤฟ                                                              บ
ECHO    บ          ณ  Oณ          ณ       ณX  ณ                                                              บ
ECHO    บ          ณ   ด          ณ       ร   ณ                                                              บ
ECHO    บ          ภยฤยู          ณ       ฑยฤยู                                                              บ
ECHO    บ         ฺฤู ภฤฟ         ณ      ฺฤู ภฤฟ                                                             บ
ECHO    บ         ณ     ณ         ณ      ณ     ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ Oฤฤฤฤฤฤฤ   ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ     ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ     ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ     ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ     ณ                                                             บ
ECHO    บ         ภยฤฤณยู         ณ      ภยฤฤฤยู                                                             บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPALIVE5
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ             ฺฤฤฤฟ       ณ       ฺฤฤฤฟ                                                              บ
ECHO    บ             ณ  Oณ       ณ       ณX  ณ                                                              บ
ECHO    บ             ณ   ด       ณ       ร   ณ                                                              บ
ECHO    บ             ภยฤยู       ณ       ฑยฤยู                                                              บ
ECHO    บ            ฺฤู ภฤฟ      ณ      ฺฤู ภฤฟ                                                             บ
ECHO    บ            ณ     ณ      ณ      ณ     ณ                                                             บ
ECHO    บ            ณ   ฤฤฤฤฤฤฤO ณ ฤฤฤฤฤฤฤฤ   ณ                                                             บ
ECHO    บ            ณ     ณ      ณ      ณ     ณ                                                             บ
ECHO    บ            ณ     ณ      ณ      ณ     ณ                                                             บ
ECHO    บ            ณ     ณ      ณ      ณ     ณ                                                             บ
ECHO    บ            ณ     ณ      ณ      ณ     ณ                                                             บ
ECHO    บ            ภยฤฤฤยู      ณ      ภยฤฤฤยู                                                             บ
ECHO    บ             ณ   ณ       ณ       ณ   ณ                                                              บ
ECHO    บ             ณ   ณ       ณ       ณ   ณ                                                              บ
ECHO    บ             ณ   ณ       ณ       ณ   ณ                                                              บ
ECHO    บ             ณ   ณ       ณ       ณ   ณ                                                              บ
ECHO    บ             ณ   ณ       ณ       ณ   ณ                                                              บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPALIVE6
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ          ฺฤฤฤฟ          ณ       ฺฤฤฤฟ                                                              บ
ECHO    บ          ณ  Oณ          ณ       ณX  ณ                                                              บ
ECHO    บ          ณ   ด          ณ       ร   ณ                                                              บ
ECHO    บ          ภยฤยู          ณ       ฑยฤยู                                                              บ
ECHO    บ         ฺฤู ภฤฟ         ณ      ฺฤู ภฤฟ                                                             บ
ECHO    บ         ณ     ณ         ณ      ณ     ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ ณ   ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ ณ   ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ ณ   ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ ณ   ณ                                                             บ
ECHO    บ         ณ   ณ ณ         ณ      ณ ณ   ณ                                                             บ
ECHO    บ         ภยฤฤณยู         ณ      ภยณฤฤยู                                                             บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    บ          ณ   ณ          ณ       ณ   ณ                                                              บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPLEAVE1
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ     ฺฤฤฤฟ               ณ       ฺฤฤฤฟ                                                              บ
ECHO    บ     ณO  ณ               ณ       ณX  ณ                                                              บ
ECHO    บ     ร   ณ               ณ       ร   ณ                                                              บ
ECHO    บ     ภยฤยู               ณ       ฑยฤยู                                                              บ
ECHO    บ    ฺฤู ภฤฟ              ณ      ฺฤู ภฤฟ                                                             บ
ECHO    บ    ณ     ณ              ณ      ณ     ณ                                                             บ
ECHO    บ    ณ ณ   ณ              ณ      ณ ณ   ณ                                                             บ
ECHO    บ    ณ ณ   ณ              ณ      ณ ณ   ณ                                                             บ
ECHO    บ    ณ ณ   ณ              ณ      ณ ณ   ณ                                                             บ
ECHO    บ    ณ ณ   ณ              ณ      ณ ณ   ณ                                                             บ
ECHO    บ    ณ ณ   ณ              ณ      ณ ณ   ณ                                                             บ
ECHO    บ    ภยณฤฤยู              ณ      ภยณฤฤยู                                                             บ
ECHO    บ     ณ   ณ               ณ       ณ   ณ                                                              บ
ECHO    บ     ณ   ณ               ณ       ณ   ณ                                                              บ
ECHO    บ     ณ   ณ               ณ       ณ   ณ                                                              บ
ECHO    บ     ณ   ณ               ณ       ณ   ณ                                                              บ
ECHO    บ     ณ   ณ               ณ       ณ   ณ                                                              บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPLEAVE2
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                        ฺฤฤฤฤฤฤฤฤฤฤฤฤฟ                                    บ
ECHO    บ                         ณ                        ณ            ณฑยฤฤฟ                               บ
ECHO    บ                         ณ                   ฤฤฤฤฤด ฤฤฤฤฤฤฤฤ   ภู  Xณ                               บ
ECHO    บ                         ณ                   ฤฤฤฤฤด            ฺฟ   ณ                               บ
ECHO    บ                         ณ                        ภฤฤฤฤฤฤฤฤฤฤฤฤูภฤฤฤู                               บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPFACE
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                                                                                    บ
ECHO    บ                                        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                             บ
ECHO    บ                                        ณ             ณ                                             บ
ECHO    บ                                        ณ   ฺฟ   \/   ณ                                             บ
ECHO    บ                                        ณ   ภู   /\   ณ                                             บ
ECHO    บ                                        ณ             ณ                                             บ
ECHO    บ                                        ณ      ู      ณ                                             บ
ECHO    บ                                        ณ             ณ                                             บ
ECHO    บ                                        ณ   ภฤฤฤฤฤู   ณ                                             บ
ECHO    บ                                        ณฑฑฑฑฑฑฑฑฑฑฑฑฑณ                                             บ
ECHO    บ                                        ณฑฑฑฑฑฑฑฑฑฑฑฑฑณ                                             บ
ECHO    บ                                        ภฤฑฑฑฑฑฑฑฑฑฑฑฤู                                             บ
ECHO    บ                                             ณ   ณ                                                  บ
ECHO    บ                                     ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
ECHO    บ                                     ณ                   ณ                                          บ
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