CLS
IF %TRAMPALIVE% EQU 0 (
	GOTO :EOF
)
IF %BEATTRAMP% EQU 1 (
	IF %TRAMPALIVE% EQU 1 (
		GOTO :EOF
	)
) 
IF !PLAYERKEYITEM%TEYEID%ACQUIRED! EQU 1 (
	IF %BEATTRAMP% EQU 0 (
		CALL :TRAMPFIGHT2
		GOTO :EOF
	)
)
:TRAMPSTART
CALL :SETLOCATION
CALL :TRAMPDISPLAY1
ECHO You stumble across a bearded man sleeping behind the shop.
CALL :WAITFORTWO
CALL :TRAMPDISPLAY1
ECHO He smells strongly of piss and Carlsberg Special Brew
CALL :WAITFORFOUR
IF %CAVEEXAMINED% EQU 0 (
	CALL :TRAMPDISPLAY1
	ECHO How very strange...
	ECHO.
	pause
	GOTO :EOF
)
CALL :TRAMPDISPLAY2
ECHO %MENUNAME%: Hey^^! Didn't that retina scanner smell awful too?
CALL :WAITFORTHREE
CALL :TRAMPDISPLAY2
ECHO %PLAYERNAME%: Yea, you're right. Where are you going with this %MENUNAME%?
CALL :WAITFORTHREE
CALL :TRAMPDISPLAY2
ECHO %MENUNAME%: Maybe his eye will open the cave door...
CALL :WAITFORTHREE
CALL :TRAMPDISPLAY2
ECHO %PLAYERNAME%: That makes literally no sense at all
CALL :WAITFORTHREE
CALL :TRAMPDISPLAY2
ECHO %MENUNAME%: Well do you have a better idea^^!?
CALL :WAITFORTHREE
CALL :TRAMPDISPLAY2
ECHO %PLAYERNAME%: Shouting Open Sesame would be a better idea than that...
CALL :WAITFORFOUR
CALL :TRAMPDISPLAY2
ECHO %MENUNAME%: Stop being silly and wake him up, he's bound to know something.
CALL :WAITFORFOUR
SET /a STORY7VERSIONNUM = 1
:TRAMPDECISION
CALL :TRAMPDISPLAY1
ECHO. 1 - Wake the tramp up by gently nudging him
ECHO. 2 - Wake the tramp up by kicking him in the head
ECHO. 3 - Wake the tramp up by giving him the kiss of life
ECHO. 4 - Remove his eye, like in that scene from Kill Bill
ECHO. 0 - Leave the tramp alone...for now
ECHO.
:TRAMPCHOICE
SET /P TRAMPCHOICE=
ECHO.
IF "%TRAMPCHOICE%" EQU "1" (
	CALL :TRAMPNUDGE
	ECHO Tramp: Piss off
	ECHO.
	CALL :WAITFORTWO
	GOTO :TRAMPDECISION
) ELSE IF "%TRAMPCHOICE%" EQU "2" (
	SET /a STORY8VERSIONNUM = 1
	CALL :TRAMPKICK
	IF %EXPLICIT% EQU 1 (
		ECHO Tramp: OWW^^! What the fuck man^^!?
	) ELSE (
		ECHO Tramp: OWW^^! What the hell man^^!?
	)
	CALL :WAITFORONE
	CALL :TRAMPFIGHT
) ELSE IF "%TRAMPCHOICE%" EQU "3" (
	SET /a STORY8VERSIONNUM = 2
	CALL :TRAMPKISS	
	ECHO Tramp: Mmmmm, Hi Martha...
	CALL :WAITFORTWO
	CALL :TRAMPKISS	
	ECHO Tramp: ...
	CALL :WAITFORONE
	CALL :TRAMPKISS2	
	ECHO Tramp: ...
	CALL :WAITFORONE
	CALL :TRAMPKISS2	
	ECHO Tramp: Who the hell are you^^!?
	ECHO.
	CALL :TRAMPFIGHT
) ELSE IF "%TRAMPCHOICE%" EQU "4" (
	SET /a STORY8VERSIONNUM = 3
	CALL :TRAMPTAKEEYE1
	ECHO Tramp: AHHHHH MY EYEEEE^^!
	CALL :WAITFORTWO
	CALL :TRAMPTAKEEYE2
	ECHO Tramp: You can't just go around taking peoples eyes^^!
	ECHO.
	CALL :WAITFORTWO
	CALL :TRAMPTAKEEYE2
	IF %EXPLICIT% EQU 1 (
		ECHO Tramp: You dickhead, I'm going to kill you^^!
	) ELSE (
		ECHO Tramp: You fool, I'm going to kill you^^!
	)
	ECHO.
	SET /a PLAYERKEYITEM%TEYEID%ACQUIRED = 1
	CALL :TRAMPFIGHT	
) ELSE IF "%TRAMPCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :TRAMPCHOICE
)
GOTO :EOF

