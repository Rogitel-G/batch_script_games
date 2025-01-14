SET TEMPPATH=%MUSICPATH%\Maps\Hell
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
SET /a SCENETOT = 24
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
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�        ^^!                              �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     %FRIENDNAME%: %LASTBOSSNAMECAP%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE2IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                          ^^!      �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %PLAYERNAME%: GIVE US BACK OUR FAMILIES^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE4IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %PLAYERNAME%: ...Yes^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE5IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE6IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�        ^^!                              �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %FRIENDNAME%: GIVE THEM BACK OR WE'LL KILL YOU^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE7IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE8IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �  O�     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %PLAYERNAME%: We're not really getting anywhere here...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE9IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �  O�     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE10IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                          ^^!      �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %PLAYERNAME%: I was talking to %FRIENDNAME%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE11IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �O  �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %FRIENDNAME%: Should we...attack?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE12IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �O  �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE13IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                          ^^!      �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %PLAYERNAME%: SHUT UP^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE14IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE14TEXT
ECHO     %PLAYERNAME%: Yea, we should probably attack
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE15IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                         ...     �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     %PLAYERNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE16IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�       ...                             �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE16TEXT
ECHO     %FRIENDNAME%: ...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE17IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE17TEXT
ECHO     %FRIENDNAME%: Is this sensible? We're in Hell and we're about to attack some kind of death robot demon thing...
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE18IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE18TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE19IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE19TEXT
ECHO     %PLAYERNAME%: I'm ignoring him from now on.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE20IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�                                       �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE20TEXT
ECHO     %PLAYERNAME%: Well we have come all this way...
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE21IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �       ��                                        �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕   �栩�                                       �
ECHO    �                                 �栩�   �            �   �栩�        ^^!                              �
ECHO    �                        敖陳�     崖    �            �    崖       敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳潰�       �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳�       �   �                            �
ECHO    �                        青堕�           �    ~~~~    �             青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE21TEXT
ECHO     %FRIENDNAME%: Yea, you're right. I'm going for it^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE22IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �                                                 �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕                                              �
ECHO    �                                 �栩�   �            �                                              �
ECHO    �                        敖陳�     崖    �            �         ��  敖陳�                            �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳陳陳� 栩� �   �                            �
ECHO    �                        �   �     青陳陳�            団陳陳陳� 栩� �   �                            �
ECHO    �                        青堕�           �    ~~~~    �         ��  青堕�                            �
ECHO    �                       敖珍陳�          �    ~~~~    �            敖珍陳�                           �
ECHO    �                       �     �          �    ~~~~    �            �     �                           �
ECHO    �                       �   � �          �    ~~~~    �            � �   �                           �
ECHO    �                       �   � �          �            �            � �   �                           �
ECHO    �                       �   � �          青賃堕陳賃堕潰            � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       �   � �             崖    崖               � �   �                           �
ECHO    �                       逝陳蛎�             崖    崖               逝劃賃�                           �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �              崖    崖                �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    �                        �   �                                      �   �                            �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE22TEXT
ECHO     %LASTBOSSNAME%: Nope.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE23IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �        ��                                       �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕    �栩�                                      �
ECHO    �                          ^^!      �栩�   �            �    �栩�                                      �
ECHO    �                        敖陳�     崖    �            �     崖                                       �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳陳抒                                       �
ECHO    �                        �   �     青陳陳�            団陳陳潰                                       �
ECHO    �                        青堕�           �    ~~~~    �                                              �
ECHO    �                       敖珍陳�          �    ~~~~    �                                              �
ECHO    �                       �     �          �    ~~~~    �                                              �
ECHO    �                       �   � �          �    ~~~~    �                                              �
ECHO    �                       �   � �          �            �                                              �
ECHO    �                       �   � �          青賃堕陳賃堕潰                                              �
ECHO    �                       �   � �             崖    崖                                                 �
ECHO    �                       �   � �             崖    崖                                                 �
ECHO    �                       逝陳蛎�             崖    崖                                                 �
ECHO    �                        �   �              崖    崖                       敖陳陳陳朕                �
ECHO    �                        �   �              崖    崖                       �        楽陳朕           �
ECHO    �                        �   �                                     陳陳陳陳環陳陳�  崖   �           �
ECHO    �                        �   �                                     陳陳陳陳�        担   �           �
ECHO    �                        �   �                                             青陳陳陳潰青陳�           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE23TEXT
ECHO     %PLAYERNAME%: %FRIENDNAMECAP%^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE24IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                          \        /                                                �
ECHO    �                                           \烝烝烝/                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           � �  � �                                                 �
ECHO    �                                           �      �                                                 �
ECHO    �                                  ��       � 烝烝 �        ��                                       �
ECHO    �                                 �栩�   敖珍珍陳祖祖朕    �栩�                                      �
ECHO    �                          ^^!      �栩�   �            �    �栩�                                      �
ECHO    �                        敖陳�     崖    �            �     崖                                       �
ECHO    �                        �   �     垣陳陳�  青�  青�  団陳陳抒                                       �
ECHO    �                        �   �     青陳陳�            団陳陳潰                                       �
ECHO    �                        青堕�           �    ~~~~    �                                              �
ECHO    �                       敖珍陳�          �    ~~~~    �                                              �
ECHO    �                       �     �          �    ~~~~    �                                              �
ECHO    �                       �   � �          �    ~~~~    �                                              �
ECHO    �                       �   � �          �            �                                              �
ECHO    �                       �   � �          青賃堕陳賃堕潰                                              �
ECHO    �                       �   � �             崖    崖                                                 �
ECHO    �                       �   � �             崖    崖                                                 �
ECHO    �                       逝陳蛎�             崖    崖                                                 �
ECHO    �                        �   �              崖    崖                       敖陳陳陳朕                �
ECHO    �                        �   �              崖    崖                       �        楽陳朕           �
ECHO    �                        �   �                                     陳陳陳陳環陳陳�  崖   �           �
ECHO    �                        �   �                                     陳陳陳陳�        担   �           �
ECHO    �                        �   �                                             青陳陳陳潰青陳�           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE24TEXT
ECHO     %PLAYERNAME%: You are so annoying^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF