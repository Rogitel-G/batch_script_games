SET /a SCENETOT = 8
SET /a SKIP = 0
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT% + 1
CLS
ECHO.
CALL :SCENE%COUNT%IMAGE
CALL :SCENE%COUNT%TEXT
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
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                  ���Ŀ                                                             �
ECHO    �                                  �  O�                                                             �
ECHO    �                                  �   �                                                             �
ECHO    �                                  �����                                                             �
ECHO    �                                 �����Ŀ                                                            �
ECHO    �                                 �     �                                                            �
ECHO    �                                 �     �                                                            �
ECHO    �                                 �   � �                                                            �
ECHO    �                                 �   � �                                                            �
ECHO    �                                 �   � �                                                            �
ECHO    �                                 �   � �                                                            �
ECHO    �                                 ���ĳ��                                                            �
ECHO    �                                  �   �                 ��������Ŀ                                  �
ECHO    �                                  �   �                 �        ����Ŀ                             �
ECHO    �                                  �   �         �������Ĵ�����   ��  ��                             �
ECHO    �                                  �   �         �������Ĵ        ô   �                             �
ECHO    �                                  �   �                 ���������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     %PLAYERNAME%: Wow, I actually won^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE2IMAGE
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
ECHO    �                                           ���Ŀ                                                    �
ECHO    �                                           �  O�                                                    �
ECHO    �                                           �   �                                                    �
ECHO    �                                           �����                                                    �
ECHO    �                                          �����Ŀ                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �   ������                                                �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �������       ��������Ŀ                                  �
ECHO    �                                            � �         �        ����Ŀ                             �
ECHO    �                                            � � �������Ĵ�����   ��  ��                             �
ECHO    �                                      ������� � �������Ĵ        ô   �                             �
ECHO    �                                        �������         ���������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %PLAYERNAME%: %FRIENDNAME%, wake up^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
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
ECHO    �                                           ���Ŀ                                                    �
ECHO    �                                           �  O�                                                    �
ECHO    �                                           �   �                                                    �
ECHO    �                                           �����                                                    �
ECHO    �                                          �����Ŀ                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �   ������                                                �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �������       ��������Ŀ                                  �
ECHO    �                                            � �         �        ����Ŀ                             �
ECHO    �                                            � � �������Ĵ�����   ��  O�                             �
ECHO    �                                      ������� � �������Ĵ        ô   �                             �
ECHO    �                                        �������         ���������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %FRIENDNAME%: Wh...what happened? Did I beat him?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE4IMAGE
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
ECHO    �                                           ���Ŀ                                                    �
ECHO    �                                           �  O�                                                    �
ECHO    �                                           �   �                                                    �
ECHO    �                                           �����                                                    �
ECHO    �                                          �����Ŀ                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �   ������                                                �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �������       ��������Ŀ                                  �
ECHO    �                                            � �         �        ����Ŀ                             �
ECHO    �                                            � � �������Ĵ�����   ��  O�                             �
ECHO    �                                      ������� � �������Ĵ        ô   �                             �
ECHO    �                                        �������         ���������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %PLAYERNAME%: Valiant effort, but no, I did.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE5IMAGE
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
ECHO    �                                           ���Ŀ                                                    �
ECHO    �                                           �  O�                                                    �
ECHO    �                                           �   �                                                    �
ECHO    �                                           �����                                                    �
ECHO    �                                          �����Ŀ                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �   ������                                                �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �������       ��������Ŀ                                  �
ECHO    �                                            � �         �        ����Ŀ                             �
ECHO    �                                            � � �������Ĵ�����   ��  O�                             �
ECHO    �                                      ������� � �������Ĵ        ô   �                             �
ECHO    �                                        �������         ���������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %FRIENDNAME%: You killed him?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
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
ECHO    �                                           ���Ŀ                                                    �
ECHO    �                                           �  O�                                                    �
ECHO    �                                           �   �                                                    �
ECHO    �                                           �����                                                    �
ECHO    �                                          �����Ŀ                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �   ������                                                �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �������       ��������Ŀ                                  �
ECHO    �                                            � �         �        ����Ŀ                             �
ECHO    �                                            � � �������Ĵ�����   ��  O�                             �
ECHO    �                                      ������� � �������Ĵ        ô   �                             �
ECHO    �                                        �������         ���������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %PLAYERNAME%: Yup, totally dead.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE7IMAGE
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
ECHO    �                                           ���Ŀ                                                    �
ECHO    �                                           �  O�                                                    �
ECHO    �                                           �   �                                                    �
ECHO    �                                           �����                                                    �
ECHO    �                                          �����Ŀ                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �   ������                                                �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �������       ��������Ŀ                                  �
ECHO    �                                            � �         �        ����Ŀ                             �
ECHO    �                                            � � �������Ĵ�����   ��  O�                             �
ECHO    �                                      ������� � �������Ĵ        ô   �                             �
ECHO    �                                        �������         ���������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %FRIENDNAME%: Nice work. I'm impressed and everything but wasn't he the only person...thing who knows 
ECHO     where our families and friends are and whether they're actually still alive or not?
SET /a WAITTIME = %BASEWAITTIME% + 7
GOTO :EOF

:SCENE8IMAGE
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
ECHO    �                                           ���Ŀ                                                    �
ECHO    �                                           �  O�                                                    �
ECHO    �                                           �   �                                                    �
ECHO    �                                           �����                                                    �
ECHO    �                                          �����Ŀ                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �   ������                                                �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �     �                                                   �
ECHO    �                                          �������       ��������Ŀ                                  �
ECHO    �                                            � �         �        ����Ŀ                             �
ECHO    �                                            � � �������Ĵ�����   ��  O�                             �
ECHO    �                                      ������� � �������Ĵ        ô   �                             �
ECHO    �                                        �������         ���������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: Erm...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF
