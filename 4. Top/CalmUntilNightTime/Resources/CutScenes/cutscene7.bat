@ECHO OFF
CALL "%MUSICPATH%\stopmusic.bat"
SET /a SCENETOT = 116
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
		IF %COUNT% EQU 46 (
			SET /a COUNT = 31
		) ELSE IF %COUNT% EQU 45 (
			SET /a COUNT = 30
		) ELSE (
			SET /a COUNT = %COUNT% - 2
		)
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
SET /a HOMETOWNQUESTPHASE = 7
SET /a STORY3VERSIONNUM = 1
CALL :BATTLE
IF %LOSEBATTLE% EQU 1 (
	SET /a STORY4VERSIONNUM = 1
	CALL "%CUTSCENERESOURCEPATH%\cutscene8.bat"
) ELSE (
	SET /a STORY4VERSIONNUM = 2
)
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
ECHO Paused. Do you want to skip this cutscene? It's a major one^^!
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
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                     �Ĵ   �Ŀ �                    �          �         �
ECHO    �                     �  � �                     � �   � � �                    �          �         �
ECHO    �                     �  �¹                     �´   ��� �                    �          �         �
ECHO    �                     �  ���                      �� �  �  �                    �          �         �
ECHO    �                     �  ���                     ���   ��� �                    �        /           �
ECHO    �                     �   �                       ��    �  �                    �      /             �
ECHO    �                     �   �                       ��    �  �                    �    /               �
ECHO    �                     �  / \                     / \   / \ �                    �  /                 �
ECHO    �                     � /   \                   /  �\ /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     %PLAYERNAME%: Hey guys, should we head up?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE2IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                     �Ĵ   �Ŀ �                    �          �         �
ECHO    �                     �  � �                     � �   � � �                    �          �         �
ECHO    �                     �  �¹                     �´   ��� �                    �          �         �
ECHO    �                     �  ���                      �� �  �  �                    �          �         �
ECHO    �                     �  ���                     ���   ��� �                    �        /           �
ECHO    �                     �   �                       ��    �  �                    �      /             �
ECHO    �                     �   �                       ��    �  �                    �    /               �
ECHO    �                     �  / \                     / \   / \ �                    �  /                 �
ECHO    �                     � /   \                   /  �\ /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %FRIENDNAME%: Yes let's go^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                     �Ĵ   �Ŀ �                    �          �         �
ECHO    �                     �  � �                     � �   � � �                    �          �         �
ECHO    �                     �  �¹                     �´   ��� �                    �          �         �
ECHO    �                     �  ���                      �� �  �  �                    �          �         �
ECHO    �                     �  ���                     ���   ��� �                    �        /           �
ECHO    �                     �   �                       ��    �  �                    �      /             �
ECHO    �                     �   �                       ��    �  �                    �    /               �
ECHO    �                     �  / \                     / \   / \ �                    �  /                 �
ECHO    �                     � /   \                   /  �\ /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %GIRLNAME%: Wait, I don't know about this, why don't we just camp down here?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE4IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                     �Ĵ   �Ŀ �                    �          �         �
ECHO    �                     �  � �                     � �   � � �                    �          �         �
ECHO    �                     �  �¹                     �´   ��� �                    �          �         �
ECHO    �                     �  ���                      �� �  �  �                    �          �         �
ECHO    �                     �  ���                     ���   ��� �                    �        /           �
ECHO    �                     �   �                       ��    �  �                    �      /             �
ECHO    �                     �   �                       ��    �  �                    �    /               �
ECHO    �                     �  / \                     / \   / \ �                    �  /                 �
ECHO    �                     � /   \                   /  �\ /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %FRIENDNAME%: Come on %GIRLNAME%, I thought you weren't chicken?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE5IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                     �Ĵ   �Ŀ �                    �          �         �
ECHO    �                     �  � �                     � �   � � �                    �          �         �
ECHO    �                     �  �¹                     �´   ��� �                    �          �         �
ECHO    �                     �  ���                      �� �  �  �                    �          �         �
ECHO    �                     �  ���                     ���   ��� �                    �        /           �
ECHO    �                     �   �                       ��    �  �                    �      /             �
ECHO    �                     �   �                       ��    �  �                    �    /               �
ECHO    �                     �  / \                     / \   / \ �                    �  /                 �
ECHO    �                     � /   \                   /  �\ /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %GIRLNAME%: I'm not^^! I just think it's nicer down here...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE6IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                     �Ĵ   �Ŀ �                    �          �         �
ECHO    �                     �  � �                     � �   � � �                    �          �         �
ECHO    �                     �  �¹                     �´   ��� �                    �          �         �
ECHO    �                     �  ���                      �� �  �  �                    �          �         �
ECHO    �                     �  ���                     ���   ��� �                    �        /           �
ECHO    �                     �   �                       ��    �  �                    �      /             �
ECHO    �                     �   �                       ��    �  �                    �    /               �
ECHO    �                     �  / \                     / \   / \ �                    �  /                 �
ECHO    �                     � /   \                   /  �\ /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %PLAYERNAME%: Don't worry %GIRLNAME%, we can camp down here if you like
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE7IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                     �Ĵ   �Ŀ �                    �          �         �
ECHO    �                     �  � �                     � �   � � �                    �          �         �
ECHO    �                     �  �¹                     �´   ��� �                    �          �         �
ECHO    �                     �  ���                      �� �  �  �                    �          �         �
ECHO    �                     �  ���                     ���   ��� �                    �        /           �
ECHO    �                     �   �                       ��    �  �                    �      /             �
ECHO    �                     �   �                       ��    �  �                    �    /               �
ECHO    �                     �  / \                     / \   / \ �                    �  /                 �
ECHO    �                     � /   \                   /  �\ /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %FRIENDNAME%: Not you too^^! You're both babies. I'm going up myself
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                       �   �Ŀ �                    �          �         �
ECHO    �                     �  � �                       �   � � �                    �          �         �
ECHO    �                     �  �¹                       �   ��� �                    �          �         �
ECHO    �                     �  ���                       � �  �  �                    �          �         �
ECHO    �                     �  ���                       �   ��� �                    �        /           �
ECHO    �                     �   �                        �    �  �                    �      /             �
ECHO    �                     �   �                        �    �  �                    �    /               �
ECHO    �                     �  / \                       �   / \ �                    �  /                 �
ECHO    �                     � /   \                      �  /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: (Oh god, what do I say?)
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE9IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                       �   �Ŀ �                    �          �         �
ECHO    �                     �  � �                       �   � � �                    �          �         �
ECHO    �                     �  �¹                       �   ��� �                    �          �         �
ECHO    �                     �  ���                       � �  �  �                    �          �         �
ECHO    �                     �  ���                       �   ��� �                    �        /           �
ECHO    �                     �   �                        �    �  �                    �      /             �
ECHO    �                     �   �                        �    �  �                    �    /               �
ECHO    �                     �  / \                       �   / \ �                    �  /                 �
ECHO    �                     � /   \                      �  /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %GIRLNAME%: So %PLAYERNAME%, what do you want to do?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE10IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                       �   �Ŀ �                    �          �         �
ECHO    �                     �  � �                       �   � � �                    �          �         �
ECHO    �                     �  �¹                       �   ��� �                    �          �         �
ECHO    �                     �  ���                       � �  �  �                    �          �         �
ECHO    �                     �  ���                       �   ��� �                    �        /           �
ECHO    �                     �   �                        �    �  �                    �      /             �
ECHO    �                     �   �                        �    �  �                    �    /               �
ECHO    �                     �  / \                       �   / \ �                    �  /                 �
ECHO    �                     � /   \                      �  /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: ...maybe we should go up there. He might hurt himself
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE11IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                       �   �Ŀ �                    �          �         �
ECHO    �                     �  � �                       �   � � �                    �          �         �
ECHO    �                     �  �¹                       �   ��� �                    �          �         �
ECHO    �                     �  ���                       � �  �  �                    �          �         �
ECHO    �                     �  ���                       �   ��� �                    �        /           �
ECHO    �                     �   �                        �    �  �                    �      /             �
ECHO    �                     �   �                        �    �  �                    �    /               �
ECHO    �                     �  / \                       �   / \ �                    �  /                 �
ECHO    �                     � /   \                      �  /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %GIRLNAME%: I suppose you're right, he's pretty reckless
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE12IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                       �   �Ŀ �                    �          �         �
ECHO    �                     �  � �                       �   � � �                    �          �         �
ECHO    �                     �  �¹                       �   ��� �                    �          �         �
ECHO    �                     �  ���                       � �  �  �                    �          �         �
ECHO    �                     �  ���                       �   ��� �                    �        /           �
ECHO    �                     �   �                        �    �  �                    �      /             �
ECHO    �                     �   �                        �    �  �                    �    /               �
ECHO    �                     �  / \                       �   / \ �                    �  /                 �
ECHO    �                     � /   \                      �  /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %GIRLNAME%: You won't let anything bad happen to me though will you %PLAYERNAME%?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE13IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                       �   �Ŀ �                    �          �         �
ECHO    �                     �  � �                       �   � � �                    �          �         �
ECHO    �                     �  �¹                       �   ��� �                    �          �         �
ECHO    �                     �  ���                       � �  �  �                    �          �         �
ECHO    �                     �  ���                       �   ��� �                    �        /           �
ECHO    �                     �   �                        �    �  �                    �      /             �
ECHO    �                     �   �                        �    �  �                    �    /               �
ECHO    �                     �  / \                       �   / \ �                    �  /                 �
ECHO    �                     � /   \                      �  /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %PLAYERNAME%: Of course not^^! I'll keep you safe, I promise
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE14IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     ���������������������������������������������������������Ĵ          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                            �������Ŀ                    �          �         �
ECHO    �                     �                            �       �                    �          �         �
ECHO    �                     �  �ͻ                       �   �Ŀ �                    �          �         �
ECHO    �                     �  � �                       �   � � �                    �          �         �
ECHO    �                     �  �¹                       �   ��� �                    �          �         �
ECHO    �                     �  ���                       � �  �  �                    �          �         �
ECHO    �                     �  ���                       �   ��� �                    �        /           �
ECHO    �                     �   �                        �    �  �                    �      /             �
ECHO    �                     �   �                        �    �  �                    �    /               �
ECHO    �                     �  / \                       �   / \ �                    �  /                 �
ECHO    �                     � /   \                      �  /   \�                    �/                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %GIRLNAME%: (%PLAYERNAME%'s really mature, he'll make sure we're all fine)
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE15IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     You and %GIRLNAME% head upstairs into the old mill...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE16IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE16TEXT
ECHO     %FRIENDNAME%: Finally decided to join me? 
ECHO     Took your time, what were you two doing down there ey? ;-)
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE17IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE17TEXT
ECHO     %FRIENDNAME%: Like the tent^^!? I put it up in like 30 seconds
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE18IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE18TEXT
ECHO     %PLAYERNAME%: (That's a tent?)
ECHO     Err, yea sure, it's great. Now that we're here what do you want to do?
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE19IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE19TEXT
ECHO     %FRIENDNAME%: Why don't we play truth or dare?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE20IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE20TEXT
ECHO     %PLAYERNAME%: I'm game
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE21IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE21TEXT
ECHO     %GIRLNAME%: No.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF 

:SCENE22IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE22TEXT
ECHO     %FRIENDNAME%: What, why?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF 

:SCENE23IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE23TEXT
ECHO     %GIRLNAME%: Because I'll just end up getting dared to kiss %FRIENDNAME%
ECHO     or get my chebs out or something^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE24IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE24TEXT
ECHO     %PLAYERNAME%: Chebs?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE25IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE25TEXT
ECHO     %FRIENDNAME%: Shut up you wuss^^! I promise you won't have to do that
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE26IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE26TEXT
ECHO     %FRIENDNAME%: Look, you can go first, we'll do a nice easy truth one
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE27IMAGE
SET /a SPACENUM1 = 2 + ((11-%FRIENDNAMELENGTH%)/2)
SET /a SPACENUM2 = 31 + ((11-(%FRIENDNAMELENGTH%-1))/2)
SET FRIENDTEMPNAMEVAR=!SPACES%SPACENUM1%!%FRIENDNAME%!SPACES%SPACENUM2%!
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                          You                           %FRIENDTEMPNAMEVAR%�
ECHO    �                     \ \ \ \ \ \ \ \                    / / / / / / / /                             �
ECHO    �                     �������������Ŀ                    �������������Ŀ                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   ڿ   ڿ   �                    �   ڿ   ڿ   �                             �
ECHO    �                     �   ��   ��   �                    �   ��   ��   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �      �      �                    �      �      �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   �������   �                    �   �������   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     ���������������                    ���������������                             �
ECHO    �                          �   �                              �   �                                  �
ECHO    �                  �������������������Ŀ              �������������������Ŀ                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE27TEXT
ECHO     %FRIENDNAME%: Who's better looking, me or %PLAYERNAME%
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE28IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                          You                           %FRIENDTEMPNAMEVAR%�
ECHO    �                     \ \ \ \ \ \ \ \                    / / / / / / / /                             �
ECHO    �                     �������������Ŀ                    �������������Ŀ                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   ڿ   ڿ   �                    �   ڿ   ڿ   �                             �
ECHO    �                     �   ��   ��   �                    �   ��   ��   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �      �      �                    �      �      �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   �������   �                    �   �������   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     ���������������                    ���������������                             �
ECHO    �                          �   �                              �   �                                  �
ECHO    �                  �������������������Ŀ              �������������������Ŀ                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE28TEXT
ECHO     %GIRLNAME%: Erm...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE29IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                          You                           %FRIENDTEMPNAMEVAR%�
ECHO    �                     \ \ \ \ \ \ \ \                    / / / / / / / /                             �
ECHO    �                     �������������Ŀ                    �������������Ŀ                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   ڿ   ڿ   �                    �   ڿ   ڿ   �                             �
ECHO    �                     �   ��   ��   �                    �   ��   ��   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �      �      �                    �      �      �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   �������   �                    �   �������   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     ���������������                    ���������������                             �
ECHO    �                          �   �                              �   �                                  �
ECHO    �                  �������������������Ŀ              �������������������Ŀ                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE29TEXT
ECHO     %GIRLNAME%: %PLAYERNAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE30IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                          You                           %FRIENDTEMPNAMEVAR%�
ECHO    �                     \ \ \ \ \ \ \ \                    / / / / / / / /                             �
ECHO    �                     �������������Ŀ                    �������������Ŀ                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   ڿ   ڿ   �                    �   ڿ   ڿ   �                             �
ECHO    �                     �   ��   ��   �                    �   ��   ��   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �      �      �                    �      �      �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   �������   �                    �   �����Ŀ   �                             �
ECHO    �                     �             �                    �   �������   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     ���������������                    ���������������                             �
ECHO    �                          �   �                              �   �                                  �
ECHO    �                  �������������������Ŀ              �������������������Ŀ                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE30TEXT
ECHO     %FRIENDNAME%: What^^! No way. You obviously have no taste^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE31IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                          You                           %FRIENDTEMPNAMEVAR%�
ECHO    �                     \ \ \ \ \ \ \ \                    / / / / / / / /                             �
ECHO    �                     �������������Ŀ                    �������������Ŀ                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   ڿ   ڿ   �                    �   ڿ   ڿ   �                             �
ECHO    �                     �   ��   ��   �                    �   ��   ��   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �      �      �                    �      �      �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �   �������   �                    �   �������   �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     �             �                    �             �                             �
ECHO    �                     ���������������                    ���������������                             �
ECHO    �                          �   �                              �   �                                  �
ECHO    �                  �������������������Ŀ              �������������������Ŀ                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    �                  �                   �              �                   �                          �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE31TEXT
ECHO     %PLAYERNAME%: Weyyy^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE32IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE32TEXT
ECHO     %FRIENDNAME%: Shut up smart arse, you're next^^! Truth or dare?
SET /a WAITTIME = %BASEWAITTIME% + 2
SET /a COUNT = 45
GOTO :EOF

:SCENE46IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE46TEXT
ECHO     %GIRLNAME%: Nope, I'm going again^^! Dare me up^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE47IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE47TEXT
ECHO     %FRIENDNAME%: That's not really how it works, you can't just decide to go next...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE48IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE48TEXT
ECHO     %GIRLNAME%: Just shut up and give me a dare %FRIENDNAME%
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE49IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE49TEXT
ECHO     %FRIENDNAME%: ...chebs.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE50IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE50TEXT
ECHO     %GIRLNAME%: NO^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE51IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE51TEXT
ECHO     %FRIENDNAME%: Alright, alright. No need to get so angry, I was only joking
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE52IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE52TEXT
ECHO     %PLAYERNAME%: (What the hell are chebs?)
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE53IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE53TEXT
ECHO     %FRIENDNAME%: Ok, how about you kiss %PLAYERNAME% on the lips?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE54IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE54TEXT
ECHO     %GIRLNAME%: Ok, how long for?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE55IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE55TEXT
ECHO     %PLAYERNAME%: (WHATTT^^!?^^!?)
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE56IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE56TEXT
ECHO     %FRIENDNAME%: 10 seconds^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE57IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE57TEXT
ECHO     %GIRLNAME%: Easy^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE58IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                       ���������������ͻ                                            �
ECHO    �                                       ��������������Ŀ�                                            �
ECHO    �                                       ��   ��   ��   ��                                            �
ECHO    �                                       ��   ڿ   ڿ   ��                                            �
ECHO    �                                       ��   ��   ��   ��                                            �
ECHO    �                                       ��             ��                                            �
ECHO    �                                       ��      �      ��                                            �
ECHO    �                                       ��             ��                                            �
ECHO    �                                       ��   �������   ��                                            �
ECHO    �                                       ��             ��                                            �
ECHO    �                                       ��             ��                                            �
ECHO    �                                       ���������������ٺ                                            �
ECHO    �                                       �     �   �     �                                            �
ECHO    �                                     �ĺ��������������ĺĿ                                          �
ECHO    �                                     � �               � �                                          �
ECHO    �                                     � �               � �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE58TEXT
SET TEMPPATH=%MUSICPATH%\Kiss
SET /a STOP = 1
SET /a LOOP = 0
CALL "%MUSICPATH%\startmusic.bat"
ECHO     %PLAYERNAME%: (Oh god, is this really happening)
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE59IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                      ������������������ͻ                                          �
ECHO    �                                      �����������������Ŀ�                                          �
ECHO    �                                      ��                ��                                          �
ECHO    �                                      ��   ���    ���   ��                                          �
ECHO    �                                      ��   �Ŀ    �Ŀ   ��                                          �
ECHO    �                                      ��   ���    ���   ��                                          �
ECHO    �                                      ��   ���    ���   ��                                          �
ECHO    �                                      ��                ��                                          �
ECHO    �                                      ��       �        ��                                          �
ECHO    �                                      ��       ��       ��                                          �
ECHO    �                                      ��                ��                                          �
ECHO    �                                      ��    ��������    ��                                          �
ECHO    �                                      ��                ��                                          �
ECHO    �                                      ��                ��                                          �
ECHO    �                                      ������������������ٺ                                          �
ECHO    �                                      �      �    �      �                                          �
ECHO    �                                    �ĺ�����������������ĺ�                                         �
ECHO    �                                    � �                  ��                                         �
ECHO    �                                    � �                  ��                                         �
ECHO    �                                    � �                  ��                                         �
ECHO    �                                    � �                  ��                                         �
ECHO    �                                    � �                  ��                                         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE59TEXT
ECHO     %PLAYERNAME%: (What if I kiss really badly, I'm so nervous)
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE60IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                    �����������������������ͻ                                       �
ECHO    �                                    ����������������������Ŀ�                                       �
ECHO    �                                    ��                     ��                                       �
ECHO    �                                    ��                     ��                                       �
ECHO    �                                    ��    ����     ����    ��                                       �
ECHO    �                                    ��    ��Ŀ     ��Ŀ    ��                                       �
ECHO    �                                    ��    ��ܳ     ��ܳ    ��                                       �
ECHO    �                                    ��    �  �     �  �    ��                                       �
ECHO    �                                    ��    ����     ����    ��                                       �
ECHO    �                                    ��                     ��                                       �
ECHO    �                                    ��         �           ��                                       �
ECHO    �                                    ��         �           ��                                       �
ECHO    �                                    ��         ��          ��                                       �
ECHO    �                                    ��      �       �      ��                                       �
ECHO    �                                    ��       �������       ��                                       �
ECHO    �                                    ��                     ��                                       �
ECHO    �                                    ��                     ��                                       �
ECHO    �                                    �����������������������ٺ                                       �
ECHO    �                                    �        �     �        �                                       �
ECHO    �                                    �        �     �        �                                       �
ECHO    �                                    �        �     �        �                                       �
ECHO    �                                    �        �     �        �                                       �
ECHO    �                                 ��ĺ����������������������ĺ�Ŀ                                    �
ECHO    �                                 �  �                       �  �                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE60TEXT
ECHO     %PLAYERNAME%: (Ok, here goes nothing^^!)
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE61IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                  ����������������������������ͻ                                    �
ECHO    �                                  ���������������������������Ŀ�                                    �
ECHO    �                                  ��                          ��                                    �
ECHO    �                                  ��                          ��                                    �
ECHO    �                                  ��    �������   �������     ��                                    �
ECHO    �                                  ��     ���Ŀ     ���Ŀ      ��                                    �
ECHO    �                                  ��     �   �     �   �      ��                                    �
ECHO    �                                  ��     � � �     � � �      ��                                    �
ECHO    �                                  ��     �   �     �   �      ��                                    �
ECHO    �                                  ��     �����     �����      ��                                    �
ECHO    �                                  ��           �              ��                                    �
ECHO    �                                  ��           �              ��                                    �
ECHO    �                                  ��           �              ��                                    �
ECHO    �                                  ��           ���            ��                                    �
ECHO    �                                  ��                          ��                                    �
ECHO    �                                  ��        �������Ŀ         ��                                    �
ECHO    �                                  ��        �       �         ��                                    �
ECHO    �                                  ��        �       �         ��                                    �
ECHO    �                                  ��        ���������         ��                                    �
ECHO    �                                  ��                          ��                                    �
ECHO    �                                  ����������������������������ٺ                                    �
ECHO    �                                  �          �       �         �                                    �
ECHO    �                                  �          �       �         �                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE61TEXT
SET TEMPPATH=%MUSICPATH%\Scream
SET FILE=Scream.mp3
IF EXIST "%TEMPPATH%\%FILE%" (
	CALL "%MUSICPATH%\soundeffect.bat"
)
SET /a STOP = 0
SET /a LOOP = 0
CALL "%MUSICPATH%\startmusic.bat"
ECHO     You hear loud screaming coming from the town below
SET /a WAITTIME = %BASEWAITTIME% + 3
ECHO.
GOTO :EOF

:SCENE62IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE62TEXT
ECHO     %PLAYERNAME%: What was that?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE63IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE63TEXT
ECHO     %GIRLNAME%: I have no idea...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE64IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                         ��                                                         �
ECHO    �                                        /��\                                                        �
ECHO    �                                       / �� \                                                       �
ECHO    �                                      /  ��  \                                                      �
ECHO    �                                     /   ��   \                                                     �
ECHO    �                                    /    ��    \                                                    �
ECHO    �                                   �     ��     �                                                   �
ECHO    �             ���Ŀ                 �     /\     �     ���Ŀ    ���ͻ                                �
ECHO    �             �   �                 �    /  \    �     �   �    �   �                                �
ECHO    �             �   �                 �   /    \   �     �   �    �   �                                �
ECHO    �             �����                 �  /      \  �     �����    ���Ĺ                                �
ECHO    �               �                   ���        ���       �      � � �                                �
ECHO    �               �                                        �        �                                  �
ECHO    �            �������                                  �������  �������                               �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �               �                                        �        �                                  �
ECHO    �              / \                                      / \      / \                                 �
ECHO    �             /   \                                    /   \    /   \                                �
ECHO    �            /     \                                  /     \  /     \                               �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE64TEXT
SET TEMPPATH=%MUSICPATH%\AttackTown
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
ECHO     %FRIENDNAME%: It's coming from the town^^! Let's get back there quickly^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE65IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �      ~    /    ~     /� ~                          �\       ~ ~\      ~                       ~    �
ECHO    �         ~/       ~  / �         ~       ~   ~     ~� \          \                               ~  �
ECHO    �         �\~     ~  /  � ~      ~        ~    ~     � ~\         /�                                 �
ECHO    �        ~�  \      /   �     ~               ~      �  ~\      /  �                    ~     ~   ~  �
ECHO    �   ~    ~�    \   /    �          ~                 �    \   /    �               ~                 �
ECHO    �    ~    � /\~~ \/  /� �          ~      ~          � �\  \/   /\ �    ~                            �
ECHO    �         �/   \  � ~��/                              \��  �  /   \�        ~      ~        ~       ~�
ECHO    �         / ~    \� ~�/��������������������������������\�  �/      \  ~  ~                           �
ECHO    �        /         \ /���������Ŀ  ~          ����������\ /       ~ \  ~~              ~            ~�
ECHO    �       /      ~   /�           �             �  \__�    �\      ~   \ ~ ~~       ~                  �
ECHO    �      /~         / �           �             �  /  �    � \          \                          ~   �
ECHO    �     �\       ~ /  �           �             �        ~ �  \         /�   ~    ~ ~~              ~  �
ECHO    �     �  \      /~  �           �             � ~       ~� ~ \      /  �~ ~                          �
ECHO    �    ~�    \  ~/    �           �             �   ~      �    \   /    �          ~ ~              ~ �
ECHO    �     �    ~ \/  /� �     ~     �    ~        �          \ �\  \/      � ~                           �
ECHO    �     �      ~�  ��/        ~   �     ~       � ~         \��  �    ~  �         ~      ~            �
ECHO    �     �~      �  �/��������������~  ~         �������������\�  �       �                             �
ECHO    �      \      �  /�������������Ŀ~      ~     ��������������\ ~�      / ~  ~  ~  ~       ~ ~         �
ECHO    �  ~~   ~\    � /~         ~    � ~~          �              \ �    /                            ~   �
ECHO    �          \  �/    ~    ~~     �     ~       �               \�  /         ~~           ~     ~     �
ECHO    �        ~  ~\/               ~ �             � ~~         ~ ~ \/   ~                                �
ECHO    �     ~~            ~    ~      �  �   �~ �~  �                     ~                                �
ECHO    �                          ~  ~ � ��� ������  �        ~       ~           ~                       ~ �
ECHO    �    ~    ~    ~                �  �   �  �   �                 ~   ~            ~ ~                 �
ECHO    �              ~                � / \ / \/ \  �          ~           ~    ~~                        ~�
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE65TEXT
ECHO     You look upon your hometown, full of smoke and destruction^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE66IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �       ~   /      ~   /�            ~               �\          \         ~                         �
ECHO    �          /          / �                  ~      ~  � \          \                        ~         �
ECHO    �         �\         /  �          ~                 �  \         /� ~                        ~      �
ECHO    �         �  \      /   �        ~     ~        ~ ~~ �   \      /  �       ~                  ~      �
ECHO    �        ~�    \   /    �     ~    ~                 �    \   /    �                            ~    �
ECHO    �    ~    � /\   \/  /� �                            � �\  \/~  /\ �         ~           ~           �
ECHO    �       ~ �/   \  �  ��/  ~          ~   ~~           \��  �  /   \�          ~                      �
ECHO    �         /      \�  �/��������������������������������\�  �/      \                  ~     ~ ~      �
ECHO    � ~      /         \ /���������Ŀ       ~     ����������\ /  ~     ~\               ~                �
ECHO    �       /          /�           �  ~       ~  �  \__�    �\     ~    \~        ~                     �
ECHO    �  ~   /~   ~ ~   / �       ~   �             �  /  �    � \  ~       \~                ~            �
ECHO    �     �\   ~   ~ /  �  ~  ~~    �             �          � ~\       ~ /�       ~         ~ ~         �
ECHO    �     �  \      /   �           �       ~     �     ~    �   \      /  �                   ~         �
ECHO    �     �    \   /    �           �             �  ~       �    \   /    �     ~      ~       ~        �
ECHO    �   ~ �      \/  /� �           �        ~    � ~        \ �\  \/      �   ~  ~    ~                ~�
ECHO    �     �      ~�  ��/            �             �           \��  �       �   ~                         �
ECHO    �     �~      �  �/��������������   ~    ~    �������������\�  �    ~  �  ~    ~                     �
ECHO    �      \      �  /�������������Ŀ        ~    ��������������\  �      /                              �
ECHO    �  ~     \    � /               �          ~~ �   ~          \ �    /          ~                  ~  �
ECHO    �          \  �/                �             �~         ~    \�  /      ~     ~  ~           ~~~    �
ECHO    �   ~  ~     \/     ~~    ~     �       ~     �                \/    ~                    ~          �
ECHO    �                      ~        �  �~  �  �   �                  ~~                      ~       ~   �
ECHO    �                               �~��� ������  �       ~~  ~         ~                                �
ECHO    �                               � ~�   �  �   �~                  ~         ~                        �
ECHO    �           ~     ~  ~         ~� / \ / \/ \  �             ~~            ~~                       ~ �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE66TEXT
ECHO     You look upon your hometown, full of smoke and destruction^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE67IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �           /          /� ~                          �\      ~   \              ~                ~   �
ECHO    �    ~     /~      ~  / � ~   ~   ~   ~              � \          \                         ~     ~  �
ECHO    �     ~   �\     ~   /  �     ~            ~  ~      �  \~        /�                                 �
ECHO    �         �  \~ ~   /  ~�               ~            �   \    ~~/  �                           ~     �
ECHO    �     ~   �    \   /    �                      ~     �    \   / ~  �~ ~ ~     ~                      �
ECHO    � ~       � /\   \/  /� �~                      ~    � �\  \/   /\ �                ~                �
ECHO    �         �/   \  �  ��/    ~             ~      ~    \��  �  /   \�       ~       ~                 �
ECHO    �         /   ~ ~\�  �/��������������������������������\�  �/      \               ~   ~ ~           �
ECHO    �   ~    /    ~    \ /���������Ŀ     ~       ����������\ /         \             ~ ~         ~      �
ECHO    �       /      ~   /�           �  ~    ~   ~ �  \__�    �\          \             ~                 �
ECHO    �      /      ~   / �         ~~�         ~  ~�  /  �  ~ � \          \ ~ ~        ~~  ~      ~      �
ECHO    �     �\       ~ /  �           �           ~ �~         �  \         /�       ~        ~   ~        �
ECHO    �     �  \     ~/   �          ~�             � ~        �~  \      /  �        ~~             ~   ~~�
ECHO    �     �    \   /    �      ~ ~  �             �          �    \   / ~~ � ~                           �
ECHO    �     �      \/  /�~�           �        ~    �          \ �\  \/ ~    �       ~              ~      �
ECHO    �   ~ �     ~~�  ��/      ~     � ~           �           \��  �       �              ~    ~         �
ECHO    �     �       �  �/��������������     ~       �������������\�~ �       �                           ~ �
ECHO    � ~ ~  \   ~  �  /�������������Ŀ     ~       ��������������\  �      /              ~~ ~            �
ECHO    �        \    � /       ~       �             � ~            \ �  ~ /              ~                 �
ECHO    �     ~    \  �/~     ~   ~     �     ~       �               \�  /                  ~~     ~        �
ECHO    �            \/             ~ ~ �~            �                \/    ~             ~                 �
ECHO    �      ~     ~~                 �  �   �  � ~ �          ~                           ~   ~           �
ECHO    �                       ~       � ��� ������  �   ~ ~                                                �
ECHO    �   ~                           �  �   �  �   �      ~              ~              ~      ~         ~�
ECHO    �            ~                  � / \ / \/ \ ~�      ~       ~~           ~      ~ ~        ~        �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE67TEXT
ECHO     You look upon your hometown, full of smoke and destruction^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE68IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    � ~         /          /� ~~      ~  ~ ~       ~     �\          \                        ~          �
ECHO    �          /          / �  ~            ~            � \          \                       ~  ~ ~     �
ECHO    �      ~  �\         /  � ~  ~~              ~    ~  �  \         /�      ~                          �
ECHO    � ~       �  \      / ~ �  ~                    ~    � ~ \      /  �  ~                    ~         �
ECHO    �         �  ~ \   /    �                            �    \   /    �                 ~        ~      �
ECHO    �   ~     � /\   \/  /� �                            � �\  \/   /\ �             ~                   �
ECHO    �         �/   \  �  ��/            ~                 \��  �  /~  \�                  ~              �
ECHO    �         /   ~  \�  �/��������������������������������\�  �/      \                 ~               �
ECHO    �        /         \~/���������Ŀ             ����������\ /        ~\    ~                 ~   ~~ ~  �
ECHO    �       /    ~     /� ~         �~      ~     �  \__�    �\    ~     \ ~                         ~   �
ECHO    �    ~ /          / �           �~  ~         �  /  �   ~� \  ~  ~    \         ~      ~     ~       �
ECHO    � ~   �\         /  �           �             �          �  \     ~   /�~                            �
ECHO    �     �  \      /   �   ~ ~~    �             �        ~ �   \      /  �~ ~                 ~~ ~     �
ECHO    �     �    \   /    �         ~ �     ~       �  ~       �    \~  /    �                            ~�
ECHO    �     �      \/  /� �           �             �          \ �\  \/      �                          ~  �
ECHO    �    ~� ~     �  ��/         ~  �             �   ~   ~   \��  �       �            ~          ~     �
ECHO    �     � ~    ~�~ �/��������������             �������������\�~ �       �                 ~       ~  ~�
ECHO    �      \      �  /�������������Ŀ       ~     ��������������\  �      /                    ~      ~  �
ECHO    �        \    � /   ~~ ~        �      �      �              \ �    /         ~                      �
ECHO    �    ~     \  �/        ~  ~    �     ���     �               \�  /                  ~               �
ECHO    � ~          \/             ~   �      �      �     ~          \/             ~   ~                  �
ECHO    �               ~               �  �~ / \ �~  �     ~          ~  ~          ~       ~             ~ �
ECHO    �                               � ���   ~���  �                                      ~ ~ ~           �
ECHO    �  ~      ~ ~                ~  �  �   ~  �   �                 ~              ~                     �
ECHO    �           ~          ~        � / \    / \  � ~       ~                                       ~    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE68TEXT
ECHO     %PLAYERNAME%: Oh my god, what happened here^^!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE69IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �      ~    /          /�         ~                  �\      ~   \       ~      ~                    �
ECHO    �          /          / �~  ~    ~                 ~ � \    ~     \ ~         ~    ~   ~             �
ECHO    �         �\         /  �                  ~   ~   ~ �  \         /�                 ~               �
ECHO    �         �  \      /   �                       ~    � ~ \      /  �                                 �
ECHO    �         �    \   /    �                            �    \   /    �              ~                  �
ECHO    �         � /\   \/  /� �                  ~    ~    � �\  \/   /\ �                    ~       ~~   �
ECHO    �         �/   \  �  ��/    ~                         \�� ~�  /   \�                                 �
ECHO    �         /   ~ ~\�  �/��������������������������������\�  �/      \             ~      ~          ~ �
ECHO    �  ~     /        ~\ /���������Ŀ     ~       ����������\ / ~       \ ~  ~   ~      ~           ~  ~ �
ECHO    �   ~   /  ~    ~  /�           �    ~     ~  �  \__�    �\   ~ ~    \                               �
ECHO    �   ~  /      ~   / �          ~�             �  /~ �    � \ ~        \    ~          ~    ~         �
ECHO    �     �\     ~   /  �  ~ ~    ~~�  ~        ~ �   ~      �  \         /�   ~                    ~    �
ECHO    �   ~ � ~\~     /   �        ~  �~      ~    ~�          �  ~\ ~    /  �                 ~ ~         �
ECHO    �     �   ~\  ~/    �           �~            �        ~ �    \   /    �   ~ ~       ~               �
ECHO    �   ~ �      \/  /� �           �             �~   ~     \ �\~ \/      �                     ~       �
ECHO    �     �   ~   �  ��/        ~  ~�             �           \��  � ~     �~         ~           ~      �
ECHO    �   ~ �     ~ �  �/��������������             �������������\�  �       �                        ~    �
ECHO    � ~~   \~   ~ �  /�������������Ŀ         ~  ~��������������\~ �  ~   /    ~           ~    ~        �
ECHO    �   ~    \    � /               �      �      �              \ �    /              ~                 �
ECHO    �          \  �/                �  � ~���     �  ~ ~  ~       \�  /                     ~            �
ECHO    �            \/         ~       � ���  �      �  ~        ~    \/                ~         ~        ~�
ECHO    �    ~               ~          �  � ~/~\ �   �         ~    ~              ~ ~              ~      ~�
ECHO    �  ~                            � / \    ���  �              ~                               ~       �
ECHO    �     ~    ~             ~  ~   �         �   �  ~       ~      ~~                                ~  �
ECHO    �                               � ~      / \  �            ~ ~  ~                       ~        ~   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE69TEXT
ECHO     %GIRLNAME%: I have no idea. Let's look around for a grown up
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE70IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �        ~  /          /�                           ~�\          \                  ~~               �
ECHO    �          /          / �   ~ ~~        ~            �~\~         \            ~                     �
ECHO    �     ~   �\  ~  ~   /  �     ~                      �  \         /�~                               ~�
ECHO    �      ~  �  \      / ~ �                 ~  ~~    ~ �   \     ~/  �       ~              ~          �
ECHO    �  ~      �    \   /~   � ~  ~        ~           ~  �    \   /    �      ~          ~               �
ECHO    �     ~   � /\  ~\/  /� �           ~                � �\  \/  ~/\ �    ~        ~~           ~   ~  �
ECHO    �         �/   \  �  ��/   ~                          \��  �  /   \�        ~   ~   ~~             ~ �
ECHO    �      ~  /     ~\�  �/��������������������������������\�  �/~     \                ~                �
ECHO    �        /~   ~    \ /���������Ŀ           ~ ����������\ /    ~    \    ~           ~ ~~      ~    ~�
ECHO    �       / ~       ~/�           �      ~      �~~\__�    �\      ~   \       ~           ~           �
ECHO    �      /          / �           �         ~   �  /  �    � \    ~     \           ~                  �
ECHO    �     �\         /  �           �~            �          �  \         /�         ~    ~     ~        �
ECHO    �     �  \~     /   �          ~� ~           �  ~       �   \      /  �~                            �
ECHO    �     �    \   /    � ~        ~�    ~      ~ �          �    \~~ /    �                             �
ECHO    �   ~ �      \/  /� �           �  ~ ~ ~~     �          \~�\  \/      �       ~ ~                   �
ECHO    �     �       �  ��/            �     ~  ~    �           \�� ~�       �        ~             ~      �
ECHO    �     �       �~ �/��������������       ~     �������������\�  �       �                             �
ECHO    �  ~   \      �  /�������������Ŀ             ��������������\  �~     /                              �
ECHO    �        \    � /        ~~~    �      �      �              \ �    /     ~                          �
ECHO    �    ~     \  �/~         ~~    �  �  ���     �~              \�  /      ~                      ~~   �
ECHO    � ~        ~ \/          ~      � ���  �  ~   �             ~  \/        ~    ~         ~            �
ECHO    �        ~  ~                   �  �  / \ �   �     ~          ~                   ~    ~  ~~        �
ECHO    �                    ~       ~ ~� / \    ���  �                                       ~        ~     �
ECHO    �        ~                   ~  �      ~  �   �   ~                     ~              ~             �
ECHO    �                             ~ �~       / \  �~           ~      ~                                 ~�
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE70TEXT
ECHO     %FRIENDNAME%: Who's that over there?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE71IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �           /    ~     /�      ~          ~~         �\~  ~     ~\      ~                            �
ECHO    �    ~     /    ~     / �                            � \          \                              ~   �
ECHO    �         �\         /  �                            �  \   ~     /�                                 �
ECHO    �     ~   �  \ ~  ~ /   �                ~      ~    �   \  ~ ~ /  �      ~                          �
ECHO    �         �  ~ \   /    �  ~~       ~ ~             ~�    \   /    �                                 �
ECHO    �         � /\ ~~\/  /� �             ~              � �\  \/   /\ �       ~                ~        �
ECHO    �         �/   \  �  ��/                              \��  �  /   \�                           ~     �
ECHO    �         /      \�  �/��������������������������������\�  �/      \       ~           ~  ~          �
ECHO    �        /       ~ \ /���������Ŀ             ����������\ /         \    ~  ~  ~             ~       �
ECHO    � ~     /          /�       ~   �     ~       �  \__�    �\       ~  \    ~                         ~�
ECHO    �      /          / �          ~�             �  /  �    � \          \                  ~        ~  �
ECHO    �     �\         /  �           �       ~     �          �  \     ~   /�                            ~�
ECHO    � ~   �  \  ~   /   �           �             �  ~       � ~ \      /~~�   ~~                        �
ECHO    �     �  ~ \~ ~/    �           �             �          � ~  \   /    �    ~                        �
ECHO    �     �      \/  /� �   ~       � ~           �        ~ \ �\  \/      �    ~   ~               ~    �
ECHO    �     �      ~�  ��/            �         ~ ~ �         ~ \��  �       �~                          ~ �
ECHO    � ~   �  ~    �  �/��������������  ~          �������������\�  �   ~   �~ ~                      ~   �
ECHO    �      \      �  /�������������Ŀ      ^^! ~    ��������������\  �      /   ~      ~                   �
ECHO    �   ~   ~\    � / ~             �     ~�      �              \ �    / ~            ~          ~      �
ECHO    �          \~ �/     ~~         �  �  ���     �               \�  /                                  �
ECHO    �     ~   ~  \/                 � ���  �~     �~               \/            ~      ~                �
ECHO    �             ~        ~        �  �  / \ �   �     ~~   ~              ~     ~     ~                �
ECHO    �        ~                      � / \    ���  � ~                      ~~             ~     ~       ~�
ECHO    �                               �         �   �    ~                  ~   ~             ~            �
ECHO    �  ~       ~~                   �   ~    / \  �      ~         ~          ~             ~ ~   ~  ~   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE71TEXT
ECHO     %PLAYERNAME%: THAT'S MY UNCLE^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE72IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                               ���Ŀ   ���ͻ   ���Ŀ                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �����   ���ĺ   �����                                �
ECHO    �                                                 �     � � �     �                                  �
ECHO    �                                                 �       �       �                                  �
ECHO    �                                  /            �����   �����   �����                                �
ECHO    �               ���Ŀ    /       /                �       �       �                                  �
ECHO    �               �   �   /      /                  �       �       �                                  �
ECHO    �               �   �����������                  / \     / \     / \                                 �
ECHO    �               �����   \      \                /   \   /   \   /   \                                �
ECHO    �                        \       \             /     \ /     \ /     \                               �
ECHO    �                                  \                                                                 �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE72TEXT
ECHO     %PLAYERNAME%: Uncle %UNCLENAME%^^! Are you ok?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE73IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                               ���Ŀ   ���ͻ   ���Ŀ                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �����   ���ĺ   �����                                �
ECHO    �                                                 �     � � �     �                                  �
ECHO    �                                                 �       �       �                                  �
ECHO    �                                  /            �����   �����   �����                                �
ECHO    �               ���Ŀ    /       /                �       �       �                                  �
ECHO    �               �   �   /      /                  �       �       �                                  �
ECHO    �               �   �����������                  / \     / \     / \                                 �
ECHO    �               �����   \      \                /   \   /   \   /   \                                �
ECHO    �                        \       \             /     \ /     \ /     \                               �
ECHO    �                                  \                                                                 �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE73TEXT
ECHO     %UNCLENAME%: I'll be fine lad, go and check on your mother. We'll talk when she's safe
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE74IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                               ���Ŀ   ���ͻ   ���Ŀ                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �����   ���ĺ   �����                                �
ECHO    �                                                 �     � � �     �                                  �
ECHO    �                                                 �       �       �                                  �
ECHO    �                                  /            �����   �����   �����                                �
ECHO    �               ���Ŀ    /       /                �       �       �                                  �
ECHO    �               �   �   /      /                  �       �       �                                  �
ECHO    �               �   �����������                  / \     / \     / \                                 �
ECHO    �               �����   \      \                /   \   /   \   /   \                                �
ECHO    �                        \       \             /     \ /     \ /     \                               �
ECHO    �                                  \                                                                 �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE74TEXT
ECHO     %PLAYERNAME%: Ok uncle %UNCLENAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE75IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                               ���Ŀ   ���ͻ   ���Ŀ                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �����   ���ĺ   �����                                �
ECHO    �                                                 �     � � �     �                                  �
ECHO    �                                                 �       �       �                                  �
ECHO    �                                  /            �����   �����   �����                                �
ECHO    �               ���Ŀ    /       /                �       �       �                                  �
ECHO    �               �   �   /      /                  �       �       �                                  �
ECHO    �               �   �����������                  / \     / \     / \                                 �
ECHO    �               �����   \      \                /   \   /   \   /   \                                �
ECHO    �                        \       \             /     \ /     \ /     \                               �
ECHO    �                                  \                                                                 �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE75TEXT
ECHO     %FRIENDNAME%: I'm going to check on my parents too, let's meet back here
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE76IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                               ���Ŀ   ���ͻ   ���Ŀ                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �   �   �   �   �   �                                �
ECHO    �                                               �����   ���ĺ   �����                                �
ECHO    �                                                 �     � � �     �                                  �
ECHO    �                                                 �       �       �                                  �
ECHO    �                                  /            �����   �����   �����                                �
ECHO    �               ���Ŀ    /       /                �       �       �                                  �
ECHO    �               �   �   /      /                  �       �       �                                  �
ECHO    �               �   �����������                  / \     / \     / \                                 �
ECHO    �               �����   \      \                /   \   /   \   /   \                                �
ECHO    �                        \       \             /     \ /     \ /     \                               �
ECHO    �                                  \                                                                 �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE76TEXT
ECHO     %GIRLNAME%: Me too^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE77IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �          ~/          /�~    ~      ~  ~ ~          �\          \ ~             ~           ~       �
ECHO    �          /          / �    ~                      ~� \      ~ ~ \              ~      ~         ~  �
ECHO    �    ~    �\       ~ /  �                   ~       ~� ~\ ~     ~ /�               ~           ~     �
ECHO    �         �  \      /~~ �          ~                 �   \      / ~�~~                               �
ECHO    �   ~     �    \ ~ /~ ~ �~      ~   ~     ~       ~  �~ ~ \  ~/  ~ �            ~                    �
ECHO    �         � /\   \/ ~/� �                 ~          � �\  \/   /\ �   ~    ~      ~                 �
ECHO    �         �/   \  �  ��/                              \��  �  /   \�  ~          ~     ~             �
ECHO    �  ~      /     ~\�  �/��������������������������������\�  �/      \      ~                    ~~    �
ECHO    �        / ~       \~/���������Ŀ          ~  ����������\~/   ~     \                  ~       ~~    �
ECHO    �       /          /�    ~      �    ~     �  �  \__�    �\          \              ~~               �
ECHO    �      /          / �  ~        �   ~~    ��� �  /  �    � \          \ ~    ~     ~                 �
ECHO    � ~   �\         /  �         ~ �        ~~�  �       ~  �  \~        /�              ~              �
ECHO    �     �  \      /   �  ~        � ~       / \ �    ~  ~  �   \~     /  �                             �
ECHO    �     �    \   /    �           �     ~       �          �    \   /    �            ~         ~      �
ECHO    �  ~  �      \/  /� �           � �          ��         ~\ �\  \/      �                          ~  �
ECHO    �     �  ~    �  ��/ ~  ~       ����        ���           \��  �       �          ~                  �
ECHO    �     � ~     �  �/�������������� � ~     ~  � ������������\�  �~      �   ~         ~               �
ECHO    �      \   ~  �  /�������������Ŀ/ \        / \�������������\ ~�      / ~             ~~          ~~ �
ECHO    �        \    � /               �~            �    ~         \ �    /                            ~   �
ECHO    �   ~      \  �/                �             �               \�~ /~  ~  ~                 ~   ~     �
ECHO    �    ~~      \/  ~      ~       �     ~       � ~              \/       ~          ~                 �
ECHO    �    ~            ~             �             �  ~  ~  ~     ~     ~                         ~       �
ECHO    �                               �             � ~                  ~                 ~               �
ECHO    �  ~  ~             ~           �   ~      ~  �                      ~               ~               �
ECHO    �   ~   ~  ~       ~            �   ~    ~    �                                  ~ ~            ~    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE77TEXT
ECHO     As you and your two friends run home to your houses you see your house begin
ECHO     to weaken and crumble...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE78IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �           /          /�    ~~     ~ ~        ~     �\          \ ~         ~                 ~     �
ECHO    �                     / �                   ~        � \          \                         ~   ~    �
ECHO    �     ~    \            �     ~            ~    ~    �  \ ~       /�     ~    ~  ~            ~      �
ECHO    �         �  \      /   �                ~    ~      �   \      /  �                     ~           �
ECHO    �     ~~  �     ~       �                            �    \   / ~  �     ~             ~  ~          �
ECHO    �         �~/\   \/  /� �             ~      ~       � �\  \/   /\ �                          ~      �
ECHO    �    ~    �/   \  �  ��/     ~     ~  ~            ~  \��  �  /   \�                          ~      �
ECHO    �         /      \�~ �/��������������������������������\�  �/      \         ~                  ~    �
ECHO    �        /         \ /���������Ŀ        �    ����������\ /     ~   \                      ~       ~ �
ECHO    �     ~ /    ~     /�   ~     ~ � ~     ���  ~�  \__�~   �\          \             ~                 �
ECHO    �      / ~  ~     / �           �        �~  ~�  /  �    � \ ~        \          ~                   �
ECHO    �     �\         /  �    ~  ~   �      ~/ \   �          �  \  ~      /�           ~                 �
ECHO    �     �  \      /   �~ ~        �  ~          �         ~�   \      /  �            ~       ~ ~      �
ECHO    �     �    \   /    �           �             � ~  ~     �    \   /    �~                            �
ECHO    � ~   � ~   ~\/  /�~�        �  �    ~        � �   ~    \ �\  \/  ~   � ~ ~                         �
ECHO    �     �    ~  �  ��/        ��� �   ~       ~ ����~ ~     \��  �     ~ �      ~                ~     �
ECHO    �     �       �  �/���������ĳ���  ~          �ĳ����������\�  �    ~  �    ~            ~      ~    �
ECHO    �    ~~\~     �  /����������/�\Ŀ    ~~       �/�\����������\  �      /                ~             �
ECHO    �        \~   � /       ~       �            ~�              \ �    /                         ~      �
ECHO    �          \  �/           ~    � ~           �      ~        \�  /                           ~      �
ECHO    �            \/             ~   �   ~  ~      �                \/        ~       ~             ~     �
ECHO    �    ~                          �  ~     ~    �       ~                 ~                            �
ECHO    �           ~~                  �  ~~         �   ~    ~  ~                ~                       ~ �
ECHO    �   ~                  ~        �  ~          �                                     ~                �
ECHO    �    ~             ~            �             �     ~               ~ ~                          ~   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE78TEXT
ECHO     As you and your two friends run home to your houses you see your house begin
ECHO     to weaken and crumble...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE79IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �       ~  ~/_   ~�  _           ~      ~    ~       �\    ~   ~ \        ~                          �
ECHO    �             \ /   \ \                              � \        ~ \        ~                         �
ECHO    �      ~   \          �\   ~           ~             �  \ ~       /�~                             ~  �
ECHO    � ~   ~  ~�~ \    ~ /   \ ~~           ~            ~�   \      /  �                  ~              �
ECHO    �         �    ~   ~    �     ~          ~  ~       ~�    \ ~~/ ~~ �                                 �
ECHO    �      ~~ � /\   \/  /� �            �               � �\~ \/   /\ �                                 �
ECHO    �       ~ �/   \  �  ��/            ��� ~             \��  �  /  ~\�              ~        ~        ~�
ECHO    �         /      \�  �/�������������ĳ�����������������\�  �/      \             ~ ~  ~           ~  �
ECHO    �        /         \ /���������Ŀ   / \      ~����������\ /         \     ~          ~  ~            �
ECHO    �       /          /�   ~      ~�   ~~~       �  \__�    �\        ~ \   ~       ~        ~          �
ECHO    �      /       ~  / �           �             �  /  �    � \          \     ~                        �
ECHO    � ~   �\  ~      /  �~          �             �         ~�  \         /�  ~               ~          �
ECHO    �     �  \      / ~ �           �             �   ~      �   \      /  �       ~          ~    ~     �
ECHO    �     �    \~  /    �           �        ~    �    ~     �    \ ~ /    �   ~ ~                       �
ECHO    �     �      \/  /� �     �     �             � ~  �    ~\ �\  \/      �    ~                        �
ECHO    �   ~ �  ~   ~�  ��/  ~  ���    �~            �  ~���     \��  �       �~   ~                      ~ �
ECHO    �  ~  �       �  �/������ĳ������             ����ĳ�������\�  �       �   ~                   ~     �
ECHO    �      \  ~   �  /�������/�\���Ŀ ~           ����/�\�������\  � ~    /                ~             �
ECHO    �        \    � /               �        ~    �           ~  \ �    /     ~       ~~             ~   �
ECHO    �          \  �/               ~�   ~         �       ~       \�  /  ~ ~              ~            ~ �
ECHO    �            \/                 �             � ~              \/                 ~      ~      ~    �
ECHO    �             ~        ~   ~    �  ~         ~�                               ~ ~                    �
ECHO    �                        ~      �       ~     �   ~     ~               ~ ~   ~                     ~�
ECHO    �                               �~      ~     �~           ~    ~   ~                   ~   ~        �
ECHO    �                        ~      �      ~      �  ~        ~                             ~            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE79TEXT
ECHO     As you and your two friends run home to your houses you see your house begin
ECHO     to weaken and crumble...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE80IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �         ~            ~                             �\          \                       ~  ~      ~~�
ECHO    �   ~                                              ~ �~\          \~~   ~                    ~       �
ECHO    �  ~        _ ~                 ~                    �  \    ~~   /�        ~                  ~     �
ECHO    �     ~   /  \ ~/   /\ _         ~                   �~  \      /  �                 ~               �
ECHO    �  ~      �    �  \  ~  �    ~   ~                  ~�  ~ \   /    �     ~              ~~           �
ECHO    �         � /\   \/~ /� �    �           ~           � �\  \/   /\ �                             ~~  �
ECHO    �         �/~  \  �  ��/    ���                       \��  �  /   \�      ~~                      ~  �
ECHO    �  ~   ~  /    ~ \�  �/�����ĳ�������������������������\�  �/  ~   \                            ~    �
ECHO    �   ~    /         \ /������/�\Ŀ             ����������\ /   ~     \~        ~            ~         �
ECHO    �       /        ~ /�     ~  ~  � ~ ~       ~ �  \__�    �\          \               ~     ~ ~       �
ECHO    �      /          / �           �             �  /  �    � \          \   ~      ~              ~    �
ECHO    �    ~�\        ~/  �      ~    �      ~  ~ ~ �~         �  \~~       /�~                       ~    �
ECHO    �     �  \      /   �          ~�             �          �   \    ~ /  � ~~   ~               ~~    ~�
ECHO    �     �    \   /    �           �  ~          �   ~      �    \   /  ~ �      ~               ~~     �
ECHO    � ~   �     ~\/  /� �~       ~  �     ~       �  ~~      \ �\ ~\/  ~   �                 ~           �
ECHO    �     �       �~ ��/            �             �    ~    ~ \��  �       �             ~               �
ECHO    � ~   �       �  �/��������������        ~    �������������\�~ �       � ~    ~                      �
ECHO    � ~    \      �  /�������������Ŀ             ��������������\  �      /            ~       ~    ~    �
ECHO    �  ~     \  ~ � /               � ~       ~   �        ~     \ �    /  ~                             �
ECHO    �          \ ~�/          ~~    �           ~~�               \�  /                          ~       �
ECHO    �            \/                ~�             �       ~       ~\/       ~                         ~  �
ECHO    �                      ~  ~     �     ~     ~~�      ~ ~ ~      ~  ~                                 �
ECHO    �               ~  ~            �   ~   ~     �            ~     ~                                   �
ECHO    �  ~           ~        ~       �            ~�        ~        ~     ~              ~               �
ECHO    �             ~                 �             �     ~                 ~~                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE80TEXT
ECHO     As you and your two friends run home to your houses you see your house begin
ECHO     to weaken and crumble...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE81IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �  ~                                        ~        �\  ~       \     ~       ~~                    �
ECHO    �              ~                 ~~                  � \   ~     ~\      ~ ~         ~   ~           �
ECHO    �           _            ~                           �  \ ~     ~ /�~     ~ ~                  ~   ~ �
ECHO    �         /  \  /   /\ _                      ~      � ~ \   ~  /  �                        ~        �
ECHO    �     ~   �    �  \     �        ~   ~ ~~            �    \   /    �               ~~ ~         ~    �
ECHO    �    ~ ~  � /\   \/ ~/� �    �     ~              ~ ~� �\  \/   /\ �               ~      ~         ~�
ECHO    �         �/   \  �  ��/  ~ ���           ~ ~    ~    \��~ �  /   \�                               ~ �
ECHO    �         /      \�  �/�����ĳ�������������������������\�  �/  ~   \                        ~       ~�
ECHO    � ~      /         \ /������/�\Ŀ   ~~      ~ ����������\ /         \                   ~   ~        �
ECHO    �       /          /�     ~    ~�        ~    �  \__�    �\~      ~  \                       ~ ~    ~�
ECHO    �      /  ~     ~ / �           �  ~   ~      �  /  �    � \          \                     ~ ~     ~�
ECHO    �     �\    ~    /  �           �           ~ �   ~~   ~ �  \      ~  /�                ~  ~  ~      �
ECHO    �     �  \      /   �           �     ~      ~�     ~    �   \      /  �      ~  ~                  ~�
ECHO    �    ~�    \   /    �           �   ~         �          �    \  ~/    �    ~~ ~                     �
ECHO    �     �      \/  /� �           �             �        ~ \ �\  \/      �~ ~                        ~ �
ECHO    �     �      ~�  ��/            �             �           \��  �       �   ~~               ~ ~      �
ECHO    � ~   �       �  �/��������������     ~       �������������\�~ �       �                 ~           �
ECHO    �    ~~\      �  /�������������Ŀ           ~ ��������������\  �      /                 ~            �
ECHO    �        \    � /               �             �       ~      \ �~   /           ~                    �
ECHO    �  ~       \  �/              ~ �      ~      �    ~          \�  /   ~              ~               �
ECHO    �            \/     ~~~  ~    ~ � ~           �                \/                      ~             �
ECHO    �                         ~     � ~           �                   ~~    ~               ~      ~~    �
ECHO    �                             ~~�             �  ~                  ~         ~                      �
ECHO    �      ~          ~             �            ~�                 ~       ~ ~    ~  ~    ~             �
ECHO    �              ~             ~  �      ~     ~�                            ~                         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE81TEXT
ECHO     %UNCLENAME%: %PLAYERNAME% stop^^! Don't you dare go in there now^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE82IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �       ~~~   ~                        ~        ~    �\     ~    \                               ~  ~�
ECHO    �                   ~       ~      ~        ~      ~ � \          \     ~              ~             �
ECHO    �           _          ~          ~         ~        �  \~      ~ /�                            ~    �
ECHO    �  ~      /  \  /   /\ _                             �   \  ~   /  �~   ~                            �
ECHO    �         �    �  \     �  ~        ~    ~    ~      � ~  \   /    �     ~     ~ ~                   �
ECHO    �         � /\   \/ ~/� �    �      ~~               � �\  \/   /\ �   ~               ~    ~  ~     �
ECHO    � ~       �/   \  �  ��/    ���       ~~          ~   \��  �  /~  \�                            ~    �
ECHO    �  ~      /     ~\�  �/�����ĳ�������������������������\�  �/      \                          ~     ~�
ECHO    �      ~ /       ~~\ /������/�\Ŀ            ~����������\ /       ~ \           ~     ~         ~~   �
ECHO    �       /    ~     /�   ~ ~ ~   �             �  \__� ~  �\          \   ~                ~  ~      ~�
ECHO    �      /   ~    ~ / �           � ~           �  /  �    � \          \                         ~    �
ECHO    �     �\    ~   ~/  �   ~       �           ~ �   ~      �  \ ~       /�            ~     ~          �
ECHO    �     �~ \     ~/ ~ �  ~ ~      �          ~  �    ~     �   \      /  �        ~    ~               �
ECHO    �     �  ~ \   /    �           �             �          �    \   /    �    ~      ~    ~            �
ECHO    �     �      \/  /� �           �          ~  �      ~ ~~\ �\  \/      �           ~    ~            �
ECHO    �     �   ~   �  ��/    ~       �             �   ~       \��  �       �  ~  ~                ~   ~  �
ECHO    �     �   ~   �  �/��������������       ~     �������������\�  �       � ~              ~      ~     �
ECHO    �      \      � ~/�������������Ŀ   ~         ��������������\  �    ~ /        ~                   ~ �
ECHO    �        \~   � /               �~      ~     �              \ �    /  ~     ~~             ~        �
ECHO    �         ~\  �/        ~    ~  �             �          ~  ~ \�~ /                  ~               �
ECHO    � ~          \/                 �  ~ ~        �            ~   \/              ~              ~      �
ECHO    �     ~         ~    ~          �             �~ ~                                  ~             ~  �
ECHO    �           ~             ~     �        ~  ~ �             ~   ~               ~  ~                 �
ECHO    �            ~  ~               �     ~~      �                 ~                       ~            �
ECHO    �                               �   ~         �   ~   ~               ~        ~           ~     ~~~~�
ECHO    ����������������������������������������������������������������������������������������������������ͼ

ECHO.
GOTO :EOF
:SCENE82TEXT
ECHO     %PLAYERNAME%: BUT MY MUM'S INSIDE^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE83IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    � ~       ~        ~ ~      ~                       ~�\          \      ~     ~          ~~          �
ECHO    �           ~                                        � \          \                            ~~    �
ECHO    �    ~      _   ~                                    �  \  ~      /�                   ~ ~           �
ECHO    �  ~      /  \  /   /\ _  ~            ~             �  ~\  ~   /  �         ~     ~                 �
ECHO    �   ~     �  ~ �  \~    � ~        ~      ~          �    \   /    �~                              ~~�
ECHO    �    ~    � /\   \/  /� �    �                       � �\  \/   /\ �     ~                           �
ECHO    �         �/   \  �  ��/    ���                       \��  �  /   \�  ~  ~                           �
ECHO    �         /      \�~ �/�����ĳ�������������������������\�  �/      \                         ~       �
ECHO    �   ~~  ~/      ~  \ /������/�\Ŀ         ~~  ����������\ /    ~    \                               ~�
ECHO    �       /          /�           �             �~ \__�    �\     ~    \~         ~~           ~       �
ECHO    �      /          / �     ~     � ~           �  /  �    � \    ~     \~                             �
ECHO    �    ~�\ ~    ~~ /  � ~      ~  �    ~   ~ ~  �      ~   �  \   ~   ~ /�                    ~        �
ECHO    � ~   �  \      /~  �~          �             �~     ~ ~ �   \      /  �~                            �
ECHO    �    ~�    \   /    �           �  ~      ~  ~�          �   ~\   /    �      ~                      �
ECHO    � ~   �    ~ \/  /� �         ~ �             �          \ �\  \/      �         ~    ~       ~~     �
ECHO    � ~   � ~     �  ��/            �             �           \��  �   ~   �          ~      ~           �
ECHO    � ~   �       �  �/��������������             �������������\�  �       � ~  ~                 ~      �
ECHO    �      \     ~�  /�������������Ŀ             ��������������\  �      /~         ~    ~              �
ECHO    �      ~ \    � /    ~~         �            ~�            ~ \~�    /     ~   ~          ~  ~~     ~ �
ECHO    �          \  �/           ~    �      ~      � ~~   ~        \� ~/                     ~            �
ECHO    �          ~ \/      ~          �       ~     �     ~   ~      \/                    ~          ~    �
ECHO    �    ~      ~              ~    �             �          ~        ~       ~ ~                        �
ECHO    �           ~                   �             �                  ~    ~                     ~        �
ECHO    �                   ~      ~    �             �   ~    ~      ~    ~ ~    ~                     ~    �
ECHO    �              ~  ~             �             �             ~                   ~          ~         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE83TEXT
ECHO     %UNCLENAME%: You don't know that^^! She might have gotten out earlier.
ECHO     Imagine how she'd feel something happened to you while you're in there^^!
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE84IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                    ~                    ~    ~     �\          \    ~ ~                            �
ECHO    �                      ~        ~                  ~ � \          \  ~    ~  ~                ~      �
ECHO    �      ~   ~_                                        �  \         /�    ~  ~                         �
ECHO    � ~       /  \  /   /\ _     ~                       �   \~     /  �             ~               ~   �
ECHO    �         � ~ ~�  \     �                        ~   �    \   /    �               ~               ~ �
ECHO    �         � /\   \/  /�~�    �          ~            � �\  \/~  /\ �                ~~               �
ECHO    �         �/  ~\  �  ��/    ���  ~ ~      ~           \��  �  /   \�                                 �
ECHO    �         /~     \�  �/�����ĳ�������������������������\�  �/    ~ \            ~                    �
ECHO    � ~      / ~ ~     \ /������/�\Ŀ        ~~   ����������\ /         \         ~                      �
ECHO    �       /     ~    /�           �             �  \__�    �\   ~ ~~   \                               �
ECHO    �      /          / �           �    ~        �  /  �    � \  ~       \   ~ ~   ~~      ~            �
ECHO    �     �\    ~   ~/  �          ~�           ~~�          �  \  ~      /�                             �
ECHO    �  ~~ �  \      /   � ~         �       ~   ~ �          �   \      /  �                    ~ ~      �
ECHO    �     �    \   /   ~�           � ~      ~    �          �    \   /    �         ~ ~                 �
ECHO    �   ~ �      \/  /� �           �        ~   ~�          \ �\  \/      �      ~              ~       �
ECHO    �     �     ~ � ~��/            �             �~          \��  �      ~�  ~                          �
ECHO    �     �       �  �/��������������      ~  ~   �������������\�  �       �                     ~       �
ECHO    �      \      �  /�������������Ŀ ~           ��������������\ ~�     ~/                      ~       �
ECHO    �   ~ ~  \    � /               �   ~         �~             \ �    /       ~                        �
ECHO    �         ~\  �/        ~       �             � ~       ~   ~ \�  /                   ~ ~          ~ �
ECHO    �   ~        \/                 �             �            ~   \/              ~           ~         �
ECHO    �        ~                   ~  �     ~       �                  ~~                          ~       �
ECHO    �          ~   ~                �             � ~  ~                                    ~ ~  ~ ~     �
ECHO    �  ~             ~     ~   ~    �~            �               ~     ~             ~                  �
ECHO    �                               �   ~         � ~             ~       ~   ~              ~           �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE84TEXT
ECHO     %PLAYERNAME%: BUT WHAT IF SHE'S IN THERE^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE85IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �    ~              ~  ~            ~     ~    ~     �\          \                         ~         �
ECHO    �          ~                                         � \   ~      \                            ~     �
ECHO    �           _        ~               ~               �  \   ~     /�                 ~  ~   ~    ~   �
ECHO    �    ~    /  \  /   /\ _~                      ~     �   \      /  �                   ~~            �
ECHO    �     ~   �   ~�  \     � ~                   ~     ~�    \~  /    �        ~                 ~~     �
ECHO    �         � /\   \/  /� �    �    ~                  � �\  \/   /\ �                                 �
ECHO    �         �/   \  �~ ��/  ~ ���        ~              \��  �~ /   \�                ~              ~ �
ECHO    �    ~    /      \�  �/�����ĳ�������������������������\�  �/      \        ~                        �
ECHO    �        /         \ /������/�\Ŀ       ~     ����������\ /         \             ~                  �
ECHO    �       /          /� ~         �             �  \__�    �\     ~    \        ~     ~      ~ ~       �
ECHO    �      /    ~     / �          ~�      ~      � ~/  � ~  � \     ~    \                              �
ECHO    �     �\         / ~�   ~     ~ �       ~     �        ~ �  \         /�    ~  ~          ~          �
ECHO    �     �~ \      /   �           �  ~          �~   ~     �   \~ ~   /  �                  ~~         �
ECHO    �    ~�    \   /    �     ~    ~�             �     ~    �    \   /    �                             �
ECHO    �     �      \/  /� �           �             � ~        \ �\  \/      �       ~  ~                  �
ECHO    �     � ~     �  ��/     ~      �   ~         �           \��  �       �  ~      ~        ~          �
ECHO    �     � ~  ~ ~�  �/��������������         ~   �������������\�  �       �~   ~                        �
ECHO    �      \      �  /�������������Ŀ  ~          ��������������\  �   ~  /                      ~       �
ECHO    �   ~    \    � /               �             �~  ~          \ �~   /      ~       ~              ~  �
ECHO    �     ~~   \  �/                �~            �      ~        \�  /         ~      ~       ~       ~ �
ECHO    �      ~     \/              ~  � ~      ~    �    ~           \/              ~              ~      �
ECHO    �                    ~          �~   ~        �~                 ~                   ~        ~ ~    �
ECHO    �               ~          ~ ~ ~�         ~~  �        ~                  ~  ~ ~         ~ ~         �
ECHO    �    ~   ~            ~ ~       �           ~ �~                          ~      ~         ~ ~    ~  �
ECHO    �  ~                            �             �~                                                     �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE85TEXT
ECHO     %UNCLENAME%: %PLAYERNAME%^^! IT'S NOT WORTH LOSING YOUR LIFE FOR A 'WHAT IF'
ECHO     GET YOURSELF BACK HERE NOW^^!
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE86IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �  ~~    ~                          ~     ~          �\          \~   ~                              �
ECHO    �            ~      ~                    ~           � \        ~ \    ~                       ~     �
ECHO    �      ~~   _                        ~  ~          ~~�  \         /�                              ~  �
ECHO    �         /  \  /   /\ _                  ~          �   \   ~  / ~� ~  ~       ~                    �
ECHO    �  ~      �    �  \     �      ~        ~ ~        ~~�    \   /    �         ~              ~        �
ECHO    �   ~     � /\   \/  /� �    �               ~   ~ ~ � �\  \/   /\ �                                 �
ECHO    �  ~      �/   \  � ~��/ ~  ���       ~               \��  �  /   \�~      ~                         �
ECHO    �         /   ~  \�  �/�����ĳ�������������������������\�  �/      \                    ~            �
ECHO    �        /         \ /������/�\Ŀ            ~����������\ /         \     ~            ~            ~�
ECHO    �       /          /�           �           ~ �  \__�   ~�\          \              ~                �
ECHO    �     ~/   ~      / �     ~   ~ �             �  /  �~  ~� \         ~\  ~                    ~      �
ECHO    �     �\   ~~    /  �           �~    ~      ~�     ~    �  \    ~    /�                     ~       �
ECHO    �     �  \      /   �           �             �          �  ~\    ~ /  �                  ~          �
ECHO    � ~   �    \   /    �   ^^!       �      ~      �          �    \   /    �      ~        ~             �
ECHO    �   ~ �    ~ \/  /� �   �~      �    ~        �          \ �\  \/      �      ~    ~             ~   �
ECHO    �     �       �  ��/   ���      �             �  ~ ~      \��  �     ~ �  ~~       ~~         ~      �
ECHO    �     �       �~ �/����ĳ��������             �������������\�  �       �                   ~   ~     �
ECHO    �      \      �  /�����/�\�����Ŀ     ~       ��������������\~ �   ~  /                ~             �
ECHO    �  ~     \    � /  ~            �     ~       �           ~  \ �    /  ~                     ~       �
ECHO    �  ~       \  �/        ~  ~    �       ~     �       ~       \�  /   ~            ~          ~      �
ECHO    �         ~  \/       ~         �      ~      �                \/ ~~     ~    ~ ~               ~ ~  �
ECHO    �            ~~            ~~ ~ �      ~      �     ~                 ~                     ~     ~  �
ECHO    �  ~  ~           ~ ~           �             �         ~       ~                  ~                 �
ECHO    �                   ~          ~�    ~ ~      �          ~    ~                  ~                   �
ECHO    �                   ~      ~    �             �                          ~          ~                �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE86TEXT
ECHO     %GIRLNAME%: Help^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE87IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �        ~                 ~                         �\          \          ~     ~                  �
ECHO    �             ~              ~         ~           ~ � \          \       ~~           ~             �
ECHO    �           _      ~         ~    ~                  �~ \         /�~       ~~      ~                �
ECHO    �         /  \  /   /\ _    ~       ~      ~         �   \      /  �        ~      ~                 �
ECHO    �  ~  ~   �    �  \  ~  �     ~       ~      ~       �    \   /    �    ~    ~                       �
ECHO    �  ~      � /\   \/  /� � ~ ~             ~    ~     � �\  \/   /\ �   ~                   ~      ~  �
ECHO    �         �/   \  �  ��/         ~      ~             \��  �  /   \�       ~~     ~               ~  �
ECHO    �         /      \�  �/��������������������������������\�  �/   ~  \       ~            ~    ~       �
ECHO    �  ~     /         \ /���������Ŀ  ~          ����������\ /         \ ~                 ~           ~�
ECHO    �       /        ~ /�           ��~           �  \__�    �\    ~     \ ~             ~       ~      ~�
ECHO    �  ~   /        ~ / �~          ���    ~    ~ �  /  �    � \~       ~ \            ~                 �
ECHO    �     �\     ~ ~ /  �           ��            � ~       ~�  \      ~  /�                ~            �
ECHO    �     �  \      /   �           / \           �          �   \      / ~�    ~~                       �
ECHO    �     �   ~\   /    �    ~      � ~      ~    �          �   ~\   /    �         ~      ~~           �
ECHO    �     �      \/~ /� �   ~   �   �          ~  �          \ �\  \/      � ~                          ~�
ECHO    �     �       �  ��/       ���  �        ~    �       ~   \��  �       �    ~                        �
ECHO    � ~   �       �  �/��������ĳ����             �������������\�~ �   ~   �~            ~               �
ECHO    �      \      �  /���������/�\�Ŀ             ��������������\ ~�      /           ~                  �
ECHO    �       ~\    � /    ~          �            ~�        ~~    \ �    /       ~                        �
ECHO    �     ~  ~ \  �/     ~       ~  �             �    ~      ~  ~\�  / ~   ~ ~    ~        ~            �
ECHO    � ~~       ~ \/            ~    �        ~~~  �                \/~       ~       ~    ~              �
ECHO    �          ~    ~  ~            �             �                      ~~  ~                           �
ECHO    �                              ~� ~           �           ~      ~      ~                            �
ECHO    �     ~   ~            ~        � ~           �                ~   ~ ~                 ~  ~          �
ECHO    �                       ~       �             �           ~                                ~         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE87TEXT
ECHO     %PLAYERNAME%: I'm coming %GIRLNAME%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE88IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �    ~~  ~  ~        ~    ~~                ~   ~    �\          \   ~~   ~          ~ ~     ~  ~   ~�
ECHO    �         ~   ~        ~                             � \          \              ~                   �
ECHO    �    ~      _   ~                 ~  ~               �  \         /�  ~        ~       ~        ~    �
ECHO    �     ~   /  \  /   /\ _               ~~            �   \     ~/  � ~          ~                    �
ECHO    �         �    �  \~  ~ �           ~  ~~    ~       �    \   /~   �                                 �
ECHO    �         � /\   \/  /� �     ~                  ~   � �\  \/  ~/\ �                                 �
ECHO    �         �/   \~ �  ��/     ~                        \�� ~�  /   \�                           ~     �
ECHO    �         /      \�  �/��������������������������������\�  �/ ~~   \  ~                              �
ECHO    �        /  ~ ~    \ /���������Ŀ             ����������\ /  ~      \     ~      ~~      ~           �
ECHO    �       /  ~~      /�           �        ~    �  \__�    �\          \                    ~    ~     �
ECHO    �  ~   /          / � ~         �         ~   �~ /  �    � \ ~~       \  ~                           �
ECHO    �     �\        ~/  �      ~    �  �        ~ �          �  \  ~      /�      ~     ~     ~        ~ �
ECHO    �     �  \~     /   �           � ���         �      ~   �   \      /  �     ~           ~    ~      �
ECHO    �     �    \   /    �           �  �    ~     �       ~  �    \   /    �  ~    ~         ~   ~       �
ECHO    �     �      \/  /� �     ~     � / \         �     ~�   \ �\  \/      �           ~     ~ ~    ~    �
ECHO    �     �  ~    �  ��/     ~     ���      ~     �     ���   \��  �       �           ~                 �
ECHO    �    ~�       �  �/������������ĳ       ~     ������ĳ�����\�  �       �  ~              ~         ~~�
ECHO    �      \      �  /�������������/�\            ������/�\�����\  �  ~   /         ~                    �
ECHO    �        \    � /   ~          ~�  ~          � ~            \ �  ~ /         ~      ~       ~     ~~�
ECHO    �          \  �/                �             �  ~~~  ~     ~ \�  /                                  �
ECHO    �     ~  ~   \/   ~     ~  ~    �             �                \/               ~                    �
ECHO    �       ~               ~       �            ~�                                                      �
ECHO    �                        ~  ~   �             �   ~   ~~~        ~                                   �
ECHO    �                               �             �                         ~  ~                         �
ECHO    �  ~         ~  ~        ~      �      ~      �~       ~          ~                                  �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE88TEXT
ECHO     %GIRLNAME%: I can't find my parents anywhere^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE89IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �   ~         ~            ~  ~                      �\   ~      \                                   �
ECHO    �              ~     ~                       ~       � \~   ~     \        ~        ~                �
ECHO    �   ~       _                                ~   ~ ~ �  \    ~    /�                     ~           �
ECHO    �     ~~  /  \  / ~ /\ _                     ~   ~   �   \     ~/  �      ~      ~   ~          ~    �
ECHO    �         �~   �  \     �                 ~          �    \   /    �           ~                     �
ECHO    �         �~/\   \/  /� � ~            ~      ~~     � �\  \/   /\ �   ~         ~           ~     ~ �
ECHO    � ~      ~�/   \  �  ��/~~ ~  ~                       \��  �  /   \�   ~               ~             �
ECHO    �         /      \� ~�/��������������������������������\�  �/      \   ~       ~      ~        ~     �
ECHO    � ~   ~~ /         \ /���������Ŀ             ����������\ / ~      ~\                             ~ ~�
ECHO    �       /~         /�           �             �  \__�    �\          \             ~~        ~       �
ECHO    �     ~/         ~/ �           �      ~      �  /  �    � \          \                              �
ECHO    �     �\         / ~�   ~       �         ~   �        ~ �  \         /� ~                  ~        �
ECHO    � ~  ~�  \ ~    /   �      ~ ~  �   � ~       �~         �  ~\      /  �     ~     ~                 �
ECHO    �     �    \   /    �     ~     �  ���        �          � ~  \   /    �         ~                   �
ECHO    �     �      \/ ~/� �       ~   �   �         ��~~       \ �\  \/      �            ~    ~    ~    ~ �
ECHO    �     �       �  ��/  ~    ~   ��� / \      ~ ���         \��  �   ~   �         ~          ~        �
ECHO    � ~   �       �  �/������������ĳ   ~       ~ �������������\�  �       �  ~                     ~    �
ECHO    �      \      �  /�������������/�\            /�\�����������\  �      /  ~                         ~ �
ECHO    �        \    � /   ~           �         ~   �   ~          \ �    /             ~                  �
ECHO    �       ~  \  �/    ~     ~  ~ ~�             �             ~ \�  /           ~~     ~     ~  ~    ~ �
ECHO    �            \/       ~         �             �  ~      ~ ~    \/                                  ~ �
ECHO    �    ~                          �             � ~         ~ ~                           ~    ~       �
ECHO    �                       ~       �  ~   ~      �   ~~                              ~ ~               ~�
ECHO    �                      ~   ~   ~�        ~    �         ~~   ~   ~    ~                              �
ECHO    �                     ~  ~   ~  �             �     ~                                              ~ �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE89TEXT
ECHO     %FRIENDNAME%: Me neither^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE90IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         ~  ~                       �\       ~  \           ~       ~             ~ �
ECHO    �           ~~            ~                          � \          \ ~                      ~    ~    �
ECHO    �           _     ~         ~   ~                   ~�  \  ~  ~   /�         ~  ~    ~               �
ECHO    �         /  \  /   /\ _  ~           ~   ~          �   \      /  �    ~      ~                     �
ECHO    � ~  ~    �    �  \     �             ~     ~        �    \~  /    �                                 �
ECHO    �  ~ ~    � /\   \/  /� �      ~      ~         ~    � �\  \/   /\ �                                 �
ECHO    �         �/   \  �  ��/                ~  ~          \�� ~�  /   \�          ~   ~~  ~              �
ECHO    �     ~   / ~    \�  �/��������������������������������\�  �/      \     ~  ~                        �
ECHO    �        /         \~/���������Ŀ             ����������\ /         \     ~                  ~       �
ECHO    �       /          /�     ~     �             � ~\__�~   �\     ~    \      ~               ~        �
ECHO    � ~    /   ~      / �           � ~      ~ ~  �~ /  � ~  � \    ~     \    ~    ~                    �
ECHO    �     �\         /  �         ~ �             �          � ~\         /�~         ~                  �
ECHO    �     �~ \ ~    /   �     ~     �   �       ~ �  ~       �   \      /  �           ~                 �
ECHO    �     �    \   /    �           �  ���        �          �~   \   /    �                             �
ECHO    �     �      \/  /� �        ~  �   �    ~�   �      ~   \ �\  \/      �                ~            �
ECHO    �   ~ �~      �  ��/  ~        ��� / \   ���  �  ~        \��  �       �  ~       ~                  �
ECHO    �     �    ~  �  �/������������ĳ     ~   �   �������������\�  �       �            ~           ~  ~ �
ECHO    �      \~     �  /�������������/�\       / \  ��������������\  �~     /                      ~      ~�
ECHO    �    ~   \    � /              ~�       ~     �  ~           \ �    /                                �
ECHO    �   ~      \  �/            ~   �             �  ~    ~       \�  /                   ~              �
ECHO    �   ~        \/            ~    �        ~    �      ~   ~     \/               ~                    �
ECHO    �                    ~          �             �      ~               ~            ~~          ~      �
ECHO    �                               �            ~�          ~      ~         ~           ~    ~         �
ECHO    �    ~           ~              �             � ~                               ~   ~               ~�
ECHO    �                  ~     ~      �    ~      ~ �            ~                      ~~    ~   ~        �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE90TEXT
ECHO     %UNCLENAME%: Maybe he took everyone with him...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE91IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                ~   �\          \         ~               ~  ~      �
ECHO    �        ~                 ~              ~          � \          \    ~    ~        ~ ~             �
ECHO    �   ~~      _   ~                             ~      �  \         /�  ~             ~           ~    �
ECHO    �         /  \  /   /\ _            ~                �   \~     /  �  ~~     ~        ~        ~     �
ECHO    �         �    �  \     �                   ~ ~      �    \   /    �       ~            ~  ~     ~   �
ECHO    � ~       � /\   \/  /� �                            �~�\ ~\/   /\ �                       ~         �
ECHO    �         �/   \ ~�  ��/                      ~  ~~   \��  �  /   \�~                            ~   �
ECHO    �         /      \�  �/��������������������������������\�  �/      \                                 �
ECHO    �       ~/~        \ /���������Ŀ~        ~   ����������\ /         \    ~~ ~                        �
ECHO    �       /          /�        ~  �             �  \__�    �\          \               ~  ~  ~         �
ECHO    �      / ~        / �           �       ~  ^^!  �  /  �    � \          \       ~                 ~    �
ECHO    �     �\         /  �   ~       �          �  �          � ~\   ~  ~  /�~                   ~        �
ECHO    �     �  \      /   �      ~    �   � ~   ��� �          �   \      /  �    ~ ~        ~             �
ECHO    �     � ~  \   /    �           �  ���     � ~�          �   ~\   / ~~ �         ~                   �
ECHO    �     �  ~   \/  /� � ~  ~      �~  �     / \ �          \ �\  \/     ~�                 ~           �
ECHO    �     �  ~  ~ �  ��/           ��� / \        �        ~ ~\��  �   ~~  �                ~ ~      ~   �
ECHO    �     �       � ~�/������������ĳ    ~        �������������\�  �       �      ~                      �
ECHO    �      \  ~   �  /�������������/�\   ~  ~     ��������������\  �      / ~    ~   ~         ~         �
ECHO    �        \    � / ~          ~  � ~           �    ~         \ �    /                                �
ECHO    �          \  �/                �             �               \�  /                         ~        �
ECHO    �   ~    ~ ~ \/                 �             �                \/                                    �
ECHO    �       ~            ~  ~ ~     �             � ~                 ~     ~   ~~                       �
ECHO    �   ~               ~ ~   ~     �    ~   ~ ~  �            ~   ~                                     �
ECHO    �                 ~   ~         �             �       ~       ~ ~                              ~ ~   �
ECHO    �        ~                      �       ~    ~�                         ~    ~  ~                    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE91TEXT
ECHO     %FRIENDNAME%: WHO^^!? WHO TOOK THEM^^!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE92IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                        ~   ~                       �\       ~  \     ~~      ~~       ~            �
ECHO    �                                                  ~ � \    ~    ~\         ~                        �
ECHO    �           _           ~   ~   ~         ~~      ~  �  \ ~       /�       ~ ~                     ~ �
ECHO    �         /  \  /   /\ _                       ~     �   \     ~/  �      ~     ~     ~          ~   �
ECHO    �         �    �  \     �                            �    \   /    �   ~ ~            ~     ~        �
ECHO    �         � /\   \/  /� �    ~       ~       ~       �~�\  \/  ~/\ �                   ~             �
ECHO    �         �/   \  �  ��/     ~         ~        ~     \��  �  /   \�     ~                ~      ~ ~ �
ECHO    �   ~     /    ~ \� ~�/��������������������������������\�  �/      \                                ~�
ECHO    �        /         \ /���������Ŀ      ~     ~����������\ /  ~      \                                �
ECHO    �       /          /�           �  ~          �  \__�    �\  ~ ~     \                   ~           �
ECHO    �    ~ /          / �           �           ~ �  /  �    � \     ~    \~                             �
ECHO    �     �\   ~     /  �      ~    �          �  �     ~    �  \         /�          ~                  �
ECHO    �     �  \    ~ /  ~�           �   �     ��� �          �   \ ~    /  �                             �
ECHO    �     �    \   /    �           �~ ���     �  �          �    \   /    �                           ~ �
ECHO    �     �  ~   \/  /� �          ~�~  �     /~\ �    ~     \ �\  \/   ~  �       ~  ~   ~         ~    �
ECHO    �     �      ~�  ��/        ~  ��� / \      ~ � ~     ~   \��  �       �       ~ ~                   �
ECHO    �     �   ~   � ~�/������������ĳ    ~        �������������\�  �       � ~   ~   ~~                  �
ECHO    �      \      �  /�������������/�\       ~~   ��������������\  �      /  ~           ~               �
ECHO    �    ~   \    � /               �             �~~            \ �    /                                �
ECHO    �     ~    \  �/   ~      ~     �    ~        �             ~~\�  /~   ~           ~     ~  ~        �
ECHO    �      ~     \/               ~ � ~       ~ ~ �         ~      \/       ~        ~            ~ ~   ~�
ECHO    �                               �       ~     �   ~~    ~            ~           ~    ~              �
ECHO    �                               �        ~    �   ~       ~   ~    ~                           ~     �
ECHO    �            ~       ~         ~�             � ~       ~           ~        ~                ~      �
ECHO    �     ~                         �~    ~       �                                                      �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE92TEXT
ECHO     %UNCLENAME%: %LASTBOSSNAME%...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE93IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                     ~        ~     �\     ~~   \                                  ~�
ECHO    �                                ~                   � \  ~       \        ~                 ~       �
ECHO    �       ~   _         ~                             ~�  \         /�           ~               ~     �
ECHO    � ~     ~ /  \~ /  ~/\ _                             �   \     ~/  �        ~     ~  ~            ~  �
ECHO    �         �    �~ \     �      ~        ~  ~~ ~      �    \   /    �                                ~�
ECHO    �         � /\   \/  /� �                  ~        ~� �\  \/   /\ � ~~ ~                            �
ECHO    �         �/~  \  �  ��/ ~       ~                    \��  �  /   \�           ~                     �
ECHO    �         /      \�  �/��������������������������������\�  �/      \  ~    ~~   ~   ~     ~          �
ECHO    �        /      ~  \ /���������Ŀ~            ����������\ /       ~ \   ~~  ~                        �
ECHO    �       /          /�    ~     ~�     ~       �  \__�    �\      ~   \ ~           ~         ~       �
ECHO    �   ~  /    ~ ~   / �           �    ~     ?  �  /  �    � \       ~  \              ~               �
ECHO    �    ~�\   ~     /  �~          �   ?      �  � ~      ~ �  \         /� ~                           �
ECHO    �     �  \      /   �       ~ ~ �   �   ~ ��� �      ~   �  ~\    ~~/  �~                            �
ECHO    �     �    \   /    �           ?  ���     �  �          �    \   /    �                             �
ECHO    �  ~~ �  ~   \/  /�~�          ~�   �     / \ �          \ �\  \/   ~  �                             �
ECHO    �  ~  �       �  ��/   ~       ��� / \        �           \��  �~      �         ~                   �
ECHO    �     �    ~  � ~�/������������ĳ        ~ ~  �������������\�  �       � ~      ~        ~        ~  �
ECHO    �      \      �  /�������������/�\       ~    ��������������\  �      /     ~  ~                     �
ECHO    �  ~   ~ \    � /        ~      �             �  ~    ~      \~�    /     ~~             ~           �
ECHO    �  ~      ~\  �/                �             �               \�  /     ~     ~     ~ ~              �
ECHO    �            \/ ~      ~        �             �       ~        \/       ~             ~       ~      �
ECHO    �               ~              ~�             �                  ~        ~                          �
ECHO    �                               �             �  ~                        ~        ~                 �
ECHO    �                            ~ ~�   ~         �               ~                    ~          ~      �
ECHO    �                               �~  ~         �  ~      ~        ~   ~         ~        ~ ~          �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE93TEXT
ECHO     %PLAYERNAME%: %LASTBOSSNAME%?
ECHO     %FRIENDNAME%: %LASTBOSSNAME%?
ECHO     %GIRLNAME%: %LASTBOSSNAME%?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE94IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                    ~                    ~          �\          \                           ~       �
ECHO    �  ~   ~                      ~~  ~                  � \        ~ \~                 ~      ~  ~     �
ECHO    �           _         ~                              �  \     ~ ~~/�              ~              ~   �
ECHO    �       ~ /  \  /   /\ _     ~                       �   \  ~   /  �                             ~   �
ECHO    �   ~~    �    �  \     � ~~                         �    \   /    �                               ~ �
ECHO    �         � /\   \/  /� �                            � �\  \/   /\ �         ~~                      �
ECHO    �         �/   \  �  ��/       ~ ~  ~      ~         ~\�� ~�  / ~ \�     ~                           �
ECHO    � ~       /      \�  �/��������������������������������\�  �/  ~  ~\   ~     ~         ~             �
ECHO    �  ~     /         \ /���������Ŀ             ����������\ /         \  ~              ~   ~ ~        �
ECHO    �   ~   /          /�      ~  ~ �             �  \__�    �\    ~ ~   \       ~     ~~~ ~             �
ECHO    �   ~  /          / �           �~            �  /  �    �~\     ~    \         ~                    �
ECHO    �     �\   ~  ~  /  �           �  ~   ~   �  �          �  \ ~  ~    /�     ~      ~~  ~            �
ECHO    �     �  \      /   �~          �   �     ��� �  ~       �   \~     /  �~~     ~~  ~    ~            �
ECHO    �     �~ ~ \   /  ~ �    ~   ~  �  ���     �  �          �    \   /  ~ �           ~            ~    �
ECHO    �     �      \/  /� �           �   �     / \ �          \ �\  \/    ~ �       ~ ~                   �
ECHO    �     �       �  ��/           ��� / \     ~  �           \��  � ~   ~ �             ~               �
ECHO    �     �   ~   �  �/������������ĳ   ~         �������������\�  �~~     �             ~       ~       �
ECHO    �      \      �~ /�������������/�\            ��������������\  �      /       ~                      �
ECHO    �        \    �~/               �   ~       ~ �              \ �   ~/     ~   ~   ~    ~ ~           �
ECHO    �    ~~    \  �/   ~       ~   ~�          ~  �               \�~ /           ~  ~                   �
ECHO    �      ~     \/    ~            �             �      ~         \/           ~            ~    ~      �
ECHO    �             ~              ~  �             �                                               ~      �
ECHO    �    ~                          �     ~       �  ~                                     ~             �
ECHO    �      ~              ~         �   ~         �                   ~                                  �
ECHO    �  ~  ~ ~         ~   ~         �   ~         �     ~                            ~                  ~�
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE94TEXT
ECHO     %UNCLENAME%: Yes, %LASTBOSSNAME%. The most evil demon ever to walk the earth
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE95IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    � ~        ~                           ~  ~          �\          \  ~   ~               ~   ~        �
ECHO    �  ~                        ~               ~        � \          \                        ~ ~       �
ECHO    �           _                       ~            ~   �  \   ~  ~  /�~   ~       ~     ~       ~  ~   �
ECHO    �         /  \  /   /\~_          ~    ~  ~          �   \      /  �                  ~              �
ECHO    � ~      ~�    �  \     �               ~   ~     ~  �    \ ~ /  ~ � ~             ~                 �
ECHO    �         � /\   \/  /�~�                ~           � �\  \/   /\ �                    ~   ~       ~�
ECHO    �         �/   \  �  ��/  ~         ~     ~           \��  �  /   \�                                 �
ECHO    �         /      \�  �/��������������������������������\�  �/      \                                 �
ECHO    �        /         \ /���������Ŀ            ~����������\ /     ~   \                           ~    �
ECHO    �    ~  /    ~     /�       ~   �~  ~       ~ �  \__�    �\          \        ~           ~          �
ECHO    � ~    /          / �     ~ ~   �           ~ �  /  �    �~\  ~ ~     \                            ~ �
ECHO    �     �\   ~  ~  /  �~      ~~  �          �  �    ~     �  \         /�                ~  ~      ~  �
ECHO    �     �  \    ~ /   �   ~       � ~ �   ~ ��� �         ~�   \      /  �                         ~ ~ �
ECHO    �     �    \   /    �         ~ �  ���     �  �          �    \   /  ~ �            ~~    ~          �
ECHO    �     �      \/~ /� � ~         �   �     / \ �          \ �\~ \/      �                           ~ �
ECHO    �     �       �  ��/~ ~        ��� / \    ~~  �           \��  �      ~�                    ~    ~   �
ECHO    � ~   �~      �  �/������������ĳ    ~        �������������\� ~�    ~  �  ~     ~                    �
ECHO    �      \  ~   �  /�������������/�\  ~       ~ ��������������\  �      /       ~ ~              ~     �
ECHO    �      ~ \    � /~              �      ~      � ~            \ � ~~ /            ~                   �
ECHO    �          \  �/                �      ~      �~       ~      \� ~/                   ~ ~            �
ECHO    �            \/                 �             �   ~            \/    ~~   ~ ~    ~                   �
ECHO    �     ~     ~          ~        �             �  ~                            ~                   ~  �
ECHO    �  ~       ~                  ~ �             �   ~    ~   ~        ~                         ~  ~   �
ECHO    � ~ ~                           �  ~          �   ~           ~    ~~            ~            ~      �
ECHO    �          ~           ~      ~ � ~           �                                      ~              ~�
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE95TEXT
ECHO     %GIRLNAME%: I've heard of him^^! We're never getting them back^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE96IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �           ~   ~~ ~    ~      ~                     �\          \~                  ~       ~      ~�
ECHO    �              ~                      ~     ~  ~     � \~      ~  \  ~ ~                   ~     ~   �
ECHO    �           _                ~   ~                   �  \    ~    /�                        ~        �
ECHO    �         / ~\  /   /\ _         ~     ~             �   \      /  �  ~      ~                 ~     �
ECHO    �        ~�   ~�  \     �       ~   ~                �~   \   /    �       ~                         �
ECHO    �         � /\   \/  /� � ~       ~            ~     � �\  \/   /\~�        ~           ~         ~  �
ECHO    �   ~     �/   \  �  ��/              ~  ~            \��  � ~/   \�                 ~            ~  �
ECHO    �         /      \�  �/��������������������������������\�  �/      \               ~~             ~  �
ECHO    �  ~     /     ~   \~/���������Ŀ             ����������\~/         \      ~                         �
ECHO    �     ~ /~   ~     /�      ~    �             �  \__�    �\          \                             ~ �
ECHO    �      /          / �~          �       ~     �~ / ~�~   �~\   ~ ~   ~\    ~     ~    ~ ~      ~     �
ECHO    �     �\ ~     ~ /  �     ~     �          �  �     ~ ~  �  \       ~ /�         ~        ~      ~   �
ECHO    �    ~�  \      /   �~          �   �     ��� �    ~     � ~ \      /  �                             �
ECHO    �   ~ �    \ ~ /    �           �  ���     �  �         ~�    \~  /    �~                         ~  �
ECHO    �    ~�      \/  /� �     ~ ~   �   �     / \ �          \ �\  \/     ~�            ~       ~       ~�
ECHO    �     �~      �  ��/            �~ /~\        �           \��  �       �                ~            �
ECHO    �  ~  �  ~    �~ �/��������������             �������������\�  �       �             ~               �
ECHO    �      \      �  /�������������Ŀ  \__� ~ ~~~ ��������������\  �  ~  ~/ ~          ~            ~    �
ECHO    �    ~   \    � /               �  /  �     ~ �              \ � ~  /   ~      ~             ~    ~  �
ECHO    �    ~     \  �/           ~    �           ~ �    ~          \�  /                                  �
ECHO    � ~          \/ ~   ~       ~   �         ~ ~ �     ~    ~     \/  ~                       ~  ~      �
ECHO    �   ~       ~                   � ~      ~    �  ~~                                                  �
ECHO    �               ~~      ~    ~  �             �   ~           ~     ~                 ~              �
ECHO    � ~     ~                ~      �             �                             ~   ~     ~              �
ECHO    �         ~ ~   ~    ~          �      ~      �             ~     ~        ~   ~    ~            ~ ~ �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE96TEXT
ECHO     %GIRLNAME% fainted
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE97IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                ~               ~   ~            ~  �\  ~       \    ~   ~         ~         ~  ~   �
ECHO    �  ~                                    ~    ~       � \    ~     \                                  �
ECHO    �         ~ _      ~                          ~      �  \         /�      ~   ~              ~       �
ECHO    �         /  \  /   /\ _                             �   \     ~/  �       ~                  ~ ~    �
ECHO    �       ~ �    �  \     �                            �    \~  /~   �                       ~       ~ �
ECHO    �       ~ � /\   \/  /� �           ~    ~           � �\  \/  ~/\ �  ~ ~       ~                    �
ECHO    �   ~ ~   �/   \  �  ��/       ~    ~              ~  \��  �  /   \�     ~         ~       ~~    ~   �
ECHO    �  ~      /      \�  �/��������������������������������\�  �/      \             ~    ~       ~      �
ECHO    �        /         \ /���������Ŀ          ~  ����������\ /         \  ~       ~    ~                �
ECHO    �       / ~        /�    ~      �  ~ ~        �  \__�    �\          \                ~ ~            �
ECHO    �   ~ ~/          /~�           �~           ~�  /  �    � \        ~ \                              �
ECHO    �     �\         /  �   ~   ~   �   ^^!      �  �          �  \      ~  /�       ~                     �
ECHO    �  ~  �  \      /   �~   ~      �   �     ��� �    ~     �   \      /  �            ~                �
ECHO    �     �  ~ \   /    � ~      ~  �  ���     �  �          �    \   /    �              ~  ~           �
ECHO    � ~   �      \/ ~/� �           �   �     / \ �     ~  ~ \ �\  \/    ~ �                     ~       �
ECHO    �     �       �  ��/~    ~      �  / \~       �  ~        \��  �   ~  ~�   ~         ~               �
ECHO    �     �       �  �/��������������             �������������\�  �       �~       ~      ~  ~          �
ECHO    � ~ ~  \      �  /�������������Ŀ  \__� ~     ��������������\  �      /                              �
ECHO    �   ~ ~~ \    � /             ~ �  /  �       �          ~   \ �    /~                ~    ~       ~ �
ECHO    � ~        \  �/                �      ~      � ~             \�~~/          ~                ~     ~�
ECHO    �            \/                 �             � ~              \/                                    �
ECHO    �                    ~~  ~    ~ �             �                                                      �
ECHO    �           ~          ~        �~           ~�           ~              ~       ~       ~~   ~      �
ECHO    �                      ~       ~�             �            ~           ~   ~               ~         �
ECHO    �     ~                         �             �       ~                                              �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE97TEXT
ECHO     %PLAYERNAME%: %GIRLNAME%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE98IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                  ~     ~              ~       ~    �\       ~  \                     ~  ~          �
ECHO    �      ~ ~                                           � \          \                                  �
ECHO    �           _                                        �  \     ~   /�          ~       ~~             �
ECHO    � ~   ~   /  \  /~  /\~_~         ~      ~           �   \      /  �                  ~              �
ECHO    �         �    �  \  ~  �                       ~    �    \   /    �                     ~  ~  ~    ~�
ECHO    �         � /\   \/  /� �~                  ~        � �\  \/   /\~�                      ~          �
ECHO    � ~       �/   \  �  ��/       ~     ~              ~ \��~ �  /~  \�    ~      ~    ~      ~    ~  ~ �
ECHO    �        ~/      \�  �/��������������������������������\�  �/      \       ~        ~ ~              �
ECHO    �        /   ~   ~ \ /���������Ŀ          ^^!  ����������\ /         \               ~                �
ECHO    �       /          /�           �       ~  �  �  \__�    �\          \   ~                           �
ECHO    � ~    /       ~  / �   ~       �      ~  ��� �  /  �    � \   ~      \         ~                    �
ECHO    �     �\ ~   ~   /  �  ~ ~      �          �  � ~        �  \         /�     ~       ~         ~     �
ECHO    � ~   �  \      /   �           �         / \ �          �   \      /  �  ~~                  ~     ~�
ECHO    �     �    \   /    �    ~      �            �          �  ~ \   /    � ~   ~                    ~~ �
ECHO    � ~   �  ~   \/  /� �           �      �      �          \ �\  \/   ~  �                   ~   ~     �
ECHO    �  ~  �       �  ��/~  ~      ~ �     /�      �      ~    \��  �  ~    �              ~ ~            �
ECHO    �     �       �  �/��������������     /��     �������������\�  �~      �  ~           ~        ~     �
ECHO    �      \      �  /�������������Ŀ  \__���   ~ ��������������\  �  ~   /                   ~    ~     �
ECHO    �     ~  \~~  � /        ~      �  /  �      ~�              \ �  ~ /           ~                    �
ECHO    �  ~~      \  �/       ~  ~     �           ~ � ~             \� ~/     ~                            �
ECHO    �            \/  ~              �  ~   ~      �                \/                     ~  ~   ~   ~   �
ECHO    �    ~                          � ~           � ~            ~           ~                    ~      �
ECHO    � ~                    ~  ~     � ~       ~   �   ~      ~~                      ~         ~         �
ECHO    � ~                       ~     �     ~       �      ~   ~               ~                        ~  �
ECHO    �     ~                ~    ~   �             �     ~                                           ~ ~  �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE98TEXT
ECHO     %FRIENDNAME%: I'll get them back if it's the last thing I do^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE99IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                ~          ~        �\          \    ~  ~          ~       ~        �
ECHO    �      ~              ~       ~           ~          � \          \   ~   ~  ~                       �
ECHO    �           _       ~             ~~       ~     ~   �~ \       ~~/�             ~     ~             �
ECHO    �  ~      /  \  /   /\ _             ~               �   \    ~ /~ �                                 �
ECHO    �         �    �  \     �               ~            �    \   /    � ~~~                          ~  �
ECHO    �         � /\   \/  /� �                  �        ~�~�\  \/   /\ �              ~    ~             �
ECHO    �         �/   \ ~�  ��/               ~  ���     ~  ~\��  �  / ~ \�               ~                 �
ECHO    �         /~     \�  �/�������������������ĳ�����������\�  �/      \      ~                          �
ECHO    �        /         \ /���������Ŀ         / \ ����������\~/         \  ~                ~            �
ECHO    �   ~   /~~        /�           �  ~        ~ �  \__�   ~�\          \                   ~       ~   �
ECHO    �      /   ~      / �           �      ~ ~  ~ �  /  �    � \          \                ~             �
ECHO    �   ~ �\       ~ /  �         ~ �    ~        �   ~      �  \         /�               ~  ~ ~        �
ECHO    �     �  \      /   �       ~   �             �      ~  ~�  ~\      /  �             ~           ~ ~ �
ECHO    �     �  ~ \ ~ /    �           �            �         ~�   ~\   /    �          ~       ~          �
ECHO    �     �      \/  /� �        ~  �   ~  �      �          \ �\  \/   ~  �                      ~ ~    �
ECHO    �     �    ~  �  ��/         ~  �     /�~  ~  �           \��  �       �      ~                    ~ �
ECHO    �     �       �  �/��������������   ~ /��~    �������������\� ~�      ~�           ~       ~         �
ECHO    �      \      � ~/�������������Ŀ~ \__���   ~ ��������������\  �    ~ /    ~  ~                ~~  ~ �
ECHO    �        \    � /               � ~/~ �       �   ~   ~      \ �    /    ~     ~       ~             �
ECHO    �     ~    \ ~�/            ~   �        ~   ~�               \�  /           ~   ~      ~    ~      �
ECHO    �            \/             ~   �             �                \/               ~    ~ ~         ~   �
ECHO    �             ~                 �   ~         �     ~        ~ ~ ~                                   �
ECHO    �    ~    ~                     �           ~ �             ~~                                       �
ECHO    �          ~ ~          ~       �   ~       ~ �   ~~                 ~                         ~    ~�
ECHO    �                          ~    �             �                                    ~                 �
ECHO    ����������������������������������������������������������������������������������������������������ͼ

ECHO.
GOTO :EOF
:SCENE99TEXT
ECHO     %PLAYERNAME%: It's %LASTBOSSNAME%^^! Are you trying to get yourself killed^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE100IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �               ~                          ~         �\ ~        \   ~       ~                   ~   �
ECHO    �     ~    ~     ~                       ~ �         � \          \       ~            ~  ~          �
ECHO    �     ~~    _             ~               ���        �  \         /�                       ~   ~     �
ECHO    �         /  \  /   /\ _                   �         �   \      /  �         ~       ~               �
ECHO    �         �  ~ �  \     �      ~  ~       / \        �  ~ \   /    �              ~                ~ �
ECHO    �         � /\   \/  /� �               ~    ~       � �\~ \/  ~/\~�               ~  ~              �
ECHO    �    ~    �/   \  � ~��/                ~             \��  � ~/~ ~\�      ~      ~                   �
ECHO    �        ~/      \�  �/��������������������������������\�  �/     ~\                 ~               �
ECHO    �        /~        \ /���������Ŀ             ����������\ /         \                                �
ECHO    �       /          /�           �          ~  �  \__�    �\       ~  \~      ~  ~  ~  ~              �
ECHO    � ~    /          / � ~   ~     �         ~   �  /  �    �~\      ~   \  ~                       ~   �
ECHO    �     �\         /  �           �             �~         �  \         /�                             �
ECHO    �     �  \ ~    /   �           �       ~     �   ~      �   \      /  �                            ~�
ECHO    �     �~   \~  /    �           �            �          �    \   /    �~                  ~ ~       �
ECHO    �     �      \/  /� �           �    ~ �      � ~   ~    \ �\  \/      �         ~                   �
ECHO    � ~   �       �  ��/            �     /�~     �           \��  �       �        ~     ~            ~ �
ECHO    �     �   ~   �  �/��������������   ~ /��     �������������\�  �       �                            ~�
ECHO    �      \      �~ /�������������Ŀ  \__���     ��������������\  �      /       ~       ~~             �
ECHO    �        \    � /               �~ /  �~      �             ~\ �    /   ~                      ~ ~   �
ECHO    �          \  �/                �          ~  �               \�  /        ~                         �
ECHO    �       ~    \/      ~          �             �~    ~          \/                                   ~�
ECHO    �           ~               ~   �    ~        �           ~           ~  ~  ~                      ~ �
ECHO    �                              ~�          ~ ~�                                      ~ ~   ~       ~ �
ECHO    �      ~                        �             �                                     ~ ~ ~      ~     �
ECHO    �                          ~    �             �                        ~        ~     ~              �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE100TEXT
ECHO     %FRIENDNAME%: He'll be the one who gets killed, not me^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE101IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                    ~~                              �\          \                                   �
ECHO    �               ~  ~                           ~     � \          \                 ~     ~       ~  �
ECHO    �      ~~   _       ~                     ~  ~       �  \       ~ /�                                 �
ECHO    �         /  \  / ~ /\ _    ~ ~             ~      ~ �   \      /  �           ~           ~    ~    �
ECHO    �       ~ �    �  \ ~~~ �  ~~~                       �    \   /    �                                 �
ECHO    �         � /\~  \/  /� �                            � �\  \/~  /\ �        ~        ~     ~         �
ECHO    �         �/   \  �  ��/ ~  ~                         \��  �  /   \�   ~                   ~~        �
ECHO    �         /      \�  �/��������������������������������\�  �/      \                           ~  ~  �
ECHO    �        /         \ /���������Ŀ             ����������\ /         \        ~~              ~    ~~ �
ECHO    �       /   ~   ~  /�    ~      �        ~ ~  �  \__�    �\          \        ~                      �
ECHO    �      /          / � ~         �            ~�  /  �    � \          \                 ~~   ~ ~     �
ECHO    �     �\         /  � ~~        �             �    ~     �  \         /�                          ~  �
ECHO    �     �  \      /   �           �             �          �   \ ~    /  �                           ~ �
ECHO    �     �    \   /    �           �~     ~     �          �   ~\   /    � ~    ~                    ~ �
ECHO    �     �      \/  /� �          ~�      �   ~~ � ~ ~      \~�\  \/      �                       ~     �
ECHO    �  ~  �     ~ �  ��/         ~  �     /�~     �           \��  �      ~�        ~                    �
ECHO    �     �   ~   �  �/��������������     /��     �������������\�  �       �        ~ ~       ~          �
ECHO    �      \      �  /�������������Ŀ  \__���     ��������������\  � ~   ~/   ~                    ~   ~ �
ECHO    � ~      \    � /        ~      �  /~ �       �              \ �~   /            ~                   �
ECHO    �          \  �/                �  ~         ~�               \�  /       ~           ~      ~       �
ECHO    �            \/        ~        �~            �              ~ \/      ~                             �
ECHO    � ~                             �             �                  ~                                   �
ECHO    �  ~  ~            ~            �  ~          �             ~                   ~      ~        ~    �
ECHO    �                  ~    ~       �             �           ~       ~                            ~     �
ECHO    �                  ~ ~~         �     ~       �               ~       ~ ~             ~              �
ECHO    ����������������������������������������������������������������������������������������������������ͼ

ECHO.
GOTO :EOF
:SCENE101TEXT
ECHO     %PLAYERNAME%: That idiot^^! He's going to die^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE102IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �       ~               ~    ~                   ~   �\ ~       ~\                      ~            �
ECHO    �                    ~        ~    ~        ~        � \       ~  \                 ~               ~�
ECHO    �          ~_                       ~                �  \         /�         ~           ~~          �
ECHO    �   ~ ~   /  \  /   /\~_                             �   \      /  �       ~                         �
ECHO    �   ~     �   ~�~ \   ~ �   ~             ~~         �    \~  /    �    ~                            �
ECHO    �         � /\   \/  /� �  ~ ~~  ~  ~                � �\  \/   /\ �      ~            ~             �
ECHO    �         �/   \  �~ ��/          ~            ~      \��  �  /   \�   ~  ~~~                   ~    �
ECHO    �  ~      /      \�  �/��������������������������������\�  �/     ~\      ~                          �
ECHO    �     ~ ~/         \~/���������Ŀ       ~    ~����������\ /         \~                        ~~     �
ECHO    �       /          /�           �             �  \__�    �\          \     ~             ~           �
ECHO    �      /         ~/ �         ~~�      ~      �  /  �~   � \      ~   \           ~    ~             �
ECHO    � ~   �\         / ~�           �             �       ~  �  \       ~ /�       ~      ~              �
ECHO    � ~   �  \    ~ / ~~�           � ~      ~~   �          �   \ ~    /  �                           ~ �
ECHO    � ~   �    \   /    �           �     ~      � ~        �    \   /    �                             �
ECHO    �   ~ �      \/  /� �       ~ ~ �  ~~  �      �          \ �\~ \/      �           ~~                �
ECHO    �     �~      �  ��/            �     /�      �    ~ ~    \��  �      ~�           ~       ~ ~~ ~    �
ECHO    �    ~�~      �  �/��������������   ~~/��     �������������\�  �     ~ �~                        ~   �
ECHO    �  ~   \  ~   �  /�������������Ŀ  \__���   ~ ��������������\  �      / ~    ~   ~                   �
ECHO    �        \    � /~       ~    ~ �  /  �       �~          ~  \ �    /                                �
ECHO    �  ~~      \  �/                �             �          ~    \�  /  ~~   ~     ~       ~    ~       �
ECHO    �            \/                 �    ~        �          ~   ~ \/                              ~     �
ECHO    �                 ~ ~           �             � ~                               ~          ~      ~  �
ECHO    �    ~            ~             �             �                                                  ~   �
ECHO    �  ~                            �   ~ ~    ~  � ~                                      ~             �
ECHO    �      ~                       ~�       ~     �       ~  ~   ~ ~                            ~  ~     �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE102TEXT
ECHO     %UNCLENAME%: You need to concentrate on %GIRLNAME% for now, she's out cold^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE103IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                      ~~~         ~  ~ ~            �\  ~   ~   \    ~ ~                         ~  �
ECHO    �            ~   ~         ~           ~             � \       ~ ~\          ~                     ~ �
ECHO    �           _ ~                 ~      ~  ~         ~� ~\    ~~ ~ /� ~              ~            ~   �
ECHO    �         /  \  /   /\ _                          ~  �   \    ~ /  �      ~  ~   ~                   �
ECHO    �         �    �  \     �                            �~   \   /    �              ~        ~         �
ECHO    �         � /\   \/  /� �        ~~  ~               � �\  \/   /\ �~~          ~                    �
ECHO    �         �/   \  �  ��/         ~                    \��  �  /  ~\�      ~~         ~    ~  ~       �
ECHO    �  ~      /~ ~   \�  �/��������������������������������\�  �/      \                       ~  ~ ~    �
ECHO    �    ~   /       ~ \ /���������Ŀ ~           ����������\ /         \ ~                              �
ECHO    �       /     ~    /�           �  ~          �  \__�    �\          \   ~     ~            ~~       �
ECHO    �      /          / �         ~ �          ~ ~�  /  �   ~� \~~      ~ \    ~                         �
ECHO    �     �\    ~   ~/  �    ~      �        ~    �          �  \         /�              ~~     ~       �
ECHO    �     �  \  ~   /   �           �           ~ �          �   \      / ~�                    ~        �
ECHO    �     �    \   /    �           �            �          �    \   /  ~ �                    ~        �
ECHO    �     �      \/  /� �           � ~    � ~    �~         \ �\  \/      � ~                           �
ECHO    �    ~�       �  ��/     ~      �     /�      �        ~  \��~ �~      �                             �
ECHO    �     �       �  �/��������������     /��~    �������������\�  �       �            ~               ~�
ECHO    �      \  ~   �  /�������������Ŀ  \__���     ��������������\  �      /               ~~             �
ECHO    �        \    � /   ~      ~ ~  �  /  � ~    ~�         ~    \ �  ~ /               ~ ~        ~  ~  �
ECHO    �      ~~  \  �/                � ~           �               \�  /                                  �
ECHO    �            \/                 �   ~         �~     ~         \/                                    �
ECHO    �            ~      ~           �~        ~   �                        ~ ~~                        ~ �
ECHO    �      ~                        �             �              ~       ~         ~  ~            ~   ~ �
ECHO    �           ~                ~  �             �                       ~   ~               ~          �
ECHO    �                      ~        �  ~          �         ~              ~          ~  ~               �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE103TEXT
ECHO     %PLAYERNAME%: You're right. Don't worry %GIRLNAME%, I told you I'd keep you safe
ECHO     and I will
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE104IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~  ~            ~  �\          \                                   �
ECHO    �                       ~             ~           ~  �~\          \                 ~~      ~   ~    �
ECHO    �        ~  _  ~  ~ ~         ~        ~         ~   �  \         /�    ~    ~                       �
ECHO    �         /  \  /  ~/\ _                  ~     ~    �   \~     /  �            ~        ~  ~  ~     �
ECHO    �     ~~  �    �  \     �                            �~   \   /    �              ~ ~        ~       �
ECHO    �         � /\   \/  /� �                            � �\  \/   /\~�                         ~ ~     �
ECHO    �         �/   \  �  ��/                              \��  �  /   \�               ~         ~       �
ECHO    �         /      \�  �/��������������������������������\�~ �/~  ~  \             ~           ~       �
ECHO    �        /~      ~ \ /���������Ŀ     ~       ����������\ /~        \          ~                     �
ECHO    �       /          /�           �          ~  �  \__�   ~�\          \~               ~    ~         �
ECHO    �      /          / � ~         �    ~        � ~/  �    � \          \   ~           ~ ~  ~        ~�
ECHO    �     �\~     ~  /  �           �             �~         �  \         /�      ~      ~          ~    �
ECHO    �     �  \      /   �           �             �          �~  \      /  �      ~                      �
ECHO    �   ~ �~   \   /    �           �           ~�          �    \   /    �                             �
ECHO    �     �      \/  /� �           �      �~     �          \ �\  \/      �       ~ ~        ~       ~  �
ECHO    �     �       �  ��/ ~          �     /�      �    ~      \��  �       � ~                           �
ECHO    �     �       �  �/��������������     /��     �������������\�  � ~     �      ~ ~                    �
ECHO    �      \     ~�  /�������������Ŀ  \__���   ~ ��������������\  �      /       ~                    ~~�
ECHO    �        \ ~  � /~    ~     ~   �  /  �       �              \~�~   /                                �
ECHO    �         ~\  �/                �    ~~   ~   �       ~       \�  /       ~           ~             ~�
ECHO    �            \/                 �    ~        �          ~     \/   ~                ~    ~     ~    �
ECHO    �    ~                          �   ~     ~   �          ~              ~            ~  ~            �
ECHO    �                  ~~           �    ~        �                     ~  ~                             �
ECHO    �          ~        ~           �            ~�     ~              ~                      ~         ~�
ECHO    � ~                             �      ~      �       ~          ~     ~          ~                  �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE104TEXT
SET TEMPPATH=%MUSICPATH%\Earthquake
SET FILE=Earthquake.mp3
CALL "%MUSICPATH%\soundeffect.bat"
ECHO     ...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE105IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �    ~         ~ ~  ~                                �\          \            ~      ~        ~      �
ECHO    �      ~  ~              ~                           � \   ~      \       ~     ~            ~       �
ECHO    �         ~ _    ~                ~    ~             �  \~    ~   /�          ~            ~    ~ ~ ~�
ECHO    �         /  \  /  ~/\ _   ~      ~           ~      �   \      /  �         ~                       �
ECHO    �         � ~  �  \~    �      ~              ~~     �    \ ~ /    �                       ~         �
ECHO    �         � /\   \/  /� �     ~  ~         ~         � �\  \/   /\ �                 ~ ~        ~    �
ECHO    �         �/ ~ \  �  ��/                              \��  �  /   \�      ~ ~~                       �
ECHO    � ~      ~/      \�  �/��������������������������������\�  �/      \ ~                               �
ECHO    �        /         \ /���������Ŀ     ~       ����������\ /         \                ~ ~             �
ECHO    � ~     /          /� ~        ~�   ~         �  \__�  ~ �\   ~      \                  ~~           �
ECHO    �      /          / �           � ~       ~   �  /  �    � \~         \            ~                 �
ECHO    �     �\   ~     /  �      ~~   �  ~          �          � ~\         /�  ~                  ~  ~    �
ECHO    �     �  \      / ~ �           �             �          �   \      /  �      ~                  ~   �
ECHO    �     �    \   /    �        ~  �      ?      �  ~       � ~  \ ~ /    �          ~             ~    �
ECHO    �     �     ~\/  /� �~   ~      �      �      �    ~     \ �\ ~\/      �                             �
ECHO    �     �       �  ��/~ ~         �     /�      �~   ~      \��  �     ~ �                             �
ECHO    �     �~      �  �/��������������~ ~  /��     �������������\�  �~      � ~       ~                   �
ECHO    �  ~   \      �  /�������������Ŀ  \__���     ��������������\  �      /                             ~�
ECHO    �        \  ~ � /               �  /  �       �    ~         \ �    /                  ~      ~     ~�
ECHO    � ~        \ ~�/       ~        �       ~     �            ~  \�  /             ~           ~        �
ECHO    �     ~   ~  \/                 �       ~     �                \/    ~             ~    ~            �
ECHO    �                               �             �  ~                             ~               ~~    �
ECHO    �  ~       ~                   ~�             �     ~          ~     ~   ~      ~~     ~     ~       �
ECHO    �                               �      ~      �  ~                        ~                          �
ECHO    �        ~        ~             �             �      ~~   ~                ~                         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE105TEXT
ECHO     %PLAYERNAME%: What's that noise?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE106IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �         ~                  ~����~                  �\          \             ~        ~            �
ECHO    �          ~                 ~����~       ~          � \   ~      \     ~  ~  ~                      �
ECHO    �           _      ~   ~     ~����~ ~    ~           �  \~        /�              ~              ~   �
ECHO    �         / ~\  /  ~/\ _     ~����~                  �   \    ~ /  �           ~       ~             �
ECHO    �         �    �  \     �    ~~~~~~                  �    \   /    �     ~  ~         ~      ~       �
ECHO    �         �~/\   \/ ~/� �                            � �\~ \/   /\ � ~                      ~        �
ECHO    �    ~    �/   \  �  ��/            ~         ~  ~    \��  �  /   \�             ~       ~     ~    ~�
ECHO    �         /     ~\�  �/��������������������������������\� ~�/      \      ~~     ~ ~                 �
ECHO    �        /         \ /���������Ŀ ~       ~   ����������\ /        ~\                ~               �
ECHO    �       /     ~    /�           �             �  \__�   ~�\~   ~     \  ~       ~  ~                 �
ECHO    �    ~ /    ~     / �          ~�      ~ ~    �  /  �    � \     ~    \       ~~                     �
ECHO    �     �\     ~   /  �           �         ~   �          �  \         /� ~                     ~     �
ECHO    �     �  \      /   �    ~    ~ � ~           �      ~   �   \      /  �                             �
ECHO    � ~   �    \   /    �           �      ?      �          �    \   /    �            ~                �
ECHO    �     �  ~   \/~ /� �   ~      ~�     ~�      �          \ �\  \/      �             ~               �
ECHO    �     �       �  ��/            �     /� ~   ~�        ~  \��  �~    ~ �          ~                  �
ECHO    �     �~      �  �/��������������     /��~    �������������\�~ �       �                ~            �
ECHO    �    ~ \      �  /�������������Ŀ~ \__���     ��������������\  �   ~  / ~       ~    ~      ~        �
ECHO    �        \~   � /  ~ ~          �  /  �       �           ~  \ �    / ~~         ~                   �
ECHO    �          \  �/~~  ~~  ~       �            ~�               \�  /~                        ~      ~ �
ECHO    �            \/            ~    �             �                \/ ~                                  �
ECHO    �      ~                  ~     �       ~     �              ~         ~                             �
ECHO    �       ~                       �~            �                                          ~       ~ ~ �
ECHO    �                             ~ � ~        ~ ~�  ~                          ~          ~          ~  �
ECHO    �                              ~�            ~�     ~                   ~                       ~    �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE106TEXT
ECHO     %PLAYERNAME%: Is that a portal?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE107IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �       ~   ~                ~����~  ~~\��/        ~ �\    ~     \ ~     ~   ~    ~                  �
ECHO    �                            ~����~    ����          � \          \      ~~     ~                  ~~�
ECHO    � ~         _      ~         ~����~    ��ܳ ~        �  \   ~~    /� ~     ~     ~                ~  �
ECHO    � ~  ~    /  \  /   /\ _     ~����~ � ������~� ~     �   \      /  �  ~~~                    ~  ~    �
ECHO    � ~   ~   �   ~�  \     �    ~~~~~~ �ʹ uu �ͼ~  ~   �    \   /    �      ~      ~                ~  �
ECHO    �       ~ � /\ ~ \/  /� �             � ~~ �    ~    � �\  \/   /\ �~    ~                     ~     �
ECHO    �         �/   \  �  ��/              �~~~ �        ~ \��  �  /  ~\�                    ~ ~~         �
ECHO    �      ~  /  ~  ~\�  �/��������������������������������\�  �/  ~   \    ~       ~    ~               �
ECHO    � ~  ~   /       ~ \ /���������Ŀ      �  �   ����������\ /         \~                           ~   �
ECHO    �       /          /�          ~�      �  �   �  \__�    �\  ~       \                               �
ECHO    �      /          /~�           �        ~    �  /~ �    � \  ~      ~\             ~                �
ECHO    �  ~  �\         /  � ~     ~   �             �          �  \ ~ ~     /�  ~                          �
ECHO    �    ~�  \    ~~/   �       ~   �         ~   �          �   \      /  �                             �
ECHO    �     �  ~ \   /    �           �            �          �   ~\   /    �~~                           �
ECHO    �     �~     \/  /� �    ~  ~   �      �      �          \ �\  \/ ~~   �   ~     ~        ~         ~�
ECHO    �     �       �  ��/            �~    /�    ~ �         ~ \��  �       �   ~              ~~         �
ECHO    �     �       �  �/��������������     /��     �������������\�  �       �        ~                    �
ECHO    �      \      �  /�������������Ŀ  \__���   ~ ��������������\  �      /                   ~ ~        �
ECHO    �        \    � /               �  /  �       �              \ �    /   ~   ~          ~             �
ECHO    �         ~\  �/                �             �           ~   \�  /            ~ ~        ~          �
ECHO    �            \/                 �             �  ~             \/  ~     ~                           �
ECHO    �                          ~    �             �                            ~   ~  ~    ~             �
ECHO    � ~             ~               �             �               ~     ~                                �
ECHO    �                   ~           �             �        ~                   ~                  ~~    ~�
ECHO    �   ~              ~~          ~�     ~       �                             ~~          ~            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE107TEXT
ECHO     %PLAYERNAME%: What the hell is that^^!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE108IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �           ~   ~       ~    ~����~    \��/    ~     �\        ~ \ ~                   ~  ~          �
ECHO    �                  ~         ~����~  ~ ����   ~      � \          \          ~                       �
ECHO    �           _   ~ ~          ~����~    ��ܳ          �  \      ~  /�                                 �
ECHO    �  ~   ~  /  \  /   /\ _     ~����~ � ������ �  ~    �   \      /  �           ~         ~           �
ECHO    �   ~     �    �  \     �    ~~~~~~ �ʹ uu �ͼ       �    \~  /    �            ~                    �
ECHO    �   ~    ~� /\   \/ ~/� �      ~   ~  � ~~ �         � �\  \/   /\ �             ~                   �
ECHO    �     ~   �/   \  � ~��/              � ~~ �    ~     \��  �  /~  \�                             ~   �
ECHO    �        ~/      \�  �/��������������������������������\�  �/    ~ \~            ~                   �
ECHO    �  ~   ~ /       ~ \ /���������Ŀ      �  �   ����������\ /         \         ~                      �
ECHO    �       /    ~     /�    ~      �      �  �   �  \__�  ~ �\    ~     \    ~ ~                        �
ECHO    �   ~  /  ~    ~  / �           �       ~     �  /  �    �~\          \        ~         ~           �
ECHO    �     �\   ~     /  �         ~ �             � ~        �~ \         /�        ~                    �
ECHO    �     �  \~     /   �  ~~      ~�   ~         �          �   \      /  �                             �
ECHO    �     �~ ~ \   /    �     ~~    �      ^^!      �          �  ~ \   /    �                             �
ECHO    �  ~  �      \/  /� �   ~~   ~  �      �      �          \ �\  \/  ~   �  ~~ ~                       �
ECHO    �     �     ~ �  ��/            �     /�  ~   � ~    ~~   \��  �    ~~ � ~        ~    ~      ~      �
ECHO    �     �   ~   �  �/��������������    ~/��     �������������\�  �  ~~   �         ~       ~      ~    �
ECHO    �      \      �  /�������������Ŀ  \__���     ��������������\  �      /     ~ ~  ~             ~     �
ECHO    �  ~    ~\ ~  � /          ~    �  /  �  ~    �  ~           \ �~   /  ~  ~~                  ~      �
ECHO    �        ~ \  �/                �   ~         � ~    ~        \�  /~       ~ ~      ~                �
ECHO    �          ~ \/          ~      �~       ~    �   ~~     ~~    \/                                    �
ECHO    �                               �             �                             ~      ~                 �
ECHO    �     ~          ~    ~   ~     �           ~ �       ~       ~                                 ~    �
ECHO    �         ~   ~      ~  ~      ~�             �                           ~    ~    ~   ~           ~�
ECHO    � ~                 ~    ~    ~ �             �      ~                      ~         ~              �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE108TEXT
ECHO     %UNCLENAME%: That's %LASTBOSSNAME%. He must have came back to finish the town off
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE109IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �      ~  ~                  ~����~    \��/       ~  �\          \  ~        ~                       �
ECHO    �    ~   ~        ~          ~����~    ����      ~   � \~         \        ~                 ~       �
ECHO    �           _ ~           ~  ~����~    ��ܳ          �  \ ~       /�                        ~        �
ECHO    �        ~/  \  /   /\ _     ~����~ � ������         �   \   ~ ~/  �                                 �
ECHO    � ~       �    �  \     �    ~~~~~~ �ʹ uu ����      �    \   /    �                                 �
ECHO    �      ~  �~/\   \/ ~/� �       ~     � ~~ �         �~�\  \/   /\ �        ~         ~              �
ECHO    �  ~      �/   \  �  ��/           ~  � ~~ � ~~       \��  �  /   \�                           ~     �
ECHO    �         /      \�  �/��������������������������������\�  �/      \    ~    ~                    ~  �
ECHO    �  ~     /         \ /���������Ŀ~     �  �~  ����������\ /         \               ~          ~     �
ECHO    �       /    ~     /�       ~   �     ~�~ �   �  \__�    �\ ~     ~  \                     ~         �
ECHO    �    ~~/ ~  ~     / �  ~ ~      �      ~      � ~/  �    � \          \                ~             �
ECHO    �     �\         /  �           �             �        ~ �  \         /�                        ~ ~  �
ECHO    �     �  \      /   �           � ~~   ~     ~�   ~    ~ �   \      /  �  ~   ~         ~            �
ECHO    �     �~   \   /    �      ~  ~ �        ~   �          �    \   /    �~   ~                        �
ECHO    �    ~�      \/  /� �           �~     �      �          \ �\~ \/      �                             �
ECHO    �     �       �  ��/            �  ~  /�      �           \��  �       �       ~                     �
ECHO    � ~  ~�    ~  �  �/��������������     /��  ~  �������������\�  � ~     �                        ~    �
ECHO    �      \      �  /�������������Ŀ  \__���     ��������������\  �  ~   /     ~                        �
ECHO    �        \    � /          ~    �  /  �    ~  �              \ �    /    ~                           �
ECHO    �          \  �/              ~ �             �     ~  ~      \�  /     ~~            ~     ~      ~ �
ECHO    �      ~     \/      ~         ~�       ~     �                \/                                    �
ECHO    �     ~                  ~  ~  ~�             �                             ~                        �
ECHO    �                ~            ~ �             �                                      ~~              �
ECHO    �                ~              �             �           ~                     ~                    �
ECHO    �        ~                ~     �             �           ~          ~~  ~           ~               �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE109TEXT
ECHO     %LASTBOSSNAME%: SHUT UP OLD MAN^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE110IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                            ~����~   ~\��/ ~        �\          \      ~      ~               ~ ~~  �
ECHO    �           ~            ~~  ~����~   ~���� ~        � \       ~  \            ~             ~ ~  ~  �
ECHO    �   ~  ~  ~ _  ~~            ~����~    ��ܳ          �  \         /�                  ~             ~�
ECHO    �         /~ \  /  ~/\ _     ~����~ � ������         �   \      /  �     ~                        ~  �
ECHO    �  ~      �    �  \     �    ~~~~~~ �ʹ uu ����      �~   \~  /    �   ~       ~ ~       ~           �
ECHO    �         � /\   \/  /� �             � ~~ �         � �\  \/ ~ /\ �                                 �
ECHO    �         �/ ~ \  �  ��/         ~    � ~~ �          \�� ~�  /   \�               ~                 �
ECHO    �         /    ~~\�  �/��������������������������������\�  �/    ~ \    ~~~   ~            ~         �
ECHO    �     ~  /         \ /���������Ŀ      �  �   ����������\~/~        \                        ~  ~    �
ECHO    �       / ~        /�           � ~    �  �   �  \__�    �\          \                ~              �
ECHO    �      /          / �       ~   �             �  /  �    �~\          \                              �
ECHO    �     �\        ~/  �           �~~    ~      �          �  \         /�                             �
ECHO    �     �  \      /   �    ~      �          ~  � ~        �   \      /  �   ~                         �
ECHO    �     �    \   /    �           �            �          �    \   / ~  �           ~      ~          �
ECHO    �     �      \/~ /� �    ~      �  ~   �      �          \ �\  \/      �   ~                         �
ECHO    �     � ~     �  ��/       ~    �     /�      �           \��  �       �                             �
ECHO    �     �       �  �/��������������    ~/��     �������������\�  �      ~�~  ~    ~                ~~  �
ECHO    �      \      �  /�������������Ŀ  \__���     ��������������\  �      /        ~        ~            �
ECHO    �      ~ \    � /               �  /  �       �            ~ \ �    /                      ~         �
ECHO    �    ~     \  �/    ~           �             �             ~ \�  /                            ~     �
ECHO    �            \/                 �    ~    ~   �                \/  ~~ ~~       ~         ~           �
ECHO    �                ~              �~~           �           ~                                    ~    ~�
ECHO    �                       ~   ~   �  ~  ~       �               ~                                      �
ECHO    �    ~~                         �             �                                 ~      ~             �
ECHO    �       ~               ~     ~ �   ~ ~       �                 ~    ~                               �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE110TEXT
ECHO     %UNCLENAME%: I'm 43^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE111IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                      ~     ~����~~   \��/          �\         ~\        ~                 ~        �
ECHO    �               ~ ~  ~   ~   ~����~    ����   ~      � \  ~  ~    \     ~                      ~   ~ �
ECHO    �           _               ~~����~    ��ܳ          �  \         /�  ~                ~           ~ �
ECHO    �         /  \  /   /\ _~    ~����~ � ������         �   \      /  �                                 �
ECHO    �    ~    �    �  \     �    ~~~~~~ �ʹ uu ���   ~   �    \   /    �   ~~                          ~ �
ECHO    �         �~/\   \/  /� �~        ~   � ~~ � ~ � ~   � �\  \/   /\ �              ~                  �
ECHO    �  ~      �/   \  �  ��/              � ~~ �          \��  �  /   \�   ~                ~            �
ECHO    �       ~ /      \�  �/��������������������������������\�  �/      \                      ~          �
ECHO    � ~    ~ /         \ /���������Ŀ      �  �   ����������\ /      ~  \         ~   ~         ~        �
ECHO    �       /          /�    ~~     �      �  �   � ~\__�    �\          \                               �
ECHO    �      /   ~      / �~          �             �  /  �    � \     ~    \ ~   ~                        �
ECHO    � ~~  �\ ~   ~~  /  � ~      ~  �            ~� ~   ~    �  \         /�                             �
ECHO    �     �  \ ~    /   � ~         �             �          �   \~     /  �                            ~�
ECHO    �     �    \  ~/ ~  �          ~�            �  ~~      �    \   /    �       ~ ~                   �
ECHO    �     �    ~ \/  /� �          ~�     ~�   ~  �          \~�\  \/      �   ~        ~                �
ECHO    �     � ~     �  ��/         ~  �     /�      �        ~  \��  �       �                 ~ ~    ~   ~�
ECHO    �     �      ~�  �/��������������     /��     �������������\�  � ~~  ~ �           ~               ~ �
ECHO    �      \      �  /�������������Ŀ ~\__���     ��������������\~ �      /        ~     ~               �
ECHO    �        \    � /  ~            �  /~ �       �            ~ \ �    /     ~~    ~      ~          ~  �
ECHO    �          \  �/    ~       ~   �         ~   �               \�  /          ~               ~       �
ECHO    �      ~    ~\/           ~     �  ~          �   ~         ~  \/  ~     ~            ~              �
ECHO    �   ~~         ~                �   ~~        �   ~            ~     ~               ~               �
ECHO    �              ~  ~             �             �    ~                                   ~        ~    �
ECHO    �   ~    ~ ~        ~  ~  ~     �             �                                                      �
ECHO    �                          ~   ~�             �~     ~                                  ~      ~     �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE111TEXT
SET TEMPPATH=%MUSICPATH%\Bullet
SET FILE=Bullet.mp3
CALL "%MUSICPATH%\soundeffect.bat"
ECHO     %LASTBOSSNAME%: YOU'RE DEAD^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE112IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �      ~    ~               ~~����~ ~  \��/    ~     �\          \                                   �
ECHO    �       ~             ~      ~����~    ����          �~\          \                                  �
ECHO    �           _        ~       ~����~    ��ܳ          �  \~ ~      /�                ~                �
ECHO    �  ~   ~  /  \  /   /\ _ ~  ~~����~ � ������         �   \  ~   /  �     ~                  ~      ~ �
ECHO    �         �    �  \     �    ~~~~~~ �ʹ uu ���       �  ~ \   /    �      ~                   ~   ~  �
ECHO    �         � /\   \/  /� �             � ~~ �   ~     � �\  \/   /\ �                           ~     �
ECHO    �         �/ ~ \  �  ��/         ~   ~� ~~ �          \��  �  /   \� ~  ~~                  ~        �
ECHO    �    ~    /      \�  �/��������������������������������\�  �/      \~  ~                             �
ECHO    � ~  ~   /     ~   \~/���������Ŀ   ~  �  �   ����������\ /         \  ~          ~   ~              �
ECHO    � ~     /~         /�      ~    �      �  �~  �  \__�  ~ �\          \               ~      ~        �
ECHO    �      /          / �           �      ~      �  /  �~   � \          \                 ~            �
ECHO    �     �\         /  �~   ~      �             �          �  \         /�       ~        ~          ~ �
ECHO    �     �  \      /  ~�        ~  �             �      ~   �   \~     /  �                             �
ECHO    �     �    \   /    �      ~    �     ~      �       ~~ �    \   /    �         ~    ~              �
ECHO    �     �   ~  \/  /� �     ~ ~   �     ~�      �          \ �\  \/     ~�               ~   ~       ~ �
ECHO    � ~   �       �  ��/            �    ~/�    ~ �   ~    ~  \��~ �       �            ~                �
ECHO    � ~   �       �  �/��������������     /��   ~ �������������\�  � ~ ~   �      ~       ~           ~  �
ECHO    �      \    ~ �  /�������������Ŀ  \__���     ��������������\  �      /                    ~         �
ECHO    �        \    � /           ~~ ~�  / ~�       �  ~  ~ ~   ~  \ �  ~ /   ~            ~               �
ECHO    �          \  �/          ~   ~ �             �               \�  /               ~~                 �
ECHO    �            \/         ~       �    ~  ~     � ~              \/             ~            ~         �
ECHO    �         ~ ~      ~   ~      ~ �             �         ~  ~               ~     ~                   �
ECHO    �  ~                ~  ~        �             �                             ~         ~         ~    �
ECHO    �    ~     ~  ~    ~            �       ~     �           ~                                          �
ECHO    �       ~       ~               �           ~ �  ~                               ~          ~        �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE112TEXT
ECHO     %LASTBOSSNAME%: YOU'RE DEAD^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE113IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                            ~����~    \��/          �\~  ~      \            ~ ~                    �
ECHO    �              ~             ~����~    ����          � \  ~~      \    ~  ~   ~    ~               ~ �
ECHO    �  ~   ~    _               ~~����~    ��ܳ          �  \  ~      /� ~                 ~      ~      �
ECHO    �         /  \  /   /\~_   ~ ~����~ � ������         �   \      /  �  ~                        ~~   ~�
ECHO    �         �   ~�  \     �    ~~~~~~ �ʹ uu ���       �    \   /    �  ~                   ~         ~�
ECHO    �         � /\   \/  /� � ~  ~       ~� ~~~�         � �\  \/ ~ /\ �                                 �
ECHO    �         �/   \  �~ ��/            ~ � ~~ �     ~ ~  \��  � ~/  ~\�                   ~      ~      �
ECHO    �         /      \�  �/��������������������������������\�  �/     ~\~                      ~         �
ECHO    �    ~ ~ /         \ /���������Ŀ      �  �~  ����������\~/       ~ \                            ~  ~�
ECHO    �       /        ~ /�           �      �  �   �  \_��    �\          \                 ~   ~         �
ECHO    �  ~   /          / �       ~   �     ~       �  /  � ~  � \  ~      ~\                        ~     �
ECHO    �     �\~        /  �~~         �     ~   ~   �~~  ~    ~�  \         /�                    ~    ~  ~�
ECHO    �     �  \    ~ /   �           �             �        ~ � ~ \      /  �~                        ~   �
ECHO    �  ~  �    \   /    �       ~  ~�            �          �    \   /    �            ~                �
ECHO    �     �      \/  /�~�          ~�      �      �          \ �\~ \/      �                           ~~�
ECHO    �     � ~   ~ �  ��/      ~     �     /�      �       ~   \��~ �     ~ �                             �
ECHO    �     �       �  �/��������������     /��   ~ �������������\�  �       �                             �
ECHO    �      \      �  /�������������Ŀ  \__���     ��������������\  �   ~  /      ~      ~              ~ �
ECHO    �       ~\    � /               �  /  �       �              \ �    /    ~              ~            �
ECHO    � ~        \  �/          ~     �    ~   ~    �         ~     \�  /         ~                        �
ECHO    �            \/  ~~~      ~     �             �                \/~~      ~                           �
ECHO    �     ~           ~ ~           �             �  ~           ~                  ~     ~              �
ECHO    �      ~                     ~  �             �                       ~~           ~                 �
ECHO    �     ~       ~                 �             �    ~  ~                             ~          ~     �
ECHO    �           ~     ~   ~~        �  ~          � ~                                              ~     �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE113TEXT
ECHO     %LASTBOSSNAME%: YOU'RE DEAD^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE114IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                     ~      ~����~    \��/  ~       �\~         \                     ~             �
ECHO    �         ~ ~                ~����~    ����          � \          \   ~          ~     ~       ~  ~  �
ECHO    �           _                ~����~    ��ܳ          �  \       ~ /�         ~                   ~   �
ECHO    �     ~  ~/  \  /   /\ _     ~����~ � ������         �   \      /  �         ~ ~                     �
ECHO    �         � ~  �  \     �    ~~~~~~ �ʹ uu ���       �    \   /    �             ~                   �
ECHO    �         � /\   \/  /� �         ~   � ~~ �  ~      � �\  \/   /\~�              ~                  �
ECHO    �      ~~ �/   \  �  ��/              � ~~ �          \��  �  /   \�        ~       ~               ~�
ECHO    �    ~    /      \�  �/��������������������������������\�  �/~     \                            ~    �
ECHO    �        /         \~/���������Ŀ      � ~� ~ ����������\ /         \      ~ ~               ~       �
ECHO    �       /          /� ~  ~     ~�      �~ �   � ~\_~�~   �\          \                  ~  ~         �
ECHO    �      /          / �        ~  �         ~   �~ /~ �~   � \    ~    ~\                   ~          �
ECHO    �    ~�\         /  �           �             � ~  ~~    �  \         /�~   ~                        �
ECHO    � ~   �  \      /  ~�          ~�             �          �   \      /  �                             �
ECHO    �   ~ �    \   /~   �           �      ^^!    ~ �          �    \   /    �                             �
ECHO    �   ~ �      \/  /� �  ~        �      � ~    �          \ �\  \/      �    ~~      ~~               �
ECHO    �     � ~     �  ��/            �     /�      �     ~     \��  �~ ~    �          ~   ~    ~~     ~  �
ECHO    �     �   ~   �  �/��������������    ~/��     �������������\�  �       �        ~~               ~   �
ECHO    �      \      �  /�������������Ŀ  \__���     ��������������\  �~     /             ~           ~    �
ECHO    �        \    � /         ~     �  /  �       �              \~�    /             ~~~             ~  �
ECHO    �        ~ \ ~�/                �   ~         �       ~       \�  /                   ~              �
ECHO    �    ~       \/~ ~          ~   � ~           �         ~  ~   \/    ~                  ~            �
ECHO    �             ~        ~  ~  ~  �             �                                           ~          �
ECHO    �                       ~       �             �    ~~       ~ ~                     ~     ~          �
ECHO    �       ~          ~            �             �        ~            ~                                �
ECHO    �  ~        ~                   �      ~   ~  �                                ~                     �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE114TEXT
ECHO     %PLAYERNAME%: UNCLE^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE115IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �          ~                 ~����~  ~ \��/          �\  ~      ~\                                   �
ECHO    �                   ~   ~    ~����~    ����~      ~  � \         ~\~                         ~       �
ECHO    �    ~      _     ~~         ~����~    ��ܳ  ~       �  \         /�  ~                ~   ~   ~     �
ECHO    �         /  \  /   /\ _     ~����~ � ������         �   \      /  �       ~                         �
ECHO    �   ~     �    �~ \  ~~ �    ~~~~~~ �ʹ uu ����      �    \  ~/    �                          ~  ~   �
ECHO    �         � /\  ~\/  /� � ~     ~ ~   � ~~ �         � �\~ \/   /\ � ~                               �
ECHO    �         �/   \  �  ��/        ~   ~ � ~~ �          \�� ~�  /   \�                        ~     ~ ~�
ECHO    �        ~/      \�  �/��������������������������������\�  �/      \  ~                ~~            �
ECHO    �        /         \ /���������Ŀ      �  �~  ����������\ /         \                               ~�
ECHO    �       /          /�           �      �  �   �  \__�    �\          \             ~               ~ �
ECHO    �      /   ~      / �    ~      �         ~   �~ /  �~   � \          \                 ~            �
ECHO    �     �\     ~   /  �~     ~    �     ~^^!~~    �  ~       �  \~  ~     /�          ~~       ~        ~�
ECHO    �     �~ \      /   �  ~        �    ~ �    ~ �          �   \      /  �    ~           ~            �
ECHO    �     �    \   /    �   ~ ~   ~ �     ���     �          �    \~  /    �    ~   ~            ~  ~    �
ECHO    �   ~ �   ~  \/  /� �           � ~    �      �          \ �\  \/   ~  �~ ~~             ~           �
ECHO    �     �    ~  �  ��/          ~ �     / \     �           \��  �   ~   �                       ~     �
ECHO    �     �       �  �/��������������             �������������\�  �     ~ �      ~    ~                 �
ECHO    �      \      �  /�������������Ŀ  \__�       ��������������\~ �      /                 ~            �
ECHO    �       ~\    � /               �  /  �       �              \ �    /      ~                  ~~     �
ECHO    �     ~    \  �/                �             �               \�  /        ~        ~ ~              �
ECHO    � ~  ~       \/                 �             �                \/  ~ ~    ~~    ~      ~       ~    ~�
ECHO    �                      ~        �     ~       �                       ~                              �
ECHO    �                               �             �        ~                                  ~ ~        �
ECHO    �                        ~      �             � ~                                 ~  ~   ~~    ~     �
ECHO    �    ~                          �~        ~   �     ~               ~   ~ ~                      ~   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE115TEXT
ECHO     %PLAYERNAME%: I'LL KILL YOU^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE116IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    � ~                  ~       ~����~    \��/          �\ ~        \       ~           ~               �
ECHO    �                     ~      ~����~    ����          � \~    ~ ~  \           ~                   ~  �
ECHO    �           _                ~����~    ��ܳ          �  \         /� ~ ~              ~              �
ECHO    �   ~  ~  /~ \  /   /\ _ ~   ~����~   ������~    ~   � ~ \      /  �             ~   ~               �
ECHO    �         �   ~�  \    ~�~   ~~~~~~ �ʹ uu �ͻ~      �    \   /    �                    ~           ~�
ECHO    � ~       � /\  ~\/  /� �           � � ~~ � �       �~�\ ~\/   /\ �~  ~  ~~                    ~    �
ECHO    �         �/~  \  �  ��/     ~    ~~  � ~~ �          \��  �  /   \�      ~~   ~                     �
ECHO    �  ~      /      \�  �/��������������������������������\�~ �/      \                                 �
ECHO    � ~      /    ~    \ /���������Ŀ  ~   �  �   ����������\ /  ~    ~ \          ~   ~                 �
ECHO    �       /~     ~   /�           �      �  �   �  \__�    �\    ~   ~~\                           ~   �
ECHO    �      /          / �~          �     ~ �     �  /  �    �~\          \    ~                ~        �
ECHO    �     �\         /  �           �      ���  ~ �    ~     �  \         /�               ~       ~     �
ECHO    �     � ~\      /   �           �       �   ~ �          �   \      /  � ~            ~~             �
ECHO    �     �    \  ~/    �        ~  �      / \    �   ~~     �    \   /    �~         ~     ~         ~  �
ECHO    �   ~ �   ~  \/  /� �~          �             �   ~      \ �\  \/      �~                ~           �
ECHO    �     � ~     �  ��/        ~   �  ~          �~   ~      \��  �       �  ~          ~               �
ECHO    � ~~  �~~ ~   �  �/��������������          ~  �������������\�  �~      �  ~ ~           ~            �
ECHO    �     ~\      �  /�������������Ŀ  \__�       ��������������\  �      /              ~               �
ECHO    �        \    � /   ~         ~ �  /  �       �~             \ � ~ ~/            ~      ~            �
ECHO    �  ~  ~    \  �/           ~    �  ~          � ~             \�  /             ~                 ~  �
ECHO    �      ~     \/ ~         ~     �  ~  ~       �                \/                   ~    ~           �
ECHO    �                ~             ~�~            �~                  ~ ~          ~  ~                  �
ECHO    �  ~                            �  ~  ~       �    ~     ~                 ~     ~ ~        ~    ~   �
ECHO    �       ~  ~                    �             �      ~~          ~    ~                              �
ECHO    �              ~           ~    �           ~ �                                                      �
ECHO    ����������������������������������������������������������������������������������������������������ͼ

ECHO.
GOTO :EOF
:SCENE116TEXT
ECHO     %PLAYERNAME%: I'LL KILL YOU^^!
SET /a WAITTIME = %BASEWAITTIME% + 0
GOTO :EOF

:BATTLE
SET /a TUTORIALFIGHT = 1
SET /a ENEMYID = %RAGATAID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
GOTO :EOF













