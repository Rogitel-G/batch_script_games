SET TEMPPATH=%MUSICPATH%\Maps\Worldmap
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
SET /a LAKECAVEDISCOVERED = 1
SET /a SCENETOT = 3
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
	GOTO :EOF
)
IF %COUNT% LSS %SCENETOT% (
	GOTO :LOOPSTART
)
ECHO.
pause
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
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                 /�\  /�\ / \\ �\ /��
ECHO    �                                                                               /\/�\  /�\//��\\�\/ ��
ECHO    �                                                                              /��\�/ \ �/ /��\ �\ /��
ECHO    �                                                                             //��\\/��\� / ��  �/\ ��
ECHO    �                                                                              /�� //��\\   ��  /��\��
ECHO    �                                                                              /��\ /��\ //\\\ //��\\�
ECHO    �                                                                               �� / ��\\/� �\\/ ��\\�
ECHO    �                                                                               �/\\/�� //� �\\  ��  �
ECHO    �                                                                               /� �\ �   � � \  ��  �
ECHO    �                                                                              //� �\\  /\� �  //\\  �
ECHO    �                                    �~~�               ���Ŀ                  / � �\\ /\\\ �//� � \ �
ECHO    �                                    � O�               �O  �                  //� �\ /� �\  / � �\\ �
ECHO    �                                    �  �               �   �                  //� � //� �\\ //� �\  �
ECHO    �                                    ����               �����                //\\� � //� �\   /� �\\ �
ECHO    �                                   ����Ŀ             �����Ŀ              ///\\\ //\\� � //\\� �\\ �
ECHO    �                                   �    �             �     �              /�  �\ //\\� �///\\\\�   �
ECHO    �                                   �  � �             � �   �             //�  �////\\\\//�  �\\�   �
ECHO    �                                   �  � �             � �   �             / �  �//�  �\\//�  �\\    �
ECHO    �                                   �  � �             � �   �             //�  �//�  �\/\/�  �\\    �
ECHO    �                                   �  � �             � �   �             //�  �\/�  �\ //�  � \    �
ECHO    �                                   ��ĳ��             �³����             //�  ///�  �\\\/�  �\\\   �
ECHO    �                                    �  �               �   �              / �  �//�  �\\//�  �\\\   �
ECHO    �                                    �  �               �   �                �  �/ �  �\ / �  �\ \   �
ECHO    �                                    �  �               �   �                �  �  �  �    �  �      �
ECHO    �                                    �  �               �   �                �  �  �  �    �  �      �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     Old Man: What the hell do you think you're doing^^!? You can't go in there with all that mist.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE2IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                 /�\  /�\ / \\ �\ /��
ECHO    �                                                                               /\/�\  /�\//��\\�\/ ��
ECHO    �                                                                              /��\�/ \ �/ /��\ �\ /��
ECHO    �                                                                             //��\\/��\� / ��  �/\ ��
ECHO    �                                                                              /�� //��\\   ��  /��\��
ECHO    �                                                                              /��\ /��\ //\\\ //��\\�
ECHO    �                                                                               �� / ��\\/� �\\/ ��\\�
ECHO    �                                                                               �/\\/�� //� �\\  ��  �
ECHO    �                                                                               /� �\ �   � � \  ��  �
ECHO    �                                                                              //� �\\  /\� �  //\\  �
ECHO    �                                    �~~�               ���Ŀ                  / � �\\ /\\\ �//� � \ �
ECHO    �                                    � O�               �O  �                  //� �\ /� �\  / � �\\ �
ECHO    �                                    �  �               �   �                  //� � //� �\\ //� �\  �
ECHO    �                                    ����               �����                //\\� � //� �\   /� �\\ �
ECHO    �                                   ����Ŀ             �����Ŀ              ///\\\ //\\� � //\\� �\\ �
ECHO    �                                   �    �             �     �              /�  �\ //\\� �///\\\\�   �
ECHO    �                                   �  � �             � �   �             //�  �////\\\\//�  �\\�   �
ECHO    �                                   �  � �             � �   �             / �  �//�  �\\//�  �\\    �
ECHO    �                                   �  � �             � �   �             //�  �//�  �\/\/�  �\\    �
ECHO    �                                   �  � �             � �   �             //�  �\/�  �\ //�  � \    �
ECHO    �                                   ��ĳ��             �³����             //�  ///�  �\\\/�  �\\\   �
ECHO    �                                    �  �               �   �              / �  �//�  �\\//�  �\\\   �
ECHO    �                                    �  �               �   �                �  �/ �  �\ / �  �\ \   �
ECHO    �                                    �  �               �   �                �  �  �  �    �  �      �
ECHO    �                                    �  �               �   �                �  �  �  �    �  �      �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     Old Man: If you want to get through there you'll need to speak to the %SEAKINGNAME%.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE3IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                 /�\  /�\ / \\ �\ /��
ECHO    �                                                                               /\/�\  /�\//��\\�\/ ��
ECHO    �                                                                              /��\�/ \ �/ /��\ �\ /��
ECHO    �                                                                             //��\\/��\� / ��  �/\ ��
ECHO    �                                                                              /�� //��\\   ��  /��\��
ECHO    �                                                                              /��\ /��\ //\\\ //��\\�
ECHO    �                                                                               �� / ��\\/� �\\/ ��\\�
ECHO    �                                                                               �/\\/�� //� �\\  ��  �
ECHO    �                                                                               /� �\ �   � � \  ��  �
ECHO    �                                                                              //� �\\  /\� �  //\\  �
ECHO    �                                    �~~�               ���Ŀ                  / � �\\ /\\\ �//� � \ �
ECHO    �                                    � O�               �O  �                  //� �\ /� �\  / � �\\ �
ECHO    �                                    �  �               �   �                  //� � //� �\\ //� �\  �
ECHO    �                                    ����               �����                //\\� � //� �\   /� �\\ �
ECHO    �                                   ����Ŀ             �����Ŀ              ///\\\ //\\� � //\\� �\\ �
ECHO    �                                   �    �             �     �              /�  �\ //\\� �///\\\\�   �
ECHO    �                                   �  � �             � �   �             //�  �////\\\\//�  �\\�   �
ECHO    �                                   �  � �             � �   �             / �  �//�  �\\//�  �\\    �
ECHO    �                                   �  � �             � �   �             //�  �//�  �\/\/�  �\\    �
ECHO    �                                   �  � �             � �   �             //�  �\/�  �\ //�  � \    �
ECHO    �                                   ��ĳ��             �³����             //�  ///�  �\\\/�  �\\\   �
ECHO    �                                    �  �               �   �              / �  �//�  �\\//�  �\\\   �
ECHO    �                                    �  �               �   �                �  �/ �  �\ / �  �\ \   �
ECHO    �                                    �  �               �   �                �  �  �  �    �  �      �
ECHO    �                                    �  �               �   �                �  �  �  �    �  �      �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     Old Man: I'll tell you a secret. If you swim to the very bottom right of the lake, there's
ECHO              a hidden cave that will take you to the Kingdom of Seamen.
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF
