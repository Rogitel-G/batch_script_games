CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO %PRIESTNAME%: Okay, I'll just take him into the next room and perform the healing
ECHO           ritual into his gaping eye socket. We'll be done in a jiffy.
ECHO.
pause
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp2.bat"
ECHO. You hear a lot of moaning and groaning from the next room. It sounds like it's working^^!
CALL :WAITFORTHREE
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp2.bat"
ECHO. ...
CALL :WAITFORTWO
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
ECHO. %PRIESTNAME% and Tramp return from the other room.
ECHO.
CALL :WAITFORTWO
CALL "%TEMPLERESOURCEPATH%\templedisplaytramp.bat"
SET TEMPPATH=%MUSICPATH%\Chest
SET FILE=Chest.mp3
CALL "%MUSICPATH%\soundeffect.bat"
ECHO. The Tramp has been fully healed
ECHO.
pause
CALL :SCENE1
SET /a TRAMPQUESTACTIVE = 0
ECHO Tramp: You have saved my life, I'm eternally grateful^^!
ECHO.
CALL :WAITFORTHREE
CALL :SCENE1
ECHO Tramp: Here, let me teach you my tramp skill. It'll boost your stats significantly, but there's a price.
ECHO        Ask your friend %MENUNAME% for details. Thanks for all your help %PLAYERNAME%^^!
ECHO.
SET /a TRAMPSAVED = 1
pause
CALL :SCENE2
ECHO %MENUNAME%: I can't help but feel mean for what we've just done to that man...
ECHO.
CALL :WAITFORTHREE
CALL :SCENE2
ECHO %PLAYERNAME%: Shush %MENUNAME%^^! Christ, that was an ordeal. Let's go and see what's through this bloody cave.
ECHO.
pause
GOTO :EOF

:SCENE1
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                                                                    /                               �
ECHO    �                                                                   ��������������������������������ĺ
ECHO    �                                                                   �                                �
ECHO    �          ���Ŀ                               ���Ŀ                �                                �
ECHO    �          �  O�                               �O  �                �                                �
ECHO    �          �   �                               �   �                �    �                    �      �
ECHO    �          �����                               �����                �   ���                  ���     �
ECHO    �         ��� �Ŀ                             ��� �Ŀ               �    �                    �      �
ECHO    �         �     �                             �     �               �    �                    �      �
ECHO    �         �   � �                             � �   �               �                                �
ECHO    �         �   � �                             � �   �               �                                �
ECHO    �         �   � �                             � �   �               �          �����Ŀ               �
ECHO    �         �   � �                             � �   �               �          �     �               �
ECHO    �         �   � �                             � �   �               �          �     �               �
ECHO    �         ���ĳ��                             �³����               �          �     �               �
ECHO    �          �   �                               �   �                �          �     �               �
ECHO    �          �   �                               �   �                �          �    ��               �
ECHO    �          �   �                               �   �                �          �     �               �
ECHO    �          �   �                               �   �                �          �     �               �
ECHO    �          �   �                               �   �                �          �     �               �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
GOTO :EOF

:SCENE2
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                        /�                                          /                               �
ECHO    �                     ���Ŀ�                                       ��������������������������������ĺ
ECHO    �                      �/���                                        �                                �
ECHO    �          ���Ŀ       �                                            �                                �
ECHO    �          �  O�                                                    �                                �
ECHO    �          �   �                                                    �    �                    �      �
ECHO    �          �����                                                    �   ���                  ���     �
ECHO    �         ��� �Ŀ                                                   �    �                    �      �
ECHO    �         �     �                                                   �    �                    �      �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �          �����Ŀ               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         ���ĳ��                                                   �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �    ��               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
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