SET /a PORTALOPENED = 1
SET /a SCENETOT = 47
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
ECHO    ������������������������������������������������������������ͻ
ECHO    ��������������������������~~~~~~~~~~~~~~~~~~~~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~~~~~~~~~~~~~~~~~~~~����������������
ECHO    �������������������ͻ����������         ������������������ͻ�
ECHO    ������������        ����������� -�-      �����������        ��
ECHO    ������������  Shop  ����������� / \      �����������  Guru  ��
ECHO    ������������        ������                         �        ��
ECHO    ������������        ������                         �        ��
ECHO    �������������������ͼ�����                         ��������ͼ�
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������                    ��������ͻ�����     �����������
ECHO    �����������                    �        ������     �����������
ECHO    �����������                    � Temple ������     �����������
ECHO    ������         ����������������        �     ��������ͻ������
ECHO    ������       �� ����������������        �     �        �������
ECHO    ������       �\ �����������������������ͼ     �Teleport�������
ECHO    ���������ͻ������������������������������������  Pad   �������
ECHO    �� Forest �������������������������������������        �������
ECHO    ���������ͼ�������������������������������������������ͼ������
ECHO    ������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     %PLAYERNAME%: Dammit^^! Why won't this thing open^^!?
SET /a WAITTIME = %BASEWAITTIME% + 3
::Friend at position 1
GOTO :EOF

:SCENE2IMAGE
ECHO    ������������������������������������������������������������ͻ
ECHO    ��������������������������~~~~~~~~~~~~~~~~~~~~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~~~~~~~~~~~~~~~~~~~~����������������
ECHO    �������������������ͻ����������         ������������������ͻ�
ECHO    ������������        ����������� -�-      �����������        ��
ECHO    ������������  Shop  ����������� / \      �����������  Guru  ��
ECHO    ������������        ������                         �        ��
ECHO    ������������        ������                         �        ��
ECHO    �������������������ͼ�����                         ��������ͼ�
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������                   ��������ͻ�����     �����������
ECHO    �����������            ��      �        ������     �����������
ECHO    �����������           /)       � Temple ������     �����������
ECHO    ������          ����������������        �     ��������ͻ������
ECHO    ������          ����������������        �     �        �������
ECHO    ������          �����������������������ͼ     �Teleport�������
ECHO    ���������ͻ������������������������������������  Pad   �������
ECHO    �� Forest �������������������������������������        �������
ECHO    ���������ͼ�������������������������������������������ͼ������
ECHO    ������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %FRIENDNAME%: %PLAYERNAME%? Is that you?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ������������������������������������������������������������ͻ
ECHO    ��������������������������~~~~~~~~~~~~~~~~~~~~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~                  ~����������������
ECHO    ��������������������������~~~~~~~~~~~~~~~~~~~~����������������
ECHO    �������������������ͻ����������         ������������������ͻ�
ECHO    ������������        ����������� -�-      �����������        ��
ECHO    ������������  Shop  ����������� / \      �����������  Guru  ��
ECHO    ������������        ������                        �        ��
ECHO    ������������        ������  ��                     �        ��
ECHO    �������������������ͼ�����  �\                     ��������ͼ�
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������     ����������     ���������������     �����������
ECHO    �����������                    ��������ͻ�����     �����������
ECHO    �����������                    �        ������     �����������
ECHO    �����������                    � Temple ������     �����������
ECHO    ������          ����������������        �     ��������ͻ������
ECHO    ������          ����������������        �     �        �������
ECHO    ������          �����������������������ͼ     �Teleport�������
ECHO    ���������ͻ������������������������������������  Pad   �������
ECHO    �� Forest �������������������������������������        �������
ECHO    ���������ͼ�������������������������������������������ͼ������
ECHO    ������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %PLAYERNAME%: %FRIENDNAMECAP%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~      ^^!                              �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %FRIENDNAME%: My god am I glad to see you^^! You'd never believe what I've been through
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE5IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                          ?      ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %PLAYERNAME%: Town, Cave, Town, Casino, Castle, Mine, Town, Lake, Forest, Town?
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE6IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %FRIENDNAME%: ...Yes, but I had to...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE7IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %PLAYERNAME%: Fight the King of that underwater city like the one Jaja Binks comes from?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %FRIENDNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE9IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %FRIENDNAME%: Yea, but only because...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE10IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: Mist. Yea I know. You met %BANDITNAME% too.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE11IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~      ^^!                              �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �O  �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                �������   �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       ���ĳ��                                    �������                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE11TEXT
IF %EXPLICIT% EQU 1 (
	ECHO     %FRIENDNAME%: Would you just shut the fuck up^^!? This isn't how I imagined telling the tales of
) ELSE (
	ECHO     %FRIENDNAME%: Would you just shut up^^!? This isn't how I imagined telling the tales of
)
ECHO     my epic adventure.
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE12IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %PLAYERNAME%: The worst part was having to open the cave door with that tramp's eye
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE13IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~      ?                              �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %FRIENDNAME%: What?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE14IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %PLAYERNAME%: The tramp in the first town. His eye was disgusting. Only way to open the cave door though
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE15IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     %FRIENDNAME%: Did you not try "Open Sesame"?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE16IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                          ?      ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE16TEXT
ECHO     %PLAYERNAME%: ...What?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE17IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE17TEXT
ECHO     %FRIENDNAME%: You're kidding me.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE18IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE18TEXT
ECHO     %PLAYERNAME%: No, you're kidding me... Aren't you?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE19IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE19TEXT
IF %EXPLICIT% EQU 1 (
	ECHO     %FRIENDNAME%: You seriously went round shoving eyes on that piss soaked retina scanner
) ELSE (
	ECHO     %FRIENDNAME%: You seriously went round shoving eyes on that stinking retina scanner
)
ECHO     before trying "Open Sesame"?
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE20IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                          ^^!      ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE20TEXT
ECHO     %PLAYERNAME%: That's not obvious^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE21IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE21TEXT
ECHO     %FRIENDNAME%: How the hell did you get this far?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE22IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE22TEXT
ECHO     %PLAYERNAME%: Look, it doesn't matter. We can't get through this portal anyway. I've tried everything
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE23IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                                 ~                            ~                                     �
ECHO    �                        ���Ŀ    ~                            ~    ���Ŀ                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �   �    ~                            ~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE23TEXT
ECHO     %FRIENDNAME%: ...Open Sesame
SET /a WAITTIME = %BASEWAITTIME% + 1
CALL "%PORTALRESOURCEPATH%\portalopenscene.bat"
GOTO :EOF

