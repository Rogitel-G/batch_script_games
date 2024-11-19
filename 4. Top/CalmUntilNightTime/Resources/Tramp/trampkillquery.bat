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
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          ���Ŀ          �                                                                          �
ECHO    �          �  O�          �                                                                          �
ECHO    �          �   �          �                                                                          �
ECHO    �          �����          �                                                                          �
ECHO    �         ��� �Ŀ         �                                                                          �
ECHO    �         �     �         �                                                                          �
ECHO    �         �   � �         �                                                                          �
ECHO    �         �   � �         �                                          ~                               �
ECHO    �         �   � �         �                               ~    ~                                     �
ECHO    �         �   � �         �                        ~   ~      ~    ~    ~                            �
ECHO    �         �   � �         �                           ���Ŀ�����������Ŀ                             �
ECHO    �         ���ĳ��         �                         ~ �   ��           �  ~                          �
ECHO    �          �   �          �                           �O  ڿ           �      ~                      �
ECHO    �          �   �          �                           ������  �        �  ~                          �
ECHO    �          �   �          �                                �������������                             �
ECHO    �          �   �          �                            ~      �      ������   ~                      �
ECHO    �          �   �          �                                   �      �����                           �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPKILL1
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                ���Ŀ    �                                                                          �
ECHO    �                �  O�    �                                                                          �
ECHO    �                �   �    �                                                                          �
ECHO    �                �����    �                                                                          �
ECHO    �               ��� �Ŀ   �                                                                          �
ECHO    �               �     �   �                                                                          �
ECHO    �               �  ��������                                                                          �
ECHO    �               �     �   �                                          ~                               �
ECHO    �               �     �   �                               ~    ~                                     �
ECHO    �               �     �   �                        ~   ~      ~    ~    ~                            �
ECHO    �               �     �   �                           ���Ŀ�����������Ŀ                             �
ECHO    �               �������   �                         ~ �   ��           �  ~                          �
ECHO    �                 �\      �                           �O  ڿ           �      ~                      �
ECHO    �                 � \     �                           ������  �        �  ~                          �
ECHO    �                 �  \    �                                �������������                             �
ECHO    �               ���   \   �                            ~      �      ������   ~                      �
ECHO    �                      \  �                                   �      �����                           �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPKILL2
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         � ���Ŀ                                                                    �
ECHO    �                         � �  O�                                                                    �
ECHO    �                         � �   �                                                                    �
ECHO    �                         � �����                                                                    �
ECHO    �                         ���� �Ŀ                                                                   �
ECHO    �                         ��     �                                                                   �
ECHO    �                         ��  ��������                                                               �
ECHO    �                         ��     �                                   ~                               �
ECHO    �                         ��     �                        ~    ~                                     �
ECHO    �                         ��     �                 ~   ~      ~    ~    ~                            �
ECHO    �                         ��     �                    ���Ŀ�����������Ŀ                             �
ECHO    �                         ��������                  ~ �   ��           �  ~                          �
ECHO    �                         �  �\                       �O  ڿ           �      ~                      �
ECHO    �                         �  � \                      ������  �        �  ~                          �
ECHO    �                         �  �  \                          �������������                             �
ECHO    �                         ����   \                     ~      �      ������   ~                      �
ECHO    �                         �       \                           �      �����                           �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPKILL3
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                ���Ŀ                                                   �
ECHO    �                         �                �^> ^<�                                                     �
ECHO    �                         �                � o �                                                     �
ECHO    �                         �                �����                                                     �
ECHO    �                         �               �����Ŀ X                                                  �
ECHO    �                         �               �     � �                                                  �
ECHO    �                         �               �    ����                                                  �
ECHO    �                         �               �     �                                                    �
ECHO    �                         �               �     �                                                    �
ECHO    �                         �               �     �                                                    �
ECHO    �                         �               �     �                    ~                               �
ECHO    �                         �               �������         ~    ~                                     �
ECHO    �                         �                 \   \  ~   ~      ~    ~    ~                            �
ECHO    �                         �                  \    \   ���Ŀ�����������Ŀ                             �
ECHO    �                         �                   \     \ �   ��           �  ~                          �
ECHO    �                         �                           \V  ڿ           �      ~                      �
ECHO    �                         �                           ������  �        �  ~                          �
ECHO    �                         �                                �������������                             �
ECHO    �                         �                            ~      �      ������   ~                      �
ECHO    �                         �                                   �      �����                           �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPKILLEYE
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �     ���Ŀ                                                                �
ECHO    �                         �     �  O�                                                                �
ECHO    �                         �     �   �                                                                �
ECHO    �                         �     �����   O                                                            �
ECHO    �                         �    ��� �Ŀ  �                                                            �
ECHO    �                         �    �     �  �                                                            �
ECHO    �                         �    �   ������                                                            �
ECHO    �                         �    �     �                                                               �
ECHO    �                         �    �     �                                                               �
ECHO    �                         �    �     �                                                               �
ECHO    �                         �    �     �                                                               �
ECHO    �                         �    �������                                                               �
ECHO    �                         �     �   �                 ���Ŀ�����������Ŀ                             �
ECHO    �                         �     �   �                 �   ��           �                             �
ECHO    �                         �     �   �                 �X  ڿ           ���������                     �
ECHO    �                         �     �   �                 ������  �        ���������                     �
ECHO    �                         �     �   �                      �������������                             �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPALIVE1
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          ���Ŀ          �                                                                          �
ECHO    �          �  O�          �                                                                          �
ECHO    �          �   �          �                                                                          �
ECHO    �          �����          �                                                                          �
ECHO    �         ��� �Ŀ         �                                                                          �
ECHO    �         �     �         �                                                                          �
ECHO    �         �   � �         �                                                                          �
ECHO    �         �   � �         �                                          ~                               �
ECHO    �         �   � �         �                               ~    ~                                     �
ECHO    �         �   � �         �                        ~   ~      ~    ~    ~                            �
ECHO    �         �   � �         �                           ���Ŀ�����������Ŀ                             �
ECHO    �         ���ĳ��         �                         ~ �O  ��           �  ~                          �
ECHO    �          �   �          �                           �   ڿ           �      ~                      �
ECHO    �          �   �          �                           ����ٳ  �        �  ~                          �
ECHO    �          �   �          �                                �������������                             �
ECHO    �          �   �          �                            ~      �      ������   ~                      �
ECHO    �          �   �          �                                   �      �����                           �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPALIVE2
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          ���Ŀ          �          ���Ŀ                                                           �
ECHO    �          �  O�          �          �O  �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �����          �          �����                                                           �
ECHO    �         ��� �Ŀ         �         ��� �Ŀ                                                          �
ECHO    �         �     �         �         �     �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         �   � �         �         � �   �                                                          �
ECHO    �         ���ĳ��         �         �³����                                                          �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPALIVE3
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          ���Ŀ          �          ���Ŀ                                                           �
ECHO    �          �  O�          �          /^<  �                                                           �
ECHO    �          �   �          �         /�   �                                                           �
ECHO    �          �����          �        ( �����                                                           �
ECHO    �         ��� �Ŀ         �         \�� �Ŀ                                                          �
ECHO    �         �     �         �         �\    �                                                          �
ECHO    �         �   � �         �         � \   �                                                          �
ECHO    �         �   � �         �         �     �                                                          �
ECHO    �         �   � �         �         �     �                                                          �
ECHO    �         �   � �         �         �     �                                                          �
ECHO    �         �   � �         �         �     �                                                          �
ECHO    �         ���ĳ��         �         �������                                                          �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    �          �   �          �          �   �                                                           �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPALIVE4
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          ���Ŀ          �       ���Ŀ                                                              �
ECHO    �          �  O�          �       �X  �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �����          �       �����                                                              �
ECHO    �         ��� �Ŀ         �      ��� �Ŀ                                                             �
ECHO    �         �     �         �      �     �                                                             �
ECHO    �         �   � �         � O�������   �                                                             �
ECHO    �         �   � �         �      �     �                                                             �
ECHO    �         �   � �         �      �     �                                                             �
ECHO    �         �   � �         �      �     �                                                             �
ECHO    �         �   � �         �      �     �                                                             �
ECHO    �         ���ĳ��         �      �������                                                             �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPALIVE5
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �             ���Ŀ       �       ���Ŀ                                                              �
ECHO    �             �  O�       �       �X  �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �����       �       �����                                                              �
ECHO    �            ��� �Ŀ      �      ��� �Ŀ                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �   �������O � ��������   �                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �     �      �      �     �                                                             �
ECHO    �            �������      �      �������                                                             �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    �             �   �       �       �   �                                                              �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPALIVE6
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �          ���Ŀ          �       ���Ŀ                                                              �
ECHO    �          �  O�          �       �X  �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �����          �       �����                                                              �
ECHO    �         ��� �Ŀ         �      ��� �Ŀ                                                             �
ECHO    �         �     �         �      �     �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         �   � �         �      � �   �                                                             �
ECHO    �         ���ĳ��         �      �³����                                                             �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    �          �   �          �       �   �                                                              �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPLEAVE1
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �                         �                                                                          �
ECHO    �     ���Ŀ               �       ���Ŀ                                                              �
ECHO    �     �O  �               �       �X  �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �����               �       �����                                                              �
ECHO    �    ��� �Ŀ              �      ��� �Ŀ                                                             �
ECHO    �    �     �              �      �     �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    � �   �              �      � �   �                                                             �
ECHO    �    �³����              �      �³����                                                             �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    �     �   �               �       �   �                                                              �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPLEAVE2
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
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
ECHO    �                         �                        ������������Ŀ                                    �
ECHO    �                         �                        �            ����Ŀ                               �
ECHO    �                         �                   ����Ĵ ��������   ��  X�                               �
ECHO    �                         �                   ����Ĵ            ڿ   �                               �
ECHO    �                         �                        �������������������                               �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:TRAMPFACE
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                        �������������Ŀ                                             �
ECHO    �                                        �             �                                             �
ECHO    �                                        �   ڿ   \/   �                                             �
ECHO    �                                        �   ��   /\   �                                             �
ECHO    �                                        �             �                                             �
ECHO    �                                        �      �      �                                             �
ECHO    �                                        �             �                                             �
ECHO    �                                        �   �������   �                                             �
ECHO    �                                        ���������������                                             �
ECHO    �                                        ���������������                                             �
ECHO    �                                        �ı������������                                             �
ECHO    �                                             �   �                                                  �
ECHO    �                                     �������������������Ŀ                                          �
ECHO    �                                     �                   �                                          �
ECHO    �                                     �                   �                                          �
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