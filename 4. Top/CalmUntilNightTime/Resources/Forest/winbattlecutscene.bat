@ECHO OFF
SET /a SCENETOT = 44
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
	SET /a COUNT = %COUNT% - 2
	GOTO :EOF
) ELSE (
	GOTO :CONFIRM
)
GOTO :EOF

:SCENE1IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�                                                  �
ECHO    �                  /�              \          �  O�                                                  �
ECHO    �                 /           O     \         �   �                                                  �
ECHO    �                /    O    O      �  \        青堕�                                                  �
ECHO    �               /  O    �             \      敖珍陳�                                                 �
ECHO    �              / �          O  �       \     �     �                                                 �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �                                                 �
ECHO    �                       �~~~~~�              �   � �                                                 �
ECHO    �                       �     �              �   � �                                                 �
ECHO    �                       �     �              �   � �   敖陳笥陳陳陳陳陳朕                            �
ECHO    �                       青陳陳�              �   � �   �   碩           �                            �
ECHO    �                                            逝陳蛎�   �O  攷           �                            �
ECHO    �                                             �   �    青珍抒  �        �                            �
ECHO    �                                             �   �         青津陳陳陳詑�                            �
ECHO    �                                             �   �            �       垣陳陳                        �
ECHO    �                                             �   �            �       青陳�                         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     Bandit: Aww man, I how did I lose...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE2IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�                                                  �
ECHO    �                  /�              \          �  O�                                                  �
ECHO    �                 /           O     \         �   �                                                  �
ECHO    �                /    O    O      �  \        青堕�                                                  �
ECHO    �               /  O    �             \      敖珍陳�                                                 �
ECHO    �              / �          O  �       \     �     �                                                 �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �                                                 �
ECHO    �                       �~~~~~�              �   � �                                                 �
ECHO    �                       �     �              �   � �                                                 �
ECHO    �                       �     �              �   � �   敖陳笥陳陳陳陳陳朕                            �
ECHO    �                       青陳陳�              �   � �   �   碩           �                            �
ECHO    �                                            逝陳蛎�   �O  攷           �                            �
ECHO    �                                             �   �    青珍抒  �        �                            �
ECHO    �                                             �   �         青津陳陳陳詑�                            �
ECHO    �                                             �   �            �       垣陳陳                        �
ECHO    �                                             �   �            �       青陳�                         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %PLAYERNAME%: Don't beat yourself up about it
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�                                                  �
ECHO    �                  /�              \          �  O�                                                  �
ECHO    �                 /           O     \         �   �                                                  �
ECHO    �                /    O    O      �  \        青堕�                                                  �
ECHO    �               /  O    �             \      敖珍陳�                                                 �
ECHO    �              / �          O  �       \     �     �                                                 �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �                                                 �
ECHO    �                       �~~~~~�              �   � �                                                 �
ECHO    �                       �     �              �   � �                                                 �
ECHO    �                       �     �              �   � �   敖陳笥陳陳陳陳陳朕                            �
ECHO    �                       青陳陳�              �   � �   �   碩           �                            �
ECHO    �                                            逝陳蛎�   �O  攷           �                            �
ECHO    �                                             �   �    青珍抒  �        �                            �
ECHO    �                                             �   �         青津陳陳陳詑�                            �
ECHO    �                                             �   �            �       垣陳陳                        �
ECHO    �                                             �   �            �       青陳�                         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %PLAYERNAME%: I just did that for you. BOOM^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�                                                  �
ECHO    �                  /�              \          �  O�                                                  �
ECHO    �                 /           O     \         �   �                                                  �
ECHO    �                /    O    O      �  \        青堕�                                                  �
ECHO    �               /  O    �             \      敖珍陳�                                                 �
ECHO    �              / �          O  �       \     �     �                                                 �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �                                                 �
ECHO    �                       �~~~~~�              �   � �                                                 �
ECHO    �                       �     �              �   � �                                                 �
ECHO    �                       �     �              �   � �   敖陳笥陳陳陳陳陳朕                            �
ECHO    �                       青陳陳�              �   � �   �   碩           �                            �
ECHO    �                                            逝陳蛎�   �O  攷           �                            �
ECHO    �                                             �   �    青珍抒  �        �                            �
ECHO    �                                             �   �         青津陳陳陳詑�                            �
ECHO    �                                             �   �            �       垣陳陳                        �
ECHO    �                                             �   �            �       青陳�                         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %PLAYERNAME%: Would you like some aftersun for that BURNNN^^!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE5IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�                                                  �
ECHO    �                  /�              \          �  O�                                                  �
ECHO    �                 /           O     \         �   �                                                  �
ECHO    �                /    O    O      �  \        青堕�                                                  �
ECHO    �               /  O    �             \      敖珍陳�                                                 �
ECHO    �              / �          O  �       \     �     �                                                 �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �                                                 �
ECHO    �                       �~~~~~�              �   � �                                                 �
ECHO    �                       �     �              �   � �                                                 �
ECHO    �                       �     �              �   � �   敖陳笥陳陳陳陳陳朕                            �
ECHO    �                       青陳陳�              �   � �   �   碩           �                            �
ECHO    �                                            逝陳蛎�   �O  攷           �                            �
ECHO    �                                             �   �    青珍抒  �        �                            �
ECHO    �                                             �   �         青津陳陳陳詑�                            �
ECHO    �                                             �   �            �       垣陳陳                        �
ECHO    �                                             �   �            �       青陳�                         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     Bandit: Right...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�                                                  �
ECHO    �                  /�              \          �  O�                                                  �
ECHO    �                 /           O     \         �   �                                                  �
ECHO    �                /    O    O      �  \        青堕�                                                  �
ECHO    �               /  O    �             \      敖珍陳�                                                 �
ECHO    �              / �          O  �       \     �     �                                                 �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �                                                 �
ECHO    �                       �~~~~~�              �   � �                                                 �
ECHO    �                       �     �              �   � �                                                 �
ECHO    �                       �     �              �   � �   敖陳笥陳陳陳陳陳朕                            �
ECHO    �                       青陳陳�              �   � �   �   碩           �                            �
ECHO    �                                            逝陳蛎�   �O  攷           �                            �
ECHO    �                                             �   �    青珍抒  �        �                            �
ECHO    �                                             �   �         青津陳陳陳詑�                            �
ECHO    �                                             �   �            �       垣陳陳                        �
ECHO    �                                             �   �            �       青陳�                         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %PLAYERNAME%: Sorry, I get carried away sometimes... What's your name?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE7IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�                                                  �
ECHO    �                  /�              \          �  O�                                                  �
ECHO    �                 /           O     \         �   �                                                  �
ECHO    �                /    O    O      �  \        青堕�                                                  �
ECHO    �               /  O    �             \      敖珍陳�                                                 �
ECHO    �              / �          O  �       \     �     �                                                 �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �                                                 �
ECHO    �                       �~~~~~�              �   � �                                                 �
ECHO    �                       �     �              �   � �                                                 �
ECHO    �                       �     �              �   � �   敖陳笥陳陳陳陳陳朕                            �
ECHO    �                       青陳陳�              �   � �   �O  碩           �                            �
ECHO    �                                            逝陳蛎�   �   攷           �                            �
ECHO    �                                             �   �    青陳抒  �        �                            �
ECHO    �                                             �   �         青津陳陳陳詑�                            �
ECHO    �                                             �   �            �       垣陳陳                        �
ECHO    �                                             �   �            �       青陳�                         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     Bandit: %BANDITNAME%...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE8IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�            敖陳�                                 �
ECHO    �                  /�              \          �  O�            �O  �                                 �
ECHO    �                 /           O     \         �   �            �   �                                 �
ECHO    �                /    O    O      �  \        青堕�            青堕�                                 �
ECHO    �               /  O    �             \      敖珍陳�          敖珍陳�                                �
ECHO    �              / �          O  �       \     �     �          �     �                                �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   陳陳陳       � �   �                                �
ECHO    �                       �~~~~~�              �     �          � �   �                                �
ECHO    �                       �     �              �     �          � �   �                                �
ECHO    �                       �     �              �     �          � �   �                                �
ECHO    �                       青陳陳�              �     �          � �   �                                �
ECHO    �                                            逝陳賃�          逝劃賃�                                �
ECHO    �                                             �   �            �   �                                 �
ECHO    �                                             �   �            �   �                                 �
ECHO    �                                             �   �            �   �                                 �
ECHO    �                                             �   �            �   �                                 �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: I'm %PLAYERNAME%, nice to meet you^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE9IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   陳陳陳陳陳陳   �                                    �
ECHO    �                       �~~~~~�              �     �      �     �                                    �
ECHO    �                       �     �              �     �      �     �                                    �
ECHO    �                       �     �              �     �      �     �                                    �
ECHO    �                       青陳陳�              �     �      �     �                                    �
ECHO    �                                            逝陳賃�      逝陳賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %BANDITNAME%: You're a bit special %PLAYERNAME% aren't you.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE10IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: That's what my mum used to say. Until %LASTBOSSNAME% took and/or killed her.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE11IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %BANDITNAME%: Ahh, the old quest for revenge is it?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE12IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %PLAYERNAME%: How did you guess? Pretty cliche I suppose...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE13IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %BANDITNAME%: Nope, I met this guy called %FRIENDNAME% earlier who had a similar story
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE14IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %BANDITNAME%: He wasn't quite as strong as you though
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE15IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \              ^^!                                                    �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     %PLAYERNAME%: YOU SAW %FRIENDNAMECAP%^^!? Is he ok? When did you see him?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE16IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE16TEXT
ECHO     %BANDITNAME%: He's fine, he beat me too... It wasn't too long ago, he's probably in the next town
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE17IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE17TEXT
ECHO     %PLAYERNAME%: Right, I'm going to find him. Bye %BANDITNAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE18IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                           ^^!                                       �
ECHO    �                   /   O  �   �  \         敖陳�          敖陳�                                     �
ECHO    �                  /�              \        �O  �          �O  �                                     �
ECHO    �                 /           O     \       �   �          �   �                                     �
ECHO    �                /    O    O      �  \      青堕�          青堕�                                     �
ECHO    �               /  O    �             \    敖珍陳�        敖珍陳�                                    �
ECHO    �              / �          O  �       \   �     �        �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳   � �   �     陳陳陳   �                                    �
ECHO    �                       �~~~~~�            � �   �        �     �                                    �
ECHO    �                       �     �            � �   �        �     �                                    �
ECHO    �                       �     �            � �   �        �     �                                    �
ECHO    �                       青陳陳�            � �   �        �     �                                    �
ECHO    �                                          逝劃賃�        逝陳賃�                                    �
ECHO    �                                           �   �          �   �                                     �
ECHO    �                                           �   �          �   �                                     �
ECHO    �                                           �   �          �   �                                     �
ECHO    �                                           �   �          �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE18TEXT
ECHO     %BANDITNAME%: Wait^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE19IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE19TEXT
ECHO     %BANDITNAME%: I'm not cut out to be a bandit. I think I'm going to try my hand at teaching
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE20IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \              ?                                                    �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE20TEXT
ECHO     %PLAYERNAME%: Teaching?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE21IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE21TEXT
ECHO     %BANDITNAME%: Teaching.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE22IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE22TEXT
ECHO     %PLAYERNAME%: Why teaching?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE23IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                           ^^!                                       �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE23TEXT
ECHO     %BANDITNAME%: Plot convenience. I want to offer to teach you a skill^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE24IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE24TEXT
ECHO     %PLAYERNAME%: Nice one, which skill?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE25IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                           ^^!                                       �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE25TEXT
ECHO     %BANDITNAME%: Mug^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE26IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE26TEXT
::Mug is skill 49
IF !PLAYERSKILL%MUGID%EARNED! EQU 1 (
	ECHO     %PLAYERNAME%: Yea, I can kind of already use that skill %BANDITNAME%...
) ELSE IF !PLAYERSKILL%MUGID%ENABLED! EQU 1 (
	ECHO     %PLAYERNAME%: Yea, my weapon actually lets me use that skill already %BANDITNAME%...
) ELSE IF %PLAYERUSEMUG% GTR 0 (
	ECHO     %PLAYERNAME%: Yea, I've used that before %BANDITNAME%. It's nothing special...
) ELSE (
	ECHO     %PLAYERNAME%: What does that do?
)
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE27IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE27TEXT
IF !PLAYERSKILL%MUGID%EARNED! EQU 1 (
	ECHO     %BANDITNAME%: This is different though %PLAYERNAME%, I'll replace your Attack with Mug so you an use it for free^^!
) ELSE IF !PLAYERSKILL%MUGID%ENABLED! EQU 1 (
	ECHO     %BANDITNAME%: This is different though %PLAYERNAME%, I'll replace your Attack with Mug so you an use it for free^^!
) ELSE IF %PLAYERUSEMUG% GTR 0 (
	ECHO     %BANDITNAME%: This is different though %PLAYERNAME%, I'll replace your Attack with Mug so you an use it for free^^!
) ELSE (
	ECHO     %BANDITNAME%: It's basically like stealing and attacking at the same time.
	ECHO            As an added bonus, I'll replace your Attack with Mug so you an use it for free^^!
)
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE28IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \              ^^!                                                    �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE28TEXT
ECHO     %PLAYERNAME%: I'm all for that^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE29IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE29TEXT
ECHO     %BANDITNAME%: Ok cool, just one condition...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE30IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE30TEXT
ECHO     %BANDITNAME%: Catch me a dragon.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE31IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \             ...                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE31TEXT
ECHO     %PLAYERNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE32IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \              ?                                                    �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE32TEXT
ECHO     %PLAYERNAME%: Are you serious? Catch you a dragon?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE33IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE33TEXT
ECHO     %BANDITNAME%: That's the deal.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE34IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \              ^^!                                                    �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE34TEXT
ECHO     %PLAYERNAME%: That's a pretty steep deal^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE35IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE35TEXT
ECHO     %BANDITNAME%: Well you don't have to. They're all over in the next town, just go and catch one and I'll teach you Mug
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE36IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \              ^^!                                                    �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE36TEXT
ECHO     %PLAYERNAME%: You're insane^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE37IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE37TEXT
ECHO     %BANDITNAME%: I'm not, I just want a dragon
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE38IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE38TEXT
IF %EXPLICIT% EQU 1 (
	ECHO     %PLAYERNAME%: Of course you want a dragon. Everyone wants a dragon. It's a fucking dragon^^!
) ELSE (
	ECHO     %PLAYERNAME%: Of course you want a dragon. Everyone wants a dragon. It's a bloody dragon^^!
)
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE39IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE39TEXT
ECHO     %BANDITNAME%: Look, just go and catch me a dragon and then we'll talk.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE40IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE40TEXT
ECHO     %PLAYERNAME%: Fine.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE41IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \         敖陳�          敖陳�                                     �
ECHO    �                  /�              \        �O  �          �O  �                                     �
ECHO    �                 /           O     \       �   �          �   �                                     �
ECHO    �                /    O    O      �  \      青堕�          青堕�                                     �
ECHO    �               /  O    �             \    敖珍陳�        敖珍陳�                                    �
ECHO    �              / �          O  �       \   �     �        �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳   � �   �     陳陳陳   �                                    �
ECHO    �                       �~~~~~�            � �   �        �     �                                    �
ECHO    �                       �     �            � �   �        �     �                                    �
ECHO    �                       �     �            � �   �        �     �                                    �
ECHO    �                       青陳陳�            � �   �        �     �                                    �
ECHO    �                                          逝劃賃�        逝陳賃�                                    �
ECHO    �                                           �   �          �   �                                     �
ECHO    �                                           �   �          �   �                                     �
ECHO    �                                           �   �          �   �                                     �
ECHO    �                                           �   �          �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE41TEXT
ECHO     %BANDITNAME%: Wait^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE42IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �   �  �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �   陳陳陳   �                                    �
ECHO    �                       �~~~~~�              �   � �      �     �                                    �
ECHO    �                       �     �              �   � �      �     �                                    �
ECHO    �                       �     �              �   � �      �     �                                    �
ECHO    �                       青陳陳�              �   � �      �     �                                    �
ECHO    �                                            逝陳蛎�      逝陳賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE42TEXT
ECHO     %BANDITNAME%: Take this, I don't deserve it. I'm no thief
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE43IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �  �   �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   陳陳陳   � �   �                                    �
ECHO    �                       �~~~~~�              �     �      � �   �                                    �
ECHO    �                       �     �              �     �      � �   �                                    �
ECHO    �                       �     �              �     �      � �   �                                    �
ECHO    �                       青陳陳�              �     �      � �   �                                    �
ECHO    �                                            逝陳賃�      逝陳賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE43TEXT
ECHO     %PLAYERNAME%: Thanks %BANDITNAME%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE44IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       /     \                                                                      �
ECHO    �                      / �  O  \                                                                     �
ECHO    �                     /         \                                                                    �
ECHO    �                    /     �  O  \                                                                   �
ECHO    �                   / �           \                                                                  �
ECHO    �                  /    O     O    \                                                                 �
ECHO    �                 /       �      O  \                                                                �
ECHO    �                 陳陳      O    陳陳                                                                �
ECHO    �                    /           \                                                                   �
ECHO    �                   /   O  �   �  \           敖陳�        敖陳�                                     �
ECHO    �                  /�              \          �  O�        �O  �                                     �
ECHO    �                 /           O     \         �   �        �   �                                     �
ECHO    �                /    O    O      �  \        青堕�        青堕�                                     �
ECHO    �               /  O    �             \      敖珍陳�      敖珍陳�                                    �
ECHO    �              / �          O  �       \     �     �      �     �                                    �
ECHO    �              陳陳陳陳朕     敖陳陳陳陳     �   � �      � �   �                                    �
ECHO    �                       �~~~~~�              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       �     �              �   � �      � �   �                                    �
ECHO    �                       青陳陳�              �   � �      � �   �                                    �
ECHO    �                                            逝陳蛎�      逝劃賃�                                    �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    �                                             �   �        �   �                                     �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE44TEXT
ECHO     %BANDITNAME% gave you the !KEYITEM%MAGSTONE3ID%NAME!^^! Your ACC and EVA have increased by 10^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF
