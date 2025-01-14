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
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                      敖陳陳陳陳陳陳�                                               �
ECHO    �                                      �      �      �                                               �
ECHO    �                                      �      �      �                                               �
ECHO    �                                      害臆栩臆菓朮臆�                                               �
ECHO    �                                      �      �      �       /\                                      �
ECHO    �                                      � ���� � ���� �      /  \                                     �
ECHO    �                                      � ���� � ���� �      �  �                                     �
ECHO    �                                      � ���� � ���� �      � 些                                     �
ECHO    �                                      � ���� � ���� �      � 些                                     �
ECHO    �                                      青陳�     敖陳�      � 些                                     �
ECHO    �                   �\陳陳陳陳陳/� 敖陳陳陳�     青陳陳朕   � 些                                     �
ECHO    �                   �            � �                    �   � 些                                     �
ECHO    �                   �      �     � �                    �   � 些                                     �
ECHO    �                   �      �     � �                    �   � 些                                     �
ECHO    �                   �   陳津陳�  � �          �         �   � 些                                     �
ECHO    �                   �      �     � �          �         �   � 些                                     �
ECHO    �                   �      �     � �       陳津陳�      �   � 些                                     �
ECHO    �                   �      �     � �          �         �   � 些                                     �
ECHO    �                   �      �     � �          �         撹� � 些 瓢                                  �
ECHO    �                    \     �    /  �          �         該藩�  藩失                                  �
ECHO    �                     \        /   �          �         拡様�  浜夕                                  �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE1TEXT
ECHO     Knight: We are the Knights of Nee^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE2IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
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
ECHO    �                                    �    陳陳陳    �     _ 栩� _                                    �
ECHO    �                                    �              �       栩�                                      �
ECHO    �                                    青陳朕     敖陳�     / � � \                                    �
ECHO    �                                     /陳潰     青陳\       � �                                      �
ECHO    �                                    /               \      � �                                      �
ECHO    �                                   /        �        \     � �                                      �
ECHO    �                                  /         �         \    � �                                      �
ECHO    �                                 �        陳田�        �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     Wizard: And we are the Wizards of w...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
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
ECHO    �                                    �    陳陳陳    �     _ 栩� _                                    �
ECHO    �                                    �              �       栩�                                      �
ECHO    �                                    青陳朕     敖陳�     / � � \                                    �
ECHO    �                                     /陳潰     青陳\       � �                                      �
ECHO    �                                    /               \      � �                                      �
ECHO    �                                   /        �        \     � �                                      �
ECHO    �                                  /         �         \    � �                                      �
ECHO    �                                 �        陳田�        �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    �                                 �          �          �   � �                                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     Wizard: Wazarath...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE4IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     敖陳陳陳陳陳陳�                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     害臆栩臆菓朮臆�                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   �    \    /    �                   �
ECHO    �                     � ���� � ���� �      � 些                   �    O    O    �                   �
ECHO    �                     � ���� � ���� �      � 些                   �              �        �          �
ECHO    �                     青陳�     敖陳�      � 些                   �              �      \   /        �
ECHO    �  �\陳陳陳陳陳/� 敖陳陳陳�     青陳陳朕   � 些                   �    陳陳陳    �     _ 栩� _       �
ECHO    �  �            � �                    �   � 些                   �              �       栩�         �
ECHO    �  �      �     � �                    �   � 些                   青陳朕     敖陳�     / � � \       �
ECHO    �  �      �     � �                    �   � 些                    /陳潰     青陳\       � �         �
ECHO    �  �   陳津陳�  � �          �         �   � 些                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � 些                  /        �        \     � �         �
ECHO    �  �      �     � �       陳津陳�      �   � 些                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � 些                �        陳田�        �   � �         �
ECHO    �  �      �     � �          �         撹� � 些 瓢             �          �          �   � �         �
ECHO    �   \     �    /  �          �         該藩�  藩失             �          �          �   � �         �
ECHO    �    \        /   �          �         拡様�  浜夕             �          �          �   � �         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     Both: And together we are...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE5IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     敖陳陳陳陳陳陳�                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     害臆栩臆菓朮臆�                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   �    \    /    �                   �
ECHO    �                     � ���� � ���� �      � 些                   �    O    O    �                   �
ECHO    �                     � ���� � ���� �      � 些                   �              �        �          �
ECHO    �                     青陳�     敖陳�      � 些                   �              �      \   /        �
ECHO    �  �\陳陳陳陳陳/� 敖陳陳陳�     青陳陳朕   � 些                   �    陳陳陳    �     _ 栩� _       �
ECHO    �  �            � �                    �   � 些                   �              �       栩�         �
ECHO    �  �      �     � �                    �   � 些                   青陳朕     敖陳�     / � � \       �
ECHO    �  �      �     � �                    �   � 些                    /陳潰     青陳\       � �         �
ECHO    �  �   陳津陳�  � �          �         �   � 些                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � 些                  /        �        \     � �         �
ECHO    �  �      �     � �       陳津陳�      �   � 些                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � 些                �        陳田�        �   � �         �
ECHO    �  �      �     � �          �         撹� � 些 瓢             �          �          �   � �         �
ECHO    �   \     �    /  �          �         該藩�  藩失             �          �          �   � �         �
ECHO    �    \        /   �          �         拡様�  浜夕             �          �          �   � �         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     Both: The Knights of Nee and the Wizards of Wazarath^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE6IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     敖陳陳陳陳陳陳�                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     害臆栩臆菓朮臆�                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   �    \    /    �                   �
ECHO    �                     � ���� � ���� �      � 些                   �    O    O    �                   �
ECHO    �                     � ���� � ���� �      � 些                   �              �        �          �
ECHO    �                     青陳�     敖陳�      � 些                   �              �      \   /        �
ECHO    �  �\陳陳陳陳陳/� 敖陳陳陳�     青陳陳朕   � 些                   �    陳陳陳    �     _ 栩� _       �
ECHO    �  �            � �                    �   � 些                   �              �       栩�         �
ECHO    �  �      �     � �                    �   � 些                   青陳朕     敖陳�     / � � \       �
ECHO    �  �      �     � �                    �   � 些                    /陳潰     青陳\       � �         �
ECHO    �  �   陳津陳�  � �          �         �   � 些                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � 些                  /        �        \     � �         �
ECHO    �  �      �     � �       陳津陳�      �   � 些                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � 些                �        陳田�        �   � �         �
ECHO    �  �      �     � �          �         撹� � 些 瓢             �          �          �   � �         �
ECHO    �   \     �    /  �          �         該藩�  藩失             �          �          �   � �         �
ECHO    �    \        /   �          �         拡様�  浜夕             �          �          �   � �         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     Knight: Defeat us to get access to better and better rewards from the chests
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE7IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     敖陳陳陳陳陳陳�                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     害臆栩臆菓朮臆�                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   � /            �                   �
ECHO    �                     � ���� � ���� �      � 些                   � O            �                   �
ECHO    �                     � ���� � ���� �      � 些                   �              �        �          �
ECHO    �                     青陳�     敖陳�      � 些                   �              �      \   /        �
ECHO    �  �\陳陳陳陳陳/� 敖陳陳陳�     青陳陳朕   � 些                   団陳           �     _ 栩� _       �
ECHO    �  �            � �                    �   � 些                   �              �       栩�         �
ECHO    �  �      �     � �                    �   � 些                   青陳朕     敖陳�     / � � \       �
ECHO    �  �      �     � �                    �   � 些                    /陳潰     青陳\       � �         �
ECHO    �  �   陳津陳�  � �          �         �   � 些                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � 些                  /        �        \     � �         �
ECHO    �  �      �     � �       陳津陳�      �   � 些                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � 些                �        陳田�        �   � �         �
ECHO    �  �      �     � �          �         撹� � 些 瓢             �          �          �   � �         �
ECHO    �   \     �    /  �          �         該藩�  藩失             �          �          �   � �         �
ECHO    �    \        /   �          �         拡様�  浜夕             �          �          �   � �         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     Wizard: What the hell did you tell him that for^^!?
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE8IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     敖陳陳陳陳陳陳�                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     害臆栩臆菓朮臆�                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   � /            �                   �
ECHO    �                     � ���� � ���� �      � 些                   � O            �                   �
ECHO    �                     � ���� � ���� �      � 些                   �              �        �          �
ECHO    �                     青陳�     敖陳�      � 些                   �              �      \   /        �
ECHO    �  �\陳陳陳陳陳/� 敖陳陳陳�     青陳陳朕   � 些                   団陳           �     _ 栩� _       �
ECHO    �  �            � �                    �   � 些                   �              �       栩�         �
ECHO    �  �      �     � �                    �   � 些                   青陳朕     敖陳�     / � � \       �
ECHO    �  �      �     � �                    �   � 些                    /陳潰     青陳\       � �         �
ECHO    �  �   陳津陳�  � �          �         �   � 些                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � 些                  /        �        \     � �         �
ECHO    �  �      �     � �       陳津陳�      �   � 些                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � 些                �        陳田�        �   � �         �
ECHO    �  �      �     � �          �         撹� � 些 瓢             �          �          �   � �         �
ECHO    �   \     �    /  �          �         該藩�  藩失             �          �          �   � �         �
ECHO    �    \        /   �          �         拡様�  浜夕             �          �          �   � �         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     Knight: ...
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE9IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                        /\                          �
ECHO    �                                                                       /  \                         �
ECHO    �                     敖陳陳陳陳陳陳�                                  /    \                        �
ECHO    �                     �      �      �                                 /      \                       �
ECHO    �                     �      �      �                                /        \                      �
ECHO    �                     害臆栩臆菓朮臆�                               /          \                     �
ECHO    �                     �      �      �       /\                 ____/____________\____                �
ECHO    �                     � ���� � ���� �      /  \                   �              �                   �
ECHO    �                     � ���� � ���� �      �  �                   �    \    /    �                   �
ECHO    �                     � ���� � ���� �      � 些                   �    O    O    �                   �
ECHO    �                     � ���� � ���� �      � 些                   �              �        �          �
ECHO    �                     青陳�     敖陳�      � 些                   �              �      \   /        �
ECHO    �  �\陳陳陳陳陳/� 敖陳陳陳�     青陳陳朕   � 些                   �    陳陳陳    �     _ 栩� _       �
ECHO    �  �            � �                    �   � 些                   �              �       栩�         �
ECHO    �  �      �     � �                    �   � 些                   青陳朕     敖陳�     / � � \       �
ECHO    �  �      �     � �                    �   � 些                    /陳潰     青陳\       � �         �
ECHO    �  �   陳津陳�  � �          �         �   � 些                   /               \      � �         �
ECHO    �  �      �     � �          �         �   � 些                  /        �        \     � �         �
ECHO    �  �      �     � �       陳津陳�      �   � 些                 /         �         \    � �         �
ECHO    �  �      �     � �          �         �   � 些                �        陳田�        �   � �         �
ECHO    �  �      �     � �          �         撹� � 些 瓢             �          �          �   � �         �
ECHO    �   \     �    /  �          �         該藩�  藩失             �          �          �   � �         �
ECHO    �    \        /   �          �         拡様�  浜夕             �          �          �   � �         �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     Wizard: Idiot...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF
