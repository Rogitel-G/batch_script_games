IF %CAVEENTER% EQU 1 (
	SET /a PLAYERXCOORD = 1
	SET /a PLAYERYCOORD = 1
	SET MAP=cave1
	SET /a EXITMAP = 1
	GOTO :EOF
)
:START
CALL :CAVEDISPLAY
ECHO What would you like to do?
ECHO.
ECHO. 1 - Knock on the cave door
ECHO. 2 - Fly kick the cave door
IF %CAVEEXAMINED% EQU 0 (
	ECHO. 3 - Examine the cave door
) ELSE IF %CAVEEXAMINED% EQU 1 (
	ECHO. 3 - Use the retina scanner
)
ECHO. 0 - Leave
ECHO.
SET /P CAVEDOORACTION=
IF "%CAVEDOORACTION%" EQU "1" (
	CALL :KNOCK
) ELSE IF "%CAVEDOORACTION%" EQU "2" (
	CALL :KICK
) ELSE IF "%CAVEDOORACTION%" EQU "3" (
	IF %CAVEEXAMINED% EQU 0 (
		CALL :APPROACHDOOR
		ECHO Upon further examination of the cave door you reveal that there's a retina scanner
		ECHO.
		CALL :WAITFORTHREE
		ECHO It smells oddly of piss and Carlsberg Special Brew
		CALL :WAITFORFOUR
		SET /a CAVEEXAMINED = 1
		SET /a STORY6VERSIONNUM = 1
	) ELSE IF %CAVEEXAMINED% EQU 1 (
		CALL :RETINASCANNER
	)
) ELSE IF "%CAVEDOORACTION%" EQU "0" (
	CALL :SETLOCATION
	GOTO :EOF
)
IF %CAVEENTER% EQU 1 (
	GOTO :EOF
)
GOTO :START


:SETLOCATION
SET /a PLAYERXCOORD = 10
SET /a PLAYERYCOORD = 5
GOTO :EOF

:KNOCK
CALL :APPROACHDOOR
ECHO You knock on the cave door but there's no answer...
CALL :WAITFORTHREE
GOTO :EOF

:KICK
CALL :KICK1
CALL :KICK2
CALL :KICK3
CALL :KICK4
::SET /a PLAYERHP = %PLAYERHP%-10
::IF %PLAYERHP% LSS 1 (
::	SET /a %PLAYERHP% = 1
::)
ECHO You fly kick the cave door but achieve nothing but a hurt foot
ECHO.
::ECHO You lose 10 HP. You have %PLAYERHP% HP remaining
::ECHO.
pause
GOTO :EOF

:RETINASCANNER
CALL :APPROACHDOOR
ECHO This still stinks of piss and Carlsberg Special Brew...
ECHO.
ECHO Choose an eye to use on the retina scanner.
ECHO.
ECHO. 1 - Your right eye
ECHO. 2 - Your left eye
IF !PLAYERKEYITEM%TEYEID%ACQUIRED! EQU 1 (
	ECHO. 3 - The Tramp's eye
)
IF !PLAYERKEYITEM%SKEYEID%ACQUIRED! EQU 1 (
	ECHO. 4 - The Shopkeeper's eye
)
ECHO.
:EYECHOICE
SET /P EYECHOICE=
ECHO.
IF "%EYECHOICE%" EQU "1" (
	CALL :SCANNERFAIL
) ELSE IF "%EYECHOICE%" EQU "2" (
	CALL :SCANNERFAIL
) ELSE IF "%EYECHOICE%" EQU "3" (
	IF !PLAYERKEYITEM%TEYEID%ACQUIRED! EQU 0 (
		GOTO :EYECHOICE
	) ELSE (
		CALL :SCANNERSUCCESS
	)
) ELSE IF "%EYECHOICE%" EQU "4" (
	IF !PLAYERKEYITEM%SKEYEID%ACQUIRED! EQU 0 (
		GOTO :EYECHOICE
	) ELSE (
		CALL :SHOPKEEPEREYE
	)
) ELSE (
	GOTO :EYECHOICE
)
GOTO :EOF