:SETLOCATION
SET /a PLAYERYCOORD = 9
SET /a PLAYERXCOORD = 4
GOTO :EOF


:TRAMPFIGHT
SET /a ENEMYID = %BOSSIDSTART% + 1
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
GOTO :EOF



:TRAMPFIGHT2
CALL :TRAMPDISPLAY10
ECHO Tramp: Hey^^! Give me back my eye^^!^^!
ECHO.
CALL :WAITFORTWO
SET /a ENEMYID = %BOSSIDSTART% + 1
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
GOTO :EOF

:TRAMPDISPLAY1
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
ECHO    บ         ณ   ณ ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ             ~  ~   ~   ~  ~                                              บ
ECHO    บ         ณ   ณ ณ         ณ            ~    ~     ~      ~  ~                                        บ
ECHO    บ         ณ   ณ ณ         ณ      ~  ~ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ         ณ   ณ ณ         ณ   ~     ฺฤด                   ณ  ~                                       บ
ECHO    บ         ภยฤฤณยู         ณ  ~ ฺฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ณV  ภู ณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ          ณ   ณ          ณ~   ภฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPDISPLAY3
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
ECHO    บ         ณ   ณ ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ             ~  ~   ~   ~  ~                                              บ
ECHO    บ         ณ   ณ ณ         ณ            ~    ~     ~      ~  ~                                        บ
ECHO    บ         ณ   ณ ณ         ณ      ~  ~ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ         ณ   ณ ณ         ณ   ~     ฺฤด                   ณ  ~                                       บ
ECHO    บ         ภยฤฤณยู         ณ  ~ ฺฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ณX  ภู ณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ          ณ   ณ          ณ~   ภฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPDISPLAY2
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                     /ณ  ณ                                                                          บ
ECHO    บ                  ฺฤฤฤฟÜณ                                                                          บ
ECHO    บ                   ภ/ฤฤู ณ                                                                          บ
ECHO    บ          ฺฤฤฤฟ    ฯ     ณ                                                                          บ
ECHO    บ          ณ  Oณ          ณ                                                                          บ
ECHO    บ          ณ   ด          ณ                                                                          บ
ECHO    บ          ภยฤยู          ณ                                                                          บ
ECHO    บ         ฺฤู ภฤฟ         ณ                                                                          บ
ECHO    บ         ณ     ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ                                                                          บ
ECHO    บ         ณ   ณ ณ         ณ             ~  ~   ~   ~  ~                                              บ
ECHO    บ         ณ   ณ ณ         ณ            ~    ~     ~      ~  ~                                        บ
ECHO    บ         ณ   ณ ณ         ณ      ~  ~ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ         ณ   ณ ณ         ณ   ~     ฺฤด                   ณ  ~                                       บ
ECHO    บ         ภยฤฤณยู         ณ  ~ ฺฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ณV  ภู ณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ          ณ   ณ          ณ~   ภฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ          ณ   ณ          ณ    ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPNUDGE
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                      ฺฤฤฤฟ                                                                         บ
ECHO    บ                      ณ  Oณ                                                                         บ
ECHO    บ                      ณ   ด                                                                         บ
ECHO    บ                      ภยฤยู                                                                         บ
ECHO    บ                     ฺฤู ภฤฟ                                                                        บ
ECHO    บ                     ณ     ณ                                                                        บ
ECHO    บ                     ณ     ณ                                                                        บ
ECHO    บ                     ณ     ณ                                                                        บ
ECHO    บ                     ณ   \ ณ           ~  ~   ~   ~  ~                                              บ
ECHO    บ                     ณ    \ณ          ~    ~     ~      ~  ~                                        บ
ECHO    บ                     ณ     \    ~  ~ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ                     ณ     ณ\~     ฺฤด                   ณ  ~                                       บ
ECHO    บ                     ภยฤฤฤยู~\ฺฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ณV  ภู ณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ                      ณ  ณณ   ภฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPKICK
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                       ฺฤฤฤฟ                                                                        บ
ECHO    บ                       ณ  Oณ                                                                        บ
ECHO    บ                       ณ   ด                                                                        บ
ECHO    บ                       ภยฤยู                                                                        บ
ECHO    บ                      ฺฤู ภฤฟ                                                                       บ
ECHO    บ                      ณ     ณ                                                                       บ
ECHO    บ                      ณ   ณ ณ                                                                       บ
ECHO    บ                      ณ   ณ ณ                                                                       บ
ECHO    บ                      ณ   ณ ณ          ~  ~   ~   ~  ~                                              บ
ECHO    บ                      ณ   ณ ณ         ~    ~     ~      ~  ~                                        บ
ECHO    บ                      ณ   ณ ณ   ~  ~ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ                      ณ   ณ ณ~     ฺฤด                   ณ  ~                                       บ
ECHO    บ                      ภยฤฤณยู ฺฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ                       ณ ณณ \ ณV  ภู ณ                   ณ                                          บ
ECHO    บ                       ณ ณ   \ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ                       ณ ณ    \ฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ                       ณ ณ    ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPKISS
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
ECHO    บ                     ฺฤฤฤมฤฤฤฤฤฟ                                                                    บ
ECHO    บ                     ณ         ณฺฤฤฟ   ~  ~   ~   ~  ~                                              บ
ECHO    บ                     ณ     ฺ   ภู  ณ  ~    ~     ~      ~  ~                                        บ
ECHO    บ                     ณ     ณ   ฺฟ Oณ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ                     ณ     ฺฤฤฤูภมฤูฤด                   ณ  ~                                       บ
ECHO    บ                     ภยฤฤฤยู~ ฺฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ณV  ภู ณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ                      ณ  ณณ   ภฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPKISS2
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
ECHO    บ                     ฺฤฤฤมฤฤฤฤฤฟ                                                                    บ
ECHO    บ                     ณ         ณฺฤฤฟ   ~  ~   ~   ~  ~                                              บ
ECHO    บ                     ณ     ฺ   ภู  ณ  ~    ~     ~      ~  ~                                        บ
ECHO    บ                     ณ     ณ   ฺฟ Oณ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ                     ณ     ฺฤฤฤูภมฤูฤด                   ณ  ~                                       บ
ECHO    บ                     ภยฤฤฤยู~ ฺฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ณO  ภู ณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ                      ณ  ณณ   ภฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ                      ณ  ณณ   ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPTAKEEYE1
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                       ฺฤฤฤฟ                                                                        บ
ECHO    บ                       ณ  Oณ                                                                        บ
ECHO    บ                       ณ   ด                                                                        บ
ECHO    บ                       ภยฤยู                                                                        บ
ECHO    บ                      ฺฤู ภฤฟ                                                                       บ
ECHO    บ                      ณ     ณ                                                                       บ
ECHO    บ                      ณ     ณ                                                                       บ
ECHO    บ                      ณ     ณ                                                                       บ
ECHO    บ                      ณ   \ ณ          ~  ~   ~   ~  ~                                              บ
ECHO    บ                      ณ    \ณ         ~    ~     ~      ~  ~                                        บ
ECHO    บ                      ณ     \   ~  ~ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ                      ณ     ณ\     ฺฤด                   ณ  ~                                       บ
ECHO    บ                      ภยฤฤฤยู \ฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ                       ณ ณ ณ  ณV  ภู ณ                   ณ                                          บ
ECHO    บ                       ณ ณ ณ  ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ                       ณ ณ ณ  ภฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ                       ณ ณ ณ  ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF

