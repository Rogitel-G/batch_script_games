@ECHO OFF
IF /I %DIFFICULTY% EQU EASY (
	SET /a ITEM1 = %POTID%
	SET /a ITEM2 = %FIRAITEMID%
	SET /a NUM1 = 5
	SET /a NUM2 = 3
) ELSE (
	SET /a ITEM1 = %POTID%
	SET /a ITEM2 = %WATERITEMID%
	SET /a NUM1 = 2
	SET /a NUM2 = 2
)
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
	GOTO :END
)
IF %COUNT% LSS %SCENETOT% (
	GOTO :LOOPSTART
)
:END
ECHO.
SET /a STORY5VERSIONNUM = 1
SET /a PLAYERITEM%ITEM1%NUM = !PLAYER%ITEM1%NUM! + %NUM1%
SET /a PLAYERITEM%ITEM2%NUM = !PLAYER%ITEM2%NUM! + %NUM2% 
SET MAP=TOWN2
SET /a PLAYERXCOORD = 7
SET /a PLAYERYCOORD = 2
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
	SET /a COUNT = %COUNT% - 2
	GOTO :EOF
) ELSE (
	GOTO :CONFIRM
)
GOTO :EOF

:SCENE1IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                            ~旭旭~    \烝/~    ~  ~ �\          \~                             ~    �
ECHO    �    ~~      ~               ~旭旭~ ~  寵��        ~ � \  ~    ~  \                             ~    �
ECHO    �          ~_                ~旭旭~    顎楹 ~        �  \         /�~ ~          ~~                  �
ECHO    �         /~ \  /   /\ _     ~旭旭~ � 攸疏楚 �       �   \      /  �                   ~    ~~       �
ECHO    �         �  ~ �  \   ~ �    ~~~~~~ 藩� uu 値�       �~   \   /~   �                                 �
ECHO    �         � /\   \/  /� �        ~    � ~~ �         � �\  \/   /\ �    ~   ~                ~       �
ECHO    �         �/   \ ~�  崖/  ~      ~    � ~~~�    ~     \崖  �  /   \�  ~   ~                  ~       �
ECHO    �      ~  /      \�  �/陳陳陳陳陳陳陳沈堕賃拂陳陳陳陳陳\�  �/  ~   \                    ~      ~     �
ECHO    �   ~   ~/         \ /陳陳陳陳陳�   ~  �  �   敖陳陳陳陳\ /         \           ~       ~            �
ECHO    �       /       ~  /�           �      �  �   �  \__�    �\  ~       \  ~          ~~     ~          �
ECHO    �     ~/          /~�           �       ~     �  /  �    � \          \~ ~                           �
ECHO    �     �\         /  �        ~  �     \__�    �     ~    �  \         /�   ~               ~         �
ECHO    �     �  \      /   �           �     /  �    �       ~  �~  \      /  �                ~            �
ECHO    �     �    \   /    �~~         � ~           �          �    \   /    �             ~          ~    �
ECHO    �     �      \/ ~/� � ~         �        ~    �       ~  \ �\  \/      �             ~        ~      �
ECHO    �    ~�       �  崖/            �~            �           \崖~ �      ~�         ~                   �
ECHO    �     �       �  �/陳陳陳陳陳陳潰          ~ ~青陳陳陳陳陳�\�  �  ~    � ~                   ~       �
ECHO    �      \   ~  �  /陳陳陳陳陳陳陳�  \__�       敖陳陳陳陳陳陳\  崖 ~   /                 ~            �
ECHO    �        \    � /      ~      ~ �  /  �       �              \ �    /                     ~          �
ECHO    �     ~    \~ �/    ~   ~       �  ~        ~ � ~             \�  /                          ~~ ~~   �
ECHO    �            \/        ~        �  ~      ~   �    ~           \/        ~      ~                    �
ECHO    �       ~              ~        �             �      ~                                         ~     �
ECHO    �    ~                          �             � ~         ~      ~     ~                             �
ECHO    �              ~       ~        � ~    ~      �~                                             ~       �
ECHO    �             ~                 �             �                   ~~    ~          ~          ~      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE1TEXT
SET TEMPPATH=%MUSICPATH%\AttackTown
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
ECHO     %PLAYERNAME%: Ugh^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE2IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                            ~旭旭~    \烝/          �\         ~\      ~           ~    ~          ~�
ECHO    �               ~       ~    ~旭旭~    寵��          � \          \   ~    ~ ~        ~   ~  ~       �
ECHO    �           _ ~              ~旭旭~    顎楹 ~     ~  �  \         /�    ~  ~        ~          ~     �
ECHO    �         /  \  /   /\ _     ~旭旭~ � 攸疏楚 � ~ ~   �   \      /  �        ~                        �
ECHO    �         �    �  \     �    ~~~~~~ 藩� uu 値�       �    \   /    �             ~   ~           ~ ~ �
ECHO    �         � /\   \/  /� �     ~~      � ~~~�         � �\~ \/ ~ /\ �          ~~  ~                  �
ECHO    �  ~      �/~  \  �  崖/  ~      ~    � ~~ �    ~     \崖  �  /   \�                  ~~     ~    ~  �
ECHO    �         /      \�  �/陳陳陳陳陳陳陳沈堕賃拂陳陳陳陳陳\�  �/      \ ~           ~              ~   ~�
ECHO    �        /         \~/陳陳陳陳陳�      �  �   敖陳陳陳陳\ /~    ~   \ ~                              �
ECHO    �       /      ~ ~ /�           �      �  �   �  \__�   ~�\          \                               �
ECHO    �      /     ~    / � ~      ~  �       ~     �~ /  �    � \~         \           ~  ~   ~           �
ECHO    �     �\        ~/  � ~    ~    �     \__�    �          �  \   ~     /�                ~    ~       �
ECHO    �     �  \      /   �           �     /  �   ~� ~        �   \      /  �               ~           ~ �
ECHO    �     �    \   / ~  � ~~        �             �          �  ~ \   /    �                ~ ~          �
ECHO    �     �      \/~ /� �  ~        �             �  ~      ~\ �\  \/      �   ~     ~           ~     ~~�
ECHO    �     �       �  崖/            �             �           \崖~~�  ~ ~  �            ~        ~       �
ECHO    �     �       �  �/陳陳陳陳陳陳潰             青陳陳陳陳陳�\�  �      ~�      ~                      �
ECHO    �      \     ~�  /陳陳陳陳陳陳陳�  \__� ~     敖陳陳陳陳陳陳\  崖     /~                             �
ECHO    �     ~  \~   � /      ~        �  /  �       �   ~          \~�    /           ~       ~      ~     �
ECHO    �  ~       \  �/    ~~          �             �         ~     \�  /                                  �
ECHO    �        ~   \/                 �  ~          �            ~   \/                     ~          ~   �
ECHO    � ~     ~                       �       ~     �               ~                            ~ ~~      �
ECHO    � ~                           ~ �             �             ~                          ~           ~ �
ECHO    �                             ~ �          ~  �           ~     ~                                 ~  �
ECHO    �           ~               ~   �       ~   ~ �           ~       ~               ~              ~   �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %LASTBOSSNAME%: AHHAHHHAHHAHHAHAHAHHHAH^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �   ~                       ~~旭旭~    \烝/         ~�\~         \       ~             ~ ~~          �
ECHO    �      ~   ~                 ~旭旭~~   寵��          � \          \          ~           ~           �
ECHO    �          ~_  ~     ~       ~旭旭~    顎楹  ~       � ~\ ~       /� ~     ~             ~      ~    �
ECHO    �    ~ ~  /  \  /  ~/\ _     ~旭旭~ � 攸疏楚 �       �   \      /  �           ~                ~    �
ECHO    �      ~~ �    �  \     �    ~~~~~~ 藩� uu 値�  ~    �    \   /    �                                 �
ECHO    �   ~ ~  ~� /\   \/  /� �             � ~~ �  ~      �~�\  \/   /\ �                   ~    ~        �
ECHO    �         �/   \  �~ 崖/      ~       �~~~ �          \崖  �  / ~ \�   ~       ~                     �
ECHO    �         /      \�  �/陳陳陳陳陳陳陳沈堕賃拂陳陳陳陳陳\�  �/  ~   \         ~                       �
ECHO    �  ~     /         \ /陳陳陳陳陳�  ~   �  �  ~敖陳陳陳陳\ /  ~      \        ~ ~~                    �
ECHO    �       /          /�  ~ ~      �~     �  � ~ �  \__�    �\~ ~   ~   \                       ~       �
ECHO    �      /          /~�           �     ~  ?    �  /  �    � \     ~    \                    ~         �
ECHO    �    ~�\         /  �           �    ~\__�    �          �  \         /�           ~                 �
ECHO    �     �  \    ~ /   �    ~      �     /~ �    �          �   \      /  �             ~   ~  ~        �
ECHO    �     � ~~ \   /    �           � ~    ~      �          �    \   /    �  ~               ~          �
ECHO    �     �      \/~ /� �           � ~  ~        �          \ �\  \/      �          ~   ~    ~         �
ECHO    �   ~ �       �  崖/~           �             �           \崖  �       �   ~                   ~~    �
ECHO    �     �      ~�  �/陳陳陳陳陳陳潰             青陳陳陳陳陳�\�  � ~     �   ~                         �
ECHO    �  ~  ~\     ~�  /陳陳陳陳陳陳陳�  \__�       敖陳陳陳陳陳陳\  崖   ~ /                ~      ~~     �
ECHO    �        \    � /              ~�  /  �       �    ~         \~�    /     ~                          �
ECHO    �          \  �/          ~    ~�   ~         �         ~~    \�  /                   ~              �
ECHO    �          ~~\/  ~     ~        �             �                \/~   ~  ~  ~   ~          ~          �
ECHO    �                               �             �                               ~                      �
ECHO    �           ~         ~         �             �           ~                        ~                 �
ECHO    �                               �             �            ~           ~          ~                  �
ECHO    �      ~    ~                   �             � ~   ~                      ~             ~      ~  ~ �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %PLAYERNAME%: (What?)
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE4IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                 ~          ~旭旭~    \烝/          �\  ~       \                    ~              �
ECHO    �                ~           ~旭旭~    寵��          � \          \                        ~         �
ECHO    �           _                ~旭旭~   ~顎楹      ~   �  \~        /�  ~                              �
ECHO    �    ~ ~  /  \  /~  /\ _     ~旭旭~   攸疏楚 �       �~  \      /  �                                 �
ECHO    �         �    �  \     �   ~~~~~~~ 浜� uu 値�    ~ ~�    \   /~   �~   ~       ~                    �
ECHO    �   ~     � /\   \/  /� �~        ~ � � ~~~�         � �\  \/   /\ �      ~   ~         ~~ ~~        �
ECHO    �         �/   \  �  崖/              � ~~ �      ~   \崖~ �  /  ~\�              ~                  �
ECHO    �         /      \�  �/陳陳陳陳陳陳陳沈堕賃拂陳陳陳陳陳\�  �/ ~    \    ~  ~                         �
ECHO    �        /         \ /陳陳陳陳陳�      �  �   敖陳陳陳陳\ /         \          ~    ~          ~     �
ECHO    �       /          /�           �      �  �   �  \__�    �\~         \     ~                         �
ECHO    �     ~/ ~       ~/ �           �             �  /  �    � \          \   ~                          �
ECHO    �     �\ ~    ~  /  �      ~    �     \__�    �~         �  \    ~  ~ /�                          ~  �
ECHO    �     �  \   ~  /   �  ~        �~    /  �   ~�     ~    �   \      /  �   ~                ~        �
ECHO    �   ~ �    \   /    �           �             �          �    \   /    �               ~             �
ECHO    �     �      \/  /� �           �~            �         ~\ �\  \/    ~ �     ~~~   ~                 �
ECHO    �     �~      � ~崖/            �  ~   ~      �           \崖  �       �       ~               ~     �
ECHO    �     �      ~�  �/陳陳陳陳陳陳潰 ~    ~     ~青陳陳陳陳陳�\�  �      ~�          ~                  �
ECHO    �      \~   ~ �  /陳陳陳陳陳陳陳�  \__�   ~   敖陳陳陳陳陳陳\  崖     /      ~                       �
ECHO    �      ~ \    � /               �  /~ �   ~   �              \ �    /      ~                   ~     �
ECHO    �          \  �/           ~    �             �    ~         ~\�  /                                  �
ECHO    �      ~     \/         ~       �             �                \/                                ~   �
ECHO    � ~                ~        ~   �   ~         �                         ~       ~ ~       ~        ~ �
ECHO    �                              ~�             �        ~                             ~     ~   ~     �
ECHO    �                ~              �             �    ~    ~                                 ~   ~      �
ECHO    �                               �             �            ~    ~    ~                               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %LASTBOSSNAME%: WHO'S THIS PRETTY LITTLE THING ON THE FLOOR OVER HERE?
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE5IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    � ~                          ~旭旭~                  �\          \                                  ~�
ECHO    �                     ~    ~ ~旭旭~                  � \    ~     \         ~          ~             �
ECHO    �           _  ~             ~旭�\烝/               ~�  \         /�                           ~     �
ECHO    �         /  \  /   /\ _     ~旭庵���          ~  ~ ~�   \   ~  /  �                                 �
ECHO    �      ~  �   ~�  \     �    ~~~~顎楹              ~ �    \   /    � ~                  ~       ~    �
ECHO    �         � /\  ~\/  /� � ~   �~攸疏楚 �  ~   ~      � �\ ~\/~  /\ �       ~      ~   ~              �
ECHO    � ~ ~     �/   \  �  崖/      藩� uu~値�     ~   ~    \崖  �  /   \�     ~             ~  ~          �
ECHO    � ~~  ~   /      \�  �/陳陳陳陳蝶 ~~ 劃陳陳陳陳陳陳陳陳\�  �/      \                         ~       �
ECHO    �        /         \ /陳陳陳陳陳� ~~~�   ~    敖陳陳陳陳\ /         \~    ~    ~                     �
ECHO    �       /          /�        ~  逝陳泰        �  \__�    �\   ~~  ~  \                ~       ~      �
ECHO    �   ~  /        ~ / �           該  �  ~ ^^!    �  /  �    � \          \     ~              ~   ~     �
ECHO    �     �\         /  �           該  � \__�    �          �  \         /�   ~     ~  ~ ~    ~         �
ECHO    �    ~�  \   ~  /   �  ~~       �     /  �    �          �   \~     /  �        ~  ~                 �
ECHO    �     �    \   /    �          ~�             �         ~�    \~  /    �         ~         ~         �
ECHO    �     �      \/  /� � ~      ~ ~�             �      ~   \ �\  \/      �         ~~                  �
ECHO    �     �       �~~崖/            �         ~   �     ~  ~  \崖  �     ~ �     ~                ~      �
ECHO    �     �       �~ �/陳陳陳陳陳陳潰           ~ 青陳陳陳陳陳�\�  �       �   ~~                        �
ECHO    � ~    \   ~  �  /陳陳陳陳陳陳陳�  \__�       敖陳陳陳陳陳陳\  崖   ~ /                      ~       �
ECHO    �        \    � /        ~      �  /  �       �              \ �    /  ~                         ~   �
ECHO    �       ~  \  �/~~              � ~  ~        �               \�  /      ~    ~                   ~  �
ECHO    �            \/             ~   �    ~        �            ~   \/  ~  ~         ~      ~     ~       �
ECHO    �                        ~      �   ~ ~  ~    �                           ~                          �
ECHO    �                               �             �                    ~                     ~           �
ECHO    �   ~ ~                ~        �             �  ~         ~            ~                ~          ~�
ECHO    �        ~               ~      �    ~        �    ~        ~        ~                 ~             �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %PLAYERNAME%: Don't touch her^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �           ~ ~            ~ ~旭旭~    ~ ~           �\ ~      ~ \     ~   ~                   ~     �
ECHO    �  ~          ~              ~旭旭~       ~ ~   ~    � \  ~   ~   \         ~   ~           ~~~      �
ECHO    �           _                ~旭�\烝/  ~      ~      �  \   ~     /�         ~                       �
ECHO    �         /  \  /   /\ _ ~   ~旭庵���                �~  \      /  �~                                �
ECHO    �         �    �~ \     �    ~~~~顎楹   ~      ~     �    \   /    �                                 �
ECHO    �         � /\   \/~ /� �     � 攸疏楚~�            ~� �\  \/   /\ � ~    ~      ~     ~         ~   �
ECHO    �         �/   \  �  崖/      藩� uu 値�     ~ ~      \崖  �  /   \�                 ~               �
ECHO    �         /      \�~ �/陳陳陳陳蝶 ~~ 劃陳陳陳陳陳陳陳陳\�  �/      \ ~                           ~   �
ECHO    �     ~  / ~     ~ \ /陳陳陳陳陳� ~~ �     ~ ~敖陳陳陳陳\~/ ~~      \          ~                     �
ECHO    �       /       ~  /�~~        ~逝陳泰        �  \__�    �\ ~      ~ \                            ~  �
ECHO    �  ~   /          / �  ~        該  �   ~     �  /  �    � \          \  ~ ~                       ~ �
ECHO    �     �\   ~     /  � ~         該  � \__�~  ~�        ~ �  \       ~ /�      ~       ~              �
ECHO    �     �  \      /   �           �     /  �    � ~   ~  ~ �   \    ~ /~ �                   ~ ~       �
ECHO    �     � ~  \   /    �           �             �     ~ ~  � ~ ~\   /    �         ~               ~  ~�
ECHO    �     �      \/  /� �       ~   �~~           �          \ �\ ~\/ ~    �           ~               ~ �
ECHO    �     �       �  崖/         ~ ~�       ~     �      ~    \崖  �   ~   �~                            �
ECHO    �  ~  �       �  �/陳陳陳陳陳陳潰          ~  青陳陳陳陳陳�\�  �       �                             �
ECHO    �      \      �  /陳陳陳陳陳陳陳�  \__�       敖陳陳陳陳陳陳\ ~崖     /      ~   ~          ~        �
ECHO    �        \    � /               �  /  �   ~   �            ~~\ �    /  ~      ~                      �
ECHO    �        ~ \  �/   ~            �             �               \�  /     ~                 ~          �
ECHO    �            \/            ~    �             �                \/~               ~                   �
ECHO    �                           ~   �   ~     ~   �      ~           ~~     ~             ~~             �
ECHO    � ~             ~              ~�             �      ~            ~             ~    ~               �
ECHO    �                               �             �                           ~   ~  ~            ~      �
ECHO    �                   ~     ~     �             �~                                            ~ ~      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %LASTBOSSNAME%: SHE WILL MAKE A FINE QUEEN^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE7IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �     ~       ~~  ~          ~旭旭~       ~       ~  �\          \ ~       ~       ~          ~      �
ECHO    �           ~            ~   ~旭旭~   ~   ~    ~     � \     ~    \      ~~          ~    ~          �
ECHO    �    ~      _            ~   ~旭旭~      ~ ~         �~ \         /�                       ~   ~  ~  �
ECHO    �         /  \  /   /\ _     ~旭旭~                  �   \ ~ ~  /  �                                 �
ECHO    � ~       �    �  \ ~~  �  ~ ~~~~~~                  �    \  ~/    �~                                �
ECHO    �         � /\   \/  /� �        \烝/            ~   � �\  \/   /\ �                             ~   �
ECHO    �       ~ �/   \ ~� ~崖/         寵��~              ~ \崖  � ~/~~ \�    ~            ~~            ~ �
ECHO    �         /      \�  �/陳陳陳陳陳顎楹陳陳陳陳陳陳陳陳陳\�  �/      \   ~ ~           ~               �
ECHO    �        /        ~\ /陳陳陳陳� 攸疏楚 �      敖陳陳陳陳\ /~        \                ~     ~         �
ECHO    �       /       ~  /�       ~ 藩� uu 値�      �  \__�    �\          \    ~            ~         ~   �
ECHO    �      /     ~    / �           � ~~ �   ^^!  ~ �  /~ �    � \          \    ~ ~                      ~�
ECHO    �   ~ �\        ~/  �     ~     � ~~ �\__�    �    ~     � ~\      ~  /�     ~  ~~    ~       ~      �
ECHO    �     �  \      /   �    ~      逝陳泰/  �    �          �   \~     /  �    ~  ~    ~                �
ECHO    �  ~  �    \ ~ /    �           該  �     ~   �          �~~  \   / ~  �    ~~                       �
ECHO    �  ~  �      \/  /�~�       ~   該  �         �          \ �\ ~\/      �     ~              ~        �
ECHO    �     �       �  崖/~           �             �  ~        \崖  �       �                             �
ECHO    �     �       �  �/陳陳陳陳陳陳潰             青陳陳陳陳陳�\�  �  ~    �               ~  ~          �
ECHO    �      \  ~   �  /陳陳陳陳陳陳陳�  \__�~      敖陳陳陳陳陳陳\  崖     /                     ~   ~    �
ECHO    �    ~ ~ \    � /            ~~ �  /  � ~     �          ~   \ �    /                     ~          �
ECHO    �          \  �/~~         ~    �     ~ ~     � ~      ~  ~   \�  /      ~~                          �
ECHO    �            \/~       ~        �             �  ~        ~    \/              ~~            ~       �
ECHO    �                    ~        ~ �             �                                    ~      ~~ ~       �
ECHO    �                             ~ �   ~         �                ~ ~                 ~              ~~ �
ECHO    �            ~                  �      ~      �                   ~                                  �
ECHO    � ~         ~       ~           �             �             ~    ~     ~                ~~           �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE7TEXT
ECHO     %PLAYERNAME%: Dude, she's 16^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE8IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                            ~旭旭~                  �\  ~~     ~\          ~                     ~  �
ECHO    �                            ~旭旭~                  � \          \                     ~            �
ECHO    �           _                ~旭旭~~ ~       ~      ~�  \   ~     /�                                 �
ECHO    � ~    ~  /  \  /   /\ _     ~旭旭~          ~       �   \     ~/  �                       ~         �
ECHO    � ~    ~  �    �  \ ~   �    ~~~~~~    ~             �    \  ~/    �                 ~               �
ECHO    �         �~/\   \/  /� �   ~  ~ \烝/                � �\  \/   /\ � ~        ~                      �
ECHO    �         �/   \  �  崖/         寵��                ~\崖  �  /   \�    ~ ~                          �
ECHO    �         /      \�  �/陳陳陳陳陳顎楹陳陳陳陳陳陳陳陳陳\�  �/ ~    \    ~       ~                   ~�
ECHO    �  ~     /     ~   \ /陳陳陳陳� 攸疏楚 �      敖陳陳陳陳\ /         \    ~          ~                �
ECHO    �       /  ~       /� ~       藩� uu 値�      � ~\__�    �\          \                           ~   �
ECHO    �   ~  /          / �           � ~~ �~       �  /  �    � \  ~       \  ~ ~        ~           ~    �
ECHO    � ~   �\         /  �           � ~~ �\__� ~  �          �  \         /�     ~     ~                 �
ECHO    �     �  \  ~   /   �     ~ ~   逝陳泰/  �    �  ~       �~  \  ~   /  �                        ~    �
ECHO    � ~   �    \~  /    �           該  �       ~ �          �    \   /    �                             �
ECHO    �     �      \/  /� �   ~    ~  該  �         �        ~ \ �\  \/      �           ~       ~         �
ECHO    �     �       �  崖/ ~      ~   �          ~  �  ~    ~   \崖 ~�       �    ~   ~                   ~�
ECHO    �     �       �  �/陳陳陳陳陳陳潰     ~       青陳陳陳陳陳�\�  �      ~�                       ~     �
ECHO    �      \      �  /陳陳陳陳陳陳陳�  \__�  ~  ~~敖陳陳陳陳陳陳\  崖     /  ~                           �
ECHO    �        \    � /~              �  /  �       �         ~    \ � ~  /           ~                    �
ECHO    �         ~\ ~�/                �    ~        �               \�  /        ~      ~                 ~�
ECHO    �      ~ ~   \/                 �             �                \/    ~     ~                    ~    �
ECHO    �                       ~       �    ~   ~~   �            ~      ~                   ~          ~   �
ECHO    �                               �             �       ~               ~~ ~    ~                      �
ECHO    �         ~                ~    �~    ~       �  ~                                                   �
ECHO    �           ~               ~   � ~           �                                ~     ~               �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE8TEXT
ECHO     %LASTBOSSNAME%: I AM %LASTBOSSNAMECAP%, THE MOST EVIL OF ALL THE DEMONS^^!
ECHO     IS PAEDOPHILLIA THAT SURPRISING FROM SOMEONE AS EVIL AS ME^^!?
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE9IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �    ~ ~                   ~ ~旭旭~              ~   �\          \                                   �
ECHO    �             ~              ~旭旭~  ~               � \          \     ~                            �
ECHO    �           _                ~旭旭~                  �  \        ~/�       ~                ~        �
ECHO    �         /~ \  /   /\ _     ~旭旭~          ~       �   \      /  �                    ~            �
ECHO    � ~       �~   �  \     �  ~ ~~~~~~ ~   ~            �    \   / ~  �   ~                             �
ECHO    �    ~  ~ � /\   \/~ /� �        \烝/~ ~             � �\~ \/   /\ �       ~   ~            ~        �
ECHO    �         �/   \  �  崖/   ~     寵��~     ~      ~  ~\崖  � ~/   \�              ~                  �
ECHO    �         /      \�  �/陳陳陳陳陳顎楹陳陳陳陳陳陳陳陳陳\�  �/      \              ~                  �
ECHO    �        /         \ /陳陳陳陳� 攸疏楚 �      敖陳陳陳陳\ / ~       \ ~              ~               �
ECHO    �       /      ~   /�      ~  藩� uu 値�    ~ �~ \__�    �\          \          ~            ~       �
ECHO    �    ~ /     ~  ~ / �   ~       � ~~ �        �  /  �    � \       ~  \                        ~     �
ECHO    �     �\   ~     /  �           � ~~ �\__�    �~         �  \         /�        ~                ~   �
ECHO    �     �  \ ~  ~ / ~ �           逝陳泰/~ �    �          �  ~\      /  �~           ~     ~          �
ECHO    �     �    \   /  ~ �           該  �         � ~        �    \   /    �                             �
ECHO    �     �      \/  /� �           該 ~�         � ~  ~     \ �\  \/    ~ �     ~ ~             ~       �
ECHO    �     �      ~�  崖/~           �    ~      ~ �           \崖  �       �                         ~   �
ECHO    �     �       �  �/陳陳陳陳陳陳潰             青陳陳陳陳陳�\�~ �  ~    �                   ~   ~     �
ECHO    �      \   ~~ �  /陳陳陳陳陳陳陳�  \__�       敖陳陳陳陳陳陳\  崖     /  ~                ~          �
ECHO    �        \    � / ~    ~        �  /  �   ~   �              \ �    /                     ~          �
ECHO    �          \  �/                �   ~         �~              \�  /    ~                             �
ECHO    �          ~ \/            ~    �             �                \/  ~                          ~     ~�
ECHO    �      ~        ~     ~      ~ ~�     ~       �                                  ~ ~       ~         �
ECHO    �                           ~   �             �             ~     ~    ~            ~          ~     �
ECHO    �  ~~ ~                         �  ~        ~ � ~ ~     ~ ~~                 ~ ~  ~         ~        �
ECHO    �       ~  ~          ~         �             �           ~~                  ~                      �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕

ECHO.
GOTO :EOF
:SCENE9TEXT
ECHO     %PLAYERNAME%: Just stay away from her^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE10IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                       ~    ~旭旭~                 ~�\          \                                  ~�
ECHO    �                  ~         ~旭旭~~  ~     ~ ~     ~� \       ~  \                     ~ ~          �
ECHO    �           _      ~  ~      ~旭旭~          ~    ~ ~�  \         /�                 ~       ~ ~     �
ECHO    �         /  \  /   /\ _     ~旭旭~            ~~    �   \      /  �      ~                 ~        �
ECHO    �         �~   �  \     �    ~~~~~~       ~          �    \   /    �    ~           ~                �
ECHO    �         � /\   \/  /� �    ~                ~      � �\  \/~  /\ �      ~          ~   ~           �
ECHO    �        ~�/   \  �  崖/                           ~  \崖  �  /   \�       ~                       ~ �
ECHO    � ~       /      \�~ �/陳陳陳陳陳\烝/陳陳陳陳陳陳陳陳陳\�  �/      \ ~          ~       ~            �
ECHO    �     ~  /   ~     \ /陳陳陳陳陳臣���         敖陳陳陳陳\ /         \    ~            ~   ~       ~  �
ECHO    �      ~/     ~    /�      ~    崖樛�      ~  �  \__�    �\          \                               �
ECHO    �     ~/          / �         � 攸疏楚 �    ~ �  /  �    � \          \      ~~                      �
ECHO    �     �\         /  �       ~ 藩� uu 値�_�    �  ~  ~    �  \         /�     ~                  ~ ~  �
ECHO    �   ~ �  \      /   �           � ~~ �/ ~� ~ ~� ~        �   \      /  �     ~                  ~    �
ECHO    �     �    \   /    �   ~       � ~~ �        �          �    \   /    �   ~   ~    ~~      ~        �
ECHO    �     �      \/  /� �           逝陳泰  ~   ~ �          \ �\  \/      �                 ~     ~    ~�
ECHO    �  ~  �       �  崖/            該  �         �           \崖  �       �         ~              ~    �
ECHO    �     �       �  �/陳陳陳陳陳陳潰� ~�       ~ 青陳陳陳陳陳�\�  �    ~  �        ~ ~       ~          �
ECHO    �   ~  \      �  /陳陳陳陳陳陳陳�  \__�       敖陳陳陳陳陳陳\  崖     /                            ~ �
ECHO    �        \~  ~� /     ~      ~  � ~/~ �       �      ~~     ~\ �    /       ~   ~                    �
ECHO    �   ~     ~\  �/   ~ ~        ~ �             �  ~            \�  /                              ~   �
ECHO    �  ~      ~~ \/              ~  �  ~          �   ~        ~ ~ \/    ~                               �
ECHO    �      ~     ~                  �             �                          ~~        ~                 �
ECHO    �                   ~        ~  �    ~  ~     � ~          ~       ~~                                �
ECHO    � ~                             �         ~ ~ � ~                    ~         ~ ~                 ~ �
ECHO    �      ~          ~        ~    � ~           � ~                                      ~             �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE10TEXT
ECHO     %LASTBOSSNAME%: NOPE.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE11IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
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
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE11TEXT
ECHO     %LASTBOSSNAME% leaves through the portal with %GIRLNAME% over his shoulder
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE12IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
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
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE12TEXT
ECHO     (No, I'm not drawing that in ascii)
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE13IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
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
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE13TEXT
ECHO     %PLAYERNAME% can't stay awake any longer, and passes out...
SET /a WAITTIME = %BASEWAITTIME% + 7
GOTO :EOF

:SCENE14IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                 z攷�
ECHO    �                                                              ________________________          z 崖�
ECHO    �                                                             /                        \陳� 敖陳�  崖�
ECHO    �                                                            /                          \ 青�  崖  崖�
ECHO    �                                                   攷      /                            \敖�   �  崖�
ECHO    �                                                   崖     /                              \收陳潰朕崖�
ECHO    �                                                   蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE14TEXT
SET TEMPPATH=%MUSICPATH%\Maps\!%MAP%MUSICFOLDER!
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
ECHO     You wake up in a strange bed, in a room that you don't recognise
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE15IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                  攷�
ECHO    �                                                              ________________________            崖�
ECHO    �                                                             /                        \陳� 畋陳�  崖�
ECHO    �                                                            /                          \ 青�  O�  崖�
ECHO    �                                                   攷      /                            \敖�   �  崖�
ECHO    �                                                   崖     /                              \收陳潰朕崖�
ECHO    �                                                   蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   �                                               該
ECHO    �                                                   青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE15TEXT
ECHO     Voice: He's awake^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE16IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                       �                                                                            �
ECHO    �                      /�\                                                                           �
ECHO    �                     /陳�\                                                                          �
ECHO    �                     �  O�                                                                          �
ECHO    �                     �   �                                                                          �
ECHO    �                     誠 旛                                                                        攷�
ECHO    �                   敖潰 青�                                   ________________________            崖�
ECHO    �                   �      �                                  /                        \陳� 畋陳�  崖�
ECHO    �                   �  �   �                                 /                          \ 青�  O�  崖�
ECHO    �                   �  �   �                        攷      /                            \敖�   �  崖�
ECHO    �                   �  � � �                        崖     /                              \收陳潰朕崖�
ECHO    �                   �  劃田�                        蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                   �  � � �                        �                                               該
ECHO    �                   �  � � �                        �                                               該
ECHO    �                   �  �   �                        �                                               該
ECHO    �                   �      �                        �                                               該
ECHO    �                   �      �                        �                                               該
ECHO    �                   �      �                        �                                               該
ECHO    �                   �      �                        �                                               該
ECHO    �                   青堕賃潰                        �                                               該
ECHO    �                     �  �                          青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE16TEXT
ECHO     A robed man enters the room.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE17IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                             �                                                                      �
ECHO    �                            /�\                                                                     �
ECHO    �                           /陳�\                                                                    �
ECHO    �                           �  O�                                                                    �
ECHO    �                           �   �                                                                    �
ECHO    �                           誠 旛                                                                  攷�
ECHO    �                         敖潰 青�                             ________________________            崖�
ECHO    �                         �      �                            /                        \陳� 畋陳�  崖�
ECHO    �                         �  �   �                           /                          \ 青�  O�  崖�
ECHO    �                         �  �   �                  攷      /                            \敖�   �  崖�
ECHO    �                         �  � � �                  崖     /                              \收陳潰朕崖�
ECHO    �                         �  劃田�                  蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                         �  � � �                  �                                               該
ECHO    �                         �  � � �                  �                                               該
ECHO    �                         �  �   �                  �                                               該
ECHO    �                         �      �                  �                                               該
ECHO    �                         �      �                  �                                               該
ECHO    �                         �      �                  �                                               該
ECHO    �                         �      �                  �                                               該
ECHO    �                         青堕賃潰                  �                                               該
ECHO    �                           �  �                    青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE17TEXT
ECHO     Robed Man: Hello my child. How are you feeling?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE18IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                             �                                                                      �
ECHO    �                            /�\                                                                     �
ECHO    �                           /陳�\                                                                    �
ECHO    �                           �  O�                                                                    �
ECHO    �                           �   �                                                                    �
ECHO    �                           誠 旛                                                                  攷�
ECHO    �                         敖潰 青�                             ________________________            崖�
ECHO    �                         �      �                            /                        \陳� 畋陳�  崖�
ECHO    �                         �  �   �                           /                          \ 青�  O�  崖�
ECHO    �                         �  �   �                  攷      /                            \敖�   �  崖�
ECHO    �                         �  � � �                  崖     /                              \收陳潰朕崖�
ECHO    �                         �  劃田�                  蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                         �  � � �                  �                                               該
ECHO    �                         �  � � �                  �                                               該
ECHO    �                         �  �   �                  �                                               該
ECHO    �                         �      �                  �                                               該
ECHO    �                         �      �                  �                                               該
ECHO    �                         �      �                  �                                               該
ECHO    �                         �      �                  �                                               該
ECHO    �                         青堕賃潰                  �                                               該
ECHO    �                           �  �                    青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE18TEXT
ECHO     %PLAYERNAME%: Where am I?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE19IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                   �                                                                �
ECHO    �                                  /�\                                                               �
ECHO    �                                 /陳�\                                                              �
ECHO    �                                 �  O�                                                              �
ECHO    �                                 �   �                                                              �
ECHO    �                                 誠 旛                                                            攷�
ECHO    �                               敖潰 青�                       ________________________            崖�
ECHO    �                               �      �                      /                        \陳� 畋陳�  崖�
ECHO    �                               �  �   �                     /                          \ 青�  O�  崖�
ECHO    �                               �  �   �            攷      /                            \敖�   �  崖�
ECHO    �                               �  � � �            崖     /                              \收陳潰朕崖�
ECHO    �                               �  劃田�            蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                               �  � � �            �                                               該
ECHO    �                               �  � � �            �                                               該
ECHO    �                               �  �   �            �                                               該
ECHO    �                               �      �            �                                               該
ECHO    �                               �      �            �                                               該
ECHO    �                               �      �            �                                               該
ECHO    �                               �      �            �                                               該
ECHO    �                               青堕賃潰            �                                               該
ECHO    �                                 �  �              青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE19TEXT
ECHO     Robed Man: You're safe, can you tell me your name?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE20IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                         �                                                          �
ECHO    �                                        /�\                                                         �
ECHO    �                                       /陳�\                                                        �
ECHO    �                                       �  O�                                                        �
ECHO    �                                       �   �                                                        �
ECHO    �                                       誠 旛                                                      攷�
ECHO    �                                     敖潰 青�                 ________________________            崖�
ECHO    �                                     �      �                /                        \陳� 畋陳�  崖�
ECHO    �                                     �  �   �               /                          \ 青�  O�  崖�
ECHO    �                                     �  �   �      攷      /                            \敖�   �  崖�
ECHO    �                                     �  � � �      崖     /                              \收陳潰朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE20TEXT
ECHO     %PLAYERNAME%: %PLAYERNAME%...
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE21IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                         �                                                          �
ECHO    �                                        /�\                                                         �
ECHO    �                                       /陳�\                                                        �
ECHO    �                                       �  O�                                                        �
ECHO    �                                       �   �                                                        �
ECHO    �                                       誠 旛                                                      攷�
ECHO    �                                     敖潰 青�                 ________________________            崖�
ECHO    �                                     �      �                /                        \陳� 畋陳�  崖�
ECHO    �                                     �  �   �               /                          \ 青�  O�  崖�
ECHO    �                                     �  �   �      攷      /                            \敖�   �  崖�
ECHO    �                                     �  � � �      崖     /                              \收陳潰朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE21TEXT
ECHO     Robed Man: Hi %PLAYERNAME%, my name is %PRIESTNAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE22IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                         �                                                          �
ECHO    �                                        /�\                                                         �
ECHO    �                                       /陳�\                                                        �
ECHO    �                                       �  O�                                                        �
ECHO    �                                       �   �                                                        �
ECHO    �                                       誠 旛                                                      攷�
ECHO    �                                     敖潰 青�                 ________________________            崖�
ECHO    �                                     �      �                /                        \陳� 畋陳�  崖�
ECHO    �                                     �  �   �               /                          \ 青�  O�  崖�
ECHO    �                                     �  �   �      攷      /                            \敖�   �  崖�
ECHO    �                                     �  � � �      崖     /                              \收陳潰朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE22TEXT
ECHO     %PRIESTNAME%: Can you tell me what happened %PLAYERNAME%
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE23IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                         �                                                          �
ECHO    �                                        /�\                                                         �
ECHO    �                                       /陳�\                                                        �
ECHO    �                                       �  O�                                                        �
ECHO    �                                       �   �                                                        �
ECHO    �                                       誠 旛                                                      攷�
ECHO    �                                     敖潰 青�                 ________________________            崖�
ECHO    �                                     �      �                /                        \陳� 畋陳�  崖�
ECHO    �                                     �  �   �               /                          \ 青�  O�  崖�
ECHO    �                                     �  �   �      攷      /                            \敖�   �  崖�
ECHO    �                                     �  � � �      崖     /                              \收陳潰朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE23TEXT
ECHO     %PLAYERNAME%: It was %LASTBOSSNAME%. He attacked our town
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE24IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                  �                 �
ECHO    �                                                                                  �                 �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE24TEXT
ECHO     %PLAYERNAME%: %GIRLNAMECAP%^^!
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE25IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE25TEXT
ECHO     %PLAYERNAME%: He took %GIRLNAME% through a portal with him^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE26IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE26TEXT
ECHO     %PRIESTNAME%: Calm down %PLAYERNAME%, you've been unconscious for almost 6 days
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE27IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                  �                 �
ECHO    �                                                                                  �                 �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE27TEXT
ECHO     %PLAYERNAME%: 6 DAYS^^!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE28IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE28TEXT
ECHO     %PRIESTNAME%: Yes, you were very badly hurt when we found you. Luckily we found
ECHO     you when we did. I was able to perform the healing ritual and save your life.
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE29IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                  ?                 �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE29TEXT
ECHO     %PLAYERNAME%: Healing ritual?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE30IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE30TEXT
ECHO     %PRIESTNAME%: You'll find out soon enough my child, I have a feeling you'll be back
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE31IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE31TEXT
ECHO     %PLAYERNAME%: What happened to my town^^!?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE32IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE32TEXT
ECHO     %PRIESTNAME%: Which town are you from?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE33IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE33TEXT
ECHO     %PLAYERNAME%: %TOWN1NICKNAME%
SET /a WAITTIME = %BASEWAITTIME% + 1
GOTO :EOF

:SCENE34IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE34TEXT
ECHO     %PRIESTNAME%: I'm afraid it's not good news son, there's nothing left of %TOWN1NICKNAME%
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE35IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE35TEXT
ECHO     %PLAYERNAME%: What about my family?
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE36IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE36TEXT
ECHO     %PRIESTNAME%: We searched the entire town the day after %LASTBOSSNAME% attacked. There
ECHO     were no survivors...
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE37IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE37TEXT
ECHO     %PLAYERNAME%: We couldn't find anyone either. We think he may have taken them all with him^^!
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE38IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE38TEXT
ECHO     %PRIESTNAME%: If you're thinking about going after him, you can stop that right now. It's suicide
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE39IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE39TEXT
ECHO     %PLAYERNAME%: He's taken my entire life away from me. I have nothing else to live for.
ECHO     I have to at least try^^!
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE40IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �     栩         /                       \            崖�
ECHO    �                                     �   陳津陳陳壷�        /                         \           崖�
ECHO    �                                     �      �      攷      /                           \          崖�
ECHO    �                                     �    � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �   津蝶      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �    � �      �                                               該
ECHO    �                                     �    � �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE40TEXT
ECHO     %PRIESTNAME%: Ok, if you have to go, at least take these
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE41IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE41TEXT
ECHO     %PRIESTNAME% gives you %NUM1% !ITEM%ITEM1%NAME!s and %NUM2% !ITEM%ITEM2%NAME!s.
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE42IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE42TEXT
ECHO     %PRIESTNAME%: Here, take this cheery music too^^! It'll make you feel better
SET TEMPPATH=%MUSICPATH%\End
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
SET /a WAITTIME = %BASEWAITTIME% + 4
GOTO :EOF

:SCENE43IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE43TEXT
ECHO     %PLAYERNAME%: Yea^^! With music like this there's no way I can lose^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE44IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE44TEXT
ECHO     %PRIESTNAME%: If you want to find %LASTBOSSNAME% you'll first need to get through the cave
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE45IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE45TEXT
ECHO     %PRIESTNAME%: Once you're through the cave, you'll need to enter the castle and search
ECHO     for a bookcase. There's a book in there that has information about opening portals to hell
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE46IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE46TEXT
ECHO     %PRIESTNAME%: From there you're on your own^^! This is the start of your adventure.
SET /a WAITTIME = %BASEWAITTIME% + 3
GOTO :EOF

:SCENE47IMAGE
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �                                                                                                    �
ECHO    �                                                                                                    �
ECHO    �                                                                                敖陳�               �
ECHO    �                                                                                �O  �               �
ECHO    �                                         �                                      �   �               �
ECHO    �                                        /�\                                     誠 旛               �
ECHO    �                                       /陳�\                                   敖� 青�              �
ECHO    �                                       �  O�                                   �__   �              �
ECHO    �                                       �   �                                  /   \  �              �
ECHO    �                                       誠 旛                                 /     \ �            攷�
ECHO    �                                     敖潰 青�                 ______________/       \�            崖�
ECHO    �                                     �      �                /                       \            崖�
ECHO    �                                     �  �   �               /                         \           崖�
ECHO    �                                     �  �   �      攷      /                           \          崖�
ECHO    �                                     �  � � �      崖     /                             \_敖陳陳朕崖�
ECHO    �                                     �  劃田�      蛋陳陳/陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳珍抒�
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  � � �      �                                               該
ECHO    �                                     �  �   �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     �      �      �                                               該
ECHO    �                                     青堕賃潰      �                                               該
ECHO    �                                       �  �        青陳賃陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳堕陳陳拑
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
GOTO :EOF
:SCENE47TEXT
ECHO     %PRIESTNAME%: Good luck %PLAYERNAME%^^!
GOTO :EOF





















