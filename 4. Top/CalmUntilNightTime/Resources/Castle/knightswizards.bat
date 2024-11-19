CALL "%MUSICPATH%\stopmusic.bat"
SET /a CASTLECUTSCENESEEN = 1
SET /a SCENETOT = 9
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
ECHO    �                                      �������������Ŀ                                               �
ECHO    �                                      �      �      �                                               �
ECHO    �                                      �      �      �                                               �
ECHO    �                                      �����۲���۲���                                               �
ECHO    �                                      �      �      �       /\                                      �
ECHO    �                                      � ���� � ���� �      /  \                                     �
ECHO    �                                      � ���� � ���� �      �  �                                     �
ECHO    �                                      � ���� � ���� �      � ��                                     �
ECHO    �                                      � ���� � ���� �      � ��                                     �
ECHO    �                                      ���Ŀ     �����      � ��                                     �
ECHO    �                   �\����������/� ���������     ������Ŀ   � ��                                     �
ECHO    �                   �            � �                    �   � ��                                     �
ECHO    �                   �      �     � �                    �   � ��                                     �
ECHO    �                   �      �     � �                    �   � ��                                     �
ECHO    �                   �   �������  � �          �         �   � ��                                     �
ECHO    �                   �      �     � �          �         �   � ��                                     �
ECHO    �                   �      �     � �       �������      �   � ��                                     �
ECHO    �                   �      �     � �          �         �   � ��                                     �
ECHO    �                   �      �     � �          �         �ɻ � �� ɻ                                  �
ECHO    �                    \     �    /  �          �         ���ͼ  �ͼ�                                  �
ECHO    �                     \        /   �          �         ���ͻ  ��ͼ                                  �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     Knight: We are the Knights of Nee^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE2IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                           /\                                                       �
ECHO    �                                          /  \                                                      �
ECHO    �                                         /    \                                                     �
ECHO    �                                        /      \                                                    �
ECHO    �                                       /        \                                                   �
ECHO    �                                      /          \                                                  �
ECHO    �                                 ____/____________\____                                             �
ECHO    �                                    �              �                                                �
ECHO    �                                    �    \    /    �                                                �
ECHO    �                                    �    O    O    �                                                �
ECHO    �                                    �              �        �                                       �
ECHO    �                                    �              �      \   /                                     �
ECHO    �                                    �    ������    �     _ ��� _                                    �
ECHO    �                                    �              �       ���                                      �
ECHO    �                                    ����Ŀ     �����     / � � \                                    �
ECHO    �                                     /����     ����\       � �                                      �
ECHO    �                                    /               \      � �                                      �
ECHO    �                                   /        �        \     � �                                      �
ECHO    �                                  /         �         \    � �                                      �
ECHO    �                                 �        �����        �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     Wizard: And we are the Wizards of w...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                           /\                                                       �
ECHO    �                                          /  \                                                      �
ECHO    �                                         /    \                                                     �
ECHO    �                                        /      \                                                    �
ECHO    �                                       /        \                                                   �
ECHO    �                                      /          \                                                  �
ECHO    �                                 ____/____________\____                                             �
ECHO    �                                    �              �                                                �
ECHO    �                                    �    �    �    �                                                �
ECHO    �                                    �    O    O    �                                                �
ECHO    �                                    �              �        �                                       �
ECHO    �                                    �              �      \   /                                     �
ECHO    �                                    �    ������    �     _ ��� _                                    �
ECHO    �                                    �              �       ���                                      �
ECHO    �                                    ����Ŀ     �����     / � � \                                    �
ECHO    �                                     /����     ����\       � �                                      �
ECHO    �                                    /               \      � �                                      �
ECHO    �                                   /        �        \     � �                                      �
ECHO    �                                  /         �         \    � �                                      �
ECHO    �                                 �        �����        �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     Wizard: Wazarath...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     �������������Ŀ                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     �����۲���۲���                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   �    \    /    �                   �
ECHO    �                     � ���� � ���� �      � ��                   �    O    O    �                   �
ECHO    �                     � ���� � ���� �      � ��                   �              �        �          �
ECHO    �                     ���Ŀ     �����      � ��                   �              �      \   /        �
ECHO    �  �\����������/� ���������     ������Ŀ   � ��                   �    ������    �     _ ��� _       �
ECHO    �  �            � �                    �   � ��                   �              �       ���         �
ECHO    �  �      �     � �                    �   � ��                   ����Ŀ     �����     / � � \       �
ECHO    �  �      �     � �                    �   � ��                    /����     ����\       � �         �
ECHO    �  �   �������  � �          �         �   � ��                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � ��                  /        �        \     � �         �
ECHO    �  �      �     � �       �������      �   � ��                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � ��                �        �����        �   � �         �
ECHO    �  �      �     � �          �         �ɻ � �� ɻ             �          �          �   � �         �
ECHO    �   \     �    /  �          �         ���ͼ  �ͼ�             �          �          �   � �         �
ECHO    �    \        /   �          �         ���ͻ  ��ͼ             �          �          �   � �         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     Both: And together we are...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE5IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     �������������Ŀ                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     �����۲���۲���                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   �    \    /    �                   �
ECHO    �                     � ���� � ���� �      � ��                   �    O    O    �                   �
ECHO    �                     � ���� � ���� �      � ��                   �              �        �          �
ECHO    �                     ���Ŀ     �����      � ��                   �              �      \   /        �
ECHO    �  �\����������/� ���������     ������Ŀ   � ��                   �    ������    �     _ ��� _       �
ECHO    �  �            � �                    �   � ��                   �              �       ���         �
ECHO    �  �      �     � �                    �   � ��                   ����Ŀ     �����     / � � \       �
ECHO    �  �      �     � �                    �   � ��                    /����     ����\       � �         �
ECHO    �  �   �������  � �          �         �   � ��                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � ��                  /        �        \     � �         �
ECHO    �  �      �     � �       �������      �   � ��                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � ��                �        �����        �   � �         �
ECHO    �  �      �     � �          �         �ɻ � �� ɻ             �          �          �   � �         �
ECHO    �   \     �    /  �          �         ���ͼ  �ͼ�             �          �          �   � �         �
ECHO    �    \        /   �          �         ���ͻ  ��ͼ             �          �          �   � �         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     Both: The Knights of Nee and the Wizards of Wazarath^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE6IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     �������������Ŀ                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     �����۲���۲���                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   �    \    /    �                   �
ECHO    �                     � ���� � ���� �      � ��                   �    O    O    �                   �
ECHO    �                     � ���� � ���� �      � ��                   �              �        �          �
ECHO    �                     ���Ŀ     �����      � ��                   �              �      \   /        �
ECHO    �  �\����������/� ���������     ������Ŀ   � ��                   �    ������    �     _ ��� _       �
ECHO    �  �            � �                    �   � ��                   �              �       ���         �
ECHO    �  �      �     � �                    �   � ��                   ����Ŀ     �����     / � � \       �
ECHO    �  �      �     � �                    �   � ��                    /����     ����\       � �         �
ECHO    �  �   �������  � �          �         �   � ��                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � ��                  /        �        \     � �         �
ECHO    �  �      �     � �       �������      �   � ��                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � ��                �        �����        �   � �         �
ECHO    �  �      �     � �          �         �ɻ � �� ɻ             �          �          �   � �         �
ECHO    �   \     �    /  �          �         ���ͼ  �ͼ�             �          �          �   � �         �
ECHO    �    \        /   �          �         ���ͻ  ��ͼ             �          �          �   � �         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     Knight: Defeat us to get access to better and better rewards from the chests
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE7IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     �������������Ŀ                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     �����۲���۲���                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   � /            �                   �
ECHO    �                     � ���� � ���� �      � ��                   � O            �                   �
ECHO    �                     � ���� � ���� �      � ��                   �              �        �          �
ECHO    �                     ���Ŀ     �����      � ��                   �              �      \   /        �
ECHO    �  �\����������/� ���������     ������Ŀ   � ��                   ����           �     _ ��� _       �
ECHO    �  �            � �                    �   � ��                   �              �       ���         �
ECHO    �  �      �     � �                    �   � ��                   ����Ŀ     �����     / � � \       �
ECHO    �  �      �     � �                    �   � ��                    /����     ����\       � �         �
ECHO    �  �   �������  � �          �         �   � ��                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � ��                  /        �        \     � �         �
ECHO    �  �      �     � �       �������      �   � ��                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � ��                �        �����        �   � �         �
ECHO    �  �      �     � �          �         �ɻ � �� ɻ             �          �          �   � �         �
ECHO    �   \     �    /  �          �         ���ͼ  �ͼ�             �          �          �   � �         �
ECHO    �    \        /   �          �         ���ͻ  ��ͼ             �          �          �   � �         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     Wizard: What the hell did you tell him that for^^!?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     �������������Ŀ                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     �����۲���۲���                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   � /            �                   �
ECHO    �                     � ���� � ���� �      � ��                   � O            �                   �
ECHO    �                     � ���� � ���� �      � ��                   �              �        �          �
ECHO    �                     ���Ŀ     �����      � ��                   �              �      \   /        �
ECHO    �  �\����������/� ���������     ������Ŀ   � ��                   ����           �     _ ��� _       �
ECHO    �  �            � �                    �   � ��                   �              �       ���         �
ECHO    �  �      �     � �                    �   � ��                   ����Ŀ     �����     / � � \       �
ECHO    �  �      �     � �                    �   � ��                    /����     ����\       � �         �
ECHO    �  �   �������  � �          �         �   � ��                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � ��                  /        �        \     � �         �
ECHO    �  �      �     � �       �������      �   � ��                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � ��                �        �����        �   � �         �
ECHO    �  �      �     � �          �         �ɻ � �� ɻ             �          �          �   � �         �
ECHO    �   \     �    /  �          �         ���ͼ  �ͼ�             �          �          �   � �         �
ECHO    �    \        /   �          �         ���ͻ  ��ͼ             �          �          �   � �         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     Knight: ...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE9IMAGE
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     �������������Ŀ                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     �����۲���۲���                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   �    \    /    �                   �
ECHO    �                     � ���� � ���� �      � ��                   �    O    O    �                   �
ECHO    �                     � ���� � ���� �      � ��                   �              �        �          �
ECHO    �                     ���Ŀ     �����      � ��                   �              �      \   /        �
ECHO    �  �\����������/� ���������     ������Ŀ   � ��                   �    ������    �     _ ��� _       �
ECHO    �  �            � �                    �   � ��                   �              �       ���         �
ECHO    �  �      �     � �                    �   � ��                   ����Ŀ     �����     / � � \       �
ECHO    �  �      �     � �                    �   � ��                    /����     ����\       � �         �
ECHO    �  �   �������  � �          �         �   � ��                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � ��                  /        �        \     � �         �
ECHO    �  �      �     � �       �������      �   � ��                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � ��                �        �����        �   � �         �
ECHO    �  �      �     � �          �         �ɻ � �� ɻ             �          �          �   � �         �
ECHO    �   \     �    /  �          �         ���ͼ  �ͼ�             �          �          �   � �         �
ECHO    �    \        /   �          �         ���ͻ  ��ͼ             �          �          �   � �         �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     Wizard: Idiot...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF
