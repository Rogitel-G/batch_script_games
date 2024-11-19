SET /a SPECIALFIGHT = 0
:SPECIALFIGHTQUERY
SET TEMP=!ENEMY%ENEMYID%NICKNAME!
SET /a BEAT%TEMP% = 1
SET /a %TEMP%ALIVE = 0
CALL :EXCEPTIONS
GOTO :EOF



:EXCEPTIONS
CLS
IF %ENEMYID% EQU %TRAMPID% (
	SET /a TRAMPALIVE = 1
	IF !PLAYERKEYITEM%TEYEID%ACQUIRED! EQU 1 (
		SET /a STORY9VERSIONNUM = 2
	) ELSE (
		SET /a STORY9VERSIONNUM = 1
	)
	CALL "%TRAMPRESOURCEPATH%\trampkillquery.bat"
) ELSE IF %ENEMYID% EQU %CASINOBOSSID% (
	CALL :CASINOBOSS
) ELSE IF %ENEMYID% EQU %SHOPKEEPER1ID% (
	CALL :SHOPKEEPER1
) ELSE IF %ENEMYID% EQU %NIGHTMAREBOSSID% (
	CALL :NIGHTMAREBOSS
) ELSE IF %ENEMYID% EQU %CAVEBOSSID% (
	CALL :CAVEBOSS
) ELSE IF %ENEMYID% EQU %MINEBOSS2ID% (
	CALL :MINEBOSS2
) ELSE IF %ENEMYID% EQU %BOUNCERID% (
	CALL :BOUNCER
) ELSE IF %ENEMYID% EQU %ALCHEMISTMON6ID% (
	CALL :ALCHEMISTMON6
) ELSE IF %ENEMYID% EQU %SEAKINGID% (
	CALL :SEAKING
) ELSE IF %ENEMYID% EQU %LEEROYID% (
	SET /a STORY17VERSIONNUM = 2
) ELSE IF %ENEMYID% EQU %EMWEAPONID% (
	SET /a BEATEMWEAPONCOUNT = %BEATEMWEAPONCOUNT% + 1
)
GOTO :EOF

:SHOPKEEPER1
SET /a PLAYERKEYITEM%SKEYEID%ACQUIRED = 1
SET /a SHOPKEEPER1ALIVE = 0
SET /a BEATSHOPKEEPER1 = 1
CALL :SHOPKEEPERWINDISPLAY1
ECHO. You pull the Shopkeeper's eye out of his dead body.
ECHO.
CALL :WAITFORTHREE
SET TEMPPATH=%MUSICPATH%\Chest
SET FILE=Chest.mp3
CALL "%MUSICPATH%\soundeffect.bat"
CALL :SHOPKEEPERWINDISPLAY2
ECHO. You have acquired the Shopkeeper's eye^^!
ECHO.
pause
GOTO :EOF

:NIGHTMAREBOSS
IF /I %DIFFICULTY% EQU HARD (
	SET /a PLAYERKEYITEM%NIGHTMAREKEYID%ACQUIRED = 1
)
GOTO :EOF

:CAVEBOSS
IF %STORY13VERSIONNUM% EQU 0 (
	SET /a STORY13VERSIONNUM = 1
)
GOTO :EOF

:BOUNCER
ECHO.
ECHO Bouncer: You may have defeated me, but there's no way you'll beat the boss^^!
ECHO.
pause
GOTO :EOF

:CASINOBOSS
SET /a BEATCASINOBOSS = 1
SET /a CASINOBOUGHT = 1
SET /a CASINOINCOMEPERCHUNK = 0
SET /a STORY16VERSIONNUM = 3
ECHO. 
ECHO. You beat the Casino Boss^^!
ECHO.
CALL :WAITFORTHREE
ECHO Due to physics, you now own the casino. You can invest in the casino and it will generate gil for you over time.
ECHO.
ECHO The more you invest, the more it will generate, so I'd get on that now if I were you^^!
ECHO.
pause
GOTO :EOF

:MINEBOSS2
SET /a PLAYERKEYITEM%MAGSTONE1ID%ACQUIRED = 1
CLS
ECHO.
ECHO You beat the !ENEMY%MINEBOSS2ID%NAME!^^!
ECHO.
CALL :WAITFORTWO
ECHO As his body disappeared or melted or whatever happens, you find the !KEYITEM%MAGSTONE1ID%NAME!^^!
ECHO.
CALL :WAITFORTHREE
ECHO Your Strength and Endurance have increased by 10^^!
ECHO.
SET /a PLAYERBASESTR = %PLAYERBASESTR% + 10
SET /a PLAYERBASEEND = %PLAYERBASEEND% + 10
GOTO :EOF

:ALCHEMISTMON6
SET /a REMOTEACCESSTRUE = 1
SET /a ALCHEMISTREMOTEACCESS = 1
CLS
ECHO.
ECHO You beat the !ENEMY%ALCHEMISTMON6ID%NAME!. You can now access the Alchemist remotely through the menu^^!
CALL :WAITFORTHREE
GOTO :EOF

:SEAKING
SET /a STORY23VERSIONNUM = 3
SET /a PLAYERKEYITEM%MAGSTONE2ID%ACQUIRED = 1
CLS
ECHO.
ECHO You beat the !ENEMY%SEAKINGID%NAME!^^!
ECHO.
CALL :WAITFORTWO
ECHO As his body disappeared or melted or whatever happens, you find the !KEYITEM%MAGSTONE2ID%NAME!^^!
ECHO.
CALL :WAITFORTHREE
ECHO Your Magic and Spirit have increased by 10^^!
ECHO.
SET /a PLAYERBASEMAG = %PLAYERBASEMAG% + 10
SET /a PLAYERBASESPR = %PLAYERBASESPR% + 10
CALL :WAITFORTHREE
ECHO You've also removed the mist from the forest^^!
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:SHOPKEEPERWINDISPLAY1
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º                      ÚÄÄÄ¿                                                                         º
ECHO    º                      ³  O³                                                                         º
ECHO    º                      ³   ´                                                                         º
ECHO    º                      ÀÂÄÂÙ                                                                         º
ECHO    º                     ÚÄÙ ÀÄ¿                                                                        º
ECHO    º                     ³     ³                                                                        º
ECHO    º                     ³     ³                                                                        º
ECHO    º                     ³     ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³   \ ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³    \³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³     \                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ÀÂÄÄÄÂÙ\                                         ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³  \                                        ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   \ÄÄÂ¿ÚÄÄÄÄÄÄÄÄÄÄ¿                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ³V  ÀÙ          ÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ³   Ú¿  ÄÄÄÄÄÄÄÄÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ÀÄÄÄÙÀÄÄÄÄÄÄÄÄÄÄÙ                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
GOTO :EOF

:SHOPKEEPERWINDISPLAY1
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º                      ÚÄÄÄ¿                                                                         º
ECHO    º                      ³  O³                                                                         º
ECHO    º                      ³   ´                                                                         º
ECHO    º                      ÀÂÄÂÙ                                                                         º
ECHO    º                     ÚÄÙ ÀÄ¿  O                                                                     º
ECHO    º                     ³     ³  ³                                                                     º
ECHO    º                     ³   ÄÄÄÄÄÙ                                                                     º
ECHO    º                     ³     ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³     ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³     ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³     ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ÀÂÄÄÄÂÙ                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³                                           ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ÚÄÄÂ¿ÚÄÄÄÄÄÄÄÄÄÄ¿                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ³X  ÀÙ          ÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ³   Ú¿  ÄÄÄÄÄÄÄÄÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ÀÄÄÄÙÀÄÄÄÄÄÄÄÄÄÄÙ                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
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