:SCANNERFAIL
ECHO. This eye seems to have no effect
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:SCANNERSUCCESS
IF %STORY12VERSIONNUM% EQU 0 (
	SET /a STORY12VERSIONNUM = 1
) ELSE IF %STORY12VERSIONNUM% EQU 2 (
	SET /a STORY12VERSIONNUM = 3
)
ECHO. The Cave door opens^^!
ECHO.
CALL :WAITFORTWO
ECHO. You step inside...
ECHO.
SET MAP=cave1
SET /a PLAYERXCOORD = 1
SET /a PLAYERYCOORD = 1
SET /a CAVEENTER = 1
SET /a EXITMAP = 1
CALL :WAITFORTWO
CLS
ECHO.
ECHO Now that you've entered the cave, you can access the tutorials remotely through the menu^^!
ECHO.
SET /a REMOTEACCESSTRUE = 1
SET /a TUTORIALREMOTEACCESS = 1
CALL :WAITFORTHREE
GOTO :EOF

:SHOPKEEPEREYE
SET /a STORY12VERSIONNUM = 2
CALL :CAVEDISPLAY
IF %CAVEITEMSACQUIRED% EQU 1 (
	ECHO You try the shopkeeper's eye again, but it has no effect
	CALL :WAITFORTWO
	GOTO :EOF
)
SET /a CAVEITEMSACQUIRED = 1
ECHO When you scan the shopkeeper's eye, some items drop out...
ECHO.
CALL :WAITFORTWO
SET /a PLAYERWEAPON%ELESTICKID%NUM = !PLAYERWEAPON%ELESTICKID%NUM! + 1
ECHO You have acquired a !WEAPON%ELESTICKID%NAME!^^!
ECHO.
CALL :WAITFORTWO
GOTO :EOF
	
	
	
:CAVEDISPLAY
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                              ///////////////////////////////////////           º
ECHO    º                             //////////////////////////////////////             º
ECHO    º                            /ÄÄÄ___//////////////////////////////               º
ECHO    º                            ³      ÄÄÄ___//////////////////////                 º
ECHO    º                            ³            ÄÄÄ___//////////////                   º
ECHO    º                            ³                  ÄÄÄ___//////                     º
ECHO    º                            ³                        ÄÄÄ/                       º
ECHO    º                            ³                           ³                       º
ECHO    º                            ³        °°°°°°°°°          ³                       º
ECHO    º                            ³        °°°°°°°°°          ³                       º
ECHO    º                 ÚÄÄ¿       ³        °°°°°°°°°          ³                       º
ECHO    º                 ³  ³       ³        °°°°°°°°°          ³                       º
ECHO    º                 À¿ÚÙ       ³        °°°°°°°°°          ³                       º
ECHO    º                 ÚÙÀ¿       ³        °°°°°°°°°          ³                       º
ECHO    º                 ³ ³³       ³        °°°°°°°°°   ~ ~    ³                       º
ECHO    º                 ³ ³³       ³        °°°°°°°°° ~ÚÄÄ¿    ³                       º
ECHO    º                 ³ ³³       ³        °°°°°°°°°  ³Ïþ³~   ³                       º
ECHO    º                 ÀÂÂÙ       ³        °°°°°°°°°  ÀÂÂÙ    ³                       º
ECHO    º                  ³³        ³        °°°°°°°°° ~ ³³ ~   ³                       º
ECHO    º                  ³³        ³        °°°°°°°°°   ³³     ³                       º
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
GOTO :EOF

:APPROACHDOOR
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                              ///////////////////////////////////////           º
ECHO    º                             //////////////////////////////////////             º
ECHO    º                            /ÄÄÄ___//////////////////////////////               º
ECHO    º                            ³      ÄÄÄ___//////////////////////                 º
ECHO    º                            ³            ÄÄÄ___//////////////                   º
ECHO    º                            ³                  ÄÄÄ___//////                     º
ECHO    º                            ³                        ÄÄÄ/                       º
ECHO    º                            ³                           ³                       º
ECHO    º                            ³        °°°°°°°°°          ³                       º
ECHO    º                            ³        °°°°°°°°°          ³                       º
ECHO    º                            ³        °ÚÄÄ¿°°°°          ³                       º
ECHO    º                            ³        °³  ³°°°°          ³                       º
ECHO    º                            ³        °À¿ÚÙ°°°°          ³                       º
ECHO    º                            ³        °ÚÙÀ¿°°°°          ³                       º
ECHO    º                            ³        °³ ³³°°°°   ~ ~    ³                       º
ECHO    º                            ³        °³ ³³°°°° ~ÚÄÄ¿    ³                       º
ECHO    º                            ³        °³ ³³°°°°  ³Ïþ³~   ³                       º
ECHO    º                            ³        °ÀÂÂÙ°°°°  ÀÂÂÙ    ³                       º
ECHO    º                            ³        °°³³°°°°° ~ ³³ ~   ³                       º
ECHO    º                            ³        °°³³°°°°°   ³³     ³                       º
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
GOTO :EOF

:KICK1
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                            ////////////////////////º
ECHO    º                                                                           /////////////////////////º
ECHO    º                                                                          //////////////////////////º
ECHO    º                                                                         ///////////////////////////º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ÚÄÄÄ¿                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ³  O³                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ³   ´                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ÀÄÂÄÙ                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                       ÚÄÄÁÄÄ¿                                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                       ³     ³                                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                       ³   ³ ³                                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                       ³   ³ ³                                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                       ³   ³ ³                                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                       ³   ³ ³                                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                       ³   ³ ³                                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                       ÀÂÄÄ³ÂÙ                                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ³   ³                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ³   ³                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ³   ³                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ³   ³                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                        ³   ³                                            °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
CALL :WAITFORONE
GOTO :EOF

:KICK2
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                            ////////////////////////º
ECHO    º                                                                           /////////////////////////º
ECHO    º                                                                          //////////////////////////º
ECHO    º                                                                         ///////////////////////////º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                   ÚÄÄÄ¿                                 °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                   ³  O³                                 °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                   ³   ´                                 °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                   ÀÄÂÄÙ                                 °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  ÚÄÄÁÄÄ¿                                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  ³     ³                                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  ³   ÄÄÄÄÄÄÄÄ                           °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  ³     ³                                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  ³     ³                                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  ³     ³                                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  ³     ³                                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  ÀÂÄÄÄÂÙ                                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                    /\                                   °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                   /  \                                  °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                  /    )                                 °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                 /    /                                  °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                /    /                                   °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
CALL :WAITFORZERO
GOTO :EOF

:KICK3
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                            ////////////////////////º
ECHO    º                                                                           /////////////////////////º
ECHO    º                                                                          //////////////////////////º
ECHO    º                                                                         ///////////////////////////º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                    ÚÄÄÄ¿                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                    ³  O³                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                    ³   ´                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                    ÀÄÂÄÙ                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ÚÄÄÁÄÄ¿               °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ³     ³               °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ³   ÄÄÄÄÄÄÄÄ          °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ³     ³               °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ³     ³               °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ³     ³               °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ³     ³               °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ÀÄÂÄÄÄÙ               °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                     ³\                  °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                     ³ \                 °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                     ³  \                °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                   ÄÄÙ   \               °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                          \              °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
CALL :WAITFORZERO
GOTO :EOF

:KICK4
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                            ////////////////////////º
ECHO    º                                                                           /////////////////////////º
ECHO    º                                                                          //////////////////////////º
ECHO    º                                                                         ///////////////////////////º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                              ÚÄÄÄ¿      °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                              ³^> ^<³      °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                              ³ o ´      °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                              ÀÄÂÄÙ      °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                             ÚÄÄÁÄÄ¿ X   °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                             ³     ³ ³   °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                             ³    ÄÄÄÙ   °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                             ³     ³     °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                             ³     ³     °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                             ³     ³     °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                             ³     ³     °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                             ÀÂÄÄÄÂÙ     °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                               \   \     °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                \    \   °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                 \     \ °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         \°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    º                                                                         °°°°°°°°°°°°°°°°°°°°°°°°°°°º
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
CALL :WAITFORONE
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

:WAITFORFOUR
TIMEOUT /T 4 > nul
GOTO :EOF