SET TOWN2LOCATION2-5=
SET TOWN2LOCATION4-6=
SET /a MENUTUTORIALSEEN = 1
SET /a SCENETOT = 15
SET /a SKIP = 0
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT% + 1
CLS
ECHO.
CALL :SCENE%COUNT%IMAGE
CALL :SCENE%COUNT%TEXT
IF %COUNT% EQU 9 (
	GOTO :LOOPSTART
)
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
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                                                                    /                               �
ECHO    �                                                                   敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                                                                   �                                �
ECHO    �                                  敖陳�                            �                                �
ECHO    �                                  �O  �                            �                                �
ECHO    �                                  �   �                            �    �                    �      �
ECHO    �                                  逝賃�                            �   津�                  津�     �
ECHO    �                                 敖� 青�                           �    �                    �      �
ECHO    �                                 �     �                           �    �                    �      �
ECHO    �                                 � �   �                           �                                �
ECHO    �                                 � �   �                           �                                �
ECHO    �                                 � �   �                           �          敖陳陳�               �
ECHO    �                                 � �   �                           �          �     �               �
ECHO    �                                 � �   �                           �          �     �               �
ECHO    �                                 逝劃賃�                           �          �     �               �
ECHO    �                                  �   �                            �          �     �               �
ECHO    �                                  �   �                            �          �    ��               �
ECHO    �                                  �   �                            �          �     �               �
ECHO    �                                  �   �                            �          �     �               �
ECHO    �                                  �   �                            �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     ??????: Yooohooooo
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE2IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                                                                    /                               �
ECHO    �                                �                                  敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                                �                                  �                                �
ECHO    �                              敖劃�                                �                                �
ECHO    �                              �^<� �                                �                                �
ECHO    �                              ^> � �                                �    �                    �      �
ECHO    �                              逝蛎�                                �   津�                  津�     �
ECHO    �                             敖抒青�                               �    �                    �      �
ECHO    �                             �  �  �                               �    �                    �      �
ECHO    �                             �     �                               �                                �
ECHO    �                             �     �                               �                                �
ECHO    �                             �     �                               �          敖陳陳�               �
ECHO    �                             �     �                               �          �     �               �
ECHO    �                             �     �                               �          �     �               �
ECHO    �                             逝陳賃�                               �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �    ��               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %PLAYERNAME%: Ahhhh^^! What the hell was that?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                       �\                                           /                               �
ECHO    �                     槨陳朕                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      青�\�                                        �                                �
ECHO    �                          �   敖陳�                                �                                �
ECHO    �                              �O  �                                �                                �
ECHO    �                              �   �                                �    �                    �      �
ECHO    �                              逝賃�                                �   津�                  津�     �
ECHO    �                             敖� 青�                               �    �                    �      �
ECHO    �                             �     �                               �    �                    �      �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �          敖陳陳�               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             逝劃賃�                               �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �    ��               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     ?????: Sorry %PLAYERNAME%, I didn't mean to startle ya^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                       �\                                           /                               �
ECHO    �                     槨陳朕                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      青�\�                                        �                                �
ECHO    �                          �   敖陳�                                �                                �
ECHO    �                              �O  �                                �                                �
ECHO    �                              �   �                                �    �                    �      �
ECHO    �                              逝賃�                                �   津�                  津�     �
ECHO    �                             敖� 青�                               �    �                    �      �
ECHO    �                             �     �                               �    �                    �      �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �          敖陳陳�               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             逝劃賃�                               �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �    ��               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %PLAYERNAME%: Sweet Christmas^^! What the hell are you? And how do you know my name?
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE5IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                       �\                                           /                               �
ECHO    �                     槨陳朕                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      青�\�                                        �                                �
ECHO    �                          �   敖陳�                                �                                �
ECHO    �                              �O  �                                �                                �
ECHO    �                              �   �                                �    �                    �      �
ECHO    �                              逝賃�                                �   津�                  津�     �
ECHO    �                             敖� 青�                               �    �                    �      �
ECHO    �                             �     �                               �    �                    �      �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �          敖陳陳�               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             逝劃賃�                               �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �    ��               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     ?????: I'm a fairy, and I'm here to help you beat %LASTBOSSNAME%
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE6IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                       �\                                           /                               �
ECHO    �                     槨陳朕                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      青�\�     ^^!                                  �                                �
ECHO    �                          �   敖陳�                                �                                �
ECHO    �                              �O  �                                �                                �
ECHO    �                              �   �                                �    �                    �      �
ECHO    �                              逝賃�                                �   津�                  津�     �
ECHO    �                             敖� 青�                               �    �                    �      �
ECHO    �                             �     �                               �    �                    �      �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �          敖陳陳�               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             逝劃賃�                               �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �    ��               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %PLAYERNAME%: And just how do you plan on helping me? I don't even know who you are
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE7IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                       �\                                           /                               �
ECHO    �                     槨陳朕                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      青�\�                                        �                                �
ECHO    �                          �   敖陳�                                �                                �
ECHO    �                              �O  �                                �                                �
ECHO    �                              �   �                                �    �                    �      �
ECHO    �                              逝賃�                                �   津�                  津�     �
ECHO    �                             敖� 青�                               �    �                    �      �
ECHO    �                             �     �                               �    �                    �      �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �          敖陳陳�               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             逝劃賃�                               �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �    ��               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     ?????: I'm %MENUNAME%, pleased to meet ya^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                       �\                                           /                               �
ECHO    �                     槨陳朕                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      青�\�                                        �                                �
ECHO    �                          �   敖陳�                                �                                �
ECHO    �                              �O  �                                �                                �
ECHO    �                              �   �                                �    �                    �      �
ECHO    �                              逝賃�                                �   津�                  津�     �
ECHO    �                             敖� 青�                               �    �                    �      �
ECHO    �                             �     �                               �    �                    �      �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �          敖陳陳�               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             逝劃賃�                               �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �    ��               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: %MENUNAME% ey? Nice to meet you too
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE9IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                       �\                                           /                               �
ECHO    �                     槨陳朕                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      青�\�                                        �                                �
ECHO    �                          �   敖陳�                                �                                �
ECHO    �                              �O  �                                �                                �
ECHO    �                              �   �                                �    �                    �      �
ECHO    �                              逝賃�                                �   津�                  津�     �
ECHO    �                             敖� 青�                               �    �                    �      �
ECHO    �                             �     �                               �    �                    �      �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �                                �
ECHO    �                             � �   �                               �          敖陳陳�               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             � �   �                               �          �     �               �
ECHO    �                             逝劃賃�                               �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �    ��               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    �                              �   �                                �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %MENUNAME%: I can help you by organising your menu throughout your quest. Here, I'll show you what I mean.
TIMEOUT /T 5 > nul
CALL "%TUTORIALRESOURCEPATH%\menuexample.bat"
SET /a WAITTIME = %BASEWAITTIME% + 0
GOTO :EOF

