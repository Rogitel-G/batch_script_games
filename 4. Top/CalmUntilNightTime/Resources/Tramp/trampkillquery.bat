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
ECHO    �         �   � �         �                                          ~                               �
ECHO    �         �   � �         �                               ~    ~                                     �
ECHO    �         �   � �         �                        ~   ~      ~    ~    ~                            �
ECHO    �         �   � �         �                           敖陳笥陳陳陳陳陳朕                             �
ECHO    �         逝陳蛎�         �                         ~ �   碩           �  ~                          �
ECHO    �          �   �          �                           �O  攷           �      ~                      �
ECHO    �          �   �          �                           青珍嘘  �        �  ~                          �
ECHO    �          �   �          �                                青津陳陳陳詑�                             �
ECHO    �          �   �          �                            ~      �      垣陳陳   ~                      �
ECHO    �          �   �          �                                   �      青陳�                           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPKILL1
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                敖陳�    �                                                                          �
ECHO    �                �  O�    �                                                                          �
ECHO    �                �   �    �                                                                          �
ECHO    �                逝賃�    �                                                                          �
ECHO    �               敖� 青�   �                                                                          �
ECHO    �               �     �   �                                                                          �
ECHO    �               �  陳陳陳陳                                                                          �
ECHO    �               �     �   �                                          ~                               �
ECHO    �               �     �   �                               ~    ~                                     �
ECHO    �               �     �   �                        ~   ~      ~    ~    ~                            �
ECHO    �               �     �   �                           敖陳笥陳陳陳陳陳朕                             �
ECHO    �               青堕陳�   �                         ~ �   碩           �  ~                          �
ECHO    �                 �\      �                           �O  攷           �      ~                      �
ECHO    �                 � \     �                           青珍嘘  �        �  ~                          �
ECHO    �                 �  \    �                                青津陳陳陳詑�                             �
ECHO    �               陳�   \   �                            ~      �      垣陳陳   ~                      �
ECHO    �                      \  �                                   �      青陳�                           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPKILL2
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         � 敖陳�                                                                    �
ECHO    �                         � �  O�                                                                    �
ECHO    �                         � �   �                                                                    �
ECHO    �                         � 逝賃�                                                                    �
ECHO    �                         楽潰 青�                                                                   �
ECHO    �                         崖     �                                                                   �
ECHO    �                         崖  陳陳陳陳                                                               �
ECHO    �                         崖     �                                   ~                               �
ECHO    �                         崖     �                        ~    ~                                     �
ECHO    �                         崖     �                 ~   ~      ~    ~    ~                            �
ECHO    �                         崖     �                    敖陳笥陳陳陳陳陳朕                             �
ECHO    �                         垣賃陳潰                  ~ �   碩           �  ~                          �
ECHO    �                         �  �\                       �O  攷           �      ~                      �
ECHO    �                         �  � \                      青珍嘘  �        �  ~                          �
ECHO    �                         �  �  \                          青津陳陳陳詑�                             �
ECHO    �                         劃潰   \                     ~      �      垣陳陳   ~                      �
ECHO    �                         �       \                           �      青陳�                           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPKILL3
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                敖陳�                                                   �
ECHO    �                         �                �^> ^<�                                                     �
ECHO    �                         �                � o �                                                     �
ECHO    �                         �                青堕�                                                     �
ECHO    �                         �               敖珍陳� X                                                  �
ECHO    �                         �               �     � �                                                  �
ECHO    �                         �               �    陳潰                                                  �
ECHO    �                         �               �     �                                                    �
ECHO    �                         �               �     �                                                    �
ECHO    �                         �               �     �                                                    �
ECHO    �                         �               �     �                    ~                               �
ECHO    �                         �               逝陳賃�         ~    ~                                     �
ECHO    �                         �                 \   \  ~   ~      ~    ~    ~                            �
ECHO    �                         �                  \    \   敖陳笥陳陳陳陳陳朕                             �
ECHO    �                         �                   \     \ �   碩           �  ~                          �
ECHO    �                         �                           \V  攷           �      ~                      �
ECHO    �                         �                           青珍嘘  �        �  ~                          �
ECHO    �                         �                                青津陳陳陳詑�                             �
ECHO    �                         �                            ~      �      垣陳陳   ~                      �
ECHO    �                         �                                   �      青陳�                           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPKILLEYE
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �     敖陳�                                                                �
ECHO    �                         �     �  O�                                                                �
ECHO    �                         �     �   �                                                                �
ECHO    �                         �     逝賃�   O                                                            �
ECHO    �                         �    敖� 青�  �                                                            �
ECHO    �                         �    �     �  �                                                            �
ECHO    �                         �    �   陳陳潰                                                            �
ECHO    �                         �    �     �                                                               �
ECHO    �                         �    �     �                                                               �
ECHO    �                         �    �     �                                                               �
ECHO    �                         �    �     �                                                               �
ECHO    �                         �    逝陳賃�                                                               �
ECHO    �                         �     �   �                 敖陳笥陳陳陳陳陳朕                             �
ECHO    �                         �     �   �                 �   碩           �                             �
ECHO    �                         �     �   �                 �X  攷           団陳陳陳�                     �
ECHO    �                         �     �   �                 青珍嘘  �        団陳陳陳�                     �
ECHO    �                         �     �   �                      青津陳陳陳詑�                             �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPALIVE1
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
ECHO    �         �   � �         �                                          ~                               �
ECHO    �         �   � �         �                               ~    ~                                     �
ECHO    �         �   � �         �                        ~   ~      ~    ~    ~                            �
ECHO    �         �   � �         �                           敖陳笥陳陳陳陳陳朕                             �
ECHO    �         逝陳蛎�         �                         ~ �O  碩           �  ~                          �
ECHO    �          �   �          �                           �   攷           �      ~                      �
ECHO    �          �   �          �                           営陳抒  �        �  ~                          �
ECHO    �          �   �          �                                青津陳陳陳詑�                             �
ECHO    �          �   �          �                            ~      �      垣陳陳   ~                      �
ECHO    �          �   �          �                                   �      青陳�                           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPALIVE2
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          敖陳�          �          敖陳�                                                           �
ECHO    �          �  O�          �          �O  �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          逝賃�          �          餌賃�                                                           �
ECHO    �         敖� 青�         �         敖� 青�                                                          �
ECHO    �         �     �         �         �     �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         逝陳蛎�         �         逝劃賃�                                                          �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPALIVE3
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          敖陳�          �          敖陳�                                                           �
ECHO    �          �  O�          �          /^<  �                                                           �
ECHO    �          �   �          �         /�   �                                                           �
ECHO    �          逝賃�          �        ( 餌賃�                                                           �
ECHO    �         敖� 青�         �         \潰 青�                                                          �
ECHO    �         �     �         �         �\    �                                                          �
ECHO    �         �   � �         �         � \   �                                                          �
ECHO    �         �   � �         �         �     �                                                          �
ECHO    �         �   � �         �         �     �                                                          �
ECHO    �         �   � �         �         �     �                                                          �
ECHO    �         �   � �         �         �     �                                                          �
ECHO    �         逝陳蛎�         �         逝陳賃�                                                          �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPALIVE4
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
ECHO    �         �   � �         � O陳陳陳�   �                                                             �
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

:TRAMPALIVE5
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �             敖陳�       �       敖陳�                                                              �
ECHO    �             �  O�       �       �X  �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             逝賃�       �       餌賃�                                                              �
ECHO    �            敖� 青�      �      敖� 青�                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �   陳陳陳�O � 陳陳陳陳   �                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            逝陳賃�      �      逝陳賃�                                                             �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPALIVE6
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
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         逝陳蛎�         �      逝劃賃�                                                             �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPLEAVE1
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �     敖陳�               �       敖陳�                                                              �
ECHO    �     �O  �               �       �X  �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     逝賃�               �       餌賃�                                                              �
ECHO    �    敖� 青�              �      敖� 青�                                                             �
ECHO    �    �     �              �      �     �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    逝劃賃�              �      逝劃賃�                                                             �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPLEAVE2
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
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                        敖陳陳陳陳陳朕                                    �
ECHO    �                         �                        �            咳堕朕                               �
ECHO    �                         �                   陳陳調 陳陳陳陳   碩  X�                               �
ECHO    �                         �                   陳陳調            攷   �                               �
ECHO    �                         �                        青陳陳陳陳陳潰青陳�                               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF

:TRAMPFACE
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                        敖陳陳陳陳陳陳�                                             �
ECHO    �                                        �             �                                             �
ECHO    �                                        �   攷   \/   �                                             �
ECHO    �                                        �   碩   /\   �                                             �
ECHO    �                                        �             �                                             �
ECHO    �                                        �      �      �                                             �
ECHO    �                                        �             �                                             �
ECHO    �                                        �   青陳陳�   �                                             �
ECHO    �                                        咳臼臼臼臼臼臼�                                             �
ECHO    �                                        咳臼臼臼臼臼臼�                                             �
ECHO    �                                        青臼臼臼臼臼営�                                             �
ECHO    �                                             �   �                                                  �
ECHO    �                                     敖陳陳陳祖陳祖陳陳陳�                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
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