:TRAMPTAKEEYE2
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                         ณ                                                                          บ
ECHO    บ                       ฺฤฤฤฟ                                                                        บ
ECHO    บ                       ณ  Oณ                                                                        บ
ECHO    บ                       ณ   ด                                                                        บ
ECHO    บ                       ภยฤยู                                                                        บ
ECHO    บ                      ฺฤู ภฤฟ  O                                                                    บ
ECHO    บ                      ณ     ณ  ณ                                                                    บ
ECHO    บ                      ณ   ฤฤฤฤฤู                                                                    บ
ECHO    บ                      ณ     ณ                                                                       บ
ECHO    บ                      ณ     ณ          ~  ~   ~   ~  ~                                              บ
ECHO    บ                      ณ     ณ         ~    ~     ~      ~  ~                                        บ
ECHO    บ                      ณ     ณ   ~  ~ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ                                          บ
ECHO    บ                      ณ     ณ      ฺฤด                   ณ  ~                                       บ
ECHO    บ                      ภยฤฤฤยู ฺฤฤยฑฑฑณ                   ณ                                          บ
ECHO    บ                       ณ ณ ณ  ณX  ภู ณ                   ณ                                          บ
ECHO    บ                       ณ ณ ณ  ณ   ฺฟ ณ                   ณ ~                                        บ
ECHO    บ                       ณ ณ ณ  ภฤฤฤูณ ณ                   ณ                                          บ
ECHO    บ                       ณ ณ ณ  ฐฐฐฐฐภฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู   ~                                      บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF


:TRAMPDISPLAY10
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
ECHO    บ         ณ   ณ ณ         ณ  ฤฤฤฤฤฤฤ   ณ                                                             บ
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

:WAITFORFOUR
TIMEOUT /T 4 > nul
GOTO :EOF