:SCENE10IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                        /�                                          /                               �
ECHO    �                     敖陳須                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      �/陳�                                        �                                �
ECHO    �          敖陳�       �                                            �                                �
ECHO    �          �  O�                                                    �                                �
ECHO    �          �   �                                                    �    �                    �      �
ECHO    �          逝賃�                                                    �   津�                  津�     �
ECHO    �         敖� 青�                                                   �    �                    �      �
ECHO    �         �     �                                                   �    �                    �      �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �          敖陳陳�               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         逝陳蛎�                                                   �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �    ��               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: Thanks %MENUNAME%, incredibly useful
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE11IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                        /�                                          /                               �
ECHO    �                     敖陳須                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      �/陳�                                        �                                �
ECHO    �          敖陳�       �                                            �                                �
ECHO    �          �  O�                                                    �                                �
ECHO    �          �   �                                                    �    �                    �      �
ECHO    �          逝賃�                                                    �   津�                  津�     �
ECHO    �         敖� 青�                                                   �    �                    �      �
ECHO    �         �     �                                                   �    �                    �      �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �          敖陳陳�               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         逝陳蛎�                                                   �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �    ��               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %MENUNAME%: My pleasure. Be sure to keep on top of your development through the menu^^!
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE12IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                        /�                                          /                               �
ECHO    �                     敖陳須                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      �/陳�                                        �                                �
ECHO    �          敖陳�       �                                            �                                �
ECHO    �          �  O�                                                    �                                �
ECHO    �          �   �                                                    �    �                    �      �
ECHO    �          逝賃�                                                    �   津�                  津�     �
ECHO    �         敖� 青�                                                   �    �                    �      �
ECHO    �         �     �                                                   �    �                    �      �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �          敖陳陳�               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         逝陳蛎�                                                   �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �    ��               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %MENUNAME%: If you haven't already, you should equip the items you have found so far. It'll boost your stats
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE13IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                        /�                                          /                               �
ECHO    �                     敖陳須                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      �/陳�                                        �                                �
ECHO    �          敖陳�       �                                            �                                �
ECHO    �          �  O�                                                    �                                �
ECHO    �          �   �                                                    �    �                    �      �
ECHO    �          逝賃�                                                    �   津�                  津�     �
ECHO    �         敖� 青�                                                   �    �                    �      �
ECHO    �         �     �                                                   �    �                    �      �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �          敖陳陳�               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         逝陳蛎�                                                   �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �    ��               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %MENUNAME%: You can also quicksave and quickload from the map
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE14IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                        /�                                          /                               �
ECHO    �                     敖陳須                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      �/陳�                                        �                                �
ECHO    �          敖陳�       �                                            �                                �
ECHO    �          �  O�                                                    �                                �
ECHO    �          �   �                                                    �    �                    �      �
ECHO    �          逝賃�                                                    �   津�                  津�     �
ECHO    �         敖� 青�                                                   �    �                    �      �
ECHO    �         �     �                                                   �    �                    �      �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �          敖陳陳�               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         逝陳蛎�                                                   �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �    ��               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %PLAYERNAME%: Good to know. Let's push on shall we? I need to find a way through that cave
SET /a WAITTIME = %BASEWAITTIME% + 7
GOTO :EOF

:SCENE15IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                              /                     �
ECHO    �                                                                            /                       �
ECHO    �                                                                          /                         �
ECHO    �                                                                        /                           �
ECHO    �                                                                      /                             �
ECHO    �                        /�                                          /                               �
ECHO    �                     敖陳須                                       敖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳頂
ECHO    �                      �/陳�                                        �                                �
ECHO    �          敖陳�       �                                            �                                �
ECHO    �          �  O�                                                    �                                �
ECHO    �          �   �                                                    �    �                    �      �
ECHO    �          逝賃�                                                    �   津�                  津�     �
ECHO    �         敖� 青�                                                   �    �                    �      �
ECHO    �         �     �                                                   �    �                    �      �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �                                �
ECHO    �         �   � �                                                   �          敖陳陳�               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         �   � �                                                   �          �     �               �
ECHO    �         逝陳蛎�                                                   �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �    ��               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    �          �   �                                                    �          �     �               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     %MENUNAME%: Okey Dokey^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

