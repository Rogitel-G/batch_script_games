SET /a HOMETOWNQUESTPHASE = 1
CALL "%MUSICPATH%\stopmusic.bat"
IF !%MAP%CHEST1OPEN! EQU 1 (
	SET /a SCENETOT = 10
	SET /a HOMETOWNQUESTPHASE = 2
) ELSE (
	SET /a SCENETOT = 9
)
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
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �          敖賃陳�                                        �          �         �
ECHO    �                     �          �  �  �                                        �          �         �
ECHO    �                     �          �  �  �           敖陳陳陳�                    �          �         �
ECHO    �                     �          団津陳�           �       �                    �          �         �
ECHO    �                     �          �  �  �           �   敖� �                    �          �         �
ECHO    �                     �          �  �  �           �   � � �                    �          �         �
ECHO    �                     �          青珍陳�           �   逝� �                    �          �         �
ECHO    �                     �                            � �  �  �                    �          �         �
ECHO    �                     �                            �   津� �                    �        /           �
ECHO    �                     �                            �    �  �                    �      /             �
ECHO    �                     �                            �    �  �                    �    /               �
ECHO    �                     �                            �   / \ �                    �  /                 �
ECHO    �                     �                            �  /   \�                    �/                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     You knock on uncle %UNCLENAME%'s door
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE2IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �          敖賃陳�                                        �          �         �
ECHO    �                     �          �  �  �                                        �          �         �
ECHO    �                     �          �  �  �           敖陳陳陳�                    �          �         �
ECHO    �                     �          団津陳�           �       �                    �          �         �
ECHO    �                     �          �  �  �           �   敖� �                    �          �         �
ECHO    �                     �          �  �  �           �   � � �                    �          �         �
ECHO    �                     �          青珍陳�           �   逝� �                    �          �         �
ECHO    �                     �                            � �  �  �                    �          �         �
ECHO    �                     �                            �   津� �                    �        /           �
ECHO    �                     �                            �    �  �                    �      /             �
ECHO    �                     �                            �    �  �                    �    /               �
ECHO    �                     �                            �   / \ �                    �  /                 �
ECHO    �                     �                            �  /   \�                    �/                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %UNCLENAME%: Who is it?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �          敖賃陳�                                        �          �         �
ECHO    �                     �          �  �  �                                        �          �         �
ECHO    �                     �          �  �  �           敖陳陳陳�                    �          �         �
ECHO    �                     �          団津陳�           �       �                    �          �         �
ECHO    �                     �          �  �  �           �   敖� �                    �          �         �
ECHO    �                     �          �  �  �           �   � � �                    �          �         �
ECHO    �                     �          青珍陳�           �   逝� �                    �          �         �
ECHO    �                     �                            � �  �  �                    �          �         �
ECHO    �                     �                            �   津� �                    �        /           �
ECHO    �                     �                            �    �  �                    �      /             �
ECHO    �                     �                            �    �  �                    �    /               �
ECHO    �                     �                            �   / \ �                    �  /                 �
ECHO    �                     �                            �  /   \�                    �/                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %PLAYERNAME%: Hi uncle %UNCLENAME%^^! It's me, %PLAYERNAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �          敖賃陳�                                        �          �         �
ECHO    �                     �          �  �  �                                        �          �         �
ECHO    �                     �          �  �  �           敖陳陳陳�                    �          �         �
ECHO    �                     �          団津陳�           �       �                    �          �         �
ECHO    �                     �          �  �  �           �   敖� �                    �          �         �
ECHO    �                     �          �  �  �           �   � � �                    �          �         �
ECHO    �                     �          青珍陳�           �   逝� �                    �          �         �
ECHO    �                     �                            � �  �  �                    �          �         �
ECHO    �                     �                            �   津� �                    �        /           �
ECHO    �                     �                            �    �  �                    �      /             �
ECHO    �                     �                            �    �  �                    �    /               �
ECHO    �                     �                            �   / \ �                    �  /                 �
ECHO    �                     �                            �  /   \�                    �/                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %UNCLENAME%: %PLAYERNAME%, good morning lad. How are you on this fine day?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE5IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                               /                                                         /�         �
ECHO    �                             /                                                         /  �         �
ECHO    �                           /                                                         /    �         �
ECHO    �                         /                                                         /      �         �
ECHO    �                       /                                                         /        �         �
ECHO    �                     /                                                         /          �         �
ECHO    �                     団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �                                                         �          �         �
ECHO    �                     �          敖賃陳�                                        �          �         �
ECHO    �                     �          �  �  �                                        �          �         �
ECHO    �                     �          �  �  �           敖陳陳陳�                    �          �         �
ECHO    �                     �          団津陳�           �       �                    �          �         �
ECHO    �                     �          �  �  �           �   敖� �                    �          �         �
ECHO    �                     �          �  �  �           �   � � �                    �          �         �
ECHO    �                     �          青珍陳�           �   逝� �                    �          �         �
ECHO    �                     �                            � �  �  �                    �          �         �
ECHO    �                     �                            �   津� �                    �        /           �
ECHO    �                     �                            �    �  �                    �      /             �
ECHO    �                     �                            �    �  �                    �    /               �
ECHO    �                     �                            �   / \ �                    �  /                 �
ECHO    �                     �                            �  /   \�                    �/                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %PLAYERNAME%: I'm good thanks. Mum told me you wanted to see me?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �      敖陳陳陳陳陳陳�         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   攷   攷   �         �                                   �
ECHO    �                                 �      �   碩   碩   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �      �      �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   青陳陳�   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      青陳賃陳賃陳陳�         �                                   �
ECHO    �                                 �           �   �              �                                   �
ECHO    �                                 �   敖陳陳陳祖陳祖陳陳陳�      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %UNCLENAME%: I do indeed^^! I want to show you how to use menus and equipment
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE7IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �      敖陳陳陳陳陳陳�         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   攷   攷   �         �                                   �
ECHO    �                                 �      �   碩   碩   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �      �      �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   青陳陳�   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      青陳賃陳賃陳陳�         �                                   �
ECHO    �                                 �           �   �              �                                   �
ECHO    �                                 �   敖陳陳陳祖陳祖陳陳陳�      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %PLAYERNAME%: Mum said something about lethal weapons?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE8IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �      敖陳陳陳陳陳陳�         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   攷   攷   �         �                                   �
ECHO    �                                 �      �   碩   碩   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �      �      �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   青陳陳�   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      青陳賃陳賃陳陳�         �                                   �
ECHO    �                                 �           �   �              �                                   �
ECHO    �                                 �   敖陳陳陳祖陳祖陳陳陳�      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %UNCLENAME%: She exaggerates.
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE9IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �      敖陳陳陳陳陳陳�         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   攷   攷   �         �                                   �
ECHO    �                                 �      �   碩   碩   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �      �      �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   青陳陳�   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      青陳賃陳賃陳陳�         �                                   �
ECHO    �                                 �           �   �              �                                   �
ECHO    �                                 �   敖陳陳陳祖陳祖陳陳陳�      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %UNCLENAME%: I saw a chest by the old mill the other day, can you go and grab the contents
ECHO     of it for me please?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE10IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �                              �                                   �
ECHO    �                                 �      敖陳陳陳陳陳陳�         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   攷   攷   �         �                                   �
ECHO    �                                 �      �   碩   碩   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �      �      �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �   青陳陳�   �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      �             �         �                                   �
ECHO    �                                 �      青陳賃陳賃陳陳�         �                                   �
ECHO    �                                 �           �   �              �                                   �
ECHO    �                                 �   敖陳陳陳祖陳祖陳陳陳�      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    �                                 �   �                   �      �                                   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %UNCLENAME%: Oh, I see you've already found it^^! Clever lad
SET /a WAITTIME = %BASEWAITTIME% + 3
SET /a HOMETOWNQUESTPHASE = 2
GOTO :EOF