:SCENE24IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �  O�    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   ��������                               � �   �                           �
ECHO    �                       �     �                                    � �   �                           �
ECHO    �                       �     �                                    � �   �                           �
ECHO    �                       �     �                                    � �   �                           �
ECHO    �                       �     �                                    � �   �                           �
ECHO    �                       �������                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE24TEXT
ECHO     %PLAYERNAME%: Not a word %FRIENDNAME%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE25IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE25TEXT
ECHO     %FRIENDNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE26IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE26TEXT
ECHO     %PLAYERNAME%: I thought we needed 4 magic relics or something to open the portal?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE27IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �   �    ~����������������������������~    �O  �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                               �    �     �                           �
ECHO    �                       �   � �                               ��������   �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       ���ĳ��                                    �������                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE27TEXT
ECHO     %FRIENDNAME%: Yea I know, weird. I've only got this 1
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE28IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                          ^^!      ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �  O�    ~����������������������������~    �O  �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE28TEXT
ECHO     %PLAYERNAME%: I've got the other 3 here^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE29IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE29TEXT
ECHO     %FRIENDNAME%: Oh cool, I wonder if it would have worked without them.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE30IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE30TEXT
ECHO     %PLAYERNAME%: I guess we'll never know...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE31IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE31TEXT
ECHO     %FRIENDNAME%: Right, enough chit-chat, should we go to hell?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE32IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                          ^^!      ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE32TEXT
ECHO     %PLAYERNAME%: Wait^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE33IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~      ?                              �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE33TEXT
ECHO     %FRIENDNAME%: What?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE34IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �  O�    ~����������������������������~    �   �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   ��������                               � �   �                           �
ECHO    �                       �     �                                    � �   �                           �
ECHO    �                       �     �                                    � �   �                           �
ECHO    �                       �     �                                    � �   �                           �
ECHO    �                       �     �                                    � �   �                           �
ECHO    �                       �������                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE34TEXT
ECHO     %PLAYERNAME%: Can I have the !KEYITEM%MAGSTONE4ID%NAME!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE35IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �  O�    ~����������������������������~    �O  �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                               �    �     �                           �
ECHO    �                       �   � �                               ��������   �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       ���ĳ��                                    �������                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE35TEXT
ECHO     %FRIENDNAME%: Yea sure
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE36IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �  O�    ~����������������������������~    �O  �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                               �    �     �                           �
ECHO    �                       �   � �                               ��������   �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       �   � �                                    �     �                           �
ECHO    �                       ���ĳ��                                    �������                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE36TEXT
ECHO     %PLAYERNAME%: I'll Roshambo you for it,
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE37IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~      ?                              �
ECHO    �                        ���Ŀ    ~����������������������������~    ���Ŀ                            �
ECHO    �                        �  O�    ~����������������������������~    �O  �                            �
ECHO    �                        �   �    ~����������������������������~    �   �                            �
ECHO    �                        �����    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                       �����Ŀ                                    �����Ŀ                           �
ECHO    �                       �     �                                    �     �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       �   � �                                    � �   �                           �
ECHO    �                       ���ĳ��                                    �³����                           �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE37TEXT
ECHO     %FRIENDNAME%: You'll what?
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE38IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                             ���Ŀ����������������������������~    ���Ŀ                            �
ECHO    �                             �  O�����������������������������~    �O  �                            �
ECHO    �                             �   �����������������������������~    �   �                            �
ECHO    �                             �����~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                            �����Ŀ                               �����Ŀ                           �
ECHO    �                            �     �                               �     �                           �
ECHO    �                            �   ��������                          � �   �                           �
ECHO    �                            �     �                               � �   �                           �
ECHO    �                            �     �                               � �   �                           �
ECHO    �                            �     �                               � �   �                           �
ECHO    �                            �     �                               � �   �                           �
ECHO    �                            �������                               �³����                           �
ECHO    �                              /\                                   �   �                            �
ECHO    �                             /  \                                  �   �                            �
ECHO    �                            /    )                                 �   �                            �
ECHO    �                           /    /                                  �   �                            �
ECHO    �                          /    /                                   �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE38TEXT
ECHO     %PLAYERNAME%: RO...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE39IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����Ŀ����������������������~    ���Ŀ                            �
ECHO    �                                 ~��  O�����������������������~    �O  �                            �
ECHO    �                                 ~��   �����������������������~    �   �                            �
ECHO    �                                 ~~�����~~~~~~~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                                  �����Ŀ                         �����Ŀ                           �
ECHO    �                                  �     �                         �     �                           �
ECHO    �                                  �   ��������                    � �   �                           �
ECHO    �                                  �     �                         � �   �                           �
ECHO    �                                  �     �                         � �   �                           �
ECHO    �                                  �     �                         � �   �                           �
ECHO    �                                  �     �                         � �   �                           �
ECHO    �                                  �������                         �³����                           �
ECHO    �                                    �\                             �   �                            �
ECHO    �                                    � \                            �   �                            �
ECHO    �                                    �  \                           �   �                            �
ECHO    �                                  ���   \                          �   �                            �
ECHO    �                                         \                         �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE39TEXT
ECHO     %FRIENDNAME%: Wait, I said yes
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE40IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������Ŀ����������������~    ���Ŀ                            �
ECHO    �                                 ~��������  O�����������������~    �O  �                            �
ECHO    �                                 ~��������   �����������������~    �   �                            �
ECHO    �                                 ~~~~~~~~�����~~~~~~~~~~~~~~~~~    �����                            �
ECHO    �                                        �����Ŀ                   �����Ŀ                           �
ECHO    �                                        �     �                   �     �                           �
ECHO    �                                        �   ��������              � �   �                           �
ECHO    �                                        �     �                   � �   �                           �
ECHO    �                                        �     �                   � �   �                           �
ECHO    �                                        �     �                   � �   �                           �
ECHO    �                                        �     �                   � �   �                           �
ECHO    �                                        �������                   �³����                           �
ECHO    �                                          /\                       �   �                            �
ECHO    �                                         /  \                      �   �                            �
ECHO    �                                        /    )                     �   �                            �
ECHO    �                                       /    /                      �   �                            �
ECHO    �                                      /    /                       �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE40TEXT
ECHO     %PLAYERNAME%: SHAM...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE41IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~������������������Ŀ��������~    ���Ŀ                            �
ECHO    �                                 ~����������������  O���������~    �O  �                            �
ECHO    �                                 ~����������������   ���������~    �   �                            �
ECHO    �                                 ~~~~~~~~~~~~~~~~�����~~~~~~~~~    �����                            �
ECHO    �                                                �����Ŀ           �����Ŀ                           �
ECHO    �                                                �     �           �     �                           �
ECHO    �                                                �   ��������      � �   �                           �
ECHO    �                                                �     �           � �   �                           �
ECHO    �                                                �     �           � �   �                           �
ECHO    �                                                �     �           � �   �                           �
ECHO    �                                                �     �           � �   �                           �
ECHO    �                                                �������           �³����                           �
ECHO    �                                                  �\               �   �                            �
ECHO    �                                                  � \              �   �                            �
ECHO    �                                                  �  \             �   �                            �
ECHO    �                                                ���   \            �   �                            �
ECHO    �                                                       \           �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE41TEXT
ECHO     %FRIENDNAME%: Just stop^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE42IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~������������������������Ŀ��~    ���Ŀ                            �
ECHO    �                                 ~����������������������  O���~    �^<  �                            �
ECHO    �                                 ~����������������������   ���~    ^>   �                            �
ECHO    �                                 ~~~~~~~~~~~~~~~~~~~~~~�����~~~    �����                            �
ECHO    �                                                      �����Ŀ     �����Ŀ                           �
ECHO    �                                                      �     �     �     �                           �
ECHO    �                                                      �   �������ĳ �   �                           �
ECHO    �                                                      �     �     � �   �                           �
ECHO    �                                                      �     �     � �   �                           �
ECHO    �                                                      �     �     � �   �                           �
ECHO    �                                                      �     �     � �   �                           �
ECHO    �                                                      �������     �³����                           �
ECHO    �                                                          �����������  �                            �
ECHO    �                                                          �        �   �                            �
ECHO    �                                                          �        �   �                            �
ECHO    �                                                          �        �   �                            �
ECHO    �                                                          �        �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE42TEXT
ECHO     %PLAYERNAME%: BO^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE43IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~������������������������Ŀ��~    ���Ŀ                            �
ECHO    �                                 ~����������������������  O���~    �^<  �                            �
ECHO    �                                 ~����������������������   ���~    ^>   �                            �
ECHO    �                                 ~~~~~~~~~~~~~~~~~~~~~~�����~~~    �����                            �
ECHO    �                                                      �����Ŀ     �����Ŀ                           �
ECHO    �                                                      �     �     �     �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      ���ĳ��     �³����                           �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE43TEXT
ECHO     %FRIENDNAME%: OWWW^^! WHAT THE HELL^^!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE44IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~������������������������Ŀ��~    ���Ŀ                            �
ECHO    �                                 ~����������������������  O���~    �^<  �                            �
ECHO    �                                 ~����������������������   ���~    ^>   �                            �
ECHO    �                                 ~~~~~~~~~~~~~~~~~~~~~~�����~~~    �����                            �
ECHO    �                                                      �����Ŀ     �����Ŀ                           �
ECHO    �                                                      �     �     �     �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      ���ĳ��     �³����                           �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE44TEXT
ECHO     %PLAYERNAME%: You brought this on yourself
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE45IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~      ^^!                              �
ECHO    �                                 ~������������������������Ŀ��~    ���Ŀ                            �
ECHO    �                                 ~����������������������  O���~    �O  �                            �
ECHO    �                                 ~����������������������   ���~    �   �                            �
ECHO    �                                 ~~~~~~~~~~~~~~~~~~~~~~�����~~~    �����                            �
ECHO    �                                                      �����Ŀ     �����Ŀ                           �
ECHO    �                                                      �     �     �     �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      ���ĳ��     �³����                           �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE45TEXT
ECHO     %FRIENDNAME%: NO I DIDN'T^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE46IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~������������������������Ŀ��~    ���Ŀ                            �
ECHO    �                                 ~����������������������  O���~    �O  �                            �
ECHO    �                                 ~����������������������   ���~    �   �                            �
ECHO    �                                 ~~~~~~~~~~~~~~~~~~~~~~�����~~~    �����                            �
ECHO    �                                                      �����Ŀ     �����Ŀ                           �
ECHO    �                                                      �     �     �     �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      ���ĳ��     �³����                           �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE46TEXT
ECHO     %PLAYERNAME%: Ok, let's go into hell now
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE47IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~����������������������������~                                     �
ECHO    �                                 ~������������������������Ŀ��~    ���Ŀ                            �
ECHO    �                                 ~����������������������  O���~    �O  �                            �
ECHO    �                                 ~����������������������   ���~    �   �                            �
ECHO    �                                 ~~~~~~~~~~~~~~~~~~~~~~�����~~~    �����                            �
ECHO    �                                                      �����Ŀ     �����Ŀ                           �
ECHO    �                                                      �     �     �     �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      �   � �     � �   �                           �
ECHO    �                                                      ���ĳ��     �³����                           �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    �                                                       �   �       �   �                            �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE47TEXT
ECHO     %FRIENDNAME%: You're a special kind of knobhead
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

