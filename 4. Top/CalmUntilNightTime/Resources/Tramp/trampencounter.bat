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
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          敖陳�          �                                                                          �
ECHO    �          �  O�          �                                                                          �
ECHO    �          �   �          �                                                                          �
ECHO    �          逝賃�          �                                                                          �
ECHO    �         敖� 青�         �                                                                          �
ECHO    �         �     �         �                                                                          �
ECHO    �         �   � �         �                                                                          �
ECHO    �         �   � �         �                                                                          �
ECHO    �         �   � �         �             ~  ~   ~   ~  ~                                              �
ECHO    �         �   � �         �            ~    ~     ~      ~  ~                                        �
ECHO    �         �   � �         �      ~  ~ 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �         �   � �         �   ~     敖�                   �  ~                                       �
ECHO    �         逝陳蛎�         �  ~ 敖賃臼嘘                   �                                          �
ECHO    �          �   �          �    �V  碩 �                   �                                          �
ECHO    �          �   �          �    �   攷 �                   � ~                                        �
ECHO    �          �   �          �~   青陳抒 �                   �                                          �
ECHO    �          �   �          �    旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPDISPLAY3
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          敖陳�          �                                                                          �
ECHO    �          �  O�          �                                                                          �
ECHO    �          �   �          �                                                                          �
ECHO    �          逝賃�          �                                                                          �
ECHO    �         敖� 青�         �                                                                          �
ECHO    �         �     �         �                                                                          �
ECHO    �         �   � �         �                                                                          �
ECHO    �         �   � �         �                                                                          �
ECHO    �         �   � �         �             ~  ~   ~   ~  ~                                              �
ECHO    �         �   � �         �            ~    ~     ~      ~  ~                                        �
ECHO    �         �   � �         �      ~  ~ 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �         �   � �         �   ~     敖�                   �  ~                                       �
ECHO    �         逝陳蛎�         �  ~ 敖賃臼嘘                   �                                          �
ECHO    �          �   �          �    �X  碩 �                   �                                          �
ECHO    �          �   �          �    �   攷 �                   � ~                                        �
ECHO    �          �   �          �~   青陳抒 �                   �                                          �
ECHO    �          �   �          �    旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPDISPLAY2
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                     /�  �                                                                          �
ECHO    �                  敖陳須�                                                                          �
ECHO    �                   �/陳� �                                                                          �
ECHO    �          敖陳�    �     �                                                                          �
ECHO    �          �  O�          �                                                                          �
ECHO    �          �   �          �                                                                          �
ECHO    �          逝賃�          �                                                                          �
ECHO    �         敖� 青�         �                                                                          �
ECHO    �         �     �         �                                                                          �
ECHO    �         �   � �         �                                                                          �
ECHO    �         �   � �         �                                                                          �
ECHO    �         �   � �         �             ~  ~   ~   ~  ~                                              �
ECHO    �         �   � �         �            ~    ~     ~      ~  ~                                        �
ECHO    �         �   � �         �      ~  ~ 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �         �   � �         �   ~     敖�                   �  ~                                       �
ECHO    �         逝陳蛎�         �  ~ 敖賃臼嘘                   �                                          �
ECHO    �          �   �          �    �V  碩 �                   �                                          �
ECHO    �          �   �          �    �   攷 �                   � ~                                        �
ECHO    �          �   �          �~   青陳抒 �                   �                                          �
ECHO    �          �   �          �    旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPNUDGE
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                      敖陳�                                                                         �
ECHO    �                      �  O�                                                                         �
ECHO    �                      �   �                                                                         �
ECHO    �                      逝賃�                                                                         �
ECHO    �                     敖� 青�                                                                        �
ECHO    �                     �     �                                                                        �
ECHO    �                     �     �                                                                        �
ECHO    �                     �     �                                                                        �
ECHO    �                     �   \ �           ~  ~   ~   ~  ~                                              �
ECHO    �                     �    \�          ~    ~     ~      ~  ~                                        �
ECHO    �                     �     \    ~  ~ 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �                     �     �\~     敖�                   �  ~                                       �
ECHO    �                     逝陳賃�~\敖賃臼嘘                   �                                          �
ECHO    �                      �  崖   �V  碩 �                   �                                          �
ECHO    �                      �  崖   �   攷 �                   � ~                                        �
ECHO    �                      �  崖   青陳抒 �                   �                                          �
ECHO    �                      �  崖   旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPKICK
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                       敖陳�                                                                        �
ECHO    �                       �  O�                                                                        �
ECHO    �                       �   �                                                                        �
ECHO    �                       逝賃�                                                                        �
ECHO    �                      敖� 青�                                                                       �
ECHO    �                      �     �                                                                       �
ECHO    �                      �   � �                                                                       �
ECHO    �                      �   � �                                                                       �
ECHO    �                      �   � �          ~  ~   ~   ~  ~                                              �
ECHO    �                      �   � �         ~    ~     ~      ~  ~                                        �
ECHO    �                      �   � �   ~  ~ 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �                      �   � �~     敖�                   �  ~                                       �
ECHO    �                      逝陳蛎� 敖賃臼嘘                   �                                          �
ECHO    �                       � 崖 \ �V  碩 �                   �                                          �
ECHO    �                       � �   \�   攷 �                   � ~                                        �
ECHO    �                       � �    \陳潰� �                   �                                          �
ECHO    �                       � �    旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPKISS
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                     敖陳祖陳陳�                                                                    �
ECHO    �                     �         楽陳�   ~  ~   ~   ~  ~                                              �
ECHO    �                     �     �   碩  �  ~    ~     ~      ~  ~                                        �
ECHO    �                     �     �   攷 O� 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �                     �     敖陳拈祖拂�                   �  ~                                       �
ECHO    �                     逝陳賃�~ 敖賃臼嘘                   �                                          �
ECHO    �                      �  崖   �V  碩 �                   �                                          �
ECHO    �                      �  崖   �   攷 �                   � ~                                        �
ECHO    �                      �  崖   青陳抒 �                   �                                          �
ECHO    �                      �  崖   旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPKISS2
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                     敖陳祖陳陳�                                                                    �
ECHO    �                     �         楽陳�   ~  ~   ~   ~  ~                                              �
ECHO    �                     �     �   碩  �  ~    ~     ~      ~  ~                                        �
ECHO    �                     �     �   攷 O� 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �                     �     敖陳拈祖拂�                   �  ~                                       �
ECHO    �                     逝陳賃�~ 敖賃臼嘘                   �                                          �
ECHO    �                      �  崖   �O  碩 �                   �                                          �
ECHO    �                      �  崖   �   攷 �                   � ~                                        �
ECHO    �                      �  崖   青陳抒 �                   �                                          �
ECHO    �                      �  崖   旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPTAKEEYE1
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                       敖陳�                                                                        �
ECHO    �                       �  O�                                                                        �
ECHO    �                       �   �                                                                        �
ECHO    �                       逝賃�                                                                        �
ECHO    �                      敖� 青�                                                                       �
ECHO    �                      �     �                                                                       �
ECHO    �                      �     �                                                                       �
ECHO    �                      �     �                                                                       �
ECHO    �                      �   \ �          ~  ~   ~   ~  ~                                              �
ECHO    �                      �    \�         ~    ~     ~      ~  ~                                        �
ECHO    �                      �     \   ~  ~ 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �                      �     �\     敖�                   �  ~                                       �
ECHO    �                      逝陳賃� \陳賊臼�                   �                                          �
ECHO    �                       � � �  �V  碩 �                   �                                          �
ECHO    �                       � � �  �   攷 �                   � ~                                        �
ECHO    �                       � � �  青陳抒 �                   �                                          �
ECHO    �                       � � �  旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPTAKEEYE2
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                       敖陳�                                                                        �
ECHO    �                       �  O�                                                                        �
ECHO    �                       �   �                                                                        �
ECHO    �                       逝賃�                                                                        �
ECHO    �                      敖� 青�  O                                                                    �
ECHO    �                      �     �  �                                                                    �
ECHO    �                      �   陳陳潰                                                                    �
ECHO    �                      �     �                                                                       �
ECHO    �                      �     �          ~  ~   ~   ~  ~                                              �
ECHO    �                      �     �         ~    ~     ~      ~  ~                                        �
ECHO    �                      �     �   ~  ~ 敖陳陳陳陳陳陳陳陳陳�                                          �
ECHO    �                      �     �      敖�                   �  ~                                       �
ECHO    �                      逝陳賃� 敖賃臼嘘                   �                                          �
ECHO    �                       � � �  �X  碩 �                   �                                          �
ECHO    �                       � � �  �   攷 �                   � ~                                        �
ECHO    �                       � � �  青陳抒 �                   �                                          �
ECHO    �                       � � �  旭旭粟珍陳陳陳陳陳陳陳陳陳潰   ~                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF


:TRAMPDISPLAY10
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          敖陳�          �       敖陳�                                                              �
ECHO    �          �  O�          �       �X  �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          逝賃�          �       餌賃�                                                              �
ECHO    �         敖� 青�         �      敖� 青�                                                             �
ECHO    �         �     �         �      �     �                                                             �
ECHO    �         �   � �         �  陳陳陳�   �                                                             �
ECHO    �         �   � �         �      �     �                                                             �
ECHO    �         �   � �         �      �     �                                                             �
ECHO    �         �   � �         �      �     �                                                             �
ECHO    �         �   � �         �      �     �                                                             �
ECHO    �         逝陳蛎�         �      逝陳賃�                                                             �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